import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/constants.dart';
import 'package:flutter_web_mobile/responsive.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/header.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/my_files.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/recent_file.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/storage_detail.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        const SizedBox(height: defaultPadding),
                      //show on mobile view
                      if (Responsive.isMobile(context)) StorageDetail()
                    ],
                  ),
                ),
                ////
                if (!Responsive.isMobile(context))
                  const SizedBox(width: defaultPadding),
                //hide on mobile view
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetail(),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}


