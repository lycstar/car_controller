import 'package:car_controller/controller.dart';
import 'package:car_controller/direction.dart';
import 'package:flutter/material.dart';

class DirectionButton extends StatefulWidget {
  final Direction direction;

  const DirectionButton({
    Key? key,
    required this.direction,
  }) : super(key: key);

  @override
  State<DirectionButton> createState() => _DirectionButtonState();
}

class _DirectionButtonState extends State<DirectionButton> {
  String getDirection(Direction direction) {
    switch (direction) {
      case Direction.left:
        return "left";
      case Direction.right:
        return "right";
      case Direction.forward:
        return "forward";
      case Direction.backward:
        return "backward";
    }
  }

  void onTapDown(_) {
    Controller.sendCommand(getDirection(widget.direction));
  }

  void onTapUp(_) {
    Controller.sendCommand("stop");
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTapDown: onTapDown,
        onTapUp: onTapUp,
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Image.asset('images/${getDirection(widget.direction)}.png'),
          ),
        ),
      ),
    );
  }
}
