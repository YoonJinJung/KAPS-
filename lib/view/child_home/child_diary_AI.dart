import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:lottie/lottie.dart';

class ChildDiaryFieldAI extends StatefulWidget {
  const ChildDiaryFieldAI({Key? key}) : super(key: key);

  @override
  _ChildDiaryFieldAIState createState() => _ChildDiaryFieldAIState();
}

class _ChildDiaryFieldAIState extends State<ChildDiaryFieldAI> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorStyles.childmain,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset('assets/icons/heart.png'),
        ),
        leadingWidth: 48,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset('assets/icons/notification.png', width: 19),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Image.asset('assets/icons/dot3.png', width: 28),
          )
        ],
        scrolledUnderElevation: 0,
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 15,
            child: SizedBox(
              width: _width,
              height: 110,
              child: sliderWidget(),
            ),
          ),
          Positioned(
            top: 110,
            right: 83,
            child: SizedBox(
              width: 110,
              height: 110,
              child: Lottie.asset('assets/lottie/darangi_loading.json'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 170),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2024.04.05 (금)', style: TextStyles.headline24),
                        Text('오늘의 일기를 작성해주세요.', style: TextStyles.grey14),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    Image.asset('assets/images/darangi_shadow.png', width: 106),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 240,
            child: Container(
              width: 400,
              height: 470,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/field_bg_small.png'),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text('제목:', style: TextStyles.titleMedium18),
                        SizedBox(
                          width: 150,
                          child: TextField(
                            style: TextStyles.content14,
                            decoration: InputDecoration(
                              hintText: '제목을 작성해주세요.',
                              hintStyle: TextStyles.grey14,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              visualDensity: VisualDensity.compact,
                              elevation: 0,
                              fixedSize: const Size(double.infinity, 30),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: const BorderSide(
                                    color: ColorStyles.childmain, width: 1),
                              ),
                            ),
                            child: const Text('김춘자', style: TextStyles.child14))
                      ],
                    ),
                    TextField(
                      style: TextStyles.content14,
                      decoration: InputDecoration(
                        hintText: '일기를 작성해주세요.',
                        hintStyle: TextStyles.grey14,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      maxLines: 11,
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // 뒤로 가기
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(310, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 3,
                        surfaceTintColor: Colors.transparent,
                        backgroundColor: ColorStyles.childmain,
                        foregroundColor: Colors.white,
                      ),
                      child:
                          const Text('작성 완료', style: TextStyles.whiteMedium24),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                        onTap: () {
                          // 나가기
                          Navigator.pop(context);
                        },
                        child: const Text('나가기',
                            style: TextStyles.grey22underline)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: [
        SizedBox(
            width: 360,
            height: 110,
            child: Image.asset('assets/images/AI_suggestion1.png')),
        SizedBox(
            width: 360,
            height: 110,
            child: Image.asset('assets/images/AI_suggestion2.png')),
        SizedBox(
            width: 360,
            height: 110,
            child: Image.asset('assets/images/AI_suggestion3.png')),
      ],
      options: CarouselOptions(
          height: 110,
          viewportFraction: 0.945,
          autoPlay: true,
          autoPlayInterval: const Duration(milliseconds: 2700),
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
    );
  }
}
