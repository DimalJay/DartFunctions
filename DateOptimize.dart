String dateToString(DateTime dateTime) {
  DateTime current = DateTime.now();
  if (dateTime.isBefore(current) == true) {
    var difference = current.difference(dateTime);

    if (difference.inDays <= 0) {
      if (difference.inHours <= 0) {
        if (difference.inMinutes <= 0) {
          return ("Just Now");
        } else {
          return ("${difference.inMinutes.toString()} Minute${difference.inMinutes == 1 ? "" : "s"} Ago");
        }
      } else {
        return ("${difference.inHours} Hours Ago");
      }
    } else if (difference.inDays <= 1) {
      return ("Yesterday");
    } else if (difference.inDays <= 7) {
      return ("${difference.inDays} Days Ago");
    } else {
      return ("${dateTime.day}-${dateTime.month}-${dateTime.year}");
    }
  } else {
    return "Invalid Date";
  }
}
