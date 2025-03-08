import 'package:flutter/material.dart';
import 'package:xianyu/const.dart';

class PrizeDialog extends StatelessWidget {
  const PrizeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(); // 点击空白处关闭弹窗
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 背景图片 + 内容
              Stack(
                alignment: Alignment.center,
                children: [
                  // 背景图片
                  Image.asset(
                    'assets/images/dialog_bg1.png', // 替换为你的背景图片路径
                    fit: BoxFit.cover,
                  ),
                  // 内容
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '恭喜获得',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 90),
                      Container(
                        width: 66,
                        height: 75,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/jx.png'), // 替换为你的奖品背景图片路径
                            fit: BoxFit.cover,
                          ),
                          // 圆角
                        ),
                        child: Image.asset(
                          height: 50,
                          width: 49,
                          'assets/images/bg_nv.png', // 替换为你的奖品图片路径
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        '《这是女仙人》 * 1',
                        style: TextStyle(
                          fontSize: 18,
                          color: t6Color,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20), // 间距
              // 独立的“点击空白处关闭”区域
              Container(
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/bg_close.png'), // 替换为你的独立背景图片路径
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8), // 圆角
                ),
                child: const Text(
                  '点击空白处关闭',
                  style: TextStyle(
                    fontSize: 14,
                    color: t7Color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
