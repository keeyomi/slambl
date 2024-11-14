import 'package:flutter/material.dart';
import 'package:slambl/constants/app_design.dart';

class Timeline extends StatelessWidget {
  const Timeline({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('2024.10.08', style: AppTextStyle.caption1(color: AppColors.gray070)),
              Text('${index + 1}. 오늘의 할일은 ... '),
            ],
          ),
        ),
      ],
    );
  }
}