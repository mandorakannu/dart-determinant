import 'dart:io';

List<List<int>> arr = [[], [], []];

void determinant() {
  print("Enter the elements of the Determinant: ");
  for (int i = 0; i < 3; i++) {
    arr[i] = [];
    for (int j = 0; j < 3; j++) {
      arr[i].add(int.parse(stdin.readLineSync()!));
    }
  } //end of for loop
  int result =
      (arr[0][0] * ((arr[1][1] * arr[2][2]) - (arr[1][2] * arr[2][1]))) -
          (arr[0][1] * ((arr[1][0] * arr[2][2]) - (arr[1][2] * arr[2][0]))) +
          (arr[0][2] * ((arr[1][0] * arr[2][1]) - (arr[1][1] * arr[2][0])));
  print("The Determinant is: $result");
}
