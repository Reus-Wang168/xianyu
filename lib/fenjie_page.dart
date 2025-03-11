import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:xianyu/const.dart';

class FenJiePage extends StatelessWidget {
  const FenJiePage({super.key});

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
                const SizedBox(height: 16),
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
              Icons.arrow_back_ios,
              color: Color(0xFFEADDC4),
              size: 30,
            ),
          ),
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/images/fj_dian.png',
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
          image: AssetImage('assets/images/icon_miffang.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center, // 垂直居中对齐
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  const Text("——翻阅合成秘方——",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF4A3520),
                      )),
                  const SizedBox(height: 8),
                  // 当前可合成秘方的文本部分
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg_input.png'), // 背景图片
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(8), // 可调整圆角
                    ),
                    child: const Text(
                      "当前可合成秘方：1",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF48503E),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center, // 使文字居中
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    width: 120,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8A7154),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: Text(
                        "前往",
                        style: TextStyle(
                            fontSize: 16, color: t1Color, letterSpacing: 4),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Start synthesis logic
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF8A7154),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          "开始合成",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
