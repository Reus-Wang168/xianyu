import 'package:flutter/material.dart';
import 'package:xianyu/choujiang_page.dart';
import 'package:xianyu/fenjie_page.dart';
import 'package:xianyu/hechen_page.dart';
import 'package:xianyu/maket_page.dart';
import 'package:xianyu/notice_page.dart';
import 'package:xianyu/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
            top: screenHeight * 0.26,
            left: screenWidth * 0.04,
            child: _buildFeatureButton('分解', 90, 40, onPressed: () {
              print("test .!!!!!!!!!!!!!!!!"); // 确保点击时输出
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HeChengPage()),
              );
            }),
          ),
          Positioned(
            top: screenHeight * 0.26,
            left: screenWidth * 0.25,
            child: Image.asset(
              'assets/images/icon_arrow.png',
            ),
          ),
          Positioned(
            top: screenHeight * 0.21,
            left: screenWidth * 0.01,
            child: GestureDetector(
              onTap: () {
                print("test .!!!!!!!!!!!!!!!!"); // 确保点击时输出
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const FenJiePage()),
                );
              },
              child: Image.asset(
                'assets/images/icon_f1.png',
                width: 140,
                height: 200,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.36,
            left: screenWidth * 0.3,
            child: _buildFeatureButton('抽奖', 120, 60, onPressed: () {}),
          ),
          Positioned(
            top: screenHeight * 0.35,
            left: screenWidth * 0.2,
            child: GestureDetector(
                onTap: () {
                  print("test .!!!!!!!!!!!!!!!!"); // 确保点击时输出
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const ChouJPage()),
                  );
                },
                child: Container(
                  child: Image.asset(
                    'assets/images/icon_gift.png',
                    width: 250,
                    height: 200,
                  ),
                )),
          ),
          Positioned(
            top: screenHeight * 0.26,
            left: screenWidth * 0.66,
            child: _buildFeatureButton(
              '合成',
              90,
              40,
              onPressed: () {
                print("test .!!!!!!!!!!!!!!!!"); // 确保点击时输出
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HeChengPage()),
                );
              },
            ),
          ),
          Positioned(
            top: screenHeight * 0.21,
            left: screenWidth * 0.6,
            child: GestureDetector(
              onTap: () {
                print("test .!!!!!!!!!!!!!!!!"); // 确保点击时输出
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HeChengPage()),
                );
              },
              child: Container(
                child: Image.asset(
                  'assets/images/icon_hc.png',
                  width: 180,
                  height: 200,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.01,
            left: 0,
            right: 0,
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sell_box.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 90,
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/icon_box1.png'),
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
                    top: 15,
                    left: 234,
                    child: SizedBox(
                      width: 150,
                      height: 200,
                      child: Image.asset(
                        "assets/images/icon_right_txt.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureButton(
    String text,
    double height,
    double width, {
    required VoidCallback onPressed,
  }) {
    return Material(
      color: Colors.transparent,
      child: GestureDetector(
        onTap: onPressed, // 绑定点击事件
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/icon_bg1.png'),
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: _buildVerticalText(text),
          ),
        ),
      ),
    );
  }

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
