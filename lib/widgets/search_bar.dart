import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            padding: EdgeInsets.only(left: 20),
            height: 50,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 2),
                  spreadRadius: 1,
                  blurRadius: 1,
                  color: Color.fromARGB(255, 235, 235, 235)
                )
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 245, 186, 204),
                ),
                hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 109, 25, 53),
                ),
                hintText: "Search products",
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 242, 167, 192),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("assets/images/category.png"),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
