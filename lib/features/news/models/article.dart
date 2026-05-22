class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String content;
  final String source;
  final String url;
  final DateTime? publishedAt;

  const Article({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.content,
    required this.source,
    required this.url,
    required this.publishedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: (json['title'] ?? '') as String,
      description: (json['description'] ?? '') as String,
      imageUrl: (json['urlToImage'] ?? '') as String,
      content: (json['content'] ?? '') as String,
      source: (json['source']?['name'] ?? '-') as String,
      url: (json['url'] ?? '') as String,
      publishedAt: json['publishedAt'] != null
          ? DateTime.tryParse(json['publishedAt'])
          : null,
    );
  }
}
