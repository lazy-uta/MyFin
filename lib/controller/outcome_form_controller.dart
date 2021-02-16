import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutputFormController extends GetxController {
  final formkey = GlobalKey<FormState>();

  var initial = 0.obs;

  var keterangan = "one";
  var nominal = "three";
  var category = 0;

  saveData() async {
    //storedata to database;
    print("saved : $keterangan");
  }
}
