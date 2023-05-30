import 'package:car_controller/direction_button.dart';
import 'package:car_controller/direction.dart';
import 'package:flutter/material.dart';

class HandleFBWidget extends StatefulWidget {
  const HandleFBWidget({Key? key}) : super(key: key);

  @override
  State<HandleFBWidget> createState() => _HandleFBWidgetState();
}

class _HandleFBWidgetState extends State<HandleFBWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      shape: const CircleBorder(),
      child: Container(
        height: 200,
        width: 200,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.redAccent,
        ),
        child: const Column(
          children: [
            DirectionButton(direction: Direction.forward),
            SizedBox(height: 5),
            DirectionButton(direction: Direction.backward),
          ],
        ),
      ),
    );
  }
}
