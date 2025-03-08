import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final ValueChanged<bool>? onChecked; // 可选的回调函数

  const CustomCheckbox({super.key, this.onChecked});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isChecked = false; // 记录选中状态

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
        if (widget.onChecked != null) {
          widget.onChecked!(_isChecked); // 调用传入的回调函数
        }
      },
      child: Container(
        width: 32, // 调大尺寸
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF56705E), // 边框颜色
            width: 2, // 边框加粗一点
          ),
          color: const Color(0xFFF6F0E7), // 背景色
          borderRadius: BorderRadius.circular(6), // 圆角
          gradient: const RadialGradient(
            center: Alignment.center,
            radius: 0.8, // 调整渐变范围
            colors: [
              Color(0xFFFFF6E4), // 开始颜色
              Color(0xFFD3C2B4), // 结束颜色
            ],
          ),
        ),
        child: _isChecked
            ? Stack(
                alignment: Alignment.center,
                children: [
                  // 使用 Transform 控制图片的上部溢出
                  Transform.translate(
                    offset: const Offset(0, -4), // 上部溢出4px
                    child: Image.asset(
                      'assets/images/checked.png', // 选中状态显示 checked.png
                      fit: BoxFit.cover, // 填充容器并让图片溢出
                    ),
                  ),
                ],
              )
            : null,
      ),
    );
  }
}
