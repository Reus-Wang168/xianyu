import 'package:flutter/material.dart';
import 'package:xianyu/c1_dialog.dart';
import 'package:xianyu/c_dialog.dart';
import 'package:xianyu/const.dart';

class ChouJPage extends StatelessWidget {
  const ChouJPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_chouj.png'),
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
                const SizedBox(height: 15),
                Stack(
                  alignment:
                      Alignment.center, // Keeps the base alignment centered
                  children: [
                    Transform.translate(
                      offset: const Offset(0, 300), // Shifts the circle up
                      child: Image.asset(
                        'assets/images/cj_bottom.png',
                      ),
                    ),
                    // First circle (centered background)
                    Transform.translate(
                      offset: const Offset(-10, 33), // Shifts the circle down,
                      child: Image.asset(
                        'assets/images/cj_circle.png',
                      ),
                    ),

                    // Second circle (outline) slightly shifted if necessary
                    // Change X and Y values here to shift the outline

                    Image.asset(
                      'assets/images/cj_outline.png',
                    ),

                    // Third circle (centered foreground)
                  ],
                ),
                const SizedBox(height: 120),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/cj_zs.png'),
                    fit: BoxFit.cover,
                  )),
                  child: const Text(
                    '当前可转动次数：2', // Update based on actual data
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: t8Color,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                IconButton(
                  icon: Image.asset(
                    'assets/images/cj_z.png',
                    width: 200, // 图片路径
                  ),
                  onPressed: () {
                    _showPrizeDialog(context);
                  },
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => _showPrizeRecordDialog(context),
                  child: const Text(
                    '抽奖记录',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: t5Color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: t5Color,
                      letterSpacing: 2,
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
                'assets/images/chouj_dt.png',
                height: 60, // "合成殿" title image
              ),
            ),
          ),
          // Empty space to balance the back button
          const SizedBox(width: 28),
        ],
      ),
    );
  }

  void _showPrizeDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // User can tap outside to dismiss
      barrierColor:
          Colors.black.withOpacity(0.7), // Semi-transparent background
      builder: (BuildContext context) {
        return const PrizeDialog();
      },
    );
  }

  void _showPrizeRecordDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // User can tap outside to dismiss
      barrierColor:
          Colors.black.withOpacity(0.7), // Semi-transparent background
      builder: (BuildContext context) {
        return PrizeRecordDialog();
      },
    );
  }
}
