import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  final IconData? icon;
  final String? name;

  const IconList({Key? key, this.icon, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon
        ),
        Text(name!)
      ],
    );
  }
}
