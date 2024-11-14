import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slambl/views/schedule.dart';
import 'views/splash.dart';

void main() {
  runApp(ProviderScope(
    child: MaterialApp(
      title: 'SLAMBL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const Schedule(),
    ),
  ));
}