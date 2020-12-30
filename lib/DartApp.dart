int calculate() {
  return 6 * 7;
}

class Video {
  String _title; //標題
  String _description; //影片資訊
  String _publishTime; //上傳時間
  String _thumbnail; //縮圖網址
  String _url; //影片網址

  Video(this._title, this._description, this._publishTime, this._thumbnail,
      this._url);

  Video.onlyUrl(this._url);

  Video.onlyTitle(String title) {
    _title = title;
  }

  //getter
  String get title => _title;

  String get url => _url;

  //setter
  set title(String title) {
    _title = title;
  }
}

mixin Android {
  String android() => "I'm android developer.";
}

mixin IOS {
  String ios() => "I'm ios developer.";
}

class People {
  String name;
  int age;

  People(this.name, this.age);
  String introduce() => "I'm $name. Nice to meet you.";
}

class Flutter extends People with Android, IOS{
  Flutter(String name, int age): super(name, age);
}

Future<void> introduction(){
  return Future.delayed(
      Duration(seconds: 2), () => print('Dart tutorial'));
}

// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Impostor implements Person {
  get _name => '';

  String greet(String who) => 'Hi $who. Do you know who I am?';
}

String greetBob(Person person) => person.greet('Bob');
