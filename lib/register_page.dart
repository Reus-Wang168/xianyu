import 'package:flutter/material.dart';
import 'package:xianyu/c_checkbox.dart';
import 'package:xianyu/const.dart';
import 'package:xianyu/home_page.dart';
import 'package:xianyu/main_page.dart';
import 'package:xianyu/register_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  void _navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/bg_login.png'), // Set your new background image here
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height, // 最小高度为屏幕高度
              ),
              child: Column(
                children: [
                  const SizedBox(height: 300),

                  Container(
                    width: 320, // 固定容器宽度<e,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg_input.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: TextField(
                        style: TextStyle(color: t1Color),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Container(
                    width: 320, // 固定容器宽度<e,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg_input.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: TextField(
                        style: TextStyle(color: t1Color),
                        decoration: InputDecoration(
                          hintText: '设置新密码',
                          hintStyle: TextStyle(color: t1Color),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 320, // 固定容器宽度<e,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg_input.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: TextField(
                        style: TextStyle(color: t1Color),
                        decoration: InputDecoration(
                          hintText: '再次输入密码',
                          hintStyle: TextStyle(color: t1Color),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 320, // 固定容器宽度
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bg_input.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 50, right: 10), // 内部TextField的Padding
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(color: textColor),
                              decoration: InputDecoration(
                                hintText: '请输入密码',
                                hintStyle: TextStyle(color: t1Color),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15, // 只调整垂直方向的padding
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 95,
                            height: 27,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color(0xFFE7EAC9), width: 1),
                              borderRadius: BorderRadius.circular(7),
                              gradient: const RadialGradient(
                                center: Alignment.topLeft,
                                radius: 1.0,
                                colors: [
                                  Color(0xFFF9F0DD),
                                  Color(0xFFD0C1B4),
                                ],
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                padding:
                                    WidgetStateProperty.all(EdgeInsets.zero),
                                minimumSize: WidgetStateProperty.all(Size.zero),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              child: const Text(
                                '获取验证码',
                                style: TextStyle(
                                  color: t4Color,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5), // 右侧留出一些边距
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Forgot password and register links

                  const SizedBox(height: 40),
                  // Login button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 60,
                      width: 320,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/btn_login.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          _navigateToHome(context);
                        },
                        child: Text(
                          '注册',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: textColor,
                            color: t2COlor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Terms checkbox
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCheckbox(),
                        SizedBox(width: 5),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '我已详细阅读并同意',
                                style: TextStyle(
                                  color: Color(0xFF4A6572),
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: '用户协议',
                                style: TextStyle(
                                    color: t3Color,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    decorationColor: t3Color),
                              ),
                              TextSpan(
                                text: '和',
                                style: TextStyle(
                                  color: Color(0xFF4A6572),
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: '隐私政策',
                                style: TextStyle(
                                    color: t3Color,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    decorationColor: t3Color // 只有隐私政策部分有下划线
                                    ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
