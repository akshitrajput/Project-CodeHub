import 'package:codehub/home_page.dart';
import 'package:flutter/material.dart';
import 'package:codehub/global_variables.dart';

class CourseDetailsPage extends StatefulWidget {
  final Map<String, Object> course;
  const CourseDetailsPage({
    super.key,
    required this.course,
  });
  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  String selected_type = '';

  @override
  Widget build(BuildContext context) {
    var course = widget.course;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                ),),);
          },
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Course Details',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              course['title'] as String,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Spacer(flex: 1),
          Container(
            width: 320,
            height: 320,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(241, 240, 240, 0.4),
            ),
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Image.asset(
                course['image_url'] as String,
              ),
            ),
          ),
          Spacer(flex: 2),
          Container(
            height: 215,
            decoration: BoxDecoration(
              color: Color.fromRGBO(241, 240, 240, 1),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Amount: ${course['price']} Rs.",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: SizedBox(
                      height: 50,
                      width: 270,
                      child: ListView.builder(
                        padding: EdgeInsets.all(5.0),
                        scrollDirection: Axis.horizontal,
                        itemCount: (course['duration'] as List<String>).length,
                        itemBuilder: (context, index) {
                          final duration =
                          (course['duration'] as List<String>)[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selected_type =  duration;
                              });
                            },
                            child: Chip(
                              label: Text(
                                duration.toString(),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                  fontFamily: 'Lato',
                                ),
                              ),
                              backgroundColor: selected_type == "Video Lectures"
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text(
                      "Get Enrolled",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}