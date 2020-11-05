import 'package:age/age.dart';

class AgeCalculation {
  AgeDuration calculateAge(DateTime today, DateTime birthday) {
    //Calculate Age of a person
    AgeDuration age;
    age = Age.dateDifference(
        fromDate: birthday, toDate: today, includeToDate: false);
    return age;
  }

  //Calculate nextBirthdate
  AgeDuration nextBirthday(DateTime today, DateTime birthday) {
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextBirthdayData = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;
    AgeDuration nextBirthdayDuration = Age.dateDifference(fromDate: today, toDate: nextBirthdayData);
    return nextBirthdayDuration;
  }

  //Calculate next Birthday weekDay
  int nextBDay(DateTime today, DateTime birthday){
    DateTime temp = DateTime(today.year, birthday.month, birthday.day);
    DateTime nextBirthdayData = temp.isBefore(today)
        ? Age.add(date: temp, duration: AgeDuration(years: 1))
        : temp;
    return nextBirthdayData.weekday;
  }
}
