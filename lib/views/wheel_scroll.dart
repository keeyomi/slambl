import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slambl/providers/providers.dart';
import 'package:slambl/utils/date_utils.dart';
import 'package:slambl/views/widgets/circle_dot.dart';

class WheelScrollView extends ConsumerStatefulWidget {
  const WheelScrollView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WheelScrollViewState();
}

class _WheelScrollViewState extends ConsumerState<WheelScrollView> {
  late FixedExtentScrollController _extentScrollController;
  final int _initialItemIndex = Date.getDayInToday() - 1;

  void initialItem(_) async {
    _extentScrollController.jumpToItem(_initialItemIndex);
  }

  @override
  void initState() {
    super.initState();
    _extentScrollController = FixedExtentScrollController(initialItem: 0);
    WidgetsBinding.instance.addPostFrameCallback(initialItem);
  }

  @override
  void dispose() {
    _extentScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(indexProvider);

    return SliverList(
      delegate: SliverChildListDelegate(
        [
          SizedBox(
            height: 100,
            child: RotatedBox(
              quarterTurns: -1,
              child: ListWheelScrollView.useDelegate(
                controller: _extentScrollController,
                itemExtent: 50,
                squeeze: 0.8,
                onSelectedItemChanged: (newIndex) {
                  ref.read(indexProvider.notifier).state = newIndex;
                  ref.read(dateProvider.notifier).state++;
                },
                childDelegate: ListWheelChildBuilderDelegate(
                  childCount: Date.getDaysInMonth(),
                  builder: (context, index) {
                    return RotatedBox(
                      quarterTurns: 1,
                      child: InkWell(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        onTap: () {
                          _extentScrollController.animateToItem(index, duration: const Duration(milliseconds: 100), curve: Curves.linear);
                          ref.read(indexProvider.notifier).state = index;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          width: index == selectedIndex ? 40 : 30,
                          height: index == selectedIndex ? 80 : 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: index == selectedIndex ? Colors.black : Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${index + 1}', style: TextStyle(color: index == selectedIndex ? Colors.white : Colors.black45, fontSize: 16, fontWeight: FontWeight.bold),),
                              Text(
                                Date.getStringWeekday(day: index + 1),
                                style: TextStyle(
                                  color: index == selectedIndex ? Colors.white : Date.getWeekday(day: index + 1) == 6 ? Colors.blue : Date.getWeekday(day: index + 1) == 7 ? Colors.red : Colors.black45,
                                ),
                              ),
                              const SizedBox(height: 8,),
                              Visibility(
                                visible: index == selectedIndex,
                                child: const CircleDot(width: 6, height: 6,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}