import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent
      ),
      child: ExpansionTile(
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        title: Text("More Menu", style: TextStyle(color: Colors.white),),
        leading: const Icon(
            Icons.more_horiz,
            color: Colors.white,
          ),
        children: [
          ListTile(
          leading: const Icon(
            Icons.question_mark,
            color: Colors.white,
          ),
          title: const Text(
            "Help",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          onTap: () {},
        ),
          ListTile(
          leading: const Icon(
            Icons.info,
            color: Colors.white,
          ),
          title: const Text(
            "About",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          onTap: () {},
        ),
        ]
      ),
    );
  }
}
