import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: const [
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 20),
        ],
        title: const Text(
          "My Cat App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.red.shade500,
        child: SafeArea(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    "Welcome to Flutter",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontFamily: "Times New Roman",
                    ),
                  ),
                ),
                const Icon(
                  Icons.transfer_within_a_station,
                  color: Colors.white,
                  size: 60,
                ),

                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeTrackColor: Colors.yellow,
                  inactiveThumbColor: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                // Image.network(
                //     "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
                Image.asset("images/happy_cat.jpg"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("Add Me"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
