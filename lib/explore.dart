import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled9/detailP.dart';


class Explore extends StatelessWidget {
  Explore({super.key});

  List ic = [
    "model",
    "name",
    "address",
    "category",
    "model",
    "name",
    "address",
    "category"
  ];
  List iconn = [
    Icons.show_chart,
    Icons.hot_tub,
    Icons.local_pizza,
    Icons.new_releases_outlined,
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: HexColor('f7faff'),
        appBar: AppBar(
          backgroundColor: HexColor('f7faff'),
          title: const Text(
            "Explore Menu",
            style: TextStyle(fontSize: 25),
          ),
          bottom: TabBar(
              tabAlignment: TabAlignment.start,
              labelColor: Colors.red,
              isScrollable: true,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                    height: 70,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30)),
                          child: const CircleAvatar(
                            backgroundColor: Colors.red,
                            child: Icon(
                              Icons.menu_book,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Text("Menu")
                      ],
                    )),
                Tab(
                    height: 70,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30)),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.new_releases_outlined,
                              semanticLabel: "New",
                            ),
                          ),
                        ),
                        const Text("New"),
                      ],
                    )),
                Tab(
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30)),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              semanticLabel: "Deals",
                            ),
                          ),
                        ),
                        const Text("Deals")
                      ],
                    )),
                Tab(
                    height: 75,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30)),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.favorite,
                              semanticLabel: "for me",
                            ),
                          ),
                        ),
                        const Text("For Me")
                      ],
                    )),
                Tab(
                    height: 70,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30)),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.local_pizza,
                            ),
                          ),
                        ),
                        const Text("Everyday")
                      ],
                    )),
                Tab(
                    height: 70,
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red),
                              borderRadius: BorderRadius.circular(30)),
                          child: const CircleAvatar(
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Text("Delivery")
                      ],
                    )),
              ]),
          leading: Card(
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.search,
                size: 35,
              ),
            )
          ],
        ),
        body: TabBarView(
          children: [
            SafeArea(
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Card(
                        surfaceTintColor: Colors.indigo.shade50,
                        shadowColor: Colors.grey,
                        elevation: 5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 18.0, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Chicken grilled pizza",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Grilled chicken,pickles,mozzarella,potato,\n wedges, garlic sauce,parsely",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Stack(alignment: Alignment.bottomCenter, children: [
                              SizedBox(
                                height: 290,
                                width: 400,
                                child: Image.asset(
                                  "assets/top-view-mixed-pizza-with-tomato-black-olive-melted-cheese.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                alignment: Alignment.bottomRight,
                                child: const Text(
                                  "119.0 L.E",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 18,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const details()));
                                            },
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 30,
                                            )),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Text(
                                          "Add",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Card(
                        surfaceTintColor: Colors.indigo.shade50,
                        shadowColor: Colors.grey,
                        elevation: 5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 18.0, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "mix grilled pizza",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Grilled mix,pickles,mozzarella,potato,\n wedges, garlic sauce,parsely",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Stack(alignment: Alignment.bottomCenter, children: [
                              SizedBox(
                                height: 290,
                                width: 400,
                                child: Image.asset(
                                  "assets/slice-crispy-pizza-with-meat-cheese.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                alignment: Alignment.bottomRight,
                                child: const Text(
                                  "119.0 L.E",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 30,
                                            )),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Text(
                                          "Add",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Card(
                        surfaceTintColor: Colors.indigo.shade50,
                        shadowColor: Colors.grey,
                        elevation: 5,
                        color: Colors.white,
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 18.0, top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "supreme-pizza  ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "supreme-pizza,pickles,mozzarella,potato,\n wedges, garlic sauce,parsely",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Stack(alignment: Alignment.bottomCenter, children: [
                              SizedBox(
                                height: 290,
                                width: 400,
                                child: Image.asset(
                                  "assets/traditional-supreme-pizza-wooden-table.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                alignment: Alignment.bottomRight,
                                child: const Text(
                                  "119.0 L.E",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.add,
                                              color: Colors.white,
                                              size: 30,
                                            )),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const Text(
                                          "Add",
                                          style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
