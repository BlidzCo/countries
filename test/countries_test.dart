import 'package:countries/countries.dart';
import 'package:test/test.dart';

void main() {
  test('Test fetching a country', () async {
    print('Start test');
    var countries = Countries();

    print('Await loader');
    await countries.loader;

    var us = countries.getCountry('US');

    expect(us.name, 'United States');
    expect(us.currency, 'USD');
    expect(us.language, 'English');
    expect(us.subDivisions.toList.first.id, 'AK');
    expect(countries.getIso639_1(us.languageIso639_3), 'en');
  });

  test('Test finding a country', () async {
    print('Start test');
    var countries = Countries();

    print('Await loader');
    await countries.loader;

    var us = await countries.searchByName('United States of America');

    expect(us.name, 'United States');
    expect(us.currency, 'USD');
    expect(us.language, 'English');
    expect(us.subDivisions.toList.first.id, 'AK');
    expect(countries.getIso639_1(us.languageIso639_3), 'en');
  });
}
