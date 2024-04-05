import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';

class CalendarDetail extends StatefulWidget {
  const CalendarDetail({Key? key}) : super(key: key);

  @override
  _CalendarDetailState createState() => _CalendarDetailState();
}

class _CalendarDetailState extends State<CalendarDetail> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: ColorStyles.parentSub,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Image.asset('assets/images/calendar_detail.png', width: _width),
            ],
          ),
        ),
      ),
    );
  }
}
