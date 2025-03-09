extension DateTimeExtension on DateTime {
  String toIso8601StringWithTz() {
    // Get offset
    final timeZoneOffset = this.timeZoneOffset;
    final sign = timeZoneOffset.isNegative ? '-' : '+';
    final hours = timeZoneOffset.inHours.abs().toString().padLeft(2, '0');
    final minutes =
        timeZoneOffset.inMinutes.abs().remainder(60).toString().padLeft(2, '0');
    final offsetString = '$sign$hours:$minutes';

    // Get first part of properly formatted ISO 8601 date
    final formattedDate = toIso8601String().split('.').first;

    // the result will return something like 2025-01-23T16:22:29-03:00
    return '$formattedDate$offsetString';
  }
}
