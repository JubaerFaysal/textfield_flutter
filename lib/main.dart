import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Home_Page());
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  mActioninBar(msg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        titleSpacing: 10,
        centerTitle: false,
        toolbarHeight: 60,
        toolbarOpacity: 1,
//elevation: 100,
        backgroundColor: const Color.fromARGB(244, 142, 104, 245),
        actions: [
          IconButton(
              onPressed: () {
                mActioninBar("comment", context);
              },
              icon: const Icon(Icons.comment_bank)),
          IconButton(
              onPressed: () {
                mActioninBar("Search", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                mActioninBar("Setting", context);
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 100,
        child: const Icon(Icons.face),
        backgroundColor: const Color.fromARGB(255, 171, 69, 238),
        onPressed: () {
          mActioninBar("Floating Action Button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Call",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: "Mail",
            ),
          ],
          onTap: (int index) {
            if (index == 0) {
              mActioninBar("Home Menu", context);
            }
            if (index == 1) {
              mActioninBar("Call Centre", context);
            }
            if (index == 2) {
              mActioninBar("Mail Me", context);
            }
          }),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                    color: Color.fromARGB(255, 53, 223, 121),
                    width: 2,
                  )),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 53, 223, 121), width: 2)),
                ),
              ),
              Container(
                height: 20,
              ),
              Divider(),
              Container(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      //borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                    color: Color.fromARGB(255, 53, 223, 121),
                    width: 3,
                  )),
                ),
              ),
              Container(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                    color: Color.fromARGB(255, 53, 223, 121),
                    width: 4,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
