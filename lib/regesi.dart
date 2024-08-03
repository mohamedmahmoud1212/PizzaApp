import 'package:flutter/material.dart';
import 'package:untitled9/Login.dart';

class regeist extends StatelessWidget {
  const regeist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const TextField(
              decoration: InputDecoration(hintText: "password"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const TextField(
              decoration: InputDecoration(hintText: "name"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: const TextField(
              decoration: InputDecoration(hintText: "email"),
            ),
          ),
          Container(
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black),
                  color: Colors.blue),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Loginn()));
                  },
                  child: const Text(
                    "register",
                    style: TextStyle(color: Colors.white),
                  ))),
        ],
      ),
    );
  }
}
