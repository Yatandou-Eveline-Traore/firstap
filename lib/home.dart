import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Planning> datas = [
    Planning("Anglais", "Maison", "description english", "12/12/2024"),
    Planning("Anglais1", "Maison1", "description english1", "13/11/2024"),
    Planning("Anglais2", "Maison2", "description english2", "14/10/2024"),
    Planning("Anglais3", "Maison3", "description english3", "15/09/2024"),
    Planning("Anglais4", "Maison4", "description english4", "16/10/2024"),
    Planning("Anglais5", "Maison5", "description english5", "17/11/2024"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Page d'Accueil"),
    elevation: 10,
    backgroundColor: Colors.cyan,
    ),
    body: ListView.builder(
      itemCount: datas.length,
      itemBuilder: (context, int index){
        return PlanningWidget(planning: datas[index]);
      }
    )
    );
  
  }
}