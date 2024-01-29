import 'package:flutter/material.dart';

class BodyItemAsset extends StatelessWidget {
  const BodyItemAsset({
    Key? key,
    this.height = 0,
    this.widthImg = 0,
    this.assetName = '',
    this.radius = 10,
    this.mid,
    required this.right,
    this.child,
    this.onTap,
  }) : super(key: key);

  final double height, widthImg, radius;
  final String assetName;
  final Widget? mid, child;
  final Widget right;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: widthImg,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(assetName),
                    ),
                    borderRadius: BorderRadius.circular(radius),
                  ),
                  child: child,
                ),
                SizedBox(
                  height: height,
                  child: mid,
                ),
                Expanded(child: right),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
