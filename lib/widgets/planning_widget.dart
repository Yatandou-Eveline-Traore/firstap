import 'package:firstapp/models/planning.dart';
import 'package:firstapp/widgets/planning_details.dart';
import 'package:flutter/material.dart';

class PlanningWidget extends StatelessWidget {
  final Planning planning;
  const PlanningWidget({super.key, required this.planning});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => PlanningDetails(planning: planning)));
        print("Ecole");
      },
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Card(
          elevation: 15,
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.cyan.shade500,
            ),
            child: ListTile(
              title: Text(
                planning.titre,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(planning.date),
              trailing: Text(planning.lieu),
            )),
        ),
      ),
    );
  }
}