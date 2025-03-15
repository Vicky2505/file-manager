import 'package:flutter/material.dart';

class FileScreen extends StatefulWidget {
  const FileScreen({super.key});

  @override
  State<FileScreen> createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  final List<Map<String, String>> folders = [
    {"title": "E - Book", "items": "49 items", "size": "421 MB"},
    {"title": "Freelance", "items": "286 items", "size": "2.8 GB"},
    {"title": "Content Plan", "items": "52 items", "size": "84 MB"},
    {"title": "Bootcamp", "items": "109 items", "size": "4.6 GB"},
    {"title": "Research", "items": "76 items", "size": "1.5 GB"},
    {"title": "Design Exploration", "items": "43 items", "size": "8.3 GB"},
    {"title": "Important Files", "items": "20 items", "size": "2.5 GB"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(width: 16),
            const Text(
              "My Folders 👍",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 29),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black12),
              ),
              child: const Icon(Icons.search, color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
        child: ListView.builder(
          itemCount: folders.length,
          itemBuilder: (context, index) {
            return folderTile(
              folders[index]["title"]!,
              folders[index]["items"]!,
              folders[index]["size"]!,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF7A52F4),
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget folderTile(String title, String items, String size) {
    return SizedBox(
      width: 300,
      child: Container(
        margin: EdgeInsets.only(bottom: 23),
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.05),
              blurRadius: 15,
              spreadRadius: 5,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              "images/file_assets/folder_icons.png",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "$items  |  $size",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Icon(Icons.more_vert, color: Colors.black54),
          ],
        ),
      ),
    );
  }
}
