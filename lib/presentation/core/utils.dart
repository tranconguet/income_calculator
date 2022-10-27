import 'package:intl/intl.dart';

extension StringExt on String {
  String? formatDateTimeString({
    String inputFormat = 'yyyy-MM-dd HH:mm:ss',
    String outputFormat = 'dd/MM/yyyy HH:mm:ss',
  }) {
    final inputDateFormat = DateFormat(inputFormat);
    DateTime? dateTime;
    try {
      dateTime = inputDateFormat.parse(this);
    } on Exception catch (e) {
      return null;
    }
    final outputDateFormat = DateFormat(outputFormat);
    return outputDateFormat.format(dateTime);
  }
}
