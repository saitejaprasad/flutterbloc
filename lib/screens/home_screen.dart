import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                       Text(
                        " good moring"
                        ),
                        Text(
                          "book tickets"
                        ),

                    ],
                    
                   ),
                    Container(
                      height: 50,
                      width: 90,                   
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                            "assets/images/airr.png"
                          ), )
                       ),
                    )
                  ],
                )
              ]),
          )
        ],
      )
    );
    
    // return const Scaffold(
    //   backgroundColor:Color(0xffeeedf2),
    //   body: ListView(
    //     children: [
    //       Container(
    //         child: Column(
    //           children: [
    //             Row(
    //               children: [
    //                 Text(
    //                   "good morning"
    //                 )
    //               ],
    //             )
    //           ],

    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}