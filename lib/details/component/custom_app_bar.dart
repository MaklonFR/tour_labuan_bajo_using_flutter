// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, override_on_non_overriding_member, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_wisata_labuan_bajo/constants.dart';

import '../../../size_setting.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;

  CustomAppBar({required this.rating});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Row(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(40),
              width: getProportionateScreenWidth(40),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  primary: kPrimaryColor,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                ),
                onPressed: () => Navigator.pop(context),
                child: SvgPicture.asset(
                  "icons/Back ICon.svg",
                  height: 15,
                ),
              ),
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    "$rating",
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset("icons/Star Icon.svg"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
