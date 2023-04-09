import 'package:flutter/material.dart';
import 'package:immo/custom_icons/custom_icons.dart';
import 'package:immo/model/chair.dart';

// Chairs
final maison1 = Maison(
  auteur: "consulting",
  statut: "professionel",
  imageUrl: 'assets/images/house1.jpeg',
  categorie: 'Résidence',
  sousCaegorie: 'Villa',
  localisation: 'Cocody/Angré',
  itineraire: "Itinérire indispible",
  details: 'wiffi,douche',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.5,
  price: 299,
  height: 32,
  weight: 30,
);

final maison2 = Maison(
  auteur: "consulting",
  statut: "professionel",
  imageUrl: 'assets/images/house2.jpeg',
  categorie: 'Wood Chair',
  sousCaegorie: 'Wood and Metal',
  localisation: 'yop',
  itineraire: "Neant",
  details: 'wiffi,douche',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.5,
  price: 249,
  height: 32,
  weight: 30,
);

final maison3 = Maison(
  auteur: "consulting",
  statut: "professionel",
  imageUrl: 'assets/images/house3.jpeg',
  categorie: 'Dinning Chair',
  sousCaegorie: 'Wood',
  localisation: 'Mat Black',
  itineraire: "Neant",
  details: 'wiffi,douche',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.8,
  price: 199,
  height: 32,
  weight: 30,
);

final maison4 = Maison(
  auteur: "consulting",
  statut: "professionel",
  imageUrl: 'assets/images/house4.png',
  categorie: 'HvenChair',
  sousCaegorie: 'Leather',
  localisation: 'Grey',
  itineraire: "Neant",
  details: 'wiffi,douche',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 3.9,
  price: 149,
  height: 36,
  weight: 38,
);

final maison5 = Maison(
  auteur: "consulting",
  statut: "professionel",
  imageUrl: 'assets/images/house5.jpeg',
  categorie: 'Odin Chair',
  sousCaegorie: 'Leather and wood',
  localisation: 'Black',
  itineraire: "Neant",
  details: 'wiffi,douche',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.9,
  price: 149,
  height: 36,
  weight: 45,
);

final maison6 = Maison(
  auteur: "consulting",
  statut: "professionel",
  imageUrl: 'assets/images/indoor2.jpg',
  categorie: 'Royal Chair',
  sousCaegorie: 'Leather and wood',
  localisation: 'Black',
  itineraire: "Neant",
  details: 'wiffi,douche',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.9,
  price: 349,
  height: 32,
  weight: 38,
);

final maison7 = Maison(
  auteur: "consulting",
  statut: "professionel",
  imageUrl: 'assets/images/indoor1.jpg',
  categorie: 'Lounge Chair',
  sousCaegorie: 'Leather and wood',
  localisation: 'White',
  itineraire: "Neant",
  details: 'wiffi,douche',
  description:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
  rating: 4.7,
  price: 399,
  height: 28,
  weight: 30,
);

final List<Maison> popular = [
  maison1,
  maison6,
  maison2,
  maison3,
  maison7,
  maison4,
  maison5,
];

final List<Maison> recentlyAdded = [
  maison2,
  maison1,
  maison7,
  maison6,
];

List<IconData> categoryIcon = [
  CustomIcons.office_chair,
  CustomIcons.couch,
  CustomIcons.closet,
  CustomIcons.stand_lamp,
  CustomIcons.desktop,
];
