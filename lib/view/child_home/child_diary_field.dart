import 'package:flutter/material.dart';

class ChildDiaryField extends StatefulWidget {
  const ChildDiaryField({Key? key}) : super(key: key);

  @override
  _ChildDiaryFieldState createState() => _ChildDiaryFieldState();
}

class _ChildDiaryFieldState extends State<ChildDiaryField> {
  final TextEditingController _diaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: _diaryController,
        decoration: InputDecoration(
          hintText: 'Enter your diary here',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        maxLines: 10,
      ),
    );
  }
}
