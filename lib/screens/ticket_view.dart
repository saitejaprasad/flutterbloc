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
      height: 250,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [


            /* 
            showing the blue part of the ticket
            */

            Container(
              decoration: const BoxDecoration(
                color:  Color(0xff526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21),
                topRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                Row(
                  children: [
                    Text("NYC", style: styles.headLineStyle3.copyWith(color: Colors.white),),
                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(child: Stack(
                      children: [
                        SizedBox(
                        height: 24,
                        child: LayoutBuilder(
                    
                          builder: (BuildContext context, BoxConstraints constraints) {
                            print("the wudth is ${constraints.constrainWidth()}");
                            return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate((constraints.constrainWidth()/8).floor(), (index) => SizedBox(
                              width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                color: Colors.white
                              ),),
                            )
                            ) 
                            );
                    
                          },
                    
                          
                        ) ,
                        ),
                        Center(child: Transform.rotate(angle:1.5 , child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),
                      ],
                    ),
                     ),
                      
                    ThickContainer(),
                    Expanded(child: Container()),
                    Text("LND", style: styles.headLineStyle3.copyWith(color: Colors.white),),
                  ],
                ),
                SizedBox(height: 14,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100, child: Text('New-York', style: styles.headLineStyle4.copyWith(color: Colors.white)),
                    ),
                    Text("BH 30M", style: styles.headLineStyle4.copyWith(color: Colors.white),),
                     SizedBox(
                      width: 100, child: Text('LONDON',textAlign: TextAlign.end, style: styles.headLineStyle4.copyWith(color: Colors.white)),
                    ),



                  ],
                )
              ],
              ),
            ),



            /* 
            showing the orange part of the ticket
            */
            Container(
              color: const Color(0xFFF37B67),
              child: Row(
                children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                       topRight: Radius.circular(10),
                       bottomRight: Radius.circular(10),
                      )
                    ),
                   ),
                ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: LayoutBuilder(
                      builder:(BuildContext context , BoxConstraints constraints) {
                        return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children:  List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                          width: 5, height: 1,
                          child:  DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white
                    
                            )),
                    
                        )),
                    
                      );
                      },
                    ),
                  )),
                  const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(10),
                       bottomLeft: Radius.circular(10),
                      ),
                    ),
                   ),
                )
              ]),
            ),

            /*bottom part of the orange ticket*/
            Container(
              decoration:  BoxDecoration(
                color: styles.orangeColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21))
              ),
              padding: const EdgeInsets.only(left:16, top: 10, right: 16,bottom: 16),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1 May",
                        style: styles.headLineStyle3.copyWith(color: Colors.white),),
                        const SizedBox(height: 5,),
                        Text("DATE",style: styles.headLineStyle4.copyWith(color: Colors.white),)
                      ],
                    ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("08:00:AM",
                        style: styles.headLineStyle3.copyWith(color: Colors.white),),
                        const SizedBox(height: 5,),
                        Text("Departure time",style: styles.headLineStyle4.copyWith(color: Colors.white),)
                      ],
                    ),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("23",
                        style: styles.headLineStyle3.copyWith(color: Colors.white),),
                        const SizedBox(height: 5,),
                        Text("Number",style: styles.headLineStyle4.copyWith(color: Colors.white),)
                      ],
                    )
                  ],
                )

              ]),

            ),



          ],
        ),
      ),
    );    
  }
}