import 'package:expandable_widgets/expandable_widgets.dart';
import 'package:flutter/material.dart';

class FaqFlutter extends StatefulWidget {
  FaqFlutter({Key? key, required this.data, this.title}) : super(key: key);
  final List<List<String>> data;
  final String? title;
  @override
  State<FaqFlutter> createState() => _FaqFlutterState();
}

class _FaqFlutterState extends State<FaqFlutter> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            children: widget.data.map((group) {
      int index = widget.data.indexOf(group) + 1;
      return Expandable(
        firstChild: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(group[0], maxLines: 3, textAlign: TextAlign.justify),
        ),
        secondChild: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(group[1], maxLines: 3, textAlign: TextAlign.justify),
        ),
      );
    }).toList()));
  }
}
