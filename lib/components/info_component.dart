import 'package:flutter/material.dart';
import 'package:odev2/models/person.dart';

enum InfoDisplayType { info, age }

class InfoDisplay extends StatelessWidget {
  // ## CONSTRUCTOR
  const InfoDisplay({required this.onUpdate ,required this.person, required this.type, super.key});

  // ## PROPS --- --- ---
  final Person person;
  final InfoDisplayType type;
  final void Function () onUpdate;



  // ## METHODS --- --- ---
  String getData () {
    if (type == InfoDisplayType.info) return person.getInfo();
    if (type == InfoDisplayType.age) return person.getAge();
    return 'null';
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
