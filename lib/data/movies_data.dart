import '../models/movie.dart';

// Using Lists and Maps to store movie data
final List<Map<String, dynamic>> categories = [
  {'title': 'Tendencias', 'movies': trendingMovies},
  {'title': 'Populares en Netflix', 'movies': popularMovies},
  {'title': 'Volver a ver', 'movies': watchAgainMovies},
  {'title': 'Mi lista', 'movies': myListMovies},
];

final List<Movie> trendingMovies = [
  Movie(
    id: '1',
    title: 'Stranger Things',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BMDZkYmVhNjMtNWU4MC00MDQxLWE3MjYtZGMzZWI1ZjhlOWJmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
    description:
        'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.',
    year: '2016',
    duration: '51m',
    rating: '8.7',
    genres: ['Drama', 'Fantasy', 'Horror'],
    isLocalImage: false,
  ),
  Movie(
    id: '2',
    title: 'The Witcher',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BN2FiOWU4YzYtMzZiOS00MzcyLTlkOGEtOTgwZmEwMzAxMzA3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg',
    description:
        'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.',
    year: '2019',
    duration: '1h',
    rating: '8.2',
    genres: ['Action', 'Adventure', 'Fantasy'],
    isLocalImage: false,
  ),
  Movie(
    id: '3',
    title: 'Money Heist',
    imageUrl: 'assets/images/money_heist.jpg',
    description:
        'A criminal mastermind who goes by "The Professor" has a plan to pull off the biggest heist in recorded history.',
    year: '2017',
    duration: '1h 10m',
    rating: '8.3',
    genres: ['Action', 'Crime', 'Mystery'],
    isLocalImage: true,
  ),
];

final List<Movie> popularMovies = [
  Movie(
    id: '4',
    title: 'The Queen\'s Gambit',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BM2EwMmRhMmUtMzBmMS00ZDQ3LTg4OGEtNjlkODk3ZTMxMmJlXkEyXkFqcGdeQXVyMjM5ODk1NDU@._V1_.jpg',
    description:
        'Orphaned at the tender age of nine, prodigious introvert Beth Harmon discovers and masters the game of chess in 1960s USA.',
    year: '2020',
    duration: '55m',
    rating: '8.6',
    genres: ['Drama'],
    isLocalImage: false,
  ),
  Movie(
    id: '5',
    title: 'Breaking Bad',
    imageUrl: 'assets/images/breaking_bad.jpg',
    description:
        'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine.',
    year: '2008',
    duration: '49m',
    rating: '9.5',
    genres: ['Crime', 'Drama', 'Thriller'],
    isLocalImage: true,
  ),
];

final List<Movie> watchAgainMovies = [
  Movie(
    id: '6',
    title: 'Dark',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BOTk2NzUyOTctZDdlMS00MDJlLTgzNTEtNzQzYjFhNjA0YjBjXkEyXkFqcGdeQXVyMjg1NDcxNDE@._V1_.jpg',
    description:
        'A family saga with a supernatural twist, set in a German town where the disappearance of two young children exposes the relationships among four families.',
    year: '2017',
    duration: '1h',
    rating: '8.7',
    genres: ['Crime', 'Drama', 'Mystery'],
    isLocalImage: false,
  ),
  Movie(
    id: '7',
    title: 'Narcos',
    imageUrl: 'assets/images/narcos.jpg',
    description:
        'A chronicled look at the criminal exploits of Colombian drug lord Pablo Escobar, as well as the many other drug kingpins who plagued the country through the years.',
    year: '2015',
    duration: '49m',
    rating: '8.8',
    genres: ['Biography', 'Crime', 'Drama'],
    isLocalImage: true,
  ),
];

final List<Movie> myListMovies = [
  Movie(
    id: '8',
    title: 'The Crown',
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BZmY0MzBlNjctNTRmNy00Njk3LWFjMzctMWQwZDAwMGJmY2MyXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg',
    description:
        'Follows the political rivalries and romance of Queen Elizabeth II\'s reign and the events that shaped the second half of the twentieth century.',
    year: '2016',
    duration: '58m',
    rating: '8.7',
    genres: ['Biography', 'Drama', 'History'],
    isLocalImage: false,
  ),
  Movie(
    id: '9',
    title: 'Peaky Blinders',
    imageUrl: 'assets/images/peaky_blinders.jpg',
    description:
        'A gangster family epic set in Birmingham, England, in 1919, centered on a gang who sew razor blades in the peaks of their caps.',
    year: '2013',
    duration: '1h',
    rating: '8.8',
    genres: ['Crime', 'Drama'],
    isLocalImage: true,
  ),
];
