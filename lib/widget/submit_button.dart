import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
    required this.color,
    required this.size,
  }) : super(key: key);

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => {},
      icon: const Icon(Icons.umbrella, size: 20),
      label: Text('Sudmit', style: TextStyle(fontSize: size)),
      style: ElevatedButton.styleFrom(primary: color),
    );
  }
}
