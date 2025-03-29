import 'package:flutter/widgets.dart';
import 'package:odev2/components/info_component.dart';
import 'package:odev2/models/person.dart';

class HomeScreen extends StatelessWidget {
  // CONSTRUCTOR --- --- ---
  HomeScreen({required this.onUpdate, super.key});

  // dependency injection, functions that effects upper statefull widget that ll be triggered inside this screenS

  // ## PROPS
  final Person person = Person(name: 'daniel', lastName: 'jackson', age: 45);
  final void Function () onUpdate;

  // ## METHODS
  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'deneme',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Text(
        'dene',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Image.asset('assets/images/wp.png'),
      InfoDisplay(onUpdate: onUpdate, type: InfoDisplayType.info, person: person,),
      InfoDisplay(onUpdate: onUpdate, type:InfoDisplayType.age, person: person,)
    ],
  );
}
