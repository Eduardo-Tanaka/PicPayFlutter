import 'package:intl/intl.dart';

class DateFormatter {
  DateFormatter();

  String getVerboseDateTimeRepresentation(DateTime dateTime) {
    DateTime now = DateTime.now();
    DateTime justNow = now.subtract(Duration(minutes: 1));
    DateTime localDateTime = dateTime.toLocal();

    if (!localDateTime.difference(justNow).isNegative) {
      return 'agora';
    }

    String roughTimeString = DateFormat('jm').format(dateTime);

    if (localDateTime.day == now.day &&
        localDateTime.month == now.month &&
        localDateTime.year == now.year) {
      return roughTimeString;
    }

    DateTime yesterday = now.subtract(Duration(days: 1));

    if (localDateTime.day == yesterday.day &&
        localDateTime.month == now.month &&
        localDateTime.year == now.year) {
      return 'ontem';
    }

    if (now.difference(localDateTime).inDays < 7) {
      String weekday = DateFormat('EEEE', 'pt-BR').format(localDateTime);

      return '$weekday, $roughTimeString';
    }

    if (now.difference(localDateTime).inDays < 14 &&
        now.difference(localDateTime).inDays < 14) {
      return '1 semana atrás';
    }

    if (now.difference(localDateTime).inDays > 30 &&
        now.difference(localDateTime).inDays < 365) {
      final mes = (now.difference(localDateTime).inDays / 30).truncate();
      return '$mes meses atrás';
    }

    final ano = (now.difference(localDateTime).inDays / 365).truncate();
    return '$ano ano atrás';
  }
}
