

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/general_widget.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';
import 'package:menuapp/utils/assets_data.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      margin: const EdgeInsets.only(right: 12.0),
      decoration: BoxDecoration(
        color: kBrandSecondaryColor.withOpacity(0.07),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            AssetData.iconFavorite,
            height: 20.0,
            color: kBrandSecondaryColor.withOpacity(0.90),
          ),
          spacingWidth6,
          H5(
            text: "Entradas",
          ),
        ],
      ),
    );
  }
}
