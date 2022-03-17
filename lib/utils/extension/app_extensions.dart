import 'package:intl/intl.dart';

extension DateTimeExtentions on DateTime{
  String get toYyyyMmDdFormat {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(this);
  }
}