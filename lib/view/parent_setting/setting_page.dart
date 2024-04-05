import 'package:flutter/material.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class ParentTabSetting extends StatelessWidget {
  const ParentTabSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(height: 120),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: ColorStyles.parentmain,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Text('   귀여운 코끼리   ', style: TextStyles.titleMedium24),
              Text('/  김춘자', style: TextStyles.content16),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: ListTile(
              splashColor: Colors.transparent,
              onTap: () {},
              leading: const Icon(Icons.person),
              minLeadingWidth: 35,
              title: const Text('계정', style: TextStyles.title18),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: ListTile(
              splashColor: Colors.transparent,
              onTap: () {},
              leading: const Icon(Icons.key),
              minLeadingWidth: 35,
              title: const Text('개인정보', style: TextStyles.title18),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: ListTile(
              splashColor: Colors.transparent,
              onTap: () {},
              leading: const Icon(Icons.monitor),
              minLeadingWidth: 35,
              title: const Text('화면 설정', style: TextStyles.title18),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: ListTile(
              splashColor: Colors.transparent,
              onTap: () {},
              leading: const Icon(Icons.notifications),
              minLeadingWidth: 35,
              title: const Text('알림', style: TextStyles.title18),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: ListTile(
              splashColor: Colors.transparent,
              onTap: () {},
              leading: const Icon(Icons.person_add),
              minLeadingWidth: 35,
              title: const Text('사용자 초대', style: TextStyles.title18),
            ),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.05),
            child: ListTile(
              splashColor: Colors.transparent,
              onTap: () {},
              leading: const Icon(Icons.info),
              minLeadingWidth: 35,
              title: const Text('문의하기', style: TextStyles.title18),
            ),
          ),
        ),
        const Divider(color: Colors.black, indent: 20, endIndent: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(
            children: [
              Text('기타', style: TextStyles.content16),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(
            children: [
              Text('버전', style: TextStyles.content16),
              Text('1.0.1', style: TextStyles.grey10)
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Row(
            children: [
              Text('로그아웃', style: TextStyles.content16),
            ],
          ),
        ),
      ],
    );
  }
}
