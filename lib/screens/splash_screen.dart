import 'package:flutter/material.dart';

import 'package:newwave/common/common_helper.dart';
import 'package:newwave/screens/search_screen.dart';

class SpashScreen extends StatefulWidget {
  const SpashScreen({super.key});

  @override
  State<SpashScreen> createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SpashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 1500),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ),
            (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash-bg.png'),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: getHightScreen(context) * 0.5 - 100,
          left: getWidthScreen(context) * 0.5 - 100,
          height: 200,
          width: 200,
          child: Image.asset('assets/images/newwave-logo.jpg'),
        )
      ],
    );
  }
}
