import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_flutter/generated/l10n.dart';
import 'package:quiz_flutter/manager/manager_path_routes.dart';
import 'package:quiz_flutter/screen/quiz_play_screen/cubit/quiz_play_cubit.dart';
import 'package:quiz_flutter/themes/colors.dart';
import 'package:quiz_flutter/themes/dimens.dart';
import 'package:quiz_flutter/themes/images.dart';
import 'package:quiz_flutter/themes/text_styles.dart';
import 'package:quiz_flutter/utils/base_navigation.dart';

class CommitPage extends StatelessWidget {
  const CommitPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizPlayCubit, QuizPlayState>(
      builder: (context, state) {
        int fail = state.questions.length - state.userCorrect;
        double point =
            state.lesson.point / state.questions.length * state.userCorrect;
        return Scaffold(
          backgroundColor: AppColors.main.withOpacity(0.8),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.imageConfetti),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(Dimens.RADIUS_18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(state.lesson.title, style: TxtStyle.h2),
                    const SizedBox(height: 16),
                    Text(S.of(context).yourResult, style: TxtStyle.title),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        BoxResult(
                            res: state.userCorrect,
                            title: S.of(context).correct),
                        BoxResult(res: fail, title: S.of(context).fail),
                        BoxResult(
                            res: point.ceil(), title: S.of(context).point),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildButton(
                          onTap: () {
                            context.read<QuizPlayCubit>().goHome();
                            BaseNavigation.push(context,
                                routeName: ManagerRoutes.mainScreen,
                                clearStack: true);
                          },
                          text: S.of(context).goHome,
                          bgColor: AppColors.grey,
                          style: TxtStyle.buttonBlack,
                        ),
                        _buildButton(
                          onTap: () {
                            context.read<QuizPlayCubit>().checkResult();
                          },
                          text: S.of(context).checkResult,
                          bgColor: AppColors.main,
                          style: TxtStyle.buttonWhite,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _buildButton extends StatelessWidget {
  const _buildButton({
    required this.text,
    required this.onTap,
    required this.bgColor,
    required this.style,
  });
  final String text;
  final VoidCallback onTap;
  final Color bgColor;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: 140,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
          ),
          child: Center(
            child: Text(text, style: style),
          ),
        ),
      ),
    );
  }
}

class BoxResult extends StatelessWidget {
  const BoxResult({
    super.key,
    required this.res,
    required this.title,
  });
  final int res;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_8),
        boxShadow: AppColors.shadow,
      ),
      child: Column(
        children: [
          Text('$res', style: TxtStyle.buttonBlack),
          const SizedBox(height: 8),
          Text(title, style: TxtStyle.text),
        ],
      ),
    );
  }
}
