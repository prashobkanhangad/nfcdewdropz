import 'package:dewdropznfc/presentation/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(384.0, 816),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: GoogleFonts.montserrat().fontFamily,
            ),
            home: homepage(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
