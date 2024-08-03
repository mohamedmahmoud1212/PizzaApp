import 'package:flutter/material.dart';

class imager extends StatelessWidget {
  imager({super.key, required this.im, required this.ti});
  dynamic im;
  String? ti;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            child: Card(
              surfaceTintColor: Colors.indigo.shade50,
              color: Colors.indigo.shade50.withOpacity(1),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Container(
                      height: 120,
                      width: 120,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(85),
                      ),
                      child: Image.asset(
                        im!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ti!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
