import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputFormController extends GetxController {
  final formkey = GlobalKey<FormState>();

  var initial = 0.obs;

  var keterangan = "one";
  var category = 0;
  var nominal = "three";

  saveData() async {
    //storedata to database;
    print("saved : $keterangan");
  }
}
