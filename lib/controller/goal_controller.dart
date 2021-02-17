import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoalController extends GetxController {
  final formkey = GlobalKey<FormState>();

  String desc;
  num nominal;

  var goalname = "Buy Motocycle".obs;
  var goalcost = 200000000.obs;
  var deposite = 0.obs;
  var gab = 0.obs;

  calculate() => gab.value = goalcost.value - deposite.value;

  saveData(id) async {
    //store data to database
    if (id == 0) {
      deposite.value += nominal;
    } else {
      deposite.value -= nominal;
    }
    calculate();
  }

  saveOutcome() async {
    //store data outcome to database
    deposite.value -= nominal;
  }
}
