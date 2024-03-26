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
                  stops: [0.0, 0.5],
                ),
              ),
              height: _height,
              child: Column(
                children: [
                  const SizedBox(height: 120),
                  Container(
                    margin: const EdgeInsets.only(right: 40),
                    width: 310,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/chat_bubble.png'),
                          fit: BoxFit.fill),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30, top: 27),
                      child: Text('"다랑해"에 오신 걸 환영해요\n',
                          style: TextStyles.regular20),
                    ),
                  ),
                  Row(children: [
                    const SizedBox(width: 40),
                    SizedBox(
                      width: 180,
                      child: Text('아빠힘내세요엄마힘내세요우리가있잖아요힘내시라고요',
                          style: TextStyles.content16),
                    ),
                    const SizedBox(width: 10),
                    Image.asset('assets/images/darangi.png', width: 134),
                  ]),
                  const SizedBox(height: 50),
                  const Text('다랑해가 처음이시라면', style: TextStyles.regular20),
                  const SizedBox(height: 3),
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
                          backgroundColor: ColorStyles.parentmain,
                          foregroundColor: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/smile.png', width: 23),
                            const SizedBox(width: 10),
                            const Text('회원가입', style: TextStyles.white24),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text('이미 계정이 있으시다면', style: TextStyles.regular20),
                  const SizedBox(height: 3),
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
                          backgroundColor: ColorStyles.childmain,
                          foregroundColor: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/icons/pointer.png', width: 16),
                            const SizedBox(width: 10),
                            const Text('로그인', style: TextStyles.white24),
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
