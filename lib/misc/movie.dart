class Movie {
  final List<String> casts;
  final double score, rates;
  final String image, rate, title, story, creators, details;

  Movie({
    this.image,
    this.score,
    this.rate,
    this.title,
    this.story,
    this.creators,
    this.details,
    this.casts,
    this.rates,
  });
}

final List<Movie> moviesList = [
  Movie(
    score: 8.7,
    rate: "R",
    image:
        "https://i.pinimg.com/originals/dd/58/62/dd586203382ee10102c591bff2a551b8.jpg",
    title: "Joker",
    story:
        "In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.",
    creators: "Director: Todd Phillips\nWriters: Todd Phillips, Scott Silver",
    details: "2h 2min | Crime, Drama, Thriller",
    casts: [
      "https://m.media-amazon.com/images/M/MV5BNzAzNjg5MDE3N15BMl5BanBnXkFtZTcwMjIxNzU0OA@@._V1_UX214_CR0,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BMjAwNDU3MzcyOV5BMl5BanBnXkFtZTcwMjc0MTIxMw@@._V1_UY317_CR13,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNjEwNzEwYjQtYWUwNy00YWZlLWE5ZmQtMDBiMjc5ZjdiMjc1XkEyXkFqcGdeQXVyNjEyNzc2MTI@._V1_UX214_CR0,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BMTM4OTIzMTg5MF5BMl5BanBnXkFtZTYwNjA5OTIz._V1_UY317_CR1,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BMTI0NzI0MzU1M15BMl5BanBnXkFtZTcwMjM0Mjg3MQ@@._V1_UY317_CR20,0,214,317_AL_.jpg",
    ],
    rates: 520663,
  ),
  Movie(
    score: 7.5,
    rate: "R",
    image:
        "https://images-na.ssl-images-amazon.com/images/I/91f2bgjN6EL._RI_.jpg",
    title: "John Wick",
    story:
        " John Wick is on the run after killing a member of the international assassin's guild, and with a \$14 million price tag on his head, he is the target of hit men and women everywhere.",
    creators: "Director: Chad Stahelski\nWriters: Derek Kolstad, Shay Hatten",
    details: "2h 11min | Action, Crime, Thriller",
    casts: [
      "https://m.media-amazon.com/images/M/MV5BNjUxNDcwMTg4Ml5BMl5BanBnXkFtZTcwMjU4NDYyOA@@._V1_UY317_CR15,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BMjIxNzc5MDAzOV5BMl5BanBnXkFtZTcwMDUxMjMxMw@@._V1_UY317_CR10,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNDZjYzFjNWYtOTA2Yy00MjY5LWI4OGQtM2RlNDU5ZTlhMjU0XkEyXkFqcGdeQXVyNzE0OTI2MzY@._V1_UY317_CR12,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BMTc0NjczNDc1MV5BMl5BanBnXkFtZTYwMDU0Mjg1._V1_UX214_CR0,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BN2YwN2Q5YWQtN2ZhMS00ZWZjLWE3YmMtNjNhYmMzZTFmYjE4XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_UX214_CR0,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BOTU5NDU3NzY5M15BMl5BanBnXkFtZTgwNDMxOTQ3NjM@._V1_UY317_CR2,0,214,317_AL_.jpg"
    ],
    rates: 200260,
  ),
  Movie(
    score: 8.5,
    rate: "PG-13",
    image:
        "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SY1000_CR0,0,674,1000_AL_.jpg",
    title: "Avengers: Endgame",
    story:
        "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
    creators:
        " Directors: Anthony Russo, Joe Russo\nWriters: Christopher Markus, Stephen McFeely",
    details: "3h 1min | Action, Adventure, Drama",
    casts: [
      "https://m.media-amazon.com/images/M/MV5BNzg1MTUyNDYxOF5BMl5BanBnXkFtZTgwNTQ4MTE2MjE@._V1_UX214_CR0,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BMTU2NTg1OTQzMF5BMl5BanBnXkFtZTcwNjIyMjkyMg@@._V1_UY317_CR6,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNDQyNzMzZTMtYjlkNS00YzFhLWFhMTctY2M4YmQ1NmRhODBkXkEyXkFqcGdeQXVyNjcyNzgyOTE@._V1_UY317_CR20,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BOTU2MTI0NTIyNV5BMl5BanBnXkFtZTcwMTA4Nzc3OA@@._V1_UX214_CR0,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BMTM3OTUwMDYwNl5BMl5BanBnXkFtZTcwNTUyNzc3Nw@@._V1_UY317_CR23,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BOTk2NDc2ODgzMF5BMl5BanBnXkFtZTcwMTMzOTQ4Nw@@._V1_UX214_CR0,0,214,317_AL_.jpg",
      "https://m.media-amazon.com/images/M/MV5BNDMxNDM3MzY5N15BMl5BanBnXkFtZTcwMjkzOTY4MQ@@._V1_UY317_CR17,0,214,317_AL_.jpg",
    ],
    rates: 620083,
  ),
];
