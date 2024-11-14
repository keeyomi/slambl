import 'package:flutter/material.dart';
import 'package:slambl/views/schedule_item.dart';
import 'package:slambl/views/tile/timeline.dart';
import 'package:slambl/views/wheel_scroll.dart';
import 'profile.dart';
import 'schedule_list.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  List<ScheduleItem> _getList() {
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Profile(),
            SizedBox(
              height: 100,
              child: NestedScrollView(
                body: ScheduleList(list: _getList()),
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    const WheelScrollView(),
                  ];
                },
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder:  (context, index) => Timeline(index: index,),
                separatorBuilder: (context, index) => Container(height: 8,),
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}