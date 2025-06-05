class Movie {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final String year;
  final String duration;
  final String rating;
  final List<String> genres;
  final bool isLocalImage;

  Movie({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.year,
    required this.duration,
    required this.rating,
    required this.genres,
    this.isLocalImage = false,
  });
}
