class Movie {
  String? imageUrl;
  String? title;
  String? categories;
  int? year;
  String? country;
  int? length;
  String? description;
  List<String>? screenshots;

  Movie({
    this.imageUrl,
    this.title,
    this.categories,
    this.year,
    this.country,
    this.length,
    this.description,
    this.screenshots,
  });
}

final List<Movie> movies = [
  Movie(
    imageUrl: 'assets/img/spiderman.jpg',
    title: 'Spider-Man: Far From Home',
    categories: 'Fantasy, Sci-fi',
    year: 2018,
    country: 'USA',
    length: 129,
    description:
        'Our friendly neighborhood Super Hero decides to join his best friends Ned, MJ, and the rest of the gang on a European vacation. However, Peter\'s plan to leave super heroics behind for a few weeks are quickly scrapped when he begrudgingly agrees to help Nick Fury uncover the mystery of several elemental creature attacks, creating havoc across the continent.',
    screenshots: [
      'assets/img/spiderman_0.jpg',
      'assets/img/spiderman_1.jpg',
      'assets/img/spiderman_2.jpg',
    ],
  ),
  Movie(
    imageUrl: 'assets/img/nutcracker.jpg',
    title: 'The Nutcracker And The Four Realms',
    categories: 'Adventure, Family, Fantasy',
    year: 2018,
    country: 'USA',
    length: 100,
    description:
        'All Clara wants is a key - a one-of-a-kind key that will unlock a box that holds a priceless gift from her late mother. A golden thread, presented to her at godfather Drosselmeyer\'s annual holiday party, leads her to the coveted key-which promptly disappears into a strange and mysterious parallel world. It\'s there that Clara encounters a soldier named Phillip, a gang of mice and the regents who preside over three Realms: Land of Snowflakes, Land of Flowers, and Land of Sweets. Clara and Phillip must brave the ominous Fourth Realm, home to the tyrant Mother Ginger, to retrieve Clara\'s key and hopefully return harmony to the unstable world.',
    screenshots: [
      'assets/img/nutcracker_0.jpg',
      'assets/img/nutcracker_1.jpg',
      'assets/img/nutcracker_2.jpg',
    ],
  ),
  Movie(
    imageUrl: 'assets/img/toystory.jpg',
    title: 'Toy Story 4',
    categories: 'Adventure, Fantasy',
    year: 2019,
    country: 'USA',
    length: 100,
    description:
        'Woody, Buzz Lightyear and the rest of the gang embark on a road trip with Bonnie and a new toy named Forky. The adventurous journey turns into an unexpected reunion as Woody\'s slight detour leads him to his long-lost friend Bo Peep. As Woody and Bo discuss the old days, they soon start to realize that they\'re two worlds apart when it comes to what they want from life as a toy.',
    screenshots: [
      'assets/img/toystory_0.jpg',
      'assets/img/toystory_1.jpg',
      'assets/img/toystory_2.jpg',
    ],
  ),
];

final List<String> labels = [
  'Discover',
  'Categories',
  'Specials',
  'New',
];

final List<String> myList = [
  'assets/img/shigatsu_wa_kimi_no_uso.jpg',
  'assets/img/plastic_memories.png',
  'assets/img/erased.jpg',
  'assets/img/seven_deadly_sins.jpg',
  'assets/img/cobra_kai.jpg',
];

final List<String> popular = [
  'assets/img/stranger_things.jpg',
  'assets/img/endgame.jpg',
  'assets/img/oitnb.jpg',
  'assets/img/daredevil.jpg',
];
