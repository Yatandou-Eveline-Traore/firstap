import 'package:firstapp/models/planning.dart';
import 'package:flutter/material.dart';

class PlanningDetails extends StatelessWidget {
  final Planning planning;
  const PlanningDetails({super.key, required this.planning});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(planning.titre)),
      body: ListView(
        children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: new DecorationImage(image: AssetImage(planning.imageUrl),
                    fit: BoxFit.cover)),
                ),
           ),
           const Text(
            "Description : ",
            style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold),
           ),
           Text(planning.description),
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text("Date et lieu : ",
            style: TextStyle(
              fontSize: 12,
               fontWeight: FontWeight.bold),
               ),
          ),
             Text(planning.description),
             Text("Date et lieu :",
          style: TextStyle(
            fontSize: 12,
             fontWeight: FontWeight.bold),
             ),
             Text("${planning.date} -${planning.lieu}"),
        ],
      ),
    );
  }
}