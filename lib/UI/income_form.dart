import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfin/controller/Input_form_controller.dart';
import 'package:myfin/widget/text_form.dart';

class IncomeForm extends StatefulWidget {
  @override
  _IncomeFormState createState() => _IncomeFormState();
}

class _IncomeFormState extends State<IncomeForm> {
  InputFormController input = Get.find();

  @override
  Widget build(BuildContext context) {
    Widget dropdown() {
      return DropdownButton(
        value: input.initial.value,
        hint: Text("Category"),
        isExpanded: true,
        items: [
          DropdownMenuItem(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.ac_unit),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Ac")
                ],
              ),
            ),
            value: 0,
          ),
          DropdownMenuItem(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.ac_unit),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Food & Drink")
                ],
              ),
            ),
            value: 1,
          ),
          DropdownMenuItem(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Icon(Icons.ac_unit),
                  SizedBox(
                    width: 12,
                  ),
                  Text("Ac")
                ],
              ),
            ),
            value: 2,
          )
        ],
        onChanged: (value) {
          input.category = value;
          input.initial.value = value;
          print("initial : ${input.initial.value}");
        },
      );
    }

    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[50],
        child: Form(
            key: input.formkey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                buildTextForm(
                    label: 'keterangan',
                    lenght: 60,
                    onsave: (value) => {input.keterangan = value}),
                buildTextForm(
                    label: 'Nominal',
                    lenght: 12,
                    onsave: (value) => {input.nominal = value}),
                dropdown(),
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
