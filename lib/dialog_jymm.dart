import 'package:flutter/material.dart';
import 'package:xianyu/dialog_set.dart';

class JYMMDialog extends StatelessWidget {
  const JYMMDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {}, // 阻止点击弹窗内容时关闭
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95, // 弹窗宽度
            height: MediaQuery.of(context).size.height * 0.8, // 弹窗高度
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_jymm.png'), // 背景图片
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end, // 右对齐
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Image.asset('assets/images/icon_exit.png',
                            width: 40, height: 40),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    'assets/images/pc1.png',
                    width: 80,
                    height: 80,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  '已设置交易密码',
                  style: TextStyle(
                      color: Color(0xFF433B30),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 8),
                ),
                const SizedBox(height: 20),
                const Text('需验证信息后可设置交易密码',
                    style: TextStyle(
                        color: Color(0xFF6B6357),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 8)),
                const SizedBox(height: 50),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: GestureDetector(
                          onTap: () => Navigator.of(context).pop,
                          child: buildCustomButton2(
                            width: 308,
                            height: 53,
                            backgroundColor: const Color(0xFFCCCEB5),
                            gradientColors: [
                              const Color(0xFF96A135),
                              const Color(0xFF5C856F)
                            ],
                            borderRadius: 3,
                            shadowColor: const Color(0xFFE2DBBB),
                            shadowOffset: const Offset(1, 0),
                            text: '退出登录',
                            textStyle: const TextStyle(
                                color: Color(0xffFFF3C2),
                                fontSize: 22,
                                letterSpacing: 4,
                                fontWeight: FontWeight.bold),
                          )),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
