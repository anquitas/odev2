

import 'package:flutter/material.dart';
import 'package:odev2/models/person.dart';
import 'package:odev2/views/home_screen.dart';
import 'package:odev2/views/update_screen.dart';


class Screen extends StatefulWidget {
  // ## CONSTRUCTOR --- --- ---
  const Screen({super.key});

  // ## PROPS --- --- ---
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  // ## CONSTRUCTORS --- --- ---


  // ## PROPS --- --- ---
  String activeScreen = 'home-screen';
  // final List<UpdateObject> types;
  // // = [
  // //   UpdateObject(name: 'name', defaultValue: personName(), onClick: updateName),
  // //   UpdateObject(name: 'name', defaultValue: personName(), onClick: updateName),
  // // ];


  // ## METHODS --- --- ---

  // common data used in a storelike manner
  final Person person = Person(name: 'daniel', lastName: 'jackson', age: 45);

  // FUNCS: to access the selected information & control from the views and components
  //  - access should be granted through controled APIs w specific purposes
  //  - ! access meaning data access and mutations
  //  - functions manage upper state control (screen change)
  // + for home-screen and information control component 
  //  - access to selected info
  //  - a trigger to redirect to update-screen with selected option
  //  - selection ll be defined in the component w 'type'
  // + for update-screen and update control component
  //  - access to selected info
  //  - a control over the selected info (mutation)
  //  - ! selection ll be defined in the component w 'type'
  //  - a redirect control to home-screen through the STATE 


  // F: access api to data values
  String personName () => person.name;
  String personAge () => person.getAge();

  // F: mutation for name value
  void updateName (String newName)  {
    person.setInfo(newName);
  }
  
  void switchToUpdate() {
    setState(() {
      activeScreen='update-screen';
    });
  }


  // build method of the component
  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(color: Color.fromARGB(144, 130, 187, 213)),
    // child: HomeScreen()
    child: activeScreen == 'home-screen' ? 
      HomeScreen(onUpdate: switchToUpdate,) : 
      UpdateScreen(
        updateObject: UpdateObject(name: 'name', defaultValue: personName(), onClick: updateName),
      ),
  );
}


class UpdateObject {

  // ## CONSTRUCTORS --- --- ---
  UpdateObject({required this.name, required this.defaultValue, required this.onClick});
  
  // ## PROPS --- --- ---
  String name, defaultValue;
  void Function(String) onClick;
}