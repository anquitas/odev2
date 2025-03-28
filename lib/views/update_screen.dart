import 'package:flutter/widgets.dart';
import 'package:odev2/components/info_display.dart';
import 'package:odev2/components/update_display.dart';
import 'package:odev2/models/person.dart';

class UpdateScreen extends StatelessWidget {
  // CONSTRUCTOR --- --- ---
  UpdateScreen({super.key});

  // dependency injection, functions that effects upper statefull widget that ll be triggered inside this screenS

  // ## PROPS
  final Person person = Person(name: 'daniel', lastName: 'jackson', age: 45);

  // ## METHODS
  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'deneme',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),

      UpdateDisplay(person: person,)
    ],
  );
}
