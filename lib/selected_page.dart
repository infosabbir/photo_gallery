import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gallery/constants.dart';

final randomSuggesion = Random.secure().nextInt(10);

class SelectedPage extends StatelessWidget {
  const SelectedPage({
    super.key,
    required this.imagePath,
    required this.texts,
  });

  final String imagePath;
  final String texts;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    // Determine the cross axis count based on device orientation

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.greenColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: MyColors.whiteColor,
          ),
        ),
        title: Text(
          texts,
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: MyColors.whiteColor,
          ),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: MyColors.whiteColor,
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: orientation == Orientation.portrait
            ? Container(
                margin: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 390,
                      height: 325,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '$texts with nature',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 387,
                      height: 51,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.greenColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              200,
                            ),
                          ),
                        ),
                        child: const Text('See More'),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Sugession',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                    const SizedBox(height: 8),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      MyData.images[randomSuggesion],
                                    ),
                                    fit: BoxFit.cover,
                                    opacity: 0.8,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                bottom: 30,
                                child: Text(
                                  MyData.texts[randomSuggesion],
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 5),
                          Stack(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      MyData.images[randomSuggesion + 1],
                                    ),
                                    fit: BoxFit.cover,
                                    opacity: 0.8,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 30,
                                bottom: 30,
                                child: Text(
                                  MyData.texts[randomSuggesion + 1],
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            : Container(
                margin: const EdgeInsets.all(12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 390,
                      height: 325,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$texts with nature',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: 387,
                            height: 51,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: MyColors.greenColor,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    200,
                                  ),
                                ),
                              ),
                              child: const Text('See More'),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Sugession',
                            style: GoogleFonts.poppins(fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 180,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          MyData.images[randomSuggesion],
                                        ),
                                        fit: BoxFit.cover,
                                        opacity: 0.8,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    bottom: 30,
                                    child: Text(
                                      MyData.texts[randomSuggesion],
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 8),
                              Stack(
                                children: [
                                  Container(
                                    width: 180,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          MyData.images[randomSuggesion + 1],
                                        ),
                                        fit: BoxFit.cover,
                                        opacity: 0.8,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 30,
                                    bottom: 30,
                                    child: Text(
                                      MyData.texts[randomSuggesion + 1],
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
