import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_flutter/screen/main_screen.dart/cubit/main_cubit.dart';
import 'package:quiz_flutter/themes/colors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:quiz_flutter/themes/dimens.dart';

class BuildBottomNavBar extends StatefulWidget {
  const BuildBottomNavBar({
    super.key,
  });

  @override
  State<BuildBottomNavBar> createState() => _BuildBottomNavBarState();
}

class _BuildBottomNavBarState extends State<BuildBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainCubit, MainState>(
      builder: (context, state) {
        return Container(
          color: AppColors.white,
          padding: const EdgeInsets.symmetric(
              horizontal: Dimens.PADDING_39, vertical: Dimens.PADDING_15),
          child: GNav(
            onTabChange: (value) {
              context.read<MainCubit>().indexChanged(value);
            },
            gap: 8,
            backgroundColor: Colors.white,
            color: AppColors.main,
            activeColor: AppColors.main,
            tabBackgroundColor: AppColors.main.withOpacity(0.3),
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.PADDING_16, vertical: Dimens.PADDING_8),
            tabs: const [
              GButton(
                iconSize: Dimens.SIZE_24,
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                  iconSize: Dimens.SIZE_24,
                  icon: Icons.play_arrow,
                  text: 'Course'),
              GButton(
                  iconSize: Dimens.SIZE_24,
                  icon: Icons.chat_bubble,
                  text: 'Comunity'),
              GButton(
                iconSize: Dimens.SIZE_24,
                icon: Icons.person,
                text: 'Setting',
              )
            ],
          ),
        );
      },
    );
  }
}
