import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled9/home.dart';
import 'package:untitled9/regesi.dart';
import 'package:animated_button/animated_button.dart';

class Loginn extends StatefulWidget {
  const Loginn({super.key});

  @override
  State<Loginn> createState() => _LoginnState();
}

class _LoginnState extends State<Loginn> {
  @override
  var submitTextStyle = const TextStyle(
      fontSize: 28,
      letterSpacing: 5,
      color: Colors.white,
      fontWeight: FontWeight.w300);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('f7faff'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 30, bottom: 30)),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 150,
              child: AnimatedButton(
                height: 50,
                width: 150,
                color: Colors.red,
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              child: AnimatedButton(
                height: 50,
                width: 150,
                color: Colors.red,
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const regeist()));
                },
              ),

              // child: AnimatedButton(
              //   animationDuration: Durations.medium1,
              //   height: 50,
              //   width: 150,
              //   text: 'Next',
              //   isReverse: true,
              //   selectedTextColor: Colors.black,
              //   transitionType: TransitionType.LEFT_TO_RIGHT,
              //   textStyle: submitTextStyle,
              //   backgroundColor: Colors.red,
              //   borderColor: Colors.white,
              //   borderRadius: 50,
              //   borderWidth: 2,
              //   onPress: () {

              //   },
              // ),
              // child: TextButton(
              //     onPressed: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => regeist()));
              //     },
              //     child: Text(
              //       "register",
              //       style: TextStyle(color: Colors.white),
              //     )),
            )
          ],
        ),
      ),
    );
  }
}
