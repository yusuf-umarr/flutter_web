import 'package:flutter/material.dart';
import 'package:flutter_web_mobile/controllers/MenuController.dart';
import 'package:flutter_web_mobile/responsive.dart';
import 'package:flutter_web_mobile/screens/dashboard/components/profile_card.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(onPressed: () => context.read<MenuAppController>().controlMenu(), icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text("Dashboard",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.white)),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}
