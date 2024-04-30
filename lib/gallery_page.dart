import 'package:flutter/material.dart';
import 'package:photo_gallery/constants.dart';
import 'package:photo_gallery/selected_page.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    // Determine the cross axis count based on device orientation
    final crossAxisCount = orientation == Orientation.landscape ? 4 : 2;

    return GridView.builder(
        itemCount: MyData.images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount),
        itemBuilder: (context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectedPage(
                    texts: MyData.texts[index],
                    imagePath: MyData.images[index],
                  ),
                ),
              );
              debugPrint('Tapped on item $index');
            },
            child: SizedBox(
              width: 150,
              height: 150,
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.9,
                      child: Image.asset(
                        MyData.images[index],
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 60,
                      left: 40,
                      child: Text(
                        MyData.texts[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
