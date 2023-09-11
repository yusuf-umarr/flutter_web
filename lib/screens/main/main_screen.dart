// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/controllers/MenuController.dart';
import 'package:flutter_web_mobile/responsive.dart';
import 'package:flutter_web_mobile/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_web_mobile/screens/main/components/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const SideMenu(),
        body: SafeArea(
            child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        if(Responsive.isDesktop(context))
        const Expanded(
          child: SideMenu(),
        ),
        const Expanded(
          flex: 5,
          child: DashboardScreen(),
        ),
      ],
    )));
  }
}
