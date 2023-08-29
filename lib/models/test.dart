class Test {
  String title;
  String description;
  bool isEnable;

  Test({required this.title, required this.description, this.isEnable = true});
}

List<Test> tests = [
  Test(title: "Какой ты котик?", description: "Ты наконец можешь узнать какой ты кот"),
  Test(title: "Какой ты ПЕС?", description: "Зайди и узнай какой ты пес"),
  Test(title: "Тест 3", description: "в разработке...", isEnable: false),
  Test(title: "Тест 4", description: "в разработке...", isEnable: false),
  Test(title: "Тест 5", description: "в разработке...", isEnable: true),
];
