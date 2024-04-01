import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class WelcomeCard extends StatelessWidget {
  final String name;

  const WelcomeCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 490,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: _width,
            height: 430,
            decoration: const BoxDecoration(
              color: ColorStyles.childmain,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22.0),
                bottomRight: Radius.circular(22.0),
              ),
            ),
          ),
          Positioned(
            top: 150,
            child: Card(
              elevation: 3,
              surfaceTintColor: Colors.transparent,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22)),
              child: Container(
                width: 320,
                height: 330,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text('  안녕하세요 ', style: TextStyles.titleMedium24),
                        Text(name, style: TextStyles.childMedium24),
                        const Text('님,', style: TextStyles.titleMedium24),
                      ],
                    ),
                    const Text('  좋은 하루예요!', style: TextStyles.titleMedium24),
                    const SizedBox(height: 40),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).pushNamed('/parentHome');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(290, 70),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 3,
                          surfaceTintColor: Colors.transparent,
                          backgroundColor: ColorStyles.childmain,
                          foregroundColor: Colors.white,
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Icon(Icons.edit_rounded, size: 25),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('일기쓰기', style: TextStyles.whiteMedium20),
                                Text('오늘의 하루를 공유해보세요!',
                                    style: TextStyles.white14)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.of(context).pushNamed('/parentHome');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(290, 70),
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(color: ColorStyles.childmain),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 3,
                          surfaceTintColor: Colors.transparent,
                          backgroundColor: Colors.white,
                          foregroundColor: ColorStyles.childmain,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: Image.asset('assets/icons/glitter.png',
                                  width: 24),
                            ),
                            const SizedBox(width: 10),
                            const SizedBox(
                              width: 170,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('AI 따라쓰기',
                                      style: TextStyles.childMedium20),
                                  Text(
                                    '"어릴적 부모님이 자주 해주셨던 요리는?"',
                                    style: TextStyles.child14,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 130,
            left: 290,
            child: Image.asset('assets/images/darangi_elevated.png', width: 90),
          ),
        ],
      ),
    );
  }
}
