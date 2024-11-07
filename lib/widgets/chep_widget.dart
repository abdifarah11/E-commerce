
import 'package:flutter/material.dart';

class Chipwidget extends StatelessWidget {
  const Chipwidget({
    super.key,
    required this.chiplabel,
  });
 final String chiplabel;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4),
      child: Chip(label:Text('chiplabel'),
      ),
    );
  }
}

