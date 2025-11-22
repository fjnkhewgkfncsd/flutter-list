import 'package:flutter/material.dart';
import './jokes.dart';

Color appColor = Colors.green[300] as Color;


void main(){
  runApp(MaterialApp(home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: JokeContainer(jokes: jokes,),
      ),
    )
  );
}

class JokeContainer extends StatefulWidget {
  final List<Joke> jokes;
  const JokeContainer({
    super.key,
    required this.jokes,
  });

  @override
  State<JokeContainer> createState() => _JokeContainerState();
}

class _JokeContainerState extends State<JokeContainer> {
  int? favoriteIndex;

  void onFavClicked(int index){
    setState(() {
      favoriteIndex = index;
    });
  }
  List<Widget> buildFavoriteCards() {
    widget.jokes.asMap().forEach((index, joke) {
      if (index == favoriteIndex) {
        joke.isFavorite = true;
      } else {
        joke.isFavorite = false;
      }
    });
    return widget.jokes.map((joke) => FavoriteCard(
      joke: joke,
      onFavoriteClick: () => onFavClicked(widget.jokes.indexOf(joke)),
    )).toList();
  }
  @override
  /// and sets the favoriteIndex to that index.
  Widget build(BuildContext context) {
    return ListView(
      children: buildFavoriteCards(),
    );
  }
}

class FavoriteCard extends StatefulWidget {
  final Joke joke;
  final VoidCallback onFavoriteClick;
  const FavoriteCard({
    super.key,
    required this.joke,
    required this.onFavoriteClick,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.joke.title,
                  style: TextStyle(
                      color: appColor, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 10.0),
                Text(widget.joke.description)
              ],
            ),
          ),
          IconButton(
              onPressed: widget.onFavoriteClick,
              icon: Icon(
                widget.joke.isFavorite ? Icons.favorite : Icons.favorite_border,
                color: widget.joke.isFavorite ? Colors.red : Colors.grey,
              ))
        ],
      ),
    );
  }
}
