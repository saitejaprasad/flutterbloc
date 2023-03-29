import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterbloc/utils/app_layout.dart';
import 'package:flutterbloc/utils/app_styles.dart';
import 'package:flutterbloc/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21))
              ),
              color: Colors.red,
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text("NYC", style: styles.headLineStyle3.copyWith(color: Colors.white),),

                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(child: SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(5, (index) => Text(
                            "-"
                          ))),
                      ),
                    )),
                    
                    ThickContainer(),
                    const Spacer(),
                    
                    
                    Text("London", style: styles.headLineStyle3.copyWith(color: Colors.white),),
                    
                  ],
                )
              ]),
            )

        ]),
      ),
    );
  }
}