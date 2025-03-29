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
 child: SizedBox(
  width: 250, 
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(getData()),
      OutlinedButton(
        onPressed: onUpdate,
        child: Text('update'),
      ),
    ],
  ),
),
  );
}
