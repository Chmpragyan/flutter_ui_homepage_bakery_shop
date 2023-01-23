import 'package:e_shop/models/weight_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20, right: 25),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 245, 229, 235),
                      image: DecorationImage(
                        image: AssetImage("assets/images/macaron.png"),
                      )),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, "/homeScreen");
                        },
                        child: Container(
                          height: 42,
                          width: 42,
                          child: SvgPicture.asset(
                              "assets/icons/icon_back_arrow.svg"),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(1, 2),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    color: Color.fromARGB(255, 235, 235, 235))
                              ]),
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/user-profile.png"),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Macarons",
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 109, 25, 53),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\$ 9.99 / kg",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 109, 25, 53),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: wtCategory.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 30,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 249, 228, 235),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 10,
                            child: Text(
                              wtCategory[index].weight,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 109, 25, 53),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 109, 25, 53),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "There is some variation in whether the term macaron or macaroon is used, and the related coconut macaroon is often confused with the macaron. In North America, most bakers have adopted the French spelling of macaron for the meringue-based item to distinguish the two. Stanford professor of linguistics Daniel Jurafsky describes how the two confections have a shared history with macaroni (Italian maccheroni, from Greek μακαρία). Jurafsky notes that French words ending with that were borrowed into English in the 16th and 17th centuries are usually spelled with (for example: balloon, cartoon, platoon).[4] In the UK, many bakeries continue to use the term.",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 99, 97, 97),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
