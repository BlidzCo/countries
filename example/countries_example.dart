import 'package:countries/countries.dart';

Future main() async {
  final countries = Countries(
    countriesFile: '../lib/countries.json',
    subdivisionsFile: '../lib/subdivisions.json',
    languagesFile: '../lib/language-codes.json',
  );

  await countries.loader;

  final Country? searchedCountry = countries.getCountry('US');

  print('Country: ${searchedCountry!.name}');
  print('Language: ${countries.getIso639_1(searchedCountry.languageIso639_3)}');
  print("Search 'idaho s': ${searchedCountry.fuzzySearchSubdivisionByString('idaho s', 0.6)}");
}
