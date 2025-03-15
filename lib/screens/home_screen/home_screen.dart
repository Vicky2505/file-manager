import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good morning',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Rendy 👋',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.search, size: 24, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: CircularPercentIndicator(
                    radius: 122,
                    lineWidth: 27,
                    percent: 0.64,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colors.grey.shade200,
                    linearGradient: LinearGradient(
                      colors: [Color(0xFF9D79FF), Color(0xFF7747FD)],
                    ),
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "68%",
                          style: TextStyle(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF7747FD)),
                        ),
                        Text(
                          "used",
                          style: TextStyle(color: Colors.black54, fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 7,
                  left: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "289 GB",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Free",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 7,
                  right: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "785 GB",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Used",
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text("Category",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal)),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                categoryItem("images/home_assets/document_icon.png", "Docs",
                    Color.fromARGB(255, 200, 238, 210)),
                categoryItem("images/home_assets/picture_icon.png", "Images",
                    Color(0xFFD9E8FD)),
                categoryItem("images/home_assets/video_icon.png", "Videos",
                    Color(0xFFFEDDE3)),
                categoryItem("images/home_assets/music_icon.png", "Music",
                    Color(0xFFFDE7B2)),
              ],
            ),
            SizedBox(height: 30),
            Text("Recent",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal)),
            SizedBox(height: 21),
            Container(
              padding: EdgeInsets.all(13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12, blurRadius: 5, spreadRadius: 2)
                ],
              ),
              child: Row(
                children: [
                  Image.asset(
                    "images/home_assets/competitive_analysis_icon.png",
                    width: 52,
                    height: 52,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 17),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Competitive Analysis.xls",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("2.6 MB",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 14)),
                      ],
                    ),
                  ),
                  Icon(Icons.more_vert, color: Colors.black54),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryItem(String imagePath, String label, Color color) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(12)),
          child:
              Image.asset(imagePath, width: 28, height: 28, fit: BoxFit.cover),
        ),
        SizedBox(height: 11),
        Text(label,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
      ],
    );
  }
}
