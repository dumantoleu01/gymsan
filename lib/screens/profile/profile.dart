import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

import "../../widgets/MeCard.dart";
import "../calendar.dart";

class Profile extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;

  Profile({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    String userEmail = user!.email ?? "sanzhar@gmail.com";
    return Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 24),
              child: const Text(
                "My profile",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffFF0E58),
                      ),
                      height: 60,
                      width: 60,
                      child: Image.asset("assets/images/feitan.jpg")),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        userEmail,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.all(24)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calendar()),
                );
              },
              child: const MeCard(
                title: "Calendar",
                hint: "Calendar of workouts",
              ),
            ),
            const MeCard(
              title: "My courses",
              hint: "already have 3 courses",
            ),
            // const MeCard(
            //   title: "Workouts",
            //   hint: "3 workouts",
            // ),
            const MeCard(
              title: "Promocodes",
              hint: "Claim your promocodes",
            ),
            const MeCard(
              title: "Ask and answer",
              hint: "Ask your questions..",
            ),
            const MeCard(
              title: "Payment methods",
              hint: "Visa *4565",
            ),
            const MeCard(
              title: "Settings",
              hint: "Change your settings",
            ),
          ],
        ));
  }
}
