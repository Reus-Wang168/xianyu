import 'package:flutter/material.dart';
import 'package:xianyu/c_checkbox.dart';
import 'package:xianyu/const.dart';
import 'package:xianyu/home_page.dart';
import 'package:xianyu/main_page.dart';
import 'package:xianyu/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isChecked = false; // 控制勾选框的状态

  void _navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }

  void _onCheckboxChanged(bool isChecked) {
    setState(() {
      _isChecked = isChecked; // 更新勾选框状态
    });
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

                  // Phone number input
                  Container(
                    width: 320,
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

                  // Password input
                  Container(
                    width: 320,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/images/bg_input.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              '忘记密码',
                              style: TextStyle(
                                color: t1Color,
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                decorationColor: t1Color,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Register and phone verification links
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterPage(),
                            ),
                          );
                        },
                        child: const Text(
                          '注册',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF4A6572),
                            decoration: TextDecoration.underline,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '验证码登录',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF4A6572),
                            decoration: TextDecoration.underline,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  // Login button with conditional image based on checkbox state
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      height: 60,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            _isChecked
                                ? 'assets/images/btn_login.png'
                                : 'assets/images/btn_login2.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (_isChecked) {
                            _navigateToHome(context); // 只有在勾选时才跳转
                          }
                        },
                        child: Text(
                          '登录',
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomCheckbox(onChecked: _onCheckboxChanged),
                        const SizedBox(width: 5),
                        const Text.rich(
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
                                  decorationColor: t3Color,
                                ),
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
                                  decorationColor: t3Color,
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
