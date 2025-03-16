import 'package:codehub_platform/course_list_page.dart';
import 'package:codehub_platform/enrollments_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  List<Widget> pages = [
    CourseList(),
    EnrollmentsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPage ,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
        currentIndex: currentPage,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.menu),
              label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_added_rounded),
              label: '')
        ],
        iconSize: 30,
        selectedFontSize: 0,
        unselectedFontSize: 0,
      ),
    );
  }
}
