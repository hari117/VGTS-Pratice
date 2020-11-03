import 'dart:io';
import 'package:studentlist/student_task/home.dart';

class Student {
  String studentName;
  int studentId;
  int _tamilMark;
  int englishMark;
  int mathsMark;

  set tamilMark(value){
    _tamilMark = value;
  }

   int get totalMarks => _tamilMark + englishMark + mathsMark;
  insertStudentDetails() {
    print("************** Start to Enter Details ***********");
    //creating a new Student object
    Student student = Student();
    print("Enter Student Name : ");
    student.studentName = stdin.readLineSync();
    print("Enter Student Id : ");
    student.studentId = int.parse(stdin.readLineSync());
    print("Enter Tamil Mark : ");
    student.tamilMark = int.parse(stdin.readLineSync());
    print("Enter English Mark : ");
    student.englishMark = int.parse(stdin.readLineSync());
    print("Enter Maths Mark : ");
    student.mathsMark = int.parse(stdin.readLineSync());

    listOfRecords.add(student);

    print("************** Student Details Added Sucessfully. ***************");
    //print("$studentId  $studentName $tamilMark $englishMark $mathsMark ");
    mainMenu();
  }

  listStudents() {
    print("******** List of Students *******");
    if (listOfRecords.isNotEmpty) {
      for (Student boy in listOfRecords) {
        print(" Student Name :${boy.studentName} ");
        print(" Student Id : ${boy.studentId}");
        print(" Tamil Mark : ${boy._tamilMark}");
        print(" English Mark : ${boy.englishMark}");
        print(" Maths Id : ${boy.mathsMark}");
        print(" Total Marks : ${boy.totalMarks}");
        print("*     *      *      *        *      *");
        print(" ");
      }
    } else {
      print(" ");
      print(
          "Currently Student Record List is Empty ,So First Try To Add some Students Details And Check");
    }


    print(" ");
    mainMenu();
  }

  deleteStudent() {
    print(" Enter Student Id To Delete The Record In Student List :");
    int deleteId = int.parse(stdin.readLineSync());
    print("Entered Student Id : $deleteId");
    int index = null;
    if (listOfRecords.isNotEmpty) {
      for (Student s in listOfRecords) {
        print("Student id Matched in Studend records");
        if (deleteId == s.studentId) {
          index = listOfRecords.indexOf(s);
          print("Studend record sucessfully deleted form list");
          break;
        }
      }
    }
    else {
      print("No Records Found in Student DataBase");
    }
    listOfRecords.removeAt(index);
    index = 0;
    print(" ");
    print(" ");
    mainMenu();
  }


}