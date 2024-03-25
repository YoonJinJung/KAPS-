import 'package:flutter/material.dart';
import 'dart:async';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final ScrollController _scrollController = ScrollController();

  // 2초 후에 화면 아래로 스크롤하는 함수
  void scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), scrollToBottom);
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      ColorStyles.sub,
                      ColorStyles.childmain,
                      ColorStyles.parentmain
                    ],
                    stops: [0.0, 0.4, 1.0],
                  ),
                ),
                height: _height),
            Container(
              color: ColorStyles.parentmain,
              height: _height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 130),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Image.asset('assets/images/darangi.png', width: 111),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      '모두를 위한',
                      style: TextStyles.white38,
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(width: 35),
                      Image.asset('assets/images/title_bar.png', width: 42),
                      const SizedBox(width: 5),
                      const Text(
                        '다이어리',
                        style: TextStyles.white38,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      Container(
                        padding: const EdgeInsets.only(left: 30, right: 45),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(36),
                            bottomLeft: Radius.circular(36),
                          ),
                        ),
                        child:
                            const Text('다랑해', style: TextStyles.mainMedium48),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/title_emoji.png', width: _width),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: _width * 0.9,
                      height: 75,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          elevation: 3,
                          backgroundColor: Colors.white,
                          foregroundColor: ColorStyles.parentmain,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/finger.png', width: 20),
                            const SizedBox(width: 10),
                            const Text('다랑해 시작하기',
                                style: TextStyles.mainBold24),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
