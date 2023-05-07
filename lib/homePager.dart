import 'package:flutter/material.dart';

import 'main.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
              color: Colors.deepOrangeAccent.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/');
                      },
                      child: Text(
                        "Back To Home Page",
                        style: Global.bottomText,
                      )),
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
                  Image.network(
                      "https://webstockreview.net/images/farm-clipart-pasture-10.png"),
                  const Spacer(
                    flex: 3,
                  ),
                  Text(
                    " Wel-come Back Farm Application",
                    style: Global.title,
                  ),
                  const Spacer(
                    flex: 4,
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
