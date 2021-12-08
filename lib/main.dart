// ignore_for_file: prefer_const_constructors

import 'package:contactapp/contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List mycontacts = listofcontacts;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          "My Contacts",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/woman.jpg"),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: mycontacts.length,
          itemBuilder: (BuildContext context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search by name or number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                  ),
                if (index == 0)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Recents", style: TextStyle(fontSize: 25)),
                  ),
                if (index == 2)
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text("Contacts",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContactPage(
                                  myContact: mycontacts[index],
                                )));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage("${mycontacts[index]['image']}"),
                    ),
                    title: Text(
                      mycontacts[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    subtitle: Text(mycontacts[index]['phone']),
                    trailing: Icon(Icons.more_horiz),
                  ),
                ),
                const Divider(
                  height: 4,
                  color: Colors.grey,
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

List listofcontacts = [
  {
    "name": 'amazing',
    'location': 'zongo',
    'email': 'amazingbookswa@gmail.com',
    'phone': '+233244096200',
    'Group': 'busseness',
    'image': 'https://picsum.photos/200/300?random=1',
  },
  {
    "name": 'Yelfaari',
    'location': 'nakore',
    'email': 'amazingbookswa@gmail.com',
    'phone': '+233244096205',
    'Group': 'player',
    'image': 'https://picsum.photos/200/300?random=2',
  },
  {
    "name": 'Obonto',
    'location': 'congo',
    'email': 'bookswa@gmail.com',
    'phone': '+233244096206',
    'Group': 'family',
    'image': 'https://picsum.photos/200/300?random=3',
  },
  {
    "name": 'Francis',
    'location': 'bongo',
    'email': 'hookswa@gmail.com',
    'phone': '+233244096207',
    'Group': 'Friend',
    'image': 'https://picsum.photos/200/300?random=7',
  },
  {
    "name": 'Yaw',
    'location': 'Kambale',
    'email': 'francis@gmail.com',
    'phone': '+233244096251',
    'Group': 'busseness',
    'image': 'https://picsum.photos/200/300?random=9',
  },
  {
    "name": 'Kojo',
    'location': 'Kumasi',
    'email': 'yelfaari@gmail.com',
    'phone': '+233553096200',
    'Group': 'busseness',
    'image': 'https://picsum.photos/200/300?random=10',
  },
  {
    "name": 'amazing',
    'location': 'zongo',
    'email': 'amazingbookswa@gmail.com',
    'phone': '+233244096200',
    'Group': 'busseness',
    'image': 'https://picsum.photos/200/300?random=1',
  },
];
