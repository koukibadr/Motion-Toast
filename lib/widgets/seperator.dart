import 'package:flutter/material.dart';

class Seperator extends StatelessWidget {
  // The distance between the contents of the toast.
  final double size;

  const Seperator.double(this.size, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
