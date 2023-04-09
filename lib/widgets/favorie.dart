import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key, required this.color});
  final Color color;
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool _isfavorite = false;
  int nombre = 0;

  _toggleFavorite() {
    setState(() {
      if (_isfavorite) {
        _isfavorite = false;
        nombre -= 1;
      } else {
        _isfavorite = true;
        nombre += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 40,
        height: 70,
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            IconButton(
              onPressed: _toggleFavorite,
              icon: _isfavorite
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border),
              color: Theme.of(context).primaryColor,
            ),
            Text(
              "$nombre",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
