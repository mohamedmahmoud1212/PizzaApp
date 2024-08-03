import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('f7faff'),
      appBar: AppBar(
        backgroundColor: HexColor('f7faff'),
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Card(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            color: Colors.grey.shade50,
            elevation: 4,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 440,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Stack(alignment: Alignment.bottomCenter, children: [
                    SizedBox(
                      height: 290,
                      width: 400,
                      child: Image.asset(
                        "assets/top-view-mixed-pizza-with-tomato-black-olive-melted-cheese.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ]),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          "Chicken grilled pizza",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          "Grilled chicken,pickles,mozzarella,potato,\n wedges, garlic sauce,parsely",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        alignment: Alignment.bottomLeft,
                        child: const Text(
                          "119.0 L.E",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 150, left: 3, right: 3, bottom: 10),
            child: Container(
              alignment: Alignment.center,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.local_pizza_outlined,
                          color: Colors.red,
                          size: 35,
                        ),
                      )),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 40, top: 5),
                        alignment: Alignment.center,
                        child: const Text(
                          "119.0 L.E",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 40),
                        alignment: Alignment.center,
                        child: const Text(
                          "inclusive taxes",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_shopping_cart,
                            size: 18,
                            color: Colors.red,
                            weight: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Add To Cart",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
