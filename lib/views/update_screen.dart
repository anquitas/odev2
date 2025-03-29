import 'package:flutter/widgets.dart';
import 'package:odev2/components/update_component.dart';
import 'package:odev2/screen_view.dart';

class UpdateScreen extends StatelessWidget {
  // CONSTRUCTOR --- --- ---
  // UpdateScreen({super.key});
  UpdateScreen({required this.updateObject, super.key});

  // dependency injection, functions that effects upper statefull widget that ll be triggered inside this screenS

  // ## PROPS
  // final UpdateDisplay updateDisplay;
  final UpdateObject updateObject;

  // ## METHODS
  void init() {}

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Güncelleme',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 40),
      // UpdateDisplay(name: 'name', defaultValue: 'samantha', onClick: (){ print('böööö');},)
      UpdateDisplay.fromObject(updateObject: updateObject),
    ],
  );
}
