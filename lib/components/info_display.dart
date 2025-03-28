import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:odev2/models/person.dart';

class InfoDisplay extends StatelessWidget {
  // ## CONSTRUCTOR
  const InfoDisplay({required this.person, required this.type, super.key});

  // ## PROPS --- --- ---
  final Person person;
  final String type;

  // ## METHODS --- --- ---
  @override
  Widget build(BuildContext context) => Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(type == 'info' ? person.getInfo(): person.getAge()),
        SizedBox(width: 20,),
        OutlinedButton(child: Text('update'), onPressed: () => {}),
      ],
    ),
  );
}
