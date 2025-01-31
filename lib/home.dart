import 'package:firstapp/accueil.dart';
import 'package:firstapp/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedItem = 0;
  List<Widget> pages = [
    Accueil(),
    Center(child: Text("Planning")),
    Center(child: Text("A propos")),
  ];

  void cliqueNavigation(int index){
    setState((){
      selectedItem = index;
      print("index =$selectedItem");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/login.jpeg"))
              ),
            ),
            Center(
              child: Text("user@gmail.com"),),

            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) {
                   return const Home();
                   }));
              },
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),),
            ),
            Divider(),//barre de séparation
             InkWell(
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) {
                   return const Home();
              }));
              },
               child: ListTile(title: Text("Planning exécuter"),
                leading: Icon(Icons.list),),
             ),
             Divider(),
             InkWell(
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) {
                   return const Home();
              }));
              },
               child: ListTile(title: Text("A propos"),
                leading: Icon(Icons.home),),
             ),
             Divider(),
             InkWell(
              onTap: () {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context) {
                   return const Login();
              }));
              },
               child: ListTile(title: Text("Déconnexion"),
                  leading: Icon(Icons.logout),),
             ),
             Divider(),
          ],
        ),
      ),
      //les bouttons de navigation en bas de la page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedItem,//boutton actuelle sélectionner
        onTap: cliqueNavigation,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Planning"),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), label: "A propos"),
        ]),


      appBar: AppBar(
        /*
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context){
                            return const Login();
                          }));
          }, icon: Icon(Icons.logout)),
        ],*/
        title: Text("Page d'Accueil"),
    elevation: 10,
    backgroundColor: Colors.cyan,
    ),
    body: pages[selectedItem],
     /*ListView.builder(
      itemCount: datas.length,
      itemBuilder: (context, int index){
        return PlanningWidget(planning: datas[index]); }*/
    );
  }
}