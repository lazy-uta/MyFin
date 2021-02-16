import 'package:flutter/material.dart';

Widget buildTextForm(label, lenght, initial) => TextFormField(
      // autofocus: true,
      enableInteractiveSelection: true,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
        focusedErrorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
        errorStyle: TextStyle(color: Colors.purple),
      ),
      validator: (value) {
        if (value.length < 4) {
          return 'Enter at least 4 characters';
        } else {
          return null;
        }
      },
      maxLength: lenght,
      onSaved: (value) {
        print("initial : $initial");
        print("value : $value");
        initial = value;
      },
      onChanged: (value) => print(value),
      onFieldSubmitted: (value) => print(value),
    );
