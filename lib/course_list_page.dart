import 'package:flutter/material.dart';
import 'package:codehub/global_variables.dart';
import 'package:codehub/course_details_page.dart';
import 'package:codehub/course_card.dart';

class CourseList extends StatefulWidget {
  const CourseList({super.key});
  @override
  State<CourseList> createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  final List<String> category = const['All','App Development','Web Development','Data Sructures','Programming','Fundamentals of CSE'];
  late String selected_category='All' ;
  @override
  Widget build (BuildContext context) {
    const int price =0;
    final border = OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromRGBO(220, 220, 220, 1),
        ),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(50),)
    );
    return SafeArea (
        child: Scaffold(
          body: Column(
            children: [

              Row (
                children: [
                  Padding (
                    padding: EdgeInsets.all(12.0),
                    child:
                    Text("CodeHub",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Expanded (
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.search,size: 28,color: Colors.black,),
                          SizedBox(width: 20,),
                          Icon(Icons.card_giftcard_rounded,color:Color.fromRGBO(
                              105, 100, 69, 1.0),size: 28,),
                          SizedBox(width: 20,),
                          Icon(Icons.account_circle,size: 30,color: Colors.black,),
                        ],
                      ),

                    ),
                  ),
                ],
              ),

              SizedBox (
                  height: 60,
                  child: ListView.builder(
                      itemCount: category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final filter = category[index];
                        return Padding (
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selected_category = filter;
                                });
                              },
                              child: Chip (
                                  side: const BorderSide(
                                    color: const Color.fromRGBO(0, 0, 0, 0.01),
                                  ),
                                  backgroundColor: selected_category == filter ? Colors.amber  :const Color.fromRGBO(230, 225, 225, 1),
                                  label: Text(filter,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,vertical: 8,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                            )
                        );
                      }
                  )
              ),

              Expanded(
                child: ListView.builder(
                  itemCount: courses.length,
                  itemBuilder: (context,index) {
                    final course = courses[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetailsPage(
                              course: course,
                            ),),);
                      },
                      child: CourseCard(
                        image: course['image_url'] as String,
                        title: course['title'] as String,
                        price: course['price'] as int,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}