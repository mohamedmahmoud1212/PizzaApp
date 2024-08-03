import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled9/Login.dart';
import 'package:untitled9/explore.dart';
import 'package:untitled9/picspage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  List pics = [
    "assets/crispy-mixed-pizza-with-olives-sausage.jpg",
    "assets/freshly-baked-pizza-rustic-wooden-table-generated-by-ai.jpg",
    "assets/freshly-italian-pizza-with-mozzarella-cheese-slice-generative-ai.jpg",
    "assets/pizza-pizza-filled-with-tomatoes-salami-olives.jpg",
    "assets/slice-crispy-pizza-with-meat-cheese.jpg",
    "assets/steamy-slice-pizza-with-stringy-cheese-fresh-toppings-is-lifted-high.jpg",
    "assets/top-view-mixed-pizza-with-tomato-black-olive-melted-cheese.jpg",
    "assets/traditional-supreme-pizza-wooden-table.jpg"
  ];

  List img = [
    "assets/crispy-mixed-pizza-with-olives-sausage.jpg",
    "assets/top-view-mixed-pizza-with-tomato-black-olive-melted-cheese.jpg",
    "assets/authentic-italian-pasta.jpg",
    "assets/delicious-cooked-sea-food.jpg"
  ];
  List nam = ["Pizza", "Starter", "Pasta", "Sea food"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: HexColor('f7faff'),
            appBar: AppBar(
              backgroundColor: HexColor('f7faff'),
              bottom: TabBar(
                  labelColor: Colors.red,
                  indicatorColor: Colors.red,
                  padding: const EdgeInsets.only(top: 2),
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
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.delivery_dining_outlined,
                                  semanticLabel: "",
                                ),
                              ),
                            ),
                            const Text(
                              "Delivery",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
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
                                  Icons.output_outlined,
                                  semanticLabel: "Curbside",
                                ),
                              ),
                            ),
                            const Text("Curbside",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
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
                                  Icons.read_more_sharp,
                                  semanticLabel: "SelfPickup",
                                ),
                              ),
                            ),
                            const Text("SelfPickup",
                                style: TextStyle(fontWeight: FontWeight.bold))
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
                                  Icons.dinner_dining,
                                  semanticLabel: "Dine-in",
                                ),
                              ),
                            ),
                            const Text("Dine-in ",
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        )),
                  ]),
              leadingWidth: 300,
              leading: Builder(
                builder: (BuildContext context) {
                  return Container(
                    child: Card(
                      surfaceTintColor: HexColor('f7faff'),
                      color: Colors.white,
                      elevation: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                          const Column(
                            children: [
                              Text(
                                'Select Location',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text('Ard elwaa'),
                            ],
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              // title: Text('Select Location'),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Card(
                    surfaceTintColor: HexColor('f7faff'),
                    color: Colors.white,
                    elevation: 5,
                    child: IconButton(
                      icon: const Icon(Icons.notifications),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            drawer: Drawer(
              width: 350,
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    child: DrawerHeader(
                      child: UserAccountsDrawerHeader(
                        accountName: const Text("Mohamed mahmoud"),
                        accountEmail: const Text("Mohamedmahmoud@gmail.com"),
                        currentAccountPicture: CircleAvatar(
                          child: ClipOval(
                            child: Image.asset(
                              "assets/432057942_1220102272294347_186163394401979868_n.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            image: DecorationImage(
                                image: AssetImage(
                                  "assets/wallpaperflare.com_wallpaper.jpg",
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.exit_to_app),
                    title: const Text('Log Out'),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Loginn()));
                    },
                  ),
                ],
              ),
            ),
            //////////////////////////////////////// Container(
            //             width: 200,
            //             height: 200,
            //             decoration: BoxDecoration(
            //               gradient: LinearGradient(
            //                 begin: Alignment.topLeft,
            //                 end: Alignment.bottomRight,
            //                 colors: [Colors.blue, Colors.green],
            //               ),
            //             ),
            body: TabBarView(
              children: [
                SafeArea(
                  child: Column(
                    children: [
                      // ElevatedButton(
                      //     onPressed: () {
                      //       Navigator.push(
                      //           context, MaterialPageRoute(builder: (context) => sec()));
                      //     },
                      //     child: Text("hello")),
                      // Container(
                      //   height: 100,
                      //   child: ListView.builder(
                      //     itemCount: ic.length,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, index) {
                      //       return Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: list(
                      //           title: ic[index],
                      //         ),
                      //       );
                      //     },
                      //   ),
                      // ),
                      SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: pics.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: picss(
                                picc: pics[index],
                              ),
                            );
                          },
                        ),
                      ),

                      // SizedBox(
                      //   height: 10,
                      // ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Text(
                                    "Explore Menu",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 5),
                                  height: 43,
                                  child:
                                      Image.asset("assets/pizza_4853259.png"),
                                )
                                // IconButton(
                                //     enableFeedback: true,
                                //     iconSize: 20,
                                //     onPressed: () {
                                //       Navigator.push(
                                //           context,
                                //           MaterialPageRoute(
                                //               builder: (context) => Explore()));
                                //     },
                                //     icon: Icon(Icons.local_pizza_outlined))
                              ],
                            ),
                            Row(
                              children: [
                                const Text("view all",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16)),
                                IconButton(
                                    enableFeedback: true,
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Explore()));
                                    },
                                    icon: const Icon(Icons.arrow_forward_ios)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Expanded(
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: pics.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 6,
                                  mainAxisSpacing: 6),
                          itemBuilder: (context, index) {
                            return Card(
                              color: HexColor('f7faff'),
                              surfaceTintColor: HexColor('f7faff'),
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        pics[index],
                                      ),
                                      radius: 45,
                                    ),
                                    const Text(
                                      "bolbol",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      // SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         height: 190,
                      //         width: 180,
                      //         child: Card(
                      //           clipBehavior: Clip.antiAliasWithSaveLayer,
                      //           color: Colors.indigo.shade50,
                      //           elevation: 3,
                      //           surfaceTintColor: Colors.indigo.shade50,
                      //           shadowColor: Colors.grey,
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //                 decoration: BoxDecoration(
                      //                   borderRadius:
                      //                       BorderRadius.circular(100),
                      //                 ),
                      //                 clipBehavior: Clip.antiAliasWithSaveLayer,
                      //                 child: CircleAvatar(
                      //                   radius: 70,
                      //                   child: Image.asset(
                      //                     "assets/pizza-pizza-filled-with-tomatoes-salami-olives.jpg",
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                 ),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Padding(
                      //                 padding:
                      //                     EdgeInsets.only(right: 41.0, top: 3),
                      //                 child: Container(
                      //                   alignment: Alignment.center,
                      //                   width: 130,
                      //                   decoration:
                      //                       BoxDecoration(color: Colors.red),
                      //                   child: Text(
                      //                     "Exclusive",
                      //                     style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontSize: 20,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: 190,
                      //         width: 180,
                      //         child: Card(
                      //           clipBehavior: Clip.antiAliasWithSaveLayer,
                      //           color: Colors.indigo.shade50,
                      //           elevation: 3,
                      //           surfaceTintColor: Colors.indigo.shade50,
                      //           shadowColor: Colors.grey,
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //                 decoration: BoxDecoration(
                      //                   borderRadius:
                      //                       BorderRadius.circular(100),
                      //                 ),
                      //                 clipBehavior: Clip.antiAliasWithSaveLayer,
                      //                 child: CircleAvatar(
                      //                   backgroundColor: Colors.white,
                      //                   radius: 75,
                      //                   child: Image.asset(
                      //                     "assets/top-view-mixed-pizza-with-tomato-black-olive-melted-cheese.jpg",
                      //                     fit: BoxFit.contain,
                      //                   ),
                      //                 ),
                      //               ),
                      //               Padding(
                      //                 padding:
                      //                     EdgeInsets.only(right: 41.0, top: 3),
                      //                 child: Container(
                      //                   alignment: Alignment.center,
                      //                   width: 130,
                      //                   decoration:
                      //                       BoxDecoration(color: Colors.blue),
                      //                   child: Text(
                      //                     "New",
                      //                     style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontSize: 20,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: 190,
                      //         width: 180,
                      //         child: Card(
                      //           clipBehavior: Clip.antiAliasWithSaveLayer,
                      //           color: Colors.indigo.shade50,
                      //           elevation: 3,
                      //           surfaceTintColor: Colors.indigo.shade50,
                      //           shadowColor: Colors.grey,
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //                 decoration: BoxDecoration(
                      //                   borderRadius:
                      //                       BorderRadius.circular(100),
                      //                 ),
                      //                 clipBehavior: Clip.antiAliasWithSaveLayer,
                      //                 child: CircleAvatar(
                      //                   backgroundColor: Colors.white,
                      //                   radius: 70,
                      //                   child: Image.asset(
                      //                     "assets/traditional-supreme-pizza-wooden-table.jpg",
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                 ),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Padding(
                      //                 padding:
                      //                     EdgeInsets.only(right: 41.0, top: 3),
                      //                 child: Container(
                      //                   alignment: Alignment.center,
                      //                   width: 130,
                      //                   decoration:
                      //                       BoxDecoration(color: Colors.red),
                      //                   child: Text(
                      //                     "For Me",
                      //                     style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontSize: 20,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //       Container(
                      //         height: 190,
                      //         width: 180,
                      //         child: Card(
                      //           clipBehavior: Clip.antiAliasWithSaveLayer,
                      //           color: Colors.indigo.shade50,
                      //           elevation: 3,
                      //           surfaceTintColor: Colors.indigo.shade50,
                      //           shadowColor: Colors.grey,
                      //           child: Column(
                      //             children: [
                      //               Container(
                      //                 decoration: BoxDecoration(
                      //                   borderRadius:
                      //                       BorderRadius.circular(100),
                      //                 ),
                      //                 clipBehavior: Clip.antiAliasWithSaveLayer,
                      //                 child: CircleAvatar(
                      //                   backgroundColor: Colors.white,
                      //                   radius: 70,
                      //                   child: Image.asset(
                      //                     "assets/view-ready-eat-delicious-meal-go.jpg",
                      //                     fit: BoxFit.cover,
                      //                   ),
                      //                 ),
                      //               ),
                      //               SizedBox(
                      //                 height: 10,
                      //               ),
                      //               Padding(
                      //                 padding:
                      //                     EdgeInsets.only(right: 41.0, top: 3),
                      //                 child: Container(
                      //                   alignment: Alignment.center,
                      //                   width: 130,
                      //                   decoration: BoxDecoration(
                      //                       color: Colors.indigoAccent),
                      //                   child: Text(
                      //                     "Special",
                      //                     style: TextStyle(
                      //                         color: Colors.white,
                      //                         fontSize: 20,
                      //                         fontWeight: FontWeight.bold),
                      //                   ),
                      //                 ),
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      //
                      // Expanded(
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //         border: Border.all(color: Colors.white)),
                      //     height: 80,
                      //     child: ListView.builder(
                      //       itemCount: img.length,
                      //       scrollDirection: Axis.horizontal,
                      //       itemBuilder: (context, index) {
                      //         return Padding(
                      //           padding: const EdgeInsets.all(10.0),
                      //           child: imager(
                      //             im: img[index],
                      //             ti: nam[index],
                      //           ),
                      //         );
                      //       },
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                )
              ],
            )));
  }
}
