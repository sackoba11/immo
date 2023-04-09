import 'package:flutter/material.dart';
import 'package:immo/screen/astuce_screen.dart';
import 'package:immo/screen/bureau_screen.dart';
import 'package:immo/screen/espace_screen.dart';
import 'package:immo/screen/homepage.dart';
import 'package:immo/screen/hotel_screen.dart';
import 'package:immo/screen/location_screen.dart';
import 'package:immo/screen/residence_screen.dart';
import 'package:immo/screen/vente_screen.dart';
import 'package:flutter_svg/svg.dart';

class Modules extends StatelessWidget {
  const Modules({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: CardField(
                    size: size,
                    color: Colors.transparent,
                    icon: "assets/icons/search.svg",
                    // const Icon(
                    //   Icons.search,
                    //   color: Colors.white,
                    // ),
                    title: 'Explorer',
                    ontap: HomePage(),
                  )),
              CardField(
                size: size,
                color: Colors.transparent,
                icon: "assets/icons/residence.svg",
                title: 'Residence \nMeublé',
                ontap: Residence(),
              ),
              CardField(
                size: size,
                color: Colors.transparent,
                icon: "assets/icons/hotel.svg",
                title: 'Hôtel',
                ontap: Hotel(),
                // '8 Devices'
              ),
              Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: CardField(
                    size: size,
                    color: Colors.transparent,
                    icon: "assets/icons/bureau1.svg",
                    title: 'Bureau \nAmenagé',
                    ontap: Bureau(),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: CardField(
                    size: size,
                    color: Colors.transparent,
                    icon: "assets/icons/espace.svg",
                    title: 'Espace \n Events',
                    ontap: Espace(),
                  )),
              CardField(
                size: size,
                color: Colors.transparent,
                icon: "assets/icons/location.svg",
                title: 'Location',
                ontap: Location(),
              ),
              CardField(
                size: size,
                color: Colors.transparent,
                icon: "assets/icons/vente3.svg",
                title: 'Vente',
                ontap: Vente(),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: CardField(
                    size: size,
                    ontap: Astuces(),
                    color: Colors.transparent,
                    icon: "assets/icons/idea.svg",
                    title: 'Astuce \nIdées',
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class CardField extends StatefulWidget {
  const CardField(
      {super.key,
      required this.title,
      required this.size,
      required this.color,
      required this.icon,
      required this.ontap});

  final Size size;
  final Color color;
  final String icon;
  final String title;
  final Widget ontap;
  @override
  State<CardField> createState() => _CardFieldState();
}

class _CardFieldState extends State<CardField> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 3.0, bottom: 3),
        width: widget.size.width / 4.8,
        height: widget.size.height / 12,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 0,
            offset: Offset(-1, -1),
          )
        ], color: Colors.grey[100], borderRadius: BorderRadius.circular(30)),
        child: ListTile(
          title: Container(
            decoration: BoxDecoration(
              color: widget.color,
              // borderRadius: BorderRadius.circular(20),
            ),
            child: SvgPicture.asset(widget.icon, width: 30),
          ),
          subtitle: Container(
            // color: Colors.red,
            alignment: Alignment.topCenter,
            // width: 250,
            // width: widget.size.width / 5,

            child: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 9),
              ),
            ),
          ),
        ),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => widget.ontap),
      ),
    );
  }
}
