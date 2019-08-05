import 'package:flutter/material.dart';
import 'colors.dart';

class ClipRRctWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return ClipRRect(
      borderRadius:
      BorderRadius.only(bottomRight: Radius.circular(300.0)),
      child: Container(
        color: kYellowColor5,
        height: 100.0,
        width: 150.0,
      ),
    );   
  }
  }

