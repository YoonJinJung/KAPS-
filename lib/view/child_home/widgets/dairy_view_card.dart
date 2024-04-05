import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class DiaryViewCard extends StatefulWidget {
  final DateTime date;
  final String title;
  final String content;
  final String from;
  final String to;
  final String relationship;
  final bool isParent;

  const DiaryViewCard({
    Key? key,
    required this.date,
    required this.title,
    required this.content,
    required this.from,
    required this.to,
    required this.relationship,
    required this.isParent,
  }) : super(key: key);

  @override
  _DiaryViewCardState createState() => _DiaryViewCardState();
}

class _DiaryViewCardState extends State<DiaryViewCard> {
  FlutterTts tts = FlutterTts();

  Future<void> speak() async {
    await tts.speak(widget.content); // 텍스트 음성 변환 및 재생
  }

  @override
  void initState() {
    super.initState();
    tts.setLanguage('ko-KR');
    tts.setVoice({"name": "ko-kr-x-ism-local", "locale": "ko-KR"});
    tts.setSpeechRate(0.5);
  }

  @override
  void dispose() {
    tts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;

    return Card(
      color: Colors.white,
      elevation: 5,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: _width,
        height: 465,
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                // tts 버튼
                InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    debugPrint('TTS speaking');
                    speak();
                  },
                  child: Image.asset(
                      widget.isParent
                          ? 'assets/images/TTS_btn_parent.png'
                          : 'assets/images/TTS_btn.png',
                      width: 147),
                ),

                const SizedBox(height: 25),
                Text(
                  widget.title,
                  style: TextStyles.content16,
                ),
                const SizedBox(height: 15),
                SizedBox(
                  height: 265,
                  child: SingleChildScrollView(
                    child: Text(
                      widget.content,
                      style: TextStyles.title18
                          .copyWith(fontWeight: FontWeight.w200),
                      maxLines: 30,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 90,
              right: 0,
              child: Image.asset('assets/images/darangi_inner.png', width: 100),
            ),
            Positioned(
              top: 20,
              left: 10,
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
                          child: SizedBox(
                              child: Image.asset(
                                  'assets/images/comment_popup.png',
                                  width: _width * 0.9)));
                    },
                  );
                },
                child: Image.asset(
                    widget.isParent
                        ? 'assets/images/parent_comment_btn.png'
                        : 'assets/images/child_comment_btn.png',
                    width: 250),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
