import 'dart:io';

void main() {
// ЗАДАЧА НОМЕР 1
  print("Введите сумму дохода: ");
  double summ = double.parse(stdin.readLineSync()!);
  double taxProcent;

  if (summ <= 10000) {
    taxProcent = 0;
  } else if (summ <= 50000) {
    taxProcent = 0.1;
  } else {
    taxProcent = 0.12;
  }
  double tax = summ * taxProcent;
  print("Сумма дохода: \$$summ");
  print("Процент налога: ${taxProcent * 100}%");
  print("Сумма налога: \$$tax");

// ЗАДАЧА НОМЕР 2
  print("Введите первое число: ");
  double number1 = double.parse(stdin.readLineSync()!);
  print("Введите оператор (+, -, *, /): ");
  String operation = stdin.readLineSync()!;
  print("Введите второе число: ");
  double number2 = double.parse(stdin.readLineSync()!);
  double result = 0;
  switch (operation) {
    case '+':
      result = number1 + number2;
      break;
    case '-':
      result = number1 - number2;
      break;
    case '*':
      result = number1 * number2;
      break;
    case '/':
      if (number2 != 0) {
        result = number1 / number2;
      }
  }
  print("Результат: $result");

// ЗАДАЧА НОМЕР 3
  print('Введите тип (".txt", ".jpg", ".pdf")');
  String d = stdin.readLineSync()!;
  String file;

  switch (d) {
    case '.txt':
      file = "Текстовый файл";
      break;
    case '.jpg':
      file = "Изображение";
      break;
    case '.pdf':
      file = "Документ PDF";
      break;
    default:
      file = "Неизвестный тип файла";
      break;
  }
  print("Расширение файла: $d");
  print("Тип файла: $file");
}
