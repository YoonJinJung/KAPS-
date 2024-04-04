import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';

class ParentAnalysis extends StatefulWidget {
  const ParentAnalysis({Key? key}) : super(key: key);

  @override
  _ParentAnalysisState createState() => _ParentAnalysisState();
}

class _ParentAnalysisState extends State<ParentAnalysis> {
  final ScrollController _scrollController = ScrollController();

  // 스크롤 이동 메소드
  void moveScroll(double loc) {
    final double newScrollPosition = _scrollController.offset + loc;
    _scrollController.animateTo(newScrollPosition,
        duration: const Duration(milliseconds: 2000), curve: Curves.easeInOut);
  }

  @override
  void initState() {
    super.initState();
    // 2초 후에 100만큼 스크롤 이동, 그리고 2초 후에 스크롤 끝까지 이동
    Future.delayed(const Duration(seconds: 5), () => moveScroll(520));
    Future.delayed(const Duration(seconds: 10), () => moveScroll(400));
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: ColorStyles.parentAppbar,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              const SizedBox(height: 74),
              Image.asset('assets/images/quiz_analysis.png', width: _width),
            ],
          ),
        ),
      ),
    );
  }
}
