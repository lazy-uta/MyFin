import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputFormController extends GetxController {
  final formkey = GlobalKey<FormState>();

  var keterangan = "one";
  var category = "two";
  var nominal = "three";

  saveData() async {
    //storedata to database;
    print("saved : $keterangan");
  }
}
