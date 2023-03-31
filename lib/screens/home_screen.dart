import 'package:flutter/material.dart';
import 'package:flutterbloc/screens/hotel_screen.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterbloc/utils/app_styles.dart';
import 'package:flutterbloc/screens/ticket_view.dart';
import 'package:flutterbloc/screens/hotel_screen.dart';

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
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                       Text(
                        " good moring"
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "book tickets", style: TextStyle(fontSize: 55),
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
                ),
                SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xfff4f6fd)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Color(0xFFBFC205),),
                      Text(
                        "search",
                        style: styles.headLineStyle4,
                      )
                
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming flights", style: styles.headLineStyle2),
                  InkWell(
                    onTap: () {
                      print("you are tapped");
                    },
                    child: Text("View all", style: styles.textStyle.copyWith(color: styles.primaryColor),)),
                  ],
                  
                ),
              ],
              ),
          ),
          // const Spacer(),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              TicketView(),
              TicketView(),

            ]),

          ),
          SizedBox(height: 5,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hotels", style: styles.headLineStyle2),
                    InkWell(
                      onTap: () {
                        print("you are tapped");
                      },
                      child: Text("View all", style: styles.textStyle.copyWith(color: styles.primaryColor),)),
                    ],
                    
                  ),
          ),
          const SizedBox(height: 10,),
          HotelScreen(),

          
        ],
      ),
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