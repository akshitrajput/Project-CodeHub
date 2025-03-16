import 'package:codehub/course_list_page.dart';
import 'package:flutter/material.dart';
import 'package:codehub/enrollments_page.dart';

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
        iconSize: 32,
        selectedFontSize: 0,
        unselectedFontSize: 0,
      ),
    );
  }
}
