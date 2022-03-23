void main(List<String> args) async {
  Human human = new Human();

  print(human.name);
  print("Luffy");
  print("Zoro");
  print("Killer");

  await human.getData();
  print('Name 3: ' + human.name);
}

class Human {
  String name = "nama character one piece";
  Future getData() async {
    return await Future.delayed(Duration(seconds: 3), () {
      name = 'hilmy';
      print('get data [done]');
      return 0;
    });
  }
}
