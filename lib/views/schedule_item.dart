import 'package:flutter/material.dart';
import 'package:slambl/constants/app_design.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({
    super.key,
    required this.item,
    required this.index,
  });

  final ScheduleItem item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 12, top: 4),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: 5,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    color: const Color(0x7f7e7e7e),
                  ),
                ),
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                )
              ],
            ),
            AppStyle.width8,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('Schedule Title', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
                      Spacer(),
                      Text('9:08 PM', style: TextStyle(fontSize: 14, color: Colors.black54),),
                    ],
                  ),
                  SizedBox(height: index == 3 ? 40 : 8,),
                  Text('contents : $item', style: TextStyle(fontSize: 16, color: Colors.black54,),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}