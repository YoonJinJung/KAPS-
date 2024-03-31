import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:daranghae/style/color_styles.dart';
import 'package:daranghae/style/text_styles.dart';

class DiaryDetailPage extends StatefulWidget {
  final DateTime date;
  final String title;
  final String content;

  const DiaryDetailPage({
    Key? key,
    required this.date,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  _DiaryDetailPageState createState() => _DiaryDetailPageState();
}

class _DiaryDetailPageState extends State<DiaryDetailPage> {
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

    return Scaffold(
      extendBodyBehindAppBar: true,
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
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0), // 왼쪽 아래를 둥글게
            bottomRight: Radius.circular(10.0), // 오른쪽 아래를 둥글게
          ),
        ),
        scrolledUnderElevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: _width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1500,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      height: 185,
                      color: ColorStyles.childSub,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Row(
                              children: [
                                SizedBox(width: 15),
                                Icon(Icons.arrow_back_ios,
                                    size: 20, color: Colors.white),
                                Text('나가기', style: TextStyles.white16),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 165,
                      child: Column(
                        children: [
                          Card(
                            color: Colors.white,
                            elevation: 5,
                            surfaceTintColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: _width,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        DateFormat('yyyy.MM.dd')
                                            .format(widget.date),
                                        style: TextStyles.title18,
                                      ),
                                      const Expanded(child: SizedBox()),
                                      InkWell(
                                        onTap: () {
                                          debugPrint('TTS speaking');

                                          speak();
                                        },
                                        child: Icon(Icons.speaker),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 5),
                                  const Divider(color: ColorStyles.grey5),
                                  const SizedBox(height: 5),
                                  Text(
                                    widget.title,
                                    style: TextStyles.content16,
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    widget.content,
                                    style: TextStyles.contentPreview,
                                    maxLines: 30,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(height: 1, width: 30, color: Colors.black),
                          const SizedBox(height: 20),
                          const Text('오늘 하루는 어땠나요?',
                              style: TextStyles.titleMedium18),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
