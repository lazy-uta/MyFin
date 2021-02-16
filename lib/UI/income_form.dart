import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfin/controller/Input_form_controller.dart';

class IncomeForm extends StatefulWidget {
  @override
  _IncomeFormState createState() => _IncomeFormState();
}

class _IncomeFormState extends State<IncomeForm> {
  InputFormController input = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[50],
        child: Form(
            key: input.formkey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                buildTextForm('Keterangan', 60, input.keterangan),
                buildTextForm('Category', 60, input.category),
                buildTextForm('Nominal', 12, input.nominal),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 60,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.green[200]),
                      child: Center(child: Text("Submit")),
                    ),
                    onTap: () {
                      _IncomeFormState().input.formkey.currentState.save();
                      input.saveData();
                      Get.back();
                    },
                  ),
                )
              ],
            )));
  }
}
