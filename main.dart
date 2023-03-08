import 'dart:io';
import 'dart:math';

void main() {
//   Q1:  Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };

// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise
//add 'fri' to expenses and set its value to 5000.0 then print expenses.

  print("answer 1");

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
    'fri': 4300,
  };
  if (expenses['fri'] != 5000.0) {
    expenses['fri'] = 5000.0;
  } else {
    expenses['fri'] = 5000.0;
  }
  print(expenses);

// Q2: Write a program in Dart that find the area of a circle using function.
  print("Answer:2");
  areaOfCircle();

// // Q3: Write a program in a dart that implements the Pythagorean theorem using function.
  print("answer:3");
  stdout.writeln("enter base value");
  num base = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter perpendicular value");
  num perpendicular = int.parse(stdin.readLineSync()!);
  pythagorasTheoem(base, perpendicular);

// // Q4: Write a program in Dart to reverse a String using function.
  print("answer 4");
  stdout.writeln("enter a string");
  var string = (stdin.readLineSync());
  reverse(string);

// Q5: Write a program in Dart to signup user by using username, email & password as required fields
// while  phoneNumber is optional using function, call this function at least 3 times to create different
// users. Now create another function named as loginUser and then try to login with correct & incorrect
// credentials
  print("answer no 5");
  stdout.writeln("press enter to continue");
  stdin.readByteSync();
  Map user = {
    'name': ['subhan ahmed', 'irtiza ali', 'kumail abbas'],
    'email': [
      'sa7190850@gmail.com',
      'irteza112@gmail.com',
      'kumail121@gmail.com'
    ],
    'password': ['EB21102107', 'EB21102112', 'EB21102114'],
    'phone no': [030300000000, 0300111111111, 03032928435]
  };
  for (var i = 0; i <= 2; i++) {
    signup(user['name'][i], user['email'][i], user['password'][i],
        user['phone no'][i]);
  }
  // stdout.writeln("enter email:");
  // var email = int.parse(stdin.readLineSync()!);
  // stdout.writeln("enter password:");
  // var password = int.parse(stdin.readLineSync()!);
  stdout.writeln("press enter to continue");
  stdin.readByteSync();

  login('irteza112@gmail.com', 'EB21102112');
  login('kumailabbas123', 'EB22102112');
  login('sa7190850@gmail.com', 'EB21102107');

// Q6:  Write a program in Dart to calculate power of a certain numbers using function only.
  print("answer no 6");
  stdout.writeln("enter base value");
  num value = int.parse(stdin.readLineSync()!);
  stdout.writeln("enter power value");
  num exponent = int.parse(stdin.readLineSync()!);
  power(value, exponent);
// Q7: Write a function to calculate number of vowels and consonant in a String.
  print('answer:7');
  stdout.writeln("enter a word");
  var word = stdin.readLineSync();
  vowelAndConsonent(word);
//;
}

//for AREA OF CIRCLE
areaOfCircle() {
  stdout.writeln("give the value of radius");
  num radius = int.parse(stdin.readLineSync()!);
  num areaOfCircle = 3.412 * pow(radius, 2);
  print(areaOfCircle);
}

pythagorasTheoem(base, perpendicular) {
  num hypsqr = pow(perpendicular, 2) + pow(base, 2);
  num hypotenus = pow(hypsqr, 1 / 2);
  print("hypotenus is $hypotenus");
}

reverse(string) {
  String revstring = "";
  for (var i = string.length - 1; i >= 0; i--) {
    revstring += string[i];
  }
  print('reverse of the string:$revstring');
}

signup(UserName, email, password, [phoneNO]) {
  print("$UserName:$email:$password:$phoneNO");
  print("signup seccesfull");
}

login(email, password) {
  Map user = {
    'name': ['subhan ahmed', 'irtiza ali', 'kumail abbas'],
    'Email': [
      'sa7190850@gmail.com',
      'irteza112@gmail.com',
      'kumail121@gmail.com'
    ],
    'Password': ['EB21102107', 'EB21102112', 'EB21102114'],
    'phone no': [030300000000, 0300111111111, 03032928435]
  };

  if (user['Email'][0] == email && user['Password'][0] == password) {
    print("login seccesfull");
  } else if (user['Email'][1] == email && user['Password'][1] == password) {
    print("login seccesfull");
  } else if (user['Email'][2] == email && user['Password'][2] == password) {
    print("login seccesfull");
  } else {
    print("login failed");
  }
}

power(value, exponent) {
  num result = 1;
  for (var i = 0; i <= exponent - 1; i++) {
    result = result * value;
  }
  print(result);
}

vowelAndConsonent(word) {
  num vowel = 0;
  num consonent = 0;
  for (var i = 0; i <= word.length - 1; i++) {
    if (word[i] == 'a' ||
        word[i] == 'e' ||
        word[i] == 'i' ||
        word[i] == 'o' ||
        word[i] == 'u') {
      vowel += 1;
    } else {
      consonent += 1;
    }
  }
  print("the no of vowel :$vowel");
  print("no of consonent :$consonent");
}
