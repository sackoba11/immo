import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Suivi extends StatefulWidget {
  const Suivi({super.key});

  @override
  State<Suivi> createState() => _SuiviState();
}

class _SuiviState extends State<Suivi> {
  int nombre = 0;

  _toggleFavorite() {
    setState(() {
      nombre++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 1.0),
              child: GestureDetector(
                onTap: () {
                  print("Whatsapp");
                },
                child: SvgPicture.asset(
                  "assets/icons/whatsapp.svg",
                  width: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: GestureDetector(
                  onTap: () {
                    print("Email");
                  },
                  child: SvgPicture.asset(
                    "assets/icons/mail.svg",
                    width: 30,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: GestureDetector(
                  onTap: () {
                    print("Phone");
                  },
                  child: SvgPicture.asset(
                    "assets/icons/phone.svg",
                    width: 25,
                  )),
            ),
            TextButton(
                onPressed: _toggleFavorite,
                child: Text(
                  "Suivre ($nombre)",
                  style: TextStyle(color: Color.fromARGB(255, 59, 89, 152)),
                )),
          ],
        ),
      ),
    );
  }
}
