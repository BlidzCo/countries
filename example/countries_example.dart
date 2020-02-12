import 'package:countries/countries.dart';

void main() async {
  var countries = Countries();

  await countries.loader;

  print('Country: ${countries.getCountry('US').name}');
}
