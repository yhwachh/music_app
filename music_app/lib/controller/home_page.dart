import 'package:flutter/material.dart';
import 'package:music_app/model/bar_choice.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  int _currentIndex = 0;

  List<BarChoice> _items = [
    BarChoice(
      label: "Music",
      iconData: Icons.music_note,
      page: Container(),
    ),
    BarChoice(
      label: "Favoris",
      iconData: Icons.whatshot,
      page: Container(),
    ),
    BarChoice(
      label: "Recherche",
      iconData: Icons.search,
      page: Container(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), // Taille de la barre d'app
        child: SafeArea(
          // SafeArea pour eviter que le contenu soit caché par la barre de statut
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Alignement des enfants
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.radio),
                    Icon(Icons.doorbell),
                    Icon(Icons.settings),
                  ],
                ),
                _items[_currentIndex].titleForAppBar,
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Text("Mon App"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items
            .map((e) => e.item)
            .toList(), // map pour transformer la liste en liste de BottomNavigationBarItem
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
