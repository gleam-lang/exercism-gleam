pub fn is_leap_year(year) {
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
}
