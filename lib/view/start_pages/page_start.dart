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

  // 스크롤 이동 메소드
  void moveScroll(double loc) {
    final double newScrollPosition = _scrollController.offset + loc;
    _scrollController.animateTo(newScrollPosition,
        duration: const Duration(milliseconds: 1200), curve: Curves.easeInOut);
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // MediaQuery를 사용하여 화면의 높이를 얻음
      double screenHeight = MediaQuery.of(context).size.height;

      // 2초 후에 화면 아래로 스크롤
      Future.delayed(const Duration(seconds: 2), () {
        moveScroll(screenHeight);
      });
    });
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
                      ColorStyles.childGradient1,
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
                        onPressed: () {
                          moveScroll(_height);
                        },
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
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorStyles.parentmain,
                    Colors.white,
                  ],
                  stops: [0.1, 0.5],
                ),
              ),
              height: _height,
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  const Text('가족과의 이야기, 낯선 사람들과의 대화, 일상 속 기억까지.',
                      style: TextStyles.white14),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('\'다랑해\'', style: TextStyles.whiteBold20),
                      Text('에서 모든 것을 펼쳐보세요.', style: TextStyles.white20),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 90,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Image.asset('assets/images/chat_bubble.png', width: 320),
                  Row(children: [
                    const SizedBox(width: 40),
                    const SizedBox(
                      width: 180,
                      // child: Text('설명', style: TextStyles.content16),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/darangi.png', width: 134),
                  ]),
                  const SizedBox(height: 50),
                  const Text('다랑해가 처음이시라면', style: TextStyles.content16),
                  const SizedBox(height: 3),
                  Center(
                    child: SizedBox(
                      width: _width * 0.9,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/childHome');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          elevation: 3,
                          surfaceTintColor: Colors.transparent,
                          backgroundColor: ColorStyles.parentmain,
                          foregroundColor: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/smile.png', width: 23),
                            const SizedBox(width: 10),
                            const Text('이메일로 회원가입', style: TextStyles.white20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      width: _width * 0.9,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/register');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          elevation: 3,
                          surfaceTintColor: Colors.transparent,
                          backgroundColor: ColorStyles.kakaoYellow,
                          foregroundColor: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/kakao_bubble.png',
                                width: 23),
                            const SizedBox(width: 10),
                            const Text('카카오로 회원가입',
                                style: TextStyles.regular20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text('이미 계정이 있으시다면', style: TextStyles.content16),
                  const SizedBox(height: 3),
                  Center(
                    child: SizedBox(
                      width: _width * 0.9,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/parentHome');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          elevation: 3,
                          surfaceTintColor: Colors.transparent,
                          backgroundColor: ColorStyles.childGradient1,
                          foregroundColor: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/pointer.png', width: 16),
                            const SizedBox(width: 10),
                            const Text('로그인 하러 가기', style: TextStyles.white20),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () {},
                    child: const Text('문제가 있나요?',
                        style: TextStyles.grey14underline),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
