import 'package:dio/dio.dart';
import '../../../core/constants.dart';
import '../../../core/dio_client.dart';
import '../models/article.dart';

class NewsService {
  Future<List<Article>> fetchTopHeadlines() async {
    final response = await dio.get(
      '/top-headlines',
      queryParameters: {
        'country': 'us',
        'pageSize': 50,
        'page': 1,
        'apiKey': AppConstants.apiKey,
      },
    );

    final articles = (response.data['articles'] as List<dynamic>)
        .where((e) => e['title'] != null && e['title'] != '[Removed]')
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList();

    return articles;
  }

  Future<List<Article>> searchArticles(String query) async {
    final response = await dio.get(
      '/everything',
      queryParameters: {
        'q': query,
        'apiKey': AppConstants.apiKey,
        'sortBy': 'publishedAt',
      },
    );

    final articles = (response.data['articles'] as List<dynamic>)
        .where((e) => e['title'] != null && e['title'] != '[Removed]')
        .map((e) => Article.fromJson(e as Map<String, dynamic>))
        .toList();

    return articles;
  }
}
