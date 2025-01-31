import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int selectedItem=0;
  List<Widget>Pages=[
    Center(child: Text("Home")),
    Center(child: Text("Planning")),
    Center(child: Text("A propos")),
  ];
  void cliqueNavigation(int index){
    selectedItem = index;
    print("index =$selectedItem");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[
        selectedItem
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedItem,
        onTap: cliqueNavigation ,
        items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Home"),

      ]),
    );
  }
}