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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/onboard_assets/background_view.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.24),
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'images/onboard_assets/file_manager.png',
                      width: MediaQuery.of(context).size.width * 0.6,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * -0.05,
                      left: MediaQuery.of(context).size.width * 0.37,
                      child: Image.asset(
                        'images/onboard_assets/picture.png',
                        width: MediaQuery.of(context).size.width * 0.14,
                      ),
                    ),
                    Positioned(
                      top: -MediaQuery.of(context).size.height * 0.11,
                      left: MediaQuery.of(context).size.width * 0.09,
                      child: Image.asset(
                        'images/onboard_assets/music.png',
                        width: MediaQuery.of(context).size.width * 0.14,
                      ),
                    ),
                    Positioned(
                      top: -MediaQuery.of(context).size.height * 0.15,
                      left: MediaQuery.of(context).size.width * 0.35,
                      child: Image.asset(
                        'images/onboard_assets/document.png',
                        width: MediaQuery.of(context).size.width * 0.14,
                      ),
                    ),
                    Positioned(
                      top: -MediaQuery.of(context).size.height * 0.21,
                      right: MediaQuery.of(context).size.width * 0.34,
                      child: Image.asset(
                        'images/onboard_assets/video.png',
                        width: MediaQuery.of(context).size.width * 0.14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            Text(
              "Manage your files\nin a simple way",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              "You could integrate your local files with\nthe files in cloud storage",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 68),
            GestureDetector(
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        // ignore: deprecated_member_use
                        color: Colors.white.withOpacity(0.2),
                        width: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        // ignore: deprecated_member_use
                        color: Colors.white.withOpacity(0.4),
                        width: 1.2,
                      ),
                    ),
                  ),
                  Container(
                    width: 95,
                    height: 95,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        // ignore: deprecated_member_use
                        color: Colors.white.withOpacity(0.6),
                        width: 1,
                      ),
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFFFDA8FE), Color(0xFFFC69FF)],
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
