import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class ChildTabHome extends StatefulWidget {
  const ChildTabHome({Key? key}) : super(key: key);

  @override
  _ChildTabHomeState createState() => _ChildTabHomeState();
}

class _ChildTabHomeState extends State<ChildTabHome> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        width: _width,
        color: ColorStyles.childBackground1,
        child: Column(
          children: [
            SizedBox(height: 150),
            Text('맨위', style: TextStyles.content16),
            SizedBox(height: 1000),
            Text('중간'),
            SizedBox(height: 1000),
            Text('아래'),
            SizedBox(height: 1000)
          ],
        ),
      ),
    );
  }
}
