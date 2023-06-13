import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Image.asset("assets/images/rippedguy.jpg"),
          Container(
            margin: EdgeInsets.all(16),
            child: Text(
              "Upper Body",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/images/exercise2.svg",
                    width: 64,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 64,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dumbell",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "00:20",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    "assets/images/exercise1.svg",
                    width: 64,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 64,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rolling",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "00:10",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 128, left: 16, right: 16, bottom: 16),
            child: ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 300, height: 56),
              child: ElevatedButton(
                  child: Text(
                    'Start workout',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  )))),
            ),
          )
        ],
      ),
    );
  }
}
