class Game{
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String description;
  List<String> images;

  Game(
      this.bgImage,
      this.icon,
      this.name,
      this.type,
      this.score,
      this.download,
      this.review,
      this.description,
      this.images
      );

  static List<Game> games(){
    return [
      Game(
        "assets/images/ori1.jpg",
        "assets/images/ori_logo.png",
        "Ori and the forest",
        "Adventure",
        4.8,
        382,
        324,
        "Ori is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way. Ori is strange ",
        [
          "assets/images/ori2.jpg",
          "assets/images/ori3.jpg",
          "assets/images/ori4.jpg",
        ]

      ),
      Game(
        "assets/images/rl1.jpg",
        "assets/images/rl_logo.png",
        "Rayan legends",
        "Adventure",
        4.7,
        226,
        148,
        "Rayan is stranger to peril, but when a fateful flight puts the owlet ku in har'ms way. Ori is strange  ",
          [
            "assets/images/rl2.jpg",
            "assets/images/rl3.jpg",
            "assets/images/rl4.jpg",
            "assets/images/rl5.jpg",
          ]
      )
    ];
  }
}