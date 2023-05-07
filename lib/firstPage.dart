import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class firstPage extends StatefulWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              height: double.infinity,
              width: double.infinity,
              color: Colors.deepOrangeAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Text(
                          "Skip",
                          style: Global.bottomText,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'homepage');
                        },
                      ),
                      TextButton(
                        onPressed: () async {
                          SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                          prefs.setBool('first', true);
                          Navigator.pushReplacementNamed(context, 'second');
                        },
                        child: Text(
                          "Next Page",
                          style: Global.bottomText,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 600,
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Image.asset(
                    "assets/images/step-one.png",
                    height: 200,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    "Farm Driving",
                    style: Global.title,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "There are all kinds of equipment to build your farm better harvest",
                    style: Global.subTitle,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
