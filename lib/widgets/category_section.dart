import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  final String title;
  final List<String> images;
  final List<String>? tags;

  const CategorySection({
    super.key,
    required this.title,
    required this.images,
    this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                        image:
                            images[index].startsWith('http')
                                ? NetworkImage(images[index])
                                : AssetImage(images[index]) as ImageProvider,
                        width: 110,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    if (tags != null &&
                        tags!.length > index &&
                        tags![index].isNotEmpty)
                      Positioned(
                        bottom: 5,
                        left: 5,
                        child: Container(
                          color: Colors.red,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 2,
                          ),
                          child: Text(
                            tags![index],
                            style: const TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
