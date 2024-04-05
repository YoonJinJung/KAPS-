import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class FeedEx1 extends StatelessWidget {
  const FeedEx1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorStyles.parentSub,
        foregroundColor: Colors.white,
        leadingWidth: 56,
        title: const Text(
          '고민상담 게시판',
          style: TextStyles.whiteBold20,
        ),
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
      body: Column(
        children: [
          const SizedBox(height: 100),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Image.asset('assets/images/feed1.png', width: _width),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 85,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: '댓글을 입력해주세요 :)',
                  hintStyle: TextStyles.grey14,
                  contentPadding: const EdgeInsets.only(left: 20),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Image.asset('assets/icons/send.png'),
                  ),
                  suffixIconConstraints: const BoxConstraints.tightFor(
                    width: 32,
                    height: 18,
                  ),
                  filled: true,
                  fillColor: ColorStyles.grey1,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
