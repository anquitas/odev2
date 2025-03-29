import 'package:flutter/material.dart';
import 'package:odev2/Screen.dart';

class UpdateDisplay extends StatelessWidget {
  // ## CONSTRUTORS --- --- ---
  UpdateDisplay({ // i could not make it const
    required this.name,
    required String defaultValue,
    required this.onClick,
    super.key,
  }): _controller = TextEditingController(text: defaultValue);
  
  UpdateDisplay.fromObject({required UpdateObject updateObject, super.key})
      : 
      name = updateObject.name,
      onClick = updateObject.onClick,
      _controller = TextEditingController(text: updateObject.defaultValue);
  // constructor that ll work w a compact object for convinience

  // ## PROPS --- --- ---
  final String name;
  // final String defaultValue;
  final void Function(String) onClick;
  final TextEditingController _controller;


  // ## METHODS --- --- ---

  @override
  Widget build(BuildContext context) => Column(
    children: [
      TextField(
        controller: _controller,
        decoration: InputDecoration(labelText: name),
      ),
      OutlinedButton(onPressed: onClick, child: Text('update')),
    ],
  );
}
