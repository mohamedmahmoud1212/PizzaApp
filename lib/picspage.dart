import 'package:flutter/material.dart';

class picss extends StatelessWidget {
  picss({
    super.key,
    required this.picc,
  });

  String? picc;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Card(
          elevation: 5.5,
          color: Colors.white,
          shadowColor: Colors.black,
          surfaceTintColor: Colors.white,
          child: Column(
            children: [
              Container(
                height: 282,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // image: DecorationImage(
                  //     image: AssetImage(picc!), fit: BoxFit.cover),
                ),
                child: Image.asset(
                  picc!,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ));
  }
}
