import 'dart:ffi';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var arr = <WordPair>[];
  var numb = 10;
  var favwo = WordPair;
  void random10() {
    while (numb > 0) {
      arr.add(WordPair.random());
      numb -= 1;
      //print(arr);
    }
    //notifyListeners();
  }

  void getNext() {
    numb = 10;
    arr = <WordPair>[]; //Limpar arr
    print("Arr 0");
    print(arr);
    current = WordPair.random();
    while (numb > 0) {
      arr.add(WordPair.random());
      numb -= 1;
    }
    print("Arr 0 fora do while");
    print(arr);
    notifyListeners();
  }

  var favorites = <WordPair>[];

  void toggleFavorite(WordPair wordFave) {
    if (favorites.contains(wordFave)) {
      favorites.remove(wordFave);
    } else {
      favorites.add(wordFave);
    }
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;
    appState.random10();
    var arrayfull = appState.arr;
    print("Array full");
    print(arrayfull);

    IconData icon0;
//Region
    if (appState.favorites.contains(arrayfull[0])) {
      icon0 = Icons.favorite;
    } else {
      icon0 = Icons.favorite_border;
    }
    IconData icon1;
    if (appState.favorites.contains(arrayfull[1])) {
      icon1 = Icons.favorite;
    } else {
      icon1 = Icons.favorite_border;
    }
    IconData icon2;
    if (appState.favorites.contains(arrayfull[2])) {
      icon2 = Icons.favorite;
    } else {
      icon2 = Icons.favorite_border;
    }
    IconData icon3;
    if (appState.favorites.contains(arrayfull[3])) {
      icon3 = Icons.favorite;
    } else {
      icon3 = Icons.favorite_border;
    }
    IconData icon4;

    if (appState.favorites.contains(arrayfull[4])) {
      icon4 = Icons.favorite;
    } else {
      icon4 = Icons.favorite_border;
    }
    IconData icon5;
    if (appState.favorites.contains(arrayfull[5])) {
      icon5 = Icons.favorite;
    } else {
      icon5 = Icons.favorite_border;
    }
    IconData icon6;
    if (appState.favorites.contains(arrayfull[6])) {
      icon6 = Icons.favorite;
    } else {
      icon6 = Icons.favorite_border;
    }
    IconData icon7;
    if (appState.favorites.contains(arrayfull[7])) {
      icon7 = Icons.favorite;
    } else {
      icon7 = Icons.favorite_border;
    }
    IconData icon8;
    if (appState.favorites.contains(arrayfull[8])) {
      icon8 = Icons.favorite;
    } else {
      icon8 = Icons.favorite_border;
    }
    IconData icon9;
    if (appState.favorites.contains(arrayfull[9])) {
      icon9 = Icons.favorite;
    } else {
      icon9 = Icons.favorite_border;
    }
//endregion
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[0]);
                  },
                  icon: Icon(icon0),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[0], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[1]);
                  },
                  icon: Icon(icon1),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[1], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[2]);
                  },
                  icon: Icon(icon2),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[2], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[3]);
                  },
                  icon: Icon(icon3),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[3], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[4]);
                  },
                  icon: Icon(icon4),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[4], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[5]);
                  },
                  icon: Icon(icon5),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[5], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[6]);
                  },
                  icon: Icon(icon6),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[6], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[7]);
                  },
                  icon: Icon(icon7),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[7], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[8]);
                  },
                  icon: Icon(icon8),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[8], key: key),
              ],
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavorite(arrayfull[9]);
                  },
                  icon: Icon(icon9),
                  label: Text('Like'),
                ),
                BigCard(pair: arrayfull[9], key: key),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                    print(arrayfull[0]);
                  },
                  child: Text('Next'),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                  child: Text('See the favs!'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: pair.asPascalCase,
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return Scaffold(
        body: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${appState.favorites.length} favorites:'),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.asLowerCase),
          ),
      ],
    ));
  }
}
