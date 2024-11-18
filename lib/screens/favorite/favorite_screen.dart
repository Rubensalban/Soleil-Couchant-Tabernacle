import 'package:flutter/material.dart';
import 'package:soleilcouchanttabernacle/contants.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.all(kPadding),
      itemBuilder: (context, index) => Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: kRegularHeight),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(kCornerRadius),
        ),
      ),
    );
  }
}
