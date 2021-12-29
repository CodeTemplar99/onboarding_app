import 'dart:ui';

import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24.4, 42.0, 24.4, 42.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back_ios_new,
                    semanticLabel: 'Icon',
                  ),
                  Text(
                    'skip',
                    style: TextStyle(fontSize: 20.0, fontFamily: 'Schyler'),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 34.0),
              constraints: const BoxConstraints.expand(height: 300.0),
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/onboard.png'),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width * 0.60,
              child: const FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  'visible changes in 6 weeks',
                  style: TextStyle(fontSize: 38.0, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.teal),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ))),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10),
                  child: Text(
                    'Get started'.toUpperCase(),
                    style: const TextStyle(fontSize: 15.0),
                  ),
                ),
              ),
              padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              margin: const EdgeInsets.only(top: 40.0),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              child: const Text(
                'sign in',
                style: TextStyle(
                    fontSize: 20.0, color: Colors.teal, fontFamily: 'lato'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
