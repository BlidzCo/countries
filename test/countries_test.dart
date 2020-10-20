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
    var fi = await countries.searchByName('soomi', true, 0.75);

    expect(us.name, 'United States');
    expect(us.id, 'US');
    expect(us.currency, 'USD');
    expect(us.language, 'English');
    expect(us.subDivisions.toList.first.id, 'AK');
    expect(countries.getIso639_1(us.languageIso639_3), 'en');

    expect(fi.name, 'Finland');
    expect(fi.id, 'FI');
    expect(fi.currency, 'EUR');
    expect(fi.language, 'Finnish');
    expect(fi.subDivisions.toList.first.name, 'Ahvenanmaan maakunta');
    expect(countries.getIso639_1(fi.languageIso639_3), 'fi');
  });

  test('Test finding a subdivision', () async {
    print('Start test');
    var countries = Countries();

    print('Await loader');
    await countries.loader;

    var us = countries.getCountry('US');
    var ca = us.searchSubdivisionByString('California')[0];
    var caf = us.fuzzySearchSubdivisionByString('Calfor', 0.5)[0];

    expect(us.name, 'United States');
    expect(us.currency, 'USD');
    expect(us.language, 'English');
    expect(us.subDivisions.toList.first.id, 'AK');
    expect(countries.getIso639_1(us.languageIso639_3), 'en');
    expect(ca.id, 'CA');
    expect(ca.name, 'California');
    expect(caf.id, 'CA');
    expect(caf.name, 'California');
  });
}
