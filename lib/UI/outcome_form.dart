import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfin/controller/outcome_form_controller.dart';
import 'package:myfin/widget/text_form.dart';

class OutcomeForm extends StatefulWidget {
  @override
  _OutcomeFormState createState() => _OutcomeFormState();
}

class _OutcomeFormState extends State<OutcomeForm> {
  OutputFormController output = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red[50],
        child: Form(
            key: output.formkey,
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                buildTextForm(
                    label: 'Keterangan',
                    lenght: 60,
                    onsave: (value) => {output.keterangan = value}),
                buildTextForm(
                    label: 'Category',
                    lenght: 60,
                    onsave: (value) => {output.nominal = value}),
                buildTextForm(
                    label: 'Nominal',
                    lenght: 60,
                    onsave: (value) => {output.nominal = value}),
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
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.red[200]),
                      child: Center(child: Text("Submit")),
                    ),
                  ),
                )
              ],
            )));
  }
}
