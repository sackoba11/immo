import 'package:flutter/material.dart';
import 'package:immo/data.dart';
import 'package:immo/data/data.dart';
import 'package:immo/model/chair.dart';
import 'package:immo/model/house.dart';
import 'package:immo/screen/details_screen.dart';
import 'package:immo/widgets/favorie.dart';
import 'package:immo/widgets/suivi.dart';
import 'package:flutter_svg/svg.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:video_player/video_player.dart';

class SlideMaison extends StatefulWidget {
  const SlideMaison({super.key});

  @override
  State<SlideMaison> createState() => _SlideMaisonState();
}

class _SlideMaisonState extends State<SlideMaison> {
  _buildPopularProducts(BuildContext context, int index, Size size) {
    Maison chair = popular[index];
    var nombre = 0;
    House house = houseList[index];

    _toggleFavorite() {
      setState(() {
        nombre += 1;
      });
    }

    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DetailsScreen(
            chair: chair,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 1.5,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 20.0,
                    )
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: size.width / 2.4,
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.only(left: 5, right: 5),
                        dense: true,
                        title: Text(
                          chair.auteur,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(chair.statut,
                            style: const TextStyle(fontSize: 12)),
                        leading: CircleAvatar(
                          child: SvgPicture.asset("assets/icons/user.svg"),
                          backgroundColor: Colors.white,
                          // Icon(Icons.person_outline_sharp),
                        ),
                        // trailing: const Suivi(),
                        onTap: () {},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Suivi(),
                    )
                  ],
                ),
                Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      height: size.height * 0.35,
                      child: Carousel(
                        borderRadius: true,
                        radius: Radius.circular(20),
                        // dotSize: 6,
                        dotBgColor: Colors.transparent,
                        autoplay: true,
                        images: [
                          AssetImage(
                            house.moreImagesUrl[0],
                          ),
                          AssetImage(
                            house.moreImagesUrl[1],
                          ),
                          AssetImage(
                            house.moreImagesUrl[2],
                          ),
                          AssetImage(
                            house.moreImagesUrl[3],
                          ),
                          AssetImage(
                            house.moreImagesUrl[4],
                          ),
                          // AssetImage(
                          //   house.moreImagesUrl[5],
                          // ),
                        ],
                      ),
                    ),

                    //     ClipRRect(
                    //   borderRadius: BorderRadius.circular(20),
                    //   child: Image(
                    //     width: size.width,
                    //     height: size.height / 2.5,
                    //     fit: BoxFit.cover,
                    //     image: AssetImage(chair.imageUrl),
                    //   ),
                    // ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Favorite(
                        color: Colors.white,
                      ),
                    ],
                  )
                ]),
                Container(
                  width: 300.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      "${chair.categorie} , ${chair.sousCaegorie}",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Container(
                  //width: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          chair.localisation,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          '\$' + chair.price.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100.0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(
                          chair.itineraire,
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          chair.details,
                          style: TextStyle(color: Colors.black, fontSize: 12.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 200.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 4.0),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(chair.rating.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: IconButton(
                          icon: SvgPicture.asset("assets/icons/share1.svg"),
                          onPressed: () {},
                        ))
                  ],
                ),
                Container(
                  width: 400.0,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      chair.description,
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                      // overflow: TextOverflow.clip,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 1.65,
      width: size.width,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: popular.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildPopularProducts(context, index, size);
          }),
    );
  }
}
