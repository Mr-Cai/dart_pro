import 'package:dart_pro/dart_pro.dart' as dart_pro;

class StringUtil {
  static bool isValidEmail(String txt) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(txt);
  }
}

extension StringExtension on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  String concatWithSpace(String other) {
    return '$this $other';
  }

  String operator &(String other) => '$this $other';
}

extension NumExtensions<T extends num> on T {
  T addTen() => this + 10;
}

main(List<String> arguments) {
  final input = StringUtil.isValidEmail('43@acom');
  print(input);
  dynamic output = 'ccc@gmail.com'.isValidEmail;
  print(output);
  print('Hello world: ${dart_pro.calculate()}!');

  dynamic concat = 'first'.concatWithSpace('second');
  var txt = '你好' & 'Dart';
  print(concat);
  print(txt);

  num anInt = 23.addTen();
  print(anInt);

  // int anDouble = 1.0.addTen();
  double  anDouble = 1.0.addTen();
  print(anDouble);
}
