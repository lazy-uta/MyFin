import 'package:get/get.dart';

class GoalController extends GetxController {
  var goalname = "Buy motocycle".obs;
  var goalcost = 120000000.obs;
  var deposite = 90000000.obs;
  var gab = 0.obs;

  calculate() => gab.value = goalcost.value - deposite.value;
}
