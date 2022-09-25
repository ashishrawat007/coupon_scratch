import 'package:coupon_scratch/common/file_exports.dart';

ThemeData appTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Color.fromRGBO(31, 43, 127, 1), // background color
          textStyle: const TextStyle(fontSize: 20))),
  buttonTheme: const ButtonThemeData(
    buttonColor: Color.fromRGBO(31, 43, 127, 1),
    textTheme: ButtonTextTheme.primary,
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 19.0,
    ),
    backgroundColor: Color.fromRGBO(31, 43, 127, 1),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Color.fromRGBO(31, 43, 127, 1)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 1, color: Color.fromRGBO(31, 43, 127, 1)),
    ),
    hintStyle: TextStyle(fontSize: 15),
    isDense: true,
    focusColor: Color.fromRGBO(31, 43, 127, 1),
    border: OutlineInputBorder(),
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(31, 43, 127, 1),
    ),
    subtitle1: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
);
