import 'package:flutter/material.dart';
import 'package:odev2/screen_view.dart';

class UpdateDisplay extends StatelessWidget {
  // ## CONSTRUTORS --- --- ---
  UpdateDisplay({
    required this.name,
    required String defaultValue,
    required this.onClick,
    super.key,
  }) : _controller = TextEditingController(text: defaultValue);
  // i could not make it const

  UpdateDisplay.fromObject({required UpdateObject updateObject, super.key})
    : name = updateObject.name,
      onClick = updateObject.onClick,
      _controller = TextEditingController(text: updateObject.defaultValue);
  // constructor that ll work w a compact object for convinience

  // ## PROPS --- --- ---
  final String name;
  // final String defaultValue;
  final void Function(String) onClick;
  final TextEditingController _controller;

  // ## METHODS --- --- ---

  void onPressed () {
    onClick(_controller.text);
  }

  @override
  Widget build(BuildContext context) => Center(
  child: SizedBox(
    width: 260, 
    child: Column(
      mainAxisSize: MainAxisSize.min, 
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(labelText: name),
        ),
        SizedBox(height: 40),
        OutlinedButton(onPressed: onPressed, child: Text('update')),
      ],
    ),
  ),
);

  
}
