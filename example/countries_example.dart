import 'package:countries/countries.dart';

Future main() async {
  final countries = Countries();

  await countries.loader;

  print('Country: ${countries.getCountry('US')!.name}');
  print(
      'Language: ${countries.getIso639_1(countries.getCountry('US')!.languageIso639_3)}');
}
