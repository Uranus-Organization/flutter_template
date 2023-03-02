import 'package:flutter/material.dart';

class SwipeDirectionWidget extends StatefulWidget {
  const SwipeDirectionWidget({
    required this.child,
    required this.onLeft,
    required this.onRight,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onLeft;
  final VoidCallback onRight;

  @override
  State<SwipeDirectionWidget> createState() => _SwipeDirectionWidgetState();
}

class _SwipeDirectionWidgetState extends State<SwipeDirectionWidget> {
  /// Swiping
  late Offset horizontalOffset;
  late Offset verticalOffset;
  late bool isUp;
  late bool isDown;
  late bool isLeft;
  late bool isRight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) {
        horizontalOffset = details.localPosition;
      },
      onHorizontalDragUpdate: (details) {
        if (horizontalOffset.dx > details.localPosition.dx) {
          isUp = false;
          isDown = false;
          isLeft = true;
          isRight = false;
        } else {
          isUp = false;
          isDown = false;
          isLeft = false;
          isRight = true;
        }
      },
      onHorizontalDragEnd: (_) {
        if (isLeft) {
          widget.onLeft();
        } else if (isRight) {
          widget.onRight();
        }
      },
      child: widget.child,
    );
  }
}
