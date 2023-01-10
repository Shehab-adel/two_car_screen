import 'package:flutter/material.dart';

class headCardRowWidget extends StatefulWidget {
  const headCardRowWidget({super.key, required this.index});

  final int index;

  @override
  State<headCardRowWidget> createState() => _headCardRowWidgetState();
}

class _headCardRowWidgetState extends State<headCardRowWidget> {
  bool isFavorite = false;

  List<int> favorites = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Porshe 718 Cayman S',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (favorites.contains(widget.index) == false) {
                  favorites.add(widget.index);
                  print('**************');
                  print(favorites);
                } else {
                  favorites.remove(widget.index);
                }
                isFavorite = !isFavorite;
                setState(() {});
              },
              child: favorites.contains(widget.index)
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.favorite_outline,
                    ),
            )
          ],
        ));
  }
}
