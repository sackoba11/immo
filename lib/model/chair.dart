import 'package:flutter/material.dart';

class Maison {
  final String auteur;
  final String statut;
  final String imageUrl;
  final String categorie;
  final String sousCaegorie;
  final String localisation;
  final String itineraire;
  final int price;
  final String details;
  final String description;
  final double rating;

  final int height;
  final int weight;

  Maison({
    required this.auteur,
    required this.statut,
    required this.imageUrl,
    required this.categorie,
    required this.sousCaegorie,
    required this.localisation,
    required this.itineraire,
    required this.price,
    required this.details,
    required this.description,
    required this.rating,
    required this.height,
    required this.weight,
  });
}
