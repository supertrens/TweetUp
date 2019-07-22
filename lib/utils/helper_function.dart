import 'package:intl/intl.dart';

class Helper {
  static String get getCurrentDate {
    // Date format: Monday, July 22
    return new DateFormat.MMMMEEEEd().format(new DateTime.now());
  }
}
