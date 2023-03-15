import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/constants.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: const [Header(),],
        ),
      ),
    );
  }
}



//  Container(
//               height: 400,
//               width: double.infinity,
//               color: Colors.green
//             ),/*

