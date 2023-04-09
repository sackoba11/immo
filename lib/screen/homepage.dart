import 'package:flutter/material.dart';
import 'package:immo/model/caroussel.dart';
import 'package:immo/model/custom_bottom_navigation_bar.dart';
import 'package:immo/model/device.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    initState() {
      if (height < width) {
        var echange = height;
        height = width;
        width = echange;
        print(height);
        print(width);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: size.height / 15,
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 15,
                      left: size.width / 100,
                      right: size.width / 100,
                      bottom: 15),
                  child: Card(
                    elevation: 1,
                    color: Colors.white60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: SizedBox(
                      width: size.width / 1.5,
                      height: size.height / 18,
                      child: Row(
                        children: [
                          GestureDetector(
                            child: Container(
                              width: size.width / 2,
                              height: size.height / 16,
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width / 20.0,
                                        right: size.width / 20.0),
                                    child:
                                        Icon(Icons.search, color: Colors.black),
                                  ),
                                  Text(
                                    "recherche",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              print("$height + $width");
                            },
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    style: BorderStyle.solid, width: 0.5),
                                borderRadius: BorderRadius.circular(65)),
                            child: IconButton(
                              onPressed: (() {
                                print("filtre");
                              }),
                              icon: SvgPicture.asset(
                                'assets/icons/filters3.svg',
                                // color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
      body: Container(
        height: size.height,
        color: Colors.grey[200],
        child: Stack(fit: StackFit.passthrough, children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: Modules(
                  size: size,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                child: SlideMaison(),
              ),
              // CustomBottomNavigationBar()
            ],
          ),
        ]),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
