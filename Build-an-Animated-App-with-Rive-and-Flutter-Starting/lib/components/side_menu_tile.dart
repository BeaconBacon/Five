import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation/models/rive_asset.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile({
    Key? key,
    required this.menu,
    required this.press,
    required this.riveonInit,
    required this.isActive,
  }) : super(key: key);

  final RiveAssets menu;
  final VoidCallback press;
  final ValueChanged<Artboard> riveonInit;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        ListTile(
          onTap: press,
          leading: SizedBox(
            height: 34,
            width: 34,
            child: RiveAnimation.asset(
              menu.src,
              artboard: menu.artboard,
              onInit: riveonInit,
              // this is where the animation would go
            ),
          ),
          title: Text(
            menu.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}