import 'package:flutter/material.dart';
import 'package:xianyu/dialog_jymm.dart';

class SetDialog extends StatelessWidget {
  const SetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () {}, // 阻止点击弹窗内容时关闭
          child: Container(
            width: MediaQuery.of(context).size.width * 0.95, // 弹窗宽度
            height: MediaQuery.of(context).size.height * 0.85, // 弹窗高度
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/pc1.png',
                        width: 100,
                        height: 60,
                      ),
                      const SizedBox(width: 10),
                      buildStyledContainer(
                          width: 200,
                          height: 60,
                          child: const Center(
                            child: Text(
                              '手机号:  155*****',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff6e6e6e)),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                buildStyledContainer(
                    width: 320,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '代号',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff433B30),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 80),
                          const Text(
                            '修仙大神',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff433B30),
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          _buildButton("修改")
                        ],
                      ),
                    )),
                const SizedBox(height: 20),
                buildStyledContainer(
                    width: 320,
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, right: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '代号',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff433B30),
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 80),
                          const Text(
                            '**** ',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff433B30),
                                letterSpacing: 4,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            // 占用剩余空间
                            child: Container(), // 空容器，用于占位
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                                _showSetJJMMDialog(context);
                              },
                              child: _buildButton("修改"))
                        ],
                      ),
                    )),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildStyledContainer(
                            width: 150,
                            height: 60,
                            child: const Text("清除缓存",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff433B30),
                                    letterSpacing: 4,
                                    fontWeight: FontWeight.bold))),
                        buildStyledContainer(
                            width: 150,
                            height: 60,
                            child: const Text("关于我们",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff433B30),
                                    letterSpacing: 4,
                                    fontWeight: FontWeight.bold)))
                      ]),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildStyledContainer(
                            width: 150,
                            height: 60,
                            child: const Text("在线客服",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff433B30),
                                    letterSpacing: 4,
                                    fontWeight: FontWeight.bold))),
                        buildStyledContainer(
                            width: 150,
                            height: 60,
                            child: const Text("注销账号",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff433B30),
                                    letterSpacing: 4,
                                    fontWeight: FontWeight.bold)))
                      ]),
                ),
                const SizedBox(height: 30),
                buildCustomButton2(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildButton(String txt) {
  return Container(
    width: 60.0, // 对应 android:width="48dp"
    height: 25.0, // 对应 android:height="18dp"
    decoration: BoxDecoration(
      color: const Color(0xFFF6F0E7), // 对应 <solid android:color="#fff6f0e7" />
      border: Border.all(
        color:
            const Color(0xFF65574C), // 对应 <stroke android:color="#ff65574c" />
        width: 1.0, // 对应 <stroke android:width="1dp" />
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(2.0), // 对应 <corners android:radius="2dp" />
      ),
      gradient: const RadialGradient(
        colors: [
          Color(0xFFFFF6E4), // 对应 android:startColor="#fffff6e4"
          Color(0xFFD3C2B4), // 对应 android:endColor="#ffd3c2b4"
        ],
        center: Alignment(0, 0), // 对应 android:centerX="0" android:centerY="0"
        radius: 0.0, // 对应 android:gradientRadius="0dp"
      ),
    ),
    child: Center(
      child: Text(
        txt,
        style: const TextStyle(
          color: Color(0xFF433B30),
          fontWeight: FontWeight.bold, // 对应 android:textColor="#ff65574c"
          fontSize: 12.0,
        ),
      ),
    ),
  );
}

void _showSetJJMMDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true, // User can tap outside to dismiss
    barrierColor: Colors.black.withOpacity(0.7), // Semi-transparent background
    builder: (BuildContext context) {
      return const JYMMDialog();
    },
  );
}

// 封装按钮样式的函数
Widget buildCustomButton2({
  required double width,
  required double height,
  required Color backgroundColor,
  required List<Color> gradientColors,
  required double borderRadius,
  required Color shadowColor,
  required Offset shadowOffset,
  required String text,
  required TextStyle textStyle,
}) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: backgroundColor,
      gradient: RadialGradient(
        colors: gradientColors,
        center: const Alignment(0, 0),
        radius: 0,
      ),
      borderRadius: BorderRadius.circular(borderRadius),
      boxShadow: [
        BoxShadow(
          color: shadowColor,
          offset: shadowOffset,
          blurRadius: 0,
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: textStyle,
      ),
    ),
  );
}

Widget buildStyledContainer({
  double? width,
  double? height,
  required Widget child,
}) {
  return Container(
    width: width ?? 301, // 容器宽度（默认 301）
    height: height ?? 58, // 容器高度（默认 58）
    decoration: BoxDecoration(
      color: const Color(0xffe0d6c7), // 背景颜色
      border: Border.all(
        color: const Color(0xffb9ae9d), // 边框颜色
        width: 1, // 边框宽度
      ),
      borderRadius: BorderRadius.circular(0), // 无圆角
    ),
    child: Center(child: child), // 容器内部内容居中
  );
}
