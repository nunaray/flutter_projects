import 'package:flutter/material.dart';

class DemoBlackkey extends StatefulWidget {
  const DemoBlackkey({
    super.key,
  });

  @override
  State<DemoBlackkey> createState() => _DemoBlackkeyState();
}

class _DemoBlackkeyState extends State<DemoBlackkey> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.2 : 0.0),
        child: Container(
          color: isPressed ? Colors.grey[900] : Colors.black,
          width: 60,
          height: 200,
          child: Stack(
            alignment: isPressed ? Alignment.topCenter : Alignment.center,
            children: [
              Transform(
                transform: Matrix4.rotationX(0.0),
                child: const Positioned(
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(137, 53, 50, 50),
                    radius: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
