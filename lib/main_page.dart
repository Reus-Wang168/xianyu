import 'package:flutter/material.dart';
import 'package:xianyu/const.dart';
import 'package:xianyu/home_page.dart';
import 'package:xianyu/maket_page.dart';
import 'package:xianyu/notice_page.dart';
import 'package:xianyu/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0; // 当前选中的页面索引

  // 页面背景图片列表
  final List<String> _backgroundImages = [
    'assets/images/bg_home.png', // 首页背景
    'assets/images/bg_market.png', // 市场页面背景
    'assets/images/bg_notice.png', // 公告页面背景
    'assets/images/bg_profile.png', // 我的页面背景
  ];

  // 页面列表
  final List<Widget> _pages = [
    const HomePage(), // 首页
    const MarketPage(), // 市场页面
    const NoticePage(), // 公告页面
    const ProfilePage(), // 我的页面
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // 1. 全屏背景图层
          Positioned.fill(
            child: Image.asset(
              _backgroundImages[_currentIndex],
              fit: BoxFit.cover, // 确保图片填满整个屏幕
            ),
          ),

          // 2. 主体内容
          Scaffold(
            backgroundColor: Colors.transparent, // Scaffold背景透明
            body: SafeArea(
              // 使用 SafeArea 确保内容不被系统UI遮挡
              child: IndexedStack(
                index: _currentIndex,
                children: _pages,
              ),
            ),
            extendBody: true, // 让内容延伸到底部导航栏区域
            extendBodyBehindAppBar: true, // 让内容延伸到顶部应用栏区域
            bottomNavigationBar: _buildBottomNavBar(context),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      color: Colors.transparent, // 设置背景为透明
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = 0; // 切换到首页
                });
              },
              child: Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      // 选中状态
                      'assets/images/nav_home.png', // 未选中状态
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            _buildNavItem(
              '市场',
              'assets/images/nav_market.png',
              isSelected: _currentIndex == 1,
              showText: true,
              onTap: () {
                setState(() {
                  _currentIndex = 1; // 切换到市场页面
                });
              },
            ),
            _buildNavItem(
              '公告',
              'assets/images/nav_notice.png',
              isSelected: _currentIndex == 2,
              showText: true,
              onTap: () {
                setState(() {
                  _currentIndex = 2; // 切换到公告页面
                });
              },
            ),
            _buildNavItem(
              '我的',
              'assets/images/nav_profile.png',
              isSelected: _currentIndex == 3,
              showText: true,
              onTap: () {
                setState(() {
                  _currentIndex = 3; // 切换到我的页面
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
    String label,
    String iconPath, {
    required bool isSelected,
    required bool showText,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  iconPath, // 未选中状态
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 4),
          if (showText)
            Text(
              label,
              style: const TextStyle(
                color: Color(0xff37584A), // 选中状态颜色
                fontSize: 16,
                fontFamily: 'kaiti',
              ),
            ),
        ],
      ),
    );
  }
}
