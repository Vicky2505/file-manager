import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF9D79FF), Color(0xFF7747FD)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'images/onboard_assets/file_manager.png',
                  width: 200,
                ),
                Positioned(
                  top: -30,
                  left: 20,
                  child: Image.asset(
                    'images/onboard_assets/document.png',
                    width: 50,
                  ),
                ),
                Positioned(
                  top: -50,
                  right: 30,
                  child: Image.asset(
                    'images/onboard_assets/picture.png',
                    width: 50,
                  ),
                ),
                Positioned(
                  top: -80,
                  left: 90,
                  child: Image.asset(
                    'images/onboard_assets/video.png',
                    width: 50,
                  ),
                ),
                Positioned(
                  top: -90,
                  right: 70,
                  child: Image.asset(
                    'images/onboard_assets/music.png',
                    width: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              "Manage your files\nin a simple way",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "You could integrate your local files with\nthe files in cloud storage",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 80),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Color(0xFFFF6CFB), Color(0xFFFF94FB)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white24,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
