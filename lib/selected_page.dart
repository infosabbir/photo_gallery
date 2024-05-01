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
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 390,
                    height: 325,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
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
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 51,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: MyColors.greenColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                        child: const Text('See More'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Sugession',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SizedBox(
                        width: 180,
                        height: 180,
                        child: Stack(
                          children: [
                            Image.asset(
                              MyData.images[randomSuggesion],
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: 40,
                              bottom: 60,
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
                      ),
                      SizedBox(
                        width: 180,
                        height: 180,
                        child: Stack(
                          children: [
                            Image.asset(
                              MyData.images[randomSuggesion + 1],
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                              left: 40,
                              bottom: 60,
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
                      ),
                    ],
                  ),
                ],
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 372,
                          height: 298,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage(imagePath),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.fill,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.vertical,
                        children: [
                          const SizedBox(height: 16),
                          Text(
                            '$texts with nature',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Being in nature, or even viewing scenes of nature,\nreduces anger, fear, and stress and increases \npleasant feelings',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 372,
                              height: 41,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: MyColors.greenColor,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      30,
                                    ),
                                  ),
                                ),
                                child: const Text('See More'),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Sugession',
                            style: GoogleFonts.poppins(fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 180,
                                height: 180,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      MyData.images[randomSuggesion],
                                    ),
                                    Positioned(
                                      left: 40,
                                      bottom: 60,
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
                              ),
                              SizedBox(
                                width: 180,
                                height: 180,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      MyData.images[randomSuggesion + 1],
                                    ),
                                    Positioned(
                                      left: 40,
                                      bottom: 60,
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
