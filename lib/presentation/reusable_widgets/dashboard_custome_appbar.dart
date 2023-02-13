import 'package:agino_client/presentation/reusable_widgets/logo_widget.dart';
import 'package:flutter/material.dart';

class DashBoardCustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const DashBoardCustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF20382F),
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        LogoWidget(),
        Row(
          children: [
            IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  print("You  Pressed me");
                }),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {
                  print("You  Pressed me");
                }),
          ],
        )
      ]),
    );
  }
}
