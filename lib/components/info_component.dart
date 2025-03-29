import 'package:flutter/material.dart';
import 'package:odev2/models/person.dart';


class InfoDisplay extends StatelessWidget {
  // ## CONSTRUCTOR
  const InfoDisplay({required this.onUpdate ,required this.data, super.key});

  // ## PROPS --- --- ---

  final String data;
  final void Function () onUpdate;



  // ## METHODS --- --- ---
  String getData () {
    return data;
  }

  @override
  Widget build(BuildContext context) => Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(getData()),
        SizedBox(width: 20,),
        OutlinedButton(
          onPressed: onUpdate,
          child: Text('update'), 
          ),
      ],
    ),
  );
}
