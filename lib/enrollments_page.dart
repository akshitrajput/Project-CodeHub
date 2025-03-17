import 'package:flutter/material.dart';
import 'package:codehub_platform/global_variables.dart';

class EnrollmentsPage extends StatelessWidget {
  const EnrollmentsPage({super.key});
  @override
  Widget build (BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enrollments'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: enrollments.length,
            itemBuilder: (context,index) {
              final enrolledcourses = enrollments[index];
              return Padding(padding: EdgeInsets.all(2.0),
                  child: ListTile(
                    trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete_forever_rounded,color: Colors.redAccent,)),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 24,
                      backgroundImage: AssetImage(enrolledcourses['image_url'] as String),
                    ),
                    title: Text(enrolledcourses['title'] as String,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                    subtitle: Text(".CodeHub"),
                  ));
            })
    );
  }
}
