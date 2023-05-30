import 'package:car_controller/direction_button.dart';
import 'package:car_controller/direction.dart';
import 'package:flutter/material.dart';

class HandleLRWidget extends StatefulWidget {
  const HandleLRWidget({Key? key}) : super(key: key);

  @override
  State<HandleLRWidget> createState() => _HandleLRWidgetState();
}

class _HandleLRWidgetState extends State<HandleLRWidget> {
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
        child: const Row(
          children: [
            DirectionButton(direction: Direction.left),
            SizedBox(width: 5),
            DirectionButton(direction: Direction.right),
          ],
        ),
      ),
    );
  }
}
