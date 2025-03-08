import 'package:flutter/material.dart';
import 'package:xianyu/const.dart';

class HeChengMiFPage extends StatelessWidget {
  const HeChengMiFPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_hecheng.png'),
            fit: BoxFit.cover, // 确保背景图片填满整个屏幕
          ),
        ),
        child: SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height, // 最小高度为屏幕高度
            ),
            child: Column(
              children: [
                const SizedBox(height: 14),
                // Top navigation bar with title
                _buildTopBar(context),

                // Main content area with cauldron

                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: [
                        // Bottom info panel (Positioned 40px above the button)
                        Positioned(
                          bottom: 100,
                          left: 0,
                          right: 0,
                          child: _buildBottomPanel(context),
                        ),

                        // Start synthesis button
                        Positioned(
                          bottom: 20,
                          left: 16,
                          right: 16,
                          child: _buildStartButton(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          // Back button
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFFEADDC4),
              size: 30,
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/icon_hedian.png',
                height: 40, // "合成殿" title image
              ),
            ),
          ),
          // Empty space to balance the back button
          const SizedBox(width: 28),
        ],
      ),
    );
  }

  Widget _buildBottomPanel(BuildContext context) {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/mi_fang.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 合成秘方和竖线部分
            Column(
              children: [
                Container(
                  height: 8, // 竖线的高度
                  width: 2, // 竖线的宽度
                  color: Colors.white,
                ),
                const SizedBox(height: 8), // 竖线和文字之间的间距
                const Text(
                  '合成秘方',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8), // 竖线和文字之间的间距
                Container(
                  height: 8, // 竖线的高度
                  width: 2, // 竖线的宽度
                  color: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // 右边的图片和文字部分
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 第一张图片+文字
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/image1.png', // 替换为你的图片路径
                            width: 50,
                            height: 50,
                          ),
                          const Text(
                            '投放: 3\n库存: 6',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    // 第二张图片+文字
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/image2.png', // 替换为你的图片路径
                            width: 50,
                            height: 50,
                          ),
                          const Text(
                            '投放: 3\n库存: 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    // 第三张图片+文字
                    Expanded(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/image3.png', // 替换为你的图片路径
                            width: 50,
                            height: 50,
                          ),
                          const Text(
                            '投放: 10\n库存: 10',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // 点击事件处理
                      print("点击去购买合成材料");
                    },
                    child: const Text(
                      '去购买合成材料',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline, // 添加下划线
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: 317, // 设置宽度为317dp
      height: 53, // 设置高度为53dp
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), // 圆角半径为5dp
        gradient: const RadialGradient(
          colors: [
            Color(0xFF574A40), // startColor
            Color(0xFF8D7867), // centerColor
            Color(0xFF574A40), // endColor
          ],
          center: Alignment.center, // 中心点
          radius: 0.0, // 设置为0dp，表示圆形渐变
          stops: [0.0, 0.5, 1.0], // 渐变的三个颜色的分布
        ),
        border: Border.all(
          color: const Color(0xFF8D8679), // 边框颜色
          width: 1, // 边框宽度为1dp
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          // Start synthesis logic
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, // 设置为透明，以便使用Container的背景色
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // 圆角半径为5dp
          ),
        ),
        child: const Text(
          "开始合成",
          style: TextStyle(
            fontSize: 18,
            color: t11Color,
          ),
        ),
      ),
    );
  }
}
