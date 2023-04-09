import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:immo/screen/abonner.dart';
import 'package:immo/screen/connexion.dart';
import 'package:immo/screen/favoris.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          GestureDetector(
            child: Container(
              height: 40,
              // width: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/subscribed1.svg",
                  ),
                  const Text(
                    "Suivi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Abonner()),
            ),
          ),
          GestureDetector(
            child: Container(
              height: 40,
              // width: 50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/favori.svg",
                  ),
                  const Text(
                    "Favoris",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Favoris()),
            ),
          ),
          GestureDetector(
            child: Container(
              height: 40,
              // width: 40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/user1.svg",
                    width: 24,
                  ),
                  const Text(
                    "Connexion",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Connexion()),
            ),
          ),
        ]));
  }
}
