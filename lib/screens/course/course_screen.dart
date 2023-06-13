import 'package:flutter/material.dart';
import 'package:yoga_training_app/constants/constants.dart';
import 'package:yoga_training_app/data/data.dart';
import 'package:yoga_training_app/models/course.dart';
import 'package:yoga_training_app/models/style.dart';
import 'package:yoga_training_app/screens/workoutpage.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  _buildStyles(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Style style = styles[index];

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WorkoutPage()),
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
            child: Container(
              margin: EdgeInsets.only(top: appPadding * 3, bottom: appPadding * 2),
              width: size.width * 0.7,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0), bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0), topRight: Radius.circular(100.0)),
                  boxShadow: [BoxShadow(color: black.withOpacity(0.3), blurRadius: 20.0, offset: Offset(5, 15))]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: appPadding / 2, right: appPadding * 3, top: appPadding),
                    child: Text(
                      style.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: appPadding / 2, right: appPadding / 2, bottom: appPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: black.withOpacity(0.3),
                            ),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Text(
                              style.time.toString() + ' min',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: black.withOpacity(0.3)),
                              maxLines: 2,
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(color: primary, borderRadius: BorderRadius.circular(5.0)),
                          child: Icon(
                            Icons.add,
                            color: white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: size.width * 0.1,
            top: 0,
            child: Container(
              child: Image(
                width: size.width * 0.3,
                height: size.height * 0.2,
                image: AssetImage(style.imageUrl),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Course",
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: appPadding / 2),
          child: Container(
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: styles.length,
                itemBuilder: (BuildContext context, int index) {
                  return _buildStyles(context, index);
                }),
          ),
        )),
      ),
    );
  }
}
