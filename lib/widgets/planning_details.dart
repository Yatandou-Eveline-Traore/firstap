import 'package:firstapp/models/planning.dart';
import 'package:flutter/material.dart';

class PlanningDetails extends StatelessWidget {
  final Planning planning;
  const PlanningDetails({super.key, required this.planning});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(planning.titre),),
    );
  }
}