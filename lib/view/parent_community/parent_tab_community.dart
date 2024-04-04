import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/parent_community/widgets/community_btns.dart';

class ParentTabCommunity extends StatelessWidget {
  const ParentTabCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 70),
          SizedBox(
            height: 370,
            child: Stack(
              children: [
                Image.asset('assets/images/community_bg_darangi.png'),
                Positioned(
                  top: 75,
                  left: 20,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/icons/fire.png', width: 14),
                          const SizedBox(width: 5),
                          const Text('답변이 필요한 게시글에 댓글을 달아주세요',
                              style: TextStyles.white14),
                        ],
                      ),
                      Image.asset('assets/images/kimchi.png', width: 310),
                    ],
                  ),
                ),
                Positioned(
                  top: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/icons/notice.png', width: 19),
                            const SizedBox(width: 10),
                            Container(
                              width: 320,
                              height: 26,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFDACD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('    공지를 읽어주세요!',
                                    style: TextStyles.content14),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset('assets/icons/fire_child.png',
                                width: 16),
                            const SizedBox(width: 13),
                            Container(
                              width: 320,
                              height: 26,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFDACD),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Align(
                                alignment: Alignment.centerLeft,
                                child: Text('    서울 명소 추천해주세요',
                                    style: TextStyles.content14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          CommunityBtns(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
