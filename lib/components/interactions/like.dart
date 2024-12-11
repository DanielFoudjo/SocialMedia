import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  int likeCount;
  VoidCallback onLike;

  Like({
    super.key,
    required this.onLike,
    required this.likeCount,
  });

   @override
  State<Like> createState() => _LikeState();
  }

  class _LikeState extends State<Like> {
  late int _currentLikeCount;

  @override
  void initState() {
    super.initState();
    // Initialisation de l'état interne avec la valeur initiale du constructeur.
    _currentLikeCount = widget.likeCount;
  }

  void _incrementLike() {
    setState(() {
      _currentLikeCount++; // Incrémente le compteur interne.
      //_currentLikeCount = _currentLikeCount;
    });
    widget.onLike(); // Appelle la fonction de rappel pour notifier le parent.
  }


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
        onPressed: _incrementLike,
        icon: const Icon(Icons.thumb_up),
        tooltip: "Like",
      ),
      Text('$_currentLikeCount'),
    ]);
  }
  
 
}
