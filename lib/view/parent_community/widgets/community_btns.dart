import 'package:flutter/material.dart';
import 'package:daranghae/style/text_styles.dart';
import 'package:daranghae/view/parent_community/parent_page_community.dart';

class CommunityBtns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/community_label.png', width: 104),
              const Text('8개의 게시판', style: TextStyles.greyLight14),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommunityPage(),
                    ),
                  );
                },
                child: Image.asset('assets/icons/gomin.png', width: 160),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommunityPage(),
                    ),
                  );
                },
                child: Image.asset('assets/icons/music.png', width: 160),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CommunityPage(),
                    ),
                  );
                },
                child: Image.asset('assets/icons/book.png', width: 160),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                child: Image.asset('assets/icons/more.png', width: 160),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
