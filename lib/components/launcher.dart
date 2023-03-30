import 'package:flutter/material.dart';

class Launcher extends StatelessWidget {
  final void Function() onPressed;
  const Launcher({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Model',
      child: const Icon(Icons.calendar_month),
    );
  }
}