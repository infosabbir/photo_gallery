import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_gallery/constants.dart';
import 'package:photo_gallery/gallery_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyColors.greenColor,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: MyColors.whiteColor,
        ),
        title:  Text(
          'Photo Gallery',
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
      body: const GalleryPage(),
    );
  }
}
