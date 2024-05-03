import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Text Widget"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText("Sachin Verma",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    speed: Duration(milliseconds: 50))
              ],
              totalRepeatCount: 4,
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     RotateAnimatedText(
            //       "Sachin ",
            //       textStyle: TextStyle(
            //           fontSize: 30,
            //           fontWeight: FontWeight.w600,
            //           color: Colors.blue),
            //     ),
            //     RotateAnimatedText(
            //       "Verma",
            //       textStyle: TextStyle(
            //           fontSize: 30,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.blue),
            //     )
            //   ],
            //   // totalRepeatCount: 4,
            //   // pause: Duration(milliseconds: 200),
            //   // displayFullTextOnTap: true,
            //   // stopPauseOnTap: true,
            // ),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText("HelloWorld",
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ),
    );
  }
}
