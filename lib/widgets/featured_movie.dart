import 'package:flutter/material.dart';
import '../models/movie.dart';

class FeaturedMovie extends StatelessWidget {
  final Movie movie;

  const FeaturedMovie({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Featured movie image
        SizedBox(
          height: 500,
          width: double.infinity,
          child:
              movie.isLocalImage
                  ? Image.asset(movie.imageUrl, fit: BoxFit.cover)
                  : Image.network(movie.imageUrl, fit: BoxFit.cover),
        ),

        // Gradient overlay for better text visibility
        Container(
          height: 500,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8),
                Colors.black,
              ],
              stops: const [0.0, 0.7, 1.0],
            ),
          ),
        ),

        // Movie info and buttons
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Genres
                Text(
                  movie.genres.join(' • '),
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),

                // Action buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildActionButton(context, Icons.add, 'Mi Lista', () {}),

                    // Play button
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/movie-detail',
                          arguments: movie,
                        );
                      },
                      icon: const Icon(Icons.play_arrow),
                      label: const Text('Reproducir'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                      ),
                    ),

                    _buildActionButton(context, Icons.info_outline, 'Info', () {
                      Navigator.pushNamed(
                        context,
                        '/movie-detail',
                        arguments: movie,
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback onPressed,
  ) {
    return Column(
      children: [
        IconButton(onPressed: onPressed, icon: Icon(icon, color: Colors.white)),
        Text(label, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
