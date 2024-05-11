import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MyProgressBar extends StatelessWidget {
  const MyProgressBar({super.key,this.color = Colors.blueAccent, this.size = 25});
  final Color color;
  final double size;
  @override
  Widget build(BuildContext context) {
    return SpinKitCubeGrid(
      color: color,
      size: size,
    );
  }
}
