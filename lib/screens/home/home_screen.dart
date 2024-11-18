import 'package:flutter/material.dart';

import '../../contants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: const EdgeInsets.all(kPadding),
      itemBuilder: (context, index) => Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: kRegularHeight),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(kCornerRadius),
        ),
        child: ListTile(
          onTap: () {
            print('Pressed $index');
          },
          leading: Image.asset(
            kImgPlayer,
            height: 100,
            fit: BoxFit.fitHeight,
          ),
          title: Text('Title'),
          subtitle: Text('Subtitle'),
          trailing: Icon(Icons.favorite_border),
        ),
      ),
    );
  }
}
