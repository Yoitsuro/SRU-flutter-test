import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import '../models/article.dart';
import '../services/news_service.dart';

final newsServiceProvider = Provider((ref) => NewsService());

final searchQueryProvider = StateProvider<String>((ref) => '');

final articlesProvider = FutureProvider<List<Article>>((ref) async {
  final service = ref.watch(newsServiceProvider);
  final query = ref.watch(searchQueryProvider);

  if (query.trim().isEmpty) {
    return service.fetchTopHeadlines();
  }

  final results = await service.searchArticles(query.trim());

  return results.where((article) {
    return article.title.toLowerCase().contains(query.toLowerCase());
  }).toList();
});
