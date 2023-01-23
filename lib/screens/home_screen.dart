import 'package:e_shop/models/categories.dart';
import 'package:e_shop/models/item_model.dart';
import 'package:e_shop/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 20, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/menu.png"),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 2),
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Color.fromARGB(255, 235, 235, 235))
                        ]),
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/user-profile.png"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SearchBar(),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 109, 25, 53),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 25),
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: category.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 30,
                      width: 105,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 252, 100, 151),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 10,
                            child: Text(
                              category[index].name,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 5),
              height: MediaQuery.of(context).size.height * 0.6,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: itemsAvailable.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 246, 248),
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(15), top: Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            color: Color.fromARGB(255, 238, 237, 237))
                      ],
                    ),
                    margin: EdgeInsets.only(left: 5, right: 20),
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 175,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 254, 235, 241),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(5)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/${itemsAvailable[index].image}"))),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\$" + itemsAvailable[index].price + "/ kg",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 99, 97, 97),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              itemsAvailable[index].name,
                              style: TextStyle(
                                color: Color.fromARGB(255, 109, 25, 53),
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 254, 89, 144),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
