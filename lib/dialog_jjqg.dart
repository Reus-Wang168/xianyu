import 'package:flutter/material.dart';

class JJQGDialog extends StatelessWidget {
  // 静态抽奖记录数据
  final List<Map<String, String>> records = [
    {'time': '2025-2-6 20:00', 'content': '获得《这是个仙人》*1'},
    {'time': '2025-2-5 16:00', 'content': '获得《这是女仙人》*3'},
  ];

  JJQGDialog({super.key});

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
                image: AssetImage('assets/images/dialog_jj_qg.png'), // 背景图片
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
                children: [
                  const  SizedBox(height: 60,),
                  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 第一个文本，放置在左半部分的右边
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5), // 设置右边间距
                      child: Container(
                        width: 48, // 设置宽度为48dp
                        height: 17, // 设置高度为17dp
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2), // 圆角
                          border: Border.all(
                            color: Color(0xFF65574C), // 边框颜色
                            width: 1, // 边框宽度
                          ),
                          gradient: RadialGradient(
                            colors: [
                              Color(0xFFFFF6E4), // startColor
                              Color(0xFFd3c2b4), // endColor
                            ],
                            center: Alignment.center, // 设置渐变的中心点
                            radius: 0.0, // 设置渐变的半径为0
                          ),
                          color: Color(0xFFF6F0E7), // 固体背景色
                        ),
                        child: Center(
                          child: Text(
                            '数量',
                            style: TextStyle(
                              color: Colors.black, // 字体颜色
                              fontSize: 12, // 字体大小
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // 间距 10
                  SizedBox(width: 10),
                  // 第二个文本，放置在右半部分的左边
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5), // 设置左边间距
                      child: Container(
                        width: 48, // 设置宽度为48dp
                        height: 17, // 设置高度为17dp
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2), // 圆角
                          border: Border.all(
                            color: Color(0xFF65574C), // 边框颜色
                            width: 1, // 边框宽度
                          ),
                          gradient: RadialGradient(
                            colors: [
                              Color(0xFFFFF6E4), // startColor
                              Color(0xFFd3c2b4), // endColor
                            ],
                            center: Alignment.center, // 设置渐变的中心点
                            radius: 0.0, // 设置渐变的半径为0
                          ),
                          color: Color(0xFFF6F0E7), // 固体背景色
                        ),
                        child: Center(
                          child: Text(
                            '价格',
                            style: TextStyle(
                              color: Colors.black, // 字体颜色
                              fontSize: 12, // 字体大小
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(

                children: [

              ],)
            ],
          ),
        ),
      ),
    )
    );

  }
}