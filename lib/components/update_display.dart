import 'package:flutter/material.dart';
import 'package:odev2/models/person.dart';

class UpdateDisplay extends StatelessWidget {
  // ## CONSTRUTORS --- --- ---
  const UpdateDisplay({required this.person, super.key});

  // ## PROPS --- --- ---
  final Person person;

  // ## METHODS --- --- ---
  @override
  Widget build(BuildContext context) => Column(
    children: [
      TextField(decoration: InputDecoration(hintText: person.getInfo()),),
      OutlinedButton(onPressed: () => {}, child: Text('update')),
    ],
  );
}
