import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dateProvider = StateProvider<int>((ref) => 0);

final indexProvider = StateProvider((ref) => 0);

final scrollControllerProvider = StateProvider((ref) => FixedExtentScrollController());