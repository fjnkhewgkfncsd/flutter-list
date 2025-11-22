class Joke {
  final String title;
  final String description;
  bool isFavorite;

  Joke({
    required this.title,
    required this.description,
    this.isFavorite = false,
  });
}

List<Joke> jokes = [
  Joke(
    title: "Why did the scarecrow win an award?",
    description: "Because he was outstanding in his field!",
  ),
  Joke(
    title: "Why don't scientists trust atoms?",
    description: "Because they make up everything!",
  ),
  Joke(
    title: "Why did the bicycle fall over?",
    description: "Because it was two-tired!",
  ),
  Joke(
    title: "What do you call a bear with no teeth?",
    description: "A gummy bear!",
  ),
  Joke(
    title: "Why did the math book look sad?",
    description: "Because it had too many problems!",
  ),
  Joke(
    title: "What do you call a fake noodle?",
    description: "An impasta!",
  ),
];