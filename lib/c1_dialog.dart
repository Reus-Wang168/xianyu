import 'package:flutter/material.dart';
import 'package:xianyu/const.dart';

class PrizeRecordDialog extends StatelessWidget {
  // 静态抽奖记录数据
  final List<Map<String, String>> records = [
    {'time': '2025-2-6 20:00', 'content': '获得《这是个仙人》*1'},
    {'time': '2025-2-5 16:00', 'content': '获得《这是女仙人》*3'},
  ];

  PrizeRecordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {}, // 阻止点击弹窗内容时关闭
          child: Container(
            width: MediaQuery.of(context).size.width * 0.92, // 弹窗宽度
            height: MediaQuery.of(context).size.height * 0.7, // 弹窗高度
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cj_record.png'), // 背景图片
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 60), // 上边距
                const Row(
                  children: [
                    // 左侧 "时间"
                    Expanded(
                      child: Center(
                        child: Text(
                          "时间",
                          style: TextStyle(
                            color: t9Color,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    // 右侧 "内容"
                    Expanded(
                      child: Center(
                        child: Text(
                          "内容",
                          style: TextStyle(
                            color: t9Color,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // 列表
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: records.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity, // 宽度填满父容器
                        margin: const EdgeInsets.only(bottom: 16), // 底部间距
                        decoration: BoxDecoration(
                          color: const Color(0xffe0d6c7), // 背景色 #ffe0d6c7
                          border: Border.all(
                            color: const Color(0xffb9ae9d), // 边框颜色 #ffb9ae9d
                            width: 1, // 边框宽度 1dp
                          ),
                          borderRadius: BorderRadius.circular(8), // 圆角
                        ),
                        padding: const EdgeInsets.all(12), // 内边距
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Center(
                                child: Text(
                                  records[index]['time']!,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: t9Color, // 文字颜色
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                records[index]['content']!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: t9Color, // 文字颜色
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
