 //import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  var arrname=['Jubaer','Faysal','Ahmed','Tanvir','Saleh','Prova'];
  var subarr=['jubaer123@mail.com','faysal445@mail.com','ahmed887@mail.edu','tanvir@yahoo.com','saleh@11.edu','prova.it.edu'];
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
      // floatingActionButton: FloatingActionButton(
      //   elevation: 100,
      //   child: const Icon(Icons.face),
      //   backgroundColor: const Color.fromARGB(255, 171, 69, 238),
      //   onPressed: () {
      //     mActioninBar("Floating Action Button", context);
      //   },
      // ),
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
      
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   reverse: false,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('one ',style: TextStyle(fontSize: 20,fontWeight:FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text( 'two ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Text('three ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500), ),
      //     ),
      //     Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text('four ',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      //       ),

      //   ],
      // ),
      body: ListView.separated(
           itemCount: arrname.length,
             separatorBuilder: (context, index) {
            return Divider(
              height: 40,
              thickness: 1,
            );
          },
        itemBuilder: (context, index) {
        return ListTile(
            leading: CircleAvatar(radius: 27,child: Text('A'),),
            //tileColor: Color.fromARGB(255, 99, 172, 241),
            title: Text(arrname[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w300),),
            subtitle:Text(subarr[index],style: TextStyle(fontSize: 15),),
            trailing: Icon(Icons.menu),
//dense: false,
          );
      },
      )
     );
      
  }w
}
