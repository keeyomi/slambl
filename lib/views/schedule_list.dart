import 'package:flutter/material.dart';

import 'schedule_item.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({
    super.key,
    required this.list,
  });

  final List<ScheduleItem> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 12),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return ScheduleItem(item: list[index], index: index,);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 20,);
      },
    );
  }
}
