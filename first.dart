import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync() ?? "Unknown";

  stdout.write('Enter your age: ');
  int? age = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  stdout.write('Enter your favourite colour: ');
  String? favouriteColour = stdin.readLineSync() ?? "Not specified";

  if (age < 18) {
    print(
        '\nHi $name! You are a minor and still have plenty of time to explore!');
  } else if (age < 40) {
    print('\nHello $name! You are in the prime of your life!');
  } else {
    print('\nGreetings $name! Your experience is your strength!');
  }
  List<String> dataList = [name, age.toString(), favouriteColour];
  Set<String> dataSet = {name, age.toString(), favouriteColour};
  Map<String, dynamic> dataMap = {
    'Name': name,
    'Age': age,
    'Favourite Colour': favouriteColour,
  };
  int Adultage = 18 - age;
  bool isAdult = age >= 18;
  String colourMessage = favouriteColour.isNotEmpty
      ? "Your favourite colour is $favouriteColour."
      : "You didn't specify a favourite colour.";
  print('\n--- Collected Data ---');
  print('As a List: $dataList');
  print('As a Set: $dataSet');
  print('As a Map: $dataMap');

  print(colourMessage);
  print('Are you an adult? ${isAdult ? "Yes" : "No"}');
  if (Adultage > 0) {
    print('After $Adultage year, you will be Adult.');
  }
}
