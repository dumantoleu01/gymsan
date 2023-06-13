import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(""),
          Column(
            children: [
              Image.asset(
                "assets/images/flames.png",
                height: 200,
              ),
              Container(
                  margin: EdgeInsets.only(top: 24),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Days of workout",
                        style: TextStyle(color: Colors.white, fontSize: 32),
                      ),
                      Text(
                        "  13",
                        style: TextStyle(color: Colors.red, fontSize: 32),
                      ),
                    ],
                  )),
              Container(
                padding: EdgeInsets.all(24),
                child: LinearPercentIndicator(
                  // width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.2,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
              )
            ],
          ),

          // Spacer(),
          Container(
            padding: EdgeInsets.all(24),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50), // NEW
              ),
              onPressed: () {},
              child: Text("Start"),
            ),
          )
        ],
      ),
    );
  }
}
