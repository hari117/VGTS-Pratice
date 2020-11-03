import 'dart:io';

import 'package:studentlist/student_task/student_profile.dart';

List<Student> listOfRecords = [];

void main() {

  mainMenu();
}

mainMenu() {
  final  $stu = new Student();

  print(" * * * * * Wellcome To Student DataBase * * * * *  ");

  print("Press 1 To Add Student Details");
  print("Press 2 To See List Of Students");
  print("Press 3 To remove Student Details");
  int number=int.parse(stdin.readLineSync());
  if(number==1)
    {
      $stu.insertStudentDetails();
    }else if(number==2)
      {
        $stu.listStudents();
      }
  else if(number==3)
    {
      $stu.deleteStudent();
    }
  else
    {
      print("Please Enter Correct Number To Work With Student Database");
      mainMenu();
    }


}
