import 'package:flutter/material.dart';

class list extends StatelessWidget {
  list({
    super.key,
    required this.title,
  });

  String? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              child: Text(title!),
            )
          ],
        ),
      ),
    );
  }
}
