class SearchResult {
  final String name;
  final String description;
  final String imageUrl;
  final SearchResultType type;

  SearchResult({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.type,
  });
}

enum SearchResultType {
  person,
  place,
  hashtag,
}
