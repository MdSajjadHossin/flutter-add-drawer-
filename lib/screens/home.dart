import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> products = ["Sofa", "Bed", "Dining"];
  List<String> productSize = [
    "King Size Sofa",
    "King Size Bed",
    "Royal Family Daining"
  ];
  List<int> price = [100000, 200000, 300000];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Flutter App"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_shopping_cart),
            onPressed: () {},
          ),
          // IconButton(onPressed: () {}, icon: const Icon(Icons.menu_book))
        ],
        centerTitle: true,
        backgroundColor: Colors.purple,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Md Sajjad Hosssin"),
              accountEmail: Text("sajjadhossin3749@gmail.com"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: NetworkImage(
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  foregroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                ),
                CircleAvatar(
                  foregroundImage: NetworkImage(
                      "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              subtitle: const Text("Home Page"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.shop),
              title: const Text("Shome"),
              subtitle: const Text("Buy Anything"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text("Favourite"),
              subtitle: const Text("Add to favourite"),
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lable",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: const Text("Grossery"),
              subtitle: const Text("See Grocessey Here"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: const Text("Electronics"),
              subtitle: const Text("See Eletonucs  Goods"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.label),
              title: const Text("Toys"),
              subtitle: const Text("See Toys Here"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(products[index][0]),
              ),
              title: Text(products[index]),
              subtitle: Text(productSize[index]),
              trailing: Text(price[index].toString()),
              onTap: () {},
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black87,
        elevation: 5.0,
        // shape: BeveledRectangleBorder(
        //     borderRadius: BorderRadius.circular(20.0),
        //     side: const BorderSide(
        //         color: Colors.blue, width: 2.0, style: BorderStyle.solid)),
        // mini: true,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          color: Colors.black87,
          notchMargin: 5.0,
          shape: const CircularNotchedRectangle(),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 20.0, bottom: 10.0, top: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      Text(
                        "Shop",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      Text(
                        "Favourite",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      Text(
                        "Settings",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ])),
    );
  }
}
