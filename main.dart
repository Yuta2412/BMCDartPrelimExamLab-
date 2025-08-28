import 'dart:io';

void main() {
  const int passingGrade = 60;
  const int possibleScore = 100;
  const double assignmentWeight = 0.2;
  const double midtermWeight = 0.3;
  const double finalExamWeight = 0.5;

  print("\n--- Student Grade ---");
  print("Enter Student Name:");
  String? studentName = stdin.readLineSync();
  print("Enter Assignment Score:");
  double assignmentScore = double.parse(stdin.readLineSync()!);
  print("Enter Midterm Score:");
  double midtermScore = double.parse(stdin.readLineSync()!); 
  print("Enter final exam score:");
  double finalExamScore = double.parse(stdin.readLineSync()!);

  double finalGrade = (assignmentScore * assignmentWeight) + (midtermScore * midtermWeight) + (finalExamScore * finalExamWeight);

  try {
    if (assignmentScore < 0 || assignmentScore > possibleScore ||
        midtermScore < 0 || midtermScore > possibleScore ||
        finalExamScore < 0 || finalExamScore > possibleScore);
  } catch (e) {
    print("Error: Invalid score input. Scores must be between 0 and $possibleScore.");
    return;
  }

  print("\n--- Student Report ---");
  print("Student: \n $studentName ");
  print("Assignment Score: \n ${assignmentScore.toStringAsFixed(2)}");
  print("Midterm Score: \n ${midtermScore.toStringAsFixed(2)}"); 
  print("Final Exam Score: \n ${finalExamScore.toStringAsFixed(2)}");
  print("Final Score: \n ${finalGrade.toStringAsFixed(2)}");

  if (finalGrade >= passingGrade) {
    print("Status: \n Passed");
  } else {
    print("Status: \n Failed");
  }
}


