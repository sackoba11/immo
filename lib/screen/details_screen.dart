// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
import 'package:immo/model/chair.dart';
import 'package:immo/widgets/favorie.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreen extends StatefulWidget {
  final Maison chair;

  const DetailsScreen({Key? key, required this.chair}) : super(key: key);

  @override
  DetailsScreenState createState() => DetailsScreenState();
}

class DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: size.height / 2.5,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: Image(
                        image: AssetImage(widget.chair.imageUrl),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(
                            "assets/icons/arrow.svg",
                            width: 35,
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("recherche");
                              },
                              child: SvgPicture.asset(
                                "assets/icons/search.svg",
                                width: 25,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  print("partager");
                                },
                                child: SvgPicture.asset(
                                  "assets/icons/share2.svg",
                                  width: 25,
                                ),
                              ),
                            ),
                            Favorite(
                              color: Colors.grey.shade50,
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                    child: Text(
                      widget.chair.categorie,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0, top: 20.0),
                    child: Text(
                      "\$${widget.chair.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        // letterSpacing: 1.8,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Text(
                      widget.chair.sousCaegorie,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                    ),
                    child: Text(
                      widget.chair.details,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Text(
                      widget.chair.localisation,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.chair.rating.toString(),
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.black38,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Descriptions',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10.0),
                child: Text(
                  widget.chair.description,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.black38,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Divider(
                  color: Colors.black,
                  indent: 5,
                  endIndent: 10,
                  height: 5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.chair.auteur,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Container(
              //       height: 60.0,
              //       width: 100.0,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20.0),
              //           color: Colors.white,
              //           boxShadow: const [
              //             BoxShadow(
              //               color: Colors.black12,
              //               offset: Offset(0, 2),
              //               blurRadius: 20.0,
              //             )
              //           ]),
              //       child: Center(
              //         child: Text(
              //           'H: ${widget.chair.height}"',
              //           style: const TextStyle(
              //             fontSize: 16.0,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              // Container(
              //   height: 60.0,
              //   width: 100.0,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(20.0),
              //       color: Colors.white,
              //       boxShadow: const [
              //         BoxShadow(
              //           color: Colors.black12,
              //           offset: Offset(0, 2),
              //           blurRadius: 20.0,
              //         )
              //       ]),
              //   child: Center(
              //     child: Text(
              //       'W: ${widget.chair.weight} lbs',
              //       style: const TextStyle(
              //         fontSize: 16.0,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ),
              // ),
              //     Container(
              //       height: 60.0,
              //       width: 100.0,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20.0),
              //           color: Colors.white,
              //           boxShadow: const [
              //             BoxShadow(
              //               color: Colors.black12,
              //               offset: Offset(0, 2),
              //               blurRadius: 20.0,
              //             )
              //           ]),
              //       child: Center(
              //         child: Text(
              //           widget.chair.localisation,
              //           style: const TextStyle(
              //             fontSize: 16.0,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // // ),
              // const SizedBox(
              //   height: 50.0,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Container(
                  //   height: 60.0,
                  //   width: 220.0,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20.0),
                  //       color: Theme.of(context).primaryColor,
                  //       boxShadow: const [
                  //         BoxShadow(
                  //           color: Colors.black12,
                  //           offset: Offset(0, 2),
                  //           blurRadius: 20.0,
                  //         )
                  //       ]),
                  //   child: const Center(
                  //     child: Text(
                  //       'Reserver',
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.bold,
                  //         color: Colors.white,
                  //         fontSize: 20.0,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Container(
                  //   height: 60.0,
                  //   width: 100.0,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(20.0),
                  //       color: Theme.of(context).primaryColor,
                  //       boxShadow: const [
                  //         BoxShadow(
                  //           color: Colors.black12,
                  //           offset: Offset(0, 2),
                  //           blurRadius: 20.0,
                  //         )
                  //       ]),
                  //   child: const Center(
                  //       child: Icon(
                  //     Icons.favorite_border,
                  //     color: Colors.white,
                  //     size: 30.0,
                  //   )),
                  // ),
                ],
              )
            ],
          )
        ],
      ),
      floatingActionButton: Container(
        height: 60.0,
        width: 220.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Theme.of(context).primaryColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 20.0,
              )
            ]),
        child: const Center(
          child: Text(
            'Reserver',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
