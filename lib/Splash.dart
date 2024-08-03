import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled9/onboarding.dart';

class SplashScree extends StatefulWidget {
  const SplashScree({super.key});

  @override
  State<SplashScree> createState() => _SplashScreeState();
}

class _SplashScreeState extends State<SplashScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/Animation - 1722326690393pizza.json",
            repeat: false, onLoaded: (v) {
          Future.delayed(v.duration, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Onnboarding()));
          });
        }),
      ),
    );
  }
}
