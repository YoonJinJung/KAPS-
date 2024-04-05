import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isNameComplete = false;
  int _userType = 0;
  bool _isPinComplete = false;

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/register_page_upper.png', width: _width),
            Image.asset('assets/icons/sunglass_emogi.png', width: 54),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('환영해요 ! ', style: TextStyles.titleMedium20),
                Text('김춘자', style: TextStyles.subMedium20),
                Text(' 님', style: TextStyles.titleMedium20),
              ],
            ),
            const Text('시작할 준비가 거의 다 됐어요 :)', style: TextStyles.content14),
            const SizedBox(height: 50),
            Container(
              width: 90,
              height: 4,
              decoration: BoxDecoration(
                color: ColorStyles.grey2,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.08),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('별명을 알려주세요', style: TextStyles.titleMedium20),
                          Text('어플 내 게시판에서 보여지는 이름이에요',
                              style: TextStyles.grey13),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            foregroundColor:
                                _isNameComplete ? Colors.white : Colors.black,
                            backgroundColor: _isNameComplete
                                ? ColorStyles.parentmain
                                : ColorStyles.grey2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minimumSize: const Size(60, 27), //width, height
                            alignment: Alignment.center,
                            textStyle: TextStyles.white14),
                        child: const Text('확인'),
                        onPressed: () {
                          // nothing to do
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      cursorHeight: 15,
                      textAlign: TextAlign.center,
                      style: TextStyles.regular20,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        hintText: '별명을 입력하세요',
                        hintStyle: TextStyle(color: ColorStyles.grey2),
                        counterText: '',
                      ),
                      maxLength: 10,
                      keyboardType: TextInputType.name,
                      onChanged: (value) {
                        if (value.length >= 2) {
                          setState(() {
                            _isNameComplete = true;
                          });
                        } else {
                          setState(() {
                            _isNameComplete = false;
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.08),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('사용자 유형을 선택해주세요', style: TextStyles.titleMedium20),
                  const Text('설정 탭에서 언제든지 바꿀 수 있어요', style: TextStyles.grey13),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            foregroundColor:
                                _userType == 1 ? Colors.white : Colors.black,
                            backgroundColor: _userType == 1
                                ? ColorStyles.parentmain
                                : ColorStyles.grey2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            minimumSize: const Size(130, 35), //width, height
                            alignment: Alignment.center,
                            textStyle: _userType == 1
                                ? TextStyles.whiteBold16
                                : TextStyles.content16),
                        child: Row(
                          children: [
                            Image.asset(
                                _userType == 1
                                    ? 'assets/icons/parent_btn.png'
                                    : 'assets/icons/parent_btn_off.png',
                                width: 25),
                            const SizedBox(width: 5),
                            const Text('부모'),
                          ],
                        ),
                        onPressed: () {
                          setState(
                            () {
                              _userType = 1;
                            },
                          );
                        },
                      ),
                      const SizedBox(width: 13),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            foregroundColor:
                                _userType == 2 ? Colors.white : Colors.black,
                            backgroundColor: _userType == 2
                                ? ColorStyles.childmain
                                : ColorStyles.grey2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            minimumSize: const Size(130, 35), //width, height
                            alignment: Alignment.center,
                            textStyle: _userType == 2
                                ? TextStyles.whiteBold16
                                : TextStyles.content16),
                        child: Row(
                          children: [
                            Image.asset(
                                _userType == 2
                                    ? 'assets/icons/child_btn.png'
                                    : 'assets/icons/child_btn_off.png',
                                width: 25),
                            const SizedBox(width: 5),
                            const Text('자녀'),
                          ],
                        ),
                        onPressed: () {
                          setState(
                            () {
                              _userType = 2;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: _width * 0.08),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('상호 사용자를 등록해 주세요',
                              style: TextStyles.titleMedium20),
                          Text('핀 번호로 부모와 자녀를 연결해요', style: TextStyles.grey13),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            foregroundColor:
                                _isPinComplete ? Colors.white : Colors.black,
                            backgroundColor: _isPinComplete
                                ? ColorStyles.parentmain
                                : ColorStyles.grey2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minimumSize: const Size(60, 27), //width, height
                            alignment: Alignment.center,
                            textStyle: TextStyles.white14),
                        child: const Text('확인'),
                        onPressed: () {
                          // nothing to do
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Column(
                    children: [
                      const Text('내 번호: OF9L195'),
                      SizedBox(
                        width: 250,
                        child: TextFormField(
                          cursorHeight: 15,
                          textAlign: TextAlign.center,
                          style: TextStyles.regular20,
                          decoration: const InputDecoration(
                            hintText: '번호를 입력하세요',
                            hintStyle: TextStyle(color: ColorStyles.grey2),
                            counterText: '',
                          ),
                          maxLength: 10,
                          keyboardType: TextInputType.name,
                          onChanged: (value) {
                            if (value.length >= 7) {
                              setState(() {
                                _isPinComplete = true;
                              });
                            } else {
                              setState(() {
                                _isPinComplete = false;
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {},
                        child: const Text('나중에 입력할래요',
                            style: TextStyles.grey14underline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  foregroundColor: Colors.white,
                  backgroundColor: ColorStyles.parentmain,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(330, 48), //width, height
                  alignment: Alignment.center,
                  textStyle: TextStyles.whiteMedium20),
              child: const Text('다랑해 시작하기'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Center(
                        child: SizedBox(
                            child: Image.asset(
                                'assets/images/register_popup.png',
                                width: _width * 0.9)));
                  },
                );
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
