import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(12),
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(
                        MyData.images[index],
                      ),
                      opacity: 0.8,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Text(
                    MyData.texts[index],
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
