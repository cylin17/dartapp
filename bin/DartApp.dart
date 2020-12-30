import 'dart:async';

import 'package:DartApp/DartApp.dart' as DartApp;

import '../lib/DartApp.dart';

void main(List<String> arguments) //=> {print('Hello world: ${DartApp.calculate()}!')};
async {
  print('Hello world: ${DartApp.calculate()}!');

  dynamic a = 1;

  if (a is int) {
    print('$a is Int!');
  } else if (a is String) {
      print('$a is String!');
  } else {
    print('Wrong type!');
  }

  switch (a.runtimeType) {
    case int:
      print('is Int!');
      break;
    case String:
      print('is String!');
      break;
    default:
      print('Unknown type!');
  }

  try {
    //
  } on OutOfMemoryError {
    //
  } catch(e) {
    //
  } finally {
    //
  }

  var coder = Flutter('Charlie', 20);
  print(coder.introduce());
  print(coder.android());

  print('Before introduction');
  await introduction();
  print('After introduction');

  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));

  // -----
  var ctrl = StreamController();
  // var subscription = ctrl.stream.listen((data) => print('$data'));
  // ctrl.sink.add('event');
  // ctrl.sink.add(1234);
  // ctrl.sink.add({'a': 'element A', 'b': 'element B'});
  // ctrl.sink.add(123.45);

  var subscription = ctrl.stream
      .where((value) => (value % 2 == 0))
      .listen((value) => print('$value'));
  for(var i=1; i<11; i++){
    ctrl.sink.add(i);
  }

  await ctrl.close();
}
