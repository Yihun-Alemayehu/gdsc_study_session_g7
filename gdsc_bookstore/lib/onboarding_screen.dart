import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  bool _isFinished = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isFinished = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LottieBuilder.asset(
              'assets/reading.json',
              controller: _controller,
              onLoaded: (composition) {
                _controller
                  ..duration = composition.duration
                  ..forward();
              },
            ),
            const SizedBox(
              height: 100,
            ),
            _isFinished
                ? Column(
                    children: [
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Embark on a Literary Journey ',

                            // curve: Curves.bounceInOut,
                            speed: Duration(milliseconds: 50),
                          )
                        ],
                        isRepeatingAnimation: false,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('and'),
                        ],
                        isRepeatingAnimation: false,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Explore Endless World.',
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                            speed: Duration(milliseconds: 50),
                          )
                        ],
                        isRepeatingAnimation: false,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 60),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
