import 'package:flutter/material.dart';
import 'package:todo/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[100],
      content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //get user input
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Unsa nasad na?"),
              ),

              //button -. to savve and cancel
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //save button
                  MyButton(text: "Sige go", onPressed: onSave),

                  const SizedBox(
                    width: 12,
                  ),

                  //cancel button
                  MyButton(text: "Charot ra", onPressed: onCancel),
                ],
              )
            ],
          )),
    );
  }
}
