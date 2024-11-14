import 'package:flutter/material.dart';
import 'package:slambl/views/schedule.dart';
import 'package:slambl/views/widgets/text_view.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2200), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const Schedule()));
      Navigator.pop(context);
    });

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TextView('Schedule\nLocation\nAlarm\nMemo\nBetter life'),
      ),
    );
  }
}