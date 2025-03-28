import 'package:flutter/widgets.dart';
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
  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(color: Color.fromARGB(144, 130, 187, 213)),
    // child: HomeScreen()
    child: UpdateScreen(),
  );
}
