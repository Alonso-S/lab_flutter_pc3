import 'package:flutter/material.dart';
import '../widgets/logo_appbar.dart';
import '../widgets/category_section.dart';
import '../data/content_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: LogoAppBar(),
      ),
      body: ListView(
        children:
            contentSections.map((section) {
              return CategorySection(
                title: section['title'],
                images: section['images'],
                tags: section['tags'],
              );
            }).toList(),
      ),
    );
  }
}
