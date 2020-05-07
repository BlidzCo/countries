import 'package:countries/countries.dart';

void main() async {
  var countries = Countries();

  await countries.loader;

  print('Country: ${countries.getCountry('US').name}');
  print(
      'Language: ${countries.getIso639_1(countries.getCountry('US').languageIso639_3)}');
}
