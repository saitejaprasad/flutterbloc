import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterbloc/utils/app_layout.dart';
import 'package:flutterbloc/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = AppLayout.getsize(context);
    return Container(
      width: Size.width*0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: styles.primaryColor,
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/one.jpg"

              ))
            ),
          )

      ]),


    );
  }
}