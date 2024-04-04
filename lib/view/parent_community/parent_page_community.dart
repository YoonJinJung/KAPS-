import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class CommunityPage extends StatelessWidget {
  CommunityPage({Key? key}) : super(key: key);

  // mock data of community tiles
  final List<Map<String, dynamic>> communityTiles = [
    {
      'title': '김치찌개 레시피',
      'nickName': '귀여운 코끼리',
      'age': '24',
      'content':
          '안녕하세요! 자취 중인 20대 대학생입니다. 제가 이번에 김치찌개를 해먹으려고 하는데 혹시 괜찮은 레시피 있으면 공유해주실 수 있나요?',
      'like': 25,
      'comment': 9,
    },
    {
      'title': '부모님 선물 추천!!!',
      'nickName': '고추참치',
      'age': '21',
      'content':
          '안녕하세요, 곧 어머니 생신을 앞두고 있는 대학생입니다. 어머니께 선물을 하나 준비하려고 하는데요, 어머니께 선물할 만한 좋은 선물이 있을까요? 추천 부탁드립니다!',
      'like': 6,
      'comment': 7,
    },
    {
      'title': '피크닉 가기 좋은 곳',
      'nickName': '고추참치',
      'age': '21',
      'content':
          '안녕하세요, 곧 어머니 생신을 앞두고 있는 대학생입니다. 어머니께 선물을 하나 준비하려고 하는데요, 어머니께 선물할 만한 좋은 선물이 있을까요? 추천 부탁드립니다!',
      'like': 6,
      'comment': 7,
    },
    {
      'title': '부모님 선물 추천!!!',
      'nickName': '고추참치',
      'age': '21',
      'content':
          '안녕하세요, 곧 어머니 생신을 앞두고 있는 대학생입니다. 어머니께 선물을 하나 준비하려고 하는데요, 어머니께 선물할 만한 좋은 선물이 있을까요? 추천 부탁드립니다!',
      'like': 6,
      'comment': 7,
    },
    {
      'title': '부모님 선물 추천!!!',
      'nickName': '고추참치',
      'age': '21',
      'content':
          '안녕하세요, 곧 어머니 생신을 앞두고 있는 대학생입니다. 어머니께 선물을 하나 준비하려고 하는데요, 어머니께 선물할 만한 좋은 선물이 있을까요? 추천 부탁드립니다!',
      'like': 6,
      'comment': 7,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorStyles.parentAppbar,
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0), // 왼쪽 아래를 둥글게
            bottomRight: Radius.circular(10.0), // 오른쪽 아래를 둥글게
          ),
        ),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70),
            SizedBox(
              height: 370,
              child: Stack(
                children: [
                  Image.asset('assets/images/community_bg.png'),
                  const Positioned(
                    top: 90,
                    left: 20,
                    child: Text(' 고민상담 게시판', style: TextStyles.whiteMedium32),
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
            const SizedBox(height: 15),
            for (var tile in communityTiles)
              CommunityTile(
                title: tile['title'],
                nickName: tile['nickName'],
                age: tile['age'],
                content: tile['content'],
                like: tile['like'],
                comment: tile['comment'],
              ),
          ],
        ),
      ),
    );
  }
}

class CommunityTile extends StatelessWidget {
  final String title;
  final String nickName;
  final String age;
  final String content;
  final int like;
  final int comment;

  const CommunityTile({
    Key? key,
    required this.title,
    required this.nickName,
    required this.age,
    required this.content,
    required this.like,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          indent: 10,
          endIndent: 10,
          color: ColorStyles.grey2,
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(title, style: TextStyles.content16),
                    const SizedBox(width: 3),
                    Text('$nickName /  $age세', style: TextStyles.grey10),
                  ],
                ),
                Text(
                  content,
                  style: TextStyles.grey13,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          trailing: SizedBox(
            width: 80,
            child: Row(
              children: [
                Image.asset('assets/icons/like.png', width: 16),
                const SizedBox(width: 5),
                SizedBox(
                  width: 14,
                  child: Text('$like', style: TextStyles.grey10),
                ),
                const SizedBox(width: 10),
                Image.asset('assets/icons/comment.png', width: 16),
                const SizedBox(width: 5),
                Text('$comment', style: TextStyles.grey10),
              ],
            ),
          ),
        )
      ],
    );
  }
}
