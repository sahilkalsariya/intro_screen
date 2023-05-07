import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class secoundPage extends StatefulWidget {
  const secoundPage({Key? key}) : super(key: key);

  @override
  State<secoundPage> createState() => _secoundPageState();
}

class _secoundPageState extends State<secoundPage> {
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
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/');
                          },
                          child: Text(
                            "Back",
                            style: Global.bottomText,
                          )),
                      TextButton(
                        child: Text(
                          "Skip",
                          style: Global.bottomText,
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'homepage');
                        },
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
                    "assets/images/step-two.png",
                    height: 200,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    "Plant Growing",
                    style: Global.title,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Be part of the agriculture and gives your team the  power you need to do your best",
                    style: Global.subTitle,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: 6,
                  ),
                ],
              ),
            ),
            Stack(children: [
              Align(
                alignment: const Alignment(0, 0.65),
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: FloatingActionButton(
                      onPressed: () async {
                        SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        prefs.setBool('second', true);
                        Navigator.pushReplacementNamed(context, 'third');
                      },
                      backgroundColor: Colors.red,
                      child: const Icon(Icons.arrow_forward),
                    )),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
