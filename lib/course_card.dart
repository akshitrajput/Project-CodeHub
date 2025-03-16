import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String title;
  final String subtitle='';
  final int price;
  final String image;
  const CourseCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(241, 240, 240, 1),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                image,
                height: 150,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20.0)),
              color: Color.fromRGBO(255, 191, 0, 1.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // This ensures the button stays at the right
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(height: 5),
                        Text('Rs. $price', style: Theme.of(context).textTheme.bodySmall),
                        const SizedBox(height: 5),
                        Text(
                          "• CodeHub",
                          style: TextStyle(fontSize: 12, color: Color.fromRGBO(
                              3, 87, 155, 1.0),fontFamily: 'Lato',fontWeight: FontWeight.bold),
                          softWrap: true, // Allow text to wrap onto the next line
                        ),
                      ],
                    ),
                  ),

                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.black, // Set the background color of the button
                      fixedSize: Size(120, 40), // Fixed width and height for the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Optional: rounded corners
                      ),
                    ),
                    onPressed: () {
                      // Add your onPressed logic here, for example:
                      print("Enroll Now clicked");
                    },
                    child: Center(
                      child: Text(
                        "Enroll Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}