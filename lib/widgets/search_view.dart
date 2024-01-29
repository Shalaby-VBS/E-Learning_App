import 'package:flutter/material.dart';
import 'package:quiz_flutter/generated/l10n.dart';
import 'package:quiz_flutter/themes/colors.dart';
import 'package:quiz_flutter/themes/dimens.dart';
import 'package:quiz_flutter/themes/text_styles.dart';

class SearchView extends StatelessWidget {
  const SearchView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: BoxDecoration(
        boxShadow: AppColors.shadow,
        color: AppColors.white,
        borderRadius: BorderRadius.circular(Dimens.RADIUS_6),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 17),
          prefixIcon: const Icon(Icons.search),
          hintText: S.of(context).searchTitle,
          hintStyle: TxtStyle.description,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
