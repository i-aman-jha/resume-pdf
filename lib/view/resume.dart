import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_app/utils/page_theme.dart';
import 'package:resume_app/view/Widgets/body.dart';
import 'package:resume_app/view/Widgets/category.dart';
import 'package:resume_app/view/Widgets/my_text.dart';
import 'package:resume_app/view/Widgets/list.dart';
import 'package:resume_app/view/Widgets/sub_category.dart';
import 'package:resume_app/view/Widgets/url_text.dart';

Future<Uint8List> generateResume(PdfPageFormat format) async {
  final resume = pw.Document(title: 'Resume', author: 'Aman Kumar Jha');

  final profileImage = pw.MemoryImage(
    (await rootBundle.load('assets/profile.jpg')).buffer.asUint8List(),
  );
  final myPageTheme = await pageTheme(format);
  final List<String> skills = [
    "Dart",
    "Flutter",
    "Bloc State Management",
    "GetX State Management",
    "Firebase",
    "API Integration",
    "C/C++",
    "Python",
    "Android Studio",
    "VS Code",
    "Git/GitHub",
    "Problem Solving",
    "Team Coordination",
    "",
  ];
  final List<String> languages = ["English", "Hindi", ""];

  resume.addPage(
    pw.MultiPage(
        pageTheme: myPageTheme,
        build: (pw.Context context) {
          return [
            pw.Container(
              child: pw.Row(
                children: [
                  pw.ClipRRect(
                    horizontalRadius: 5,
                    verticalRadius: 5,
                    child: pw.Container(
                      width: 50,
                      height: 50,
                      child: pw.Image(profileImage),
                    ),
                  ),
                  pw.SizedBox(width: 15),
                  pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "Aman Kumar Jha",
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        "Software Developer",
                        style: const pw.TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            pw.Partitions(
              children: [
                pw.Partition(
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      Category(
                          title: "Profile", icon: const pw.IconData(0xe7fd)),
                      Body(
                        body: [
                          "As an innovative App Developer with a keen focus on user experience and efficient data management, I have crafted feature-rich applications such as a Music Player with dynamic playlist organization and a Tic Tac Toe game with core logic implementation.My comprehensive knowledge of programming languages, including C++ and Python, coupled with my problem-solving abilities, positions me to thrive in creating impactful software solutions."
                        ],
                        bullets: false,
                      ),
                      Category(
                          title: "Projects", icon: const pw.IconData(0xe8f9)),
                      SubCategory(
                        title: "Music Player",
                        subTitle: "July 2024",
                        url: "https://github.com/i-aman-jha/music-player",
                      ),
                      Body(body: [
                        "Developed an feature-rich Music Player application that supports playback from local storage and dynamic playlist organization",
                        "This application enabled seamless playback of music files, featuring intuitive controls for play, pause, skip, and shuffle",
                        "Utilizes the BLoC (Business Logic Component) pattern for efficient and scalable state management throughout the app,ensuring a responsive and smooth user experience",
                        "Integrated Hive for efficient local storage, enabling persistent and fast data management for user preferences and playlist organization"
                      ]),
                      SubCategory(title: "Tic Tac Toe", subTitle: "April 2024"),
                      Body(body: [
                        "Developed a Tic Tac Toe game application that allows users to play the classic two-player game against each other",
                        "Implemented the core game logic for Tic Tac Toe, including win conditions and draw detection"
                      ]),
                      SubCategory(title: "Weather App", subTitle: "March 2024"),
                      Body(body: [
                        "Developed a Weather application that allows users to search for and view the current weather conditions of any location",
                        "Integrated a weather API to fetch real-time weather data, ensuring accurate and up-to-date information based on the user's searched location"
                      ]),
                      Category(
                          title: "Education", icon: const pw.IconData(0xe80c)),
                      SubCategory(
                        title:
                            "Bachelors of Technology in ECE, Indian Institute of Information Technology Ranchi",
                        subTitle: "2023-2027, CGPA: 7.61",
                      ),
                      SubCategory(
                        title: "AISSCE in PCM, BRL DAV Public School, Bokaro",
                        subTitle: "2022, Percentage: 92.2%",
                      ),
                      Category(
                        title: "Achievements",
                        icon: const pw.IconData(0xe8d0),
                      ),
                      Body(
                        body: [
                          "3 Star at Codechef (1612 Max.)",
                          "Pupil at Codeforces (1276 Max.)"
                        ],
                      )
                    ],
                  ),
                ),
                pw.Partition(
                  width: 120,
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.SizedBox(height: 15),
                      SubCategory(title: "Details", indent: false),
                      MyText(text: "Ranchi,Jharkhand"),
                      MyText(text: "India"),
                      UrlText(
                        text: "amanjha.7096@gmail.com",
                        url: "mailto:amanjha.7096@gmail.com",
                      ),
                      UrlText(
                        text: "GitHub",
                        url: "https://github.com/i-aman-jha",
                      ),
                      UrlText(
                        text: "CodeChef",
                        url: "https://www.codechef.com/users/amanjha7096",
                      ),
                      UrlText(
                        text: "CodeForces",
                        url: "https://codeforces.com/profile/amanjha7096",
                      ),
                      pw.SizedBox(height: 10),
                      SubCategory(title: "Skills", indent: false),
                      MyList(list: skills),
                      SubCategory(title: "Languages", indent: false),
                      MyList(list: languages),
                    ],
                  ),
                ),
              ],
            ),
          ];
        }),
  );

  return resume.save();
}
