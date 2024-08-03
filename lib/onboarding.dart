import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:onboarding_animation/onboarding_animation.dart';
import 'package:untitled9/Login.dart';

class Onnboarding extends StatefulWidget {
  const Onnboarding({super.key});

  @override
  State<Onnboarding> createState() => _OnnboardingState();
}

class _OnnboardingState extends State<Onnboarding> {
  @override
  var submitTextStyle = const TextStyle(
      fontSize: 28,
      letterSpacing: 5,
      color: Colors.white,
      fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Stack(alignment: Alignment.bottomRight, children: [
            OnBoardingAnimation(
              controller: PageController(initialPage: 0),
              pages: const [
                _GetCardsContent(
                  image: 'assets/2793961.jpg',
                  cardContent: 'Our pizza is always different ',
                ),
                _GetCardsContent(
                  image: 'assets/2796253.jpg',
                  cardContent: 'Communication is alawys easy',
                ),

                // _GetCardsContent(
                //   image: 'assets/images/image_3.jpg',
                //   cardContent:
                //       'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                // ),
              ],
              indicatorDotHeight: 7.0,
              indicatorDotWidth: 7.0,
              indicatorType: IndicatorType.expandingDots,
              indicatorPosition: IndicatorPosition.bottomCenter,
              indicatorSwapType: SwapType.normal,
            ),
            AnimatedButton(
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
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const Loginn()));
              },
            ),
            // AnimatedButton(
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
            //     Navigator.pushReplacement(
            //         context, MaterialPageRoute(builder: (context) => Loginn()));
            //   },
            // ),
          ]),
        ),
      ),
    );
  }
}

class _GetCardsContent extends StatelessWidget {
  final String image, cardContent;

  const _GetCardsContent({
    this.image = '',
    this.cardContent = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(20.0),
              ),
              child: Image.asset(image),
            ),
            Text(
              cardContent,
            ),
          ],
        ),
      ),
    );
  }
}
