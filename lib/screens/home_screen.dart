import 'package:flutter/material.dart';
import '../data/movies_data.dart';
import '../widgets/featured_movie.dart';
import '../widgets/movie_category.dart';
import '../widgets/netflix_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Custom Netflix AppBar
            const SliverToBoxAdapter(child: NetflixAppBar()),

            // Featured Movie Banner
            SliverToBoxAdapter(child: FeaturedMovie(movie: trendingMovies[0])),

            // Categories with ListViews
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final category = categories[index];
                return MovieCategory(
                  title: category['title'],
                  movies: category['movies'],
                );
              }, childCount: categories.length),
            ),

            // Bottom spacing
            const SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Próximamente',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Búsqueda'),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Descargas',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Más'),
        ],
      ),
    );
  }
}
