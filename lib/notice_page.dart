import 'package:flutter/material.dart';
import 'package:xianyu/notice_detail.dart';

class NoticePage extends StatelessWidget {
  const NoticePage({super.key});
  static List<String> noticeTexts = [
    "全部公告",
    "活动公告",
    "合成公告",
    "分解公告",
    "上新公告",
    "运营公告",
    "空投公告",
    "寄售公告",
  ];

  // 定义公告数据数组
  static final List<Map<String, String>> notices = [
    {
      'date': '2025年2月6日 18:00',
      'title': '【活动】「魔法火焰杯」现已开启购买！',
      'type': '活动公告',
      'outerImagePath': 'assets/images/outer_bg.png', // 外框图片
      'innerImagePath': 'assets/images/sxgg.png', // 内部图片
    },
    {
      'date': '2025年2月5日 18:00',
      'title': '【合成】「魔法火焰杯」现已开启购买！',
      'type': '合成公告',
      'outerImagePath': 'assets/images/outer_bg.png', // 外框图片
      'innerImagePath': 'assets/images/hegg.png', // 内部图片
    },
    {
      'date': '2025年2月4日 18:00',
      'title': '【分解】「魔法火焰杯」现已开启购买！',
      'type': '分解公告',
      'outerImagePath': 'assets/images/outer_bg.png', // 外框图片
      'innerImagePath': 'assets/images/hdgg.png', // 内部图片
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              _buildHeader(),
              Stack(
                clipBehavior: Clip.none, // 允许超出 Stack 范围
                children: [
                  Image.asset('assets/images/db2.png', height: 50), // 背景图片
                  Positioned(
                    top: 20, // 让图片列表稍微往上移动，部分覆盖 db2 的底部
                    left: 5,
                    right: 0,
                    child: SizedBox(
                      height: 120, // 设置高度
                      child: Row(
                        children: List.generate(noticeTexts.length, (index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0), // 图片间距
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(index == 0
                                          ? 'assets/images/icon_notice.png'
                                          : 'assets/images/icon_notice2.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  child: Center(
                                    child: _buildVerticalText(
                                        noticeTexts[index],
                                        13,
                                        index == 0
                                            ? const Color(0xffFFF7E9)
                                            : const Color(0xffDED5C3)),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: notices.length,
                  itemBuilder: (context, index) {
                    final notice = notices[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: GestureDetector(
                        onTap: () {
                          //跳转到noticedetail页面
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NoticeDt()));
                        },
                        child: _buildNoticeItem(
                          date: notice['date']!,
                          title: notice['title']!,
                          type: notice['type']!,
                          outerImagePath: notice['outerImagePath']!,
                          innerImagePath: notice['innerImagePath']!,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalText(String text, double tfontSize, Color tcolor) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: text.split('').map((char) {
          return Text(
            char,
            style: TextStyle(
                fontSize: tfontSize,
                color: tcolor,
                letterSpacing: 0,
                decoration: TextDecoration.none),
          );
        }).toList(),
      ),
    );
  }

  /// 顶部标题栏
  Widget _buildHeader() {
    return Center(
      child: Container(
        width: 200,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/tb2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            "公告",
            style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 10),
          ),
        ),
      ),
    );
  }
}

/// 构建公告项
Widget _buildNoticeItem({
  required String date,
  required String title,
  required String type,
  required String outerImagePath,
  required String innerImagePath,
}) {
  return Container(
    height: 200, // 设置高度
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(outerImagePath), // 外框图片
        fit: BoxFit.cover, // 图片填充方式
      ),
      borderRadius: BorderRadius.circular(10), // 圆角
    ),
    child: Stack(
      children: [
        // 内部图片
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10), // 圆角
            child: Image.asset(
              innerImagePath,
              fit: BoxFit.cover, // 填充整个内部
            ),
          ),
        ),
        // 文字内容
        Positioned(
          left: 16,
          top: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                type,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
