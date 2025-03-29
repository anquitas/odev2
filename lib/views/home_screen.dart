import 'package:flutter/widgets.dart';
import 'package:odev2/components/info_component.dart';
import 'package:odev2/models/person.dart';

class HomeScreen extends StatelessWidget {
  // CONSTRUCTOR --- --- ---
  HomeScreen({required this.onUpdate, required this.person, super.key});

  // dependency injection, functions that effects upper statefull widget that ll be triggered inside this screenS

  // ## PROPS
  final Person person;
  final void Function (String) onUpdate;

  // ## METHODS
  void onUpdateName() {
    onUpdate('name-update');
  }

  void onUpdateAge() {
    onUpdate('age-update');
  }

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Hoşgeldiniz',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
     
      Image.asset('assets/images/wp.png'),
      InfoDisplay(onUpdate: onUpdateName, data: person.name,),
      InfoDisplay(onUpdate: onUpdateAge, data: person.getAge(),)
    ],
  );
            
    
  
}
