import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'KaiTi', // 使用楷体增加中国风
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // 背景图片
          Positioned.fill(
            child: Image.asset(
              'assets/images/icon_bg_home.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: screenHeight * 0.26,
            left: screenWidth * 0.25,
            child: Image.asset(
              'assets/images/icon_arrow.png',
            ),
          ),

          // 中间的功能按钮区
          Positioned(
            top: screenHeight * 0.26,
            left: screenWidth * 0.04,
            child: _buildFeatureButton('分解', 90, 40),
          ),
          Positioned(
            top: screenHeight * 0.21,
            left: screenWidth * 0.01,
            child: Image.asset(
              'assets/images/icon_f1.png',
              width: 140,
              height: 200,
            ),
          ),

          Positioned(
            top: screenHeight * 0.35,
            left: screenWidth * 0.3,
            child: _buildFeatureButton('抽奖', 120, 60),
          ),
          // 抽奖按钮旁边的图片
          Positioned(
            top: screenHeight * 0.35, // 保持和“分解”按钮在同一高度
            left: screenWidth * 0.2,
            // 按钮宽度 + 间隔 + 另一按钮宽度 + 间隔
            child: Image.asset(
              'assets/images/icon_gift.png',
              width: 250,
              height: 200, // 设置图片宽度
            ),
          ),
          Positioned(
            top: screenHeight * 0.26,
            left: screenWidth * 0.65,
            child: _buildFeatureButton('合成', 90, 40),
          ),
          Positioned(
            top: screenHeight * 0.21, // 保持和“分解”按钮在同一高度
            left: screenWidth * 0.6,
            // 按钮宽度 + 间隔 + 另一按钮宽度 + 间隔
            child: Image.asset(
              'assets/images/icon_hc.png',
              width: 180,
              height: 200, // 设置图片宽度
            ),
          ),

          // 底部内容区域
          Positioned(
            bottom: screenHeight * 0.1, // 使底部内容距离底部导航栏 100dp
            left: 0,
            right: 0,
            child: Container(
                height: 250,
                // 底部内容区域的高度
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/sell_box.png'), // 底部背景图片
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(children: [
                  Positioned(
                    top: 20,
                    left: 90,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/icon_box1.png'), // 底部背景图片
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/bg1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      left: 235,
                      child: Image.asset("assets/images/icon_right_txt.png")),
                ])),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: _buildBottomNavBar(), // 假设当前是首页，传递 true
          ),
        ],
      ),
    );
  }

  // 主要功能按钮 (分解/抽奖/合成)

  Widget _buildFeatureButton(String text, double height, double width) {
    return Stack(
      alignment: Alignment.center, // 让文字居中
      children: [
        Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/icon_bg1.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(0, -10),
          child: _buildVerticalText(text),
        ),
      ],
    );
  }

  // 竖排文字实现
  Widget _buildVerticalText(String text) {
    return Column(
      children: text.split('').map((char) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 3),
          child: Text(
            char,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF2D4D3A),
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      }).toList(),
    );
  }
}

// 底部导航栏
Widget _buildBottomNavBar() {
  return SizedBox(
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/nav_home.png'),
              fit: BoxFit.contain,
              // colorFilter: isSelected
              //     ? const ColorFilter.mode(Color(0xFF2D4D3A), BlendMode.srcIn)
              //     : null,
            ),
          ),
        ),
        _buildNavItem('市场', 'assets/images/nav_market.png',
            isSelected: false, showText: true),
        _buildNavItem('公告', 'assets/images/nav_notice.png',
            isSelected: false, showText: true),
        _buildNavItem('我的', 'assets/images/nav_profile.png',
            isSelected: false, showText: true),
      ],
    ),
  );
}

Widget _buildNavItem(String label, String iconPath,
    {required bool isSelected, required bool showText}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(iconPath),
            fit: BoxFit.contain,
            // colorFilter: isSelected
            //     ? const ColorFilter.mode(Color(0xFF2D4D3A), BlendMode.srcIn)
            //     : null,
          ),
        ),
      ),
      const SizedBox(height: 4),
      if (showText)
        Text(
          label,
          style: const TextStyle(
              color: Color(0xFF2D4D3A), fontSize: 16, fontFamily: 'kaiti'),
        ),
    ],
  );
}
