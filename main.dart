import 'dart:io'; // Don't forget this for input/output operations!

void main() {
  print('--- Dart Assignment Solutions with User Input ---');

  // Helper function to safely get integer input
  int? getIntegerInput(String prompt) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    return int.tryParse(input ?? '');
  }

  // Helper function to safely get double/num input
  num? getNumberInput(String prompt) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    return num.tryParse(input ?? '');
  }

  // --- Q.1: Square or Rectangle ---
  print('\n--- Q.1: Square or Rectangle Check ---');
  int? lengthQ1 = getIntegerInput('Enter length: ');
  int? breadthQ1 = getIntegerInput('Enter breadth: ');

  if (lengthQ1 == null || breadthQ1 == null) {
    print('Invalid input. Please enter valid numbers for length and breadth.');
  } else {
    if (lengthQ1 == breadthQ1) {
      print('Result: It\'s a Square!');
    } else {
      print('Result: It\'s a Rectangle!');
    }
  }

  // --- Q.2: Oldest and Youngest ---
  print('\n--- Q.2: Oldest and Youngest Check ---');
  int? age1Q2 = getIntegerInput('Enter age for Person 1: ');
  int? age2Q2 = getIntegerInput('Enter age for Person 2: ');

  if (age1Q2 == null || age2Q2 == null) {
    print('Invalid input. Please enter valid numbers for ages.');
  } else {
    if (age1Q2 > age2Q2) {
      print('Result: Person 1 (Age: $age1Q2) is the oldest.');
      print('        Person 2 (Age: $age2Q2) is the youngest.');
    } else if (age2Q2 > age1Q2) {
      print('Result: Person 2 (Age: $age2Q2) is the oldest.');
      print('        Person 1 (Age: $age1Q2) is the youngest.');
    } else {
      print('Result: Both persons are of the same age ($age1Q2).');
    }
  }

  // --- Q.3: Student Attendance ---
  print('\n--- Q.3: Student Attendance Check ---');
  int? classesHeldQ3 = getIntegerInput('Enter total number of classes held: ');
  int? classesAttendedQ3 = getIntegerInput(
    'Enter number of classes attended: ',
  );

  if (classesHeldQ3 == null ||
      classesAttendedQ3 == null ||
      classesHeldQ3 <= 0) {
    print('Invalid input. Please enter valid positive numbers for classes.');
  } else {
    double attendancePercentageQ3 = (classesAttendedQ3 / classesHeldQ3) * 100;
    print(
      'Percentage of classes attended: ${attendancePercentageQ3.toStringAsFixed(2)}%',
    );

    if (attendancePercentageQ3 >= 75) {
      print('Result: Student is allowed to sit in the exam.');
    } else {
      print('Result: Student is NOT allowed to sit in the exam.');
    }
  }

  // --- Q.4: Leap Year Check ---
  print('\n--- Q.4: Leap Year Check ---');
  int? yearQ4 = getIntegerInput('Enter a year: ');

  if (yearQ4 == null) {
    print('Invalid input. Please enter a valid year.');
  } else {
    if (yearQ4 % 4 == 0) {
      if (yearQ4 % 100 == 0) {
        if (yearQ4 % 400 == 0) {
          print('Result: $yearQ4 is a Leap Year.');
        } else {
          print('Result: $yearQ4 is NOT a Leap Year.');
        }
      } else {
        print('Result: $yearQ4 is a Leap Year.');
      }
    } else {
      print('Result: $yearQ4 is NOT a Leap Year.');
    }
  }

  // --- Q.5: Temperature Messages ---
  print('\n--- Q.5: Temperature Message ---');
  num? temperatureQ5 = getNumberInput('Enter temperature in Celsius: ');

  if (temperatureQ5 == null) {
    print('Invalid input. Please enter a valid number for temperature.');
  } else {
    if (temperatureQ5 < 0) {
      print('Result: Freezing weather');
    } else if (temperatureQ5 >= 0 && temperatureQ5 <= 10) {
      print('Result: Very Cold weather');
    } else if (temperatureQ5 > 10 && temperatureQ5 <= 20) {
      print('Result: Cold weather');
    } else if (temperatureQ5 > 20 && temperatureQ5 <= 30) {
      print('Result: Normal in Temp');
    } else if (temperatureQ5 > 30 && temperatureQ5 <= 40) {
      print('Result: Its Hot');
    } else {
      // temperatureQ5 >= 40
      print('Result: Its Very Hot');
    }
  }

  // --- Q.6: Grade Assignment ---
  print('\n--- Q.6: Grade Assignment ---');
  int? marksQ6 = getIntegerInput('Enter student\'s marks (0-100): ');

  if (marksQ6 == null || marksQ6 < 0 || marksQ6 > 100) {
    print('Invalid input. Please enter marks between 0 and 100.');
  } else {
    if (marksQ6 >= 90) {
      print('Result: Grade A');
    } else if (marksQ6 >= 80 && marksQ6 < 90) {
      print('Result: Grade B');
    } else if (marksQ6 >= 70 && marksQ6 < 80) {
      print('Result: Grade C');
    } else if (marksQ6 >= 60 && marksQ6 < 70) {
      print('Result: Grade D');
    } else {
      // marksQ6 < 60
      print('Result: Grade F');
    }
  }

  // --- Q.8: Multiple of 3 or 5 ---
  print('\n--- Q.8: Multiple of 3 or 5 Check ---');
  int? numberQ8 = getIntegerInput('Enter a number: ');

  if (numberQ8 == null) {
    print('Invalid input. Please enter a valid integer.');
  } else {
    if (numberQ8 % 3 == 0 && numberQ8 % 5 == 0) {
      print('Result: $numberQ8 is a multiple of both 3 and 5.');
    } else if (numberQ8 % 3 == 0) {
      print('Result: $numberQ8 is a multiple of 3.');
    } else if (numberQ8 % 5 == 0) {
      print('Result: $numberQ8 is a multiple of 5.');
    } else {
      print('Result: $numberQ8 is neither a multiple of 3 nor 5.');
    }
  }

  print('\n--- All questions processed. ---');
}
