A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

````dart
import 'package:countries/countries.dart';

main() {
  var awesome = new Awesome();
}

 - `name`
 	 - `common` - common name in english
 	 - `official` - official name in english
 	 - `native` - list of all native names
 	 	- key: three-letter ISO 639-3 language code
	 	- value: name object
	 		- key: official - official name translation
	 		- key: common - common name translation
 - country code top-level domain (`tld`)
 - code ISO 3166-1 alpha-2 (`cca2`)
 - code ISO 3166-1 numeric (`ccn3`)
 - code ISO 3166-1 alpha-3 (`cca3`)
 - code International Olympic Committee (`cioc`)
 - ISO 3166-1 independence status (`independent`) (denotes the country is considered a sovereign state)
 - ISO 3166-1 assignment status (`status`)
 - UN Member status (`unMember`)
 - `currencies` - list of all currencies
 	- key: ISO 4217 currency code
 	- value: currency object
 		- key: `name` name of the currency
 		- key: `symbol` symbol of the currency
 - International Direct Dialing info (`idd`)
 	- `root` - the root geographical code prefix. e.g. +6 for New Zealand, +4 for UK.
 	- `suffixes` - list of all suffixes assigned to this country. 4 for NZ, 809, 829, and 849 for Dominican Republic.
 - capital city(ies) (`capital`)
 - alternative spellings (`altSpellings`)
 - region
 - subregion
 - list of official languages (`languages`)
 	- key: three-letter ISO 639-3 language code
 	- value: name of the language in english
 - list of name translations (`translations`)
 	- key: three-letter ISO 639-3 language code
 	- value: name object
 		- key: official - official name translation
 		- key: common - common name translation
 - latitude and longitude (`latlng`)
 - `demonyms` - name of residents, translated & genderized
    - key: three-letter ISO 639-3 language code
	- value: genderized demonym object
		- key: `f` (female) or `m` (male)
		- value: genderized demonym translation
 - landlocked status (`landlocked`)
 - land borders (`borders`)
 - land area in km² (`area`)
 - Emoji flag (`flag`)
 - calling codes (`callingCodes`)

#### Additional data
The [data](https://github.com/mledoze/countries/tree/master/data) folder contains additional data such as the countries
GeoJSON outlines and flags in SVG format.

## Examples
##### JSON
```json
{
	"name": {
		"common": "Austria",
		"official": "Republic of Austria",
		"native": {
			"bar": {
				"official": "Republik Österreich",
				"common": "Österreich"
			}
		}
	},
	"tld": [".at"],
	"cca2": "AT",
	"ccn3": "040",
	"cca3": "AUT",
	"cioc": "AUT",
	"independent": true,
	"status": "officially-assigned",
	"unMember": true,
	"currencies": {"EUR": {"name": "Euro", "symbol": "\u20ac"}},
	"idd": {
		"root": "+4",
		"suffixes": ["3"]
	},
	"capital": ["Vienna"],
	"altSpellings": ["AT", "Osterreich", "Oesterreich"],
	"region": "Europe",
	"subregion": "Western Europe",
	"languages": {
		"bar": "Austro-Bavarian German"
	},
	"translations": {
		"cym": {"official": "Republic of Austria", "common": "Awstria"},
		"deu": {"official": "Republik Österreich", "common": "Österreich"},
		"fra": {"official": "République d'Autriche", "common": "Autriche"},
		"hrv": {"official": "Republika Austrija", "common": "Austrija"},
		"ita": {"official": "Repubblica d'Austria", "common": "Austria"},
		"jpn": {"official": "オーストリア共和国", "common": "オーストリア"},
		"nld": {"official": "Republiek Oostenrijk", "common": "Oostenrijk"},
		"por": {"official": "República da Áustria", "common": "Áustria"},
		"rus": {"official": "Австрийская Республика", "common": "Австрия"},
		"spa": {"official": "República de Austria", "common": "Austria"}
	},
	"latlng": [47.33333333, 13.33333333],
	"demonyms": {
		"fra": {
			"f": "Autrichienne",
			"m": "Autrichien"
		},
		"spa": {
			"f": "Austriaco",
			"m": "Austriaca"
		}
	},
	"landlocked": true,
	"borders": ["CZE", "DEU", "HUN", "ITA", "LIE", "SVK", "SVN", "CHE"],
	"area": 83871,
	"callingCodes": ["+43"]
	"flag": "\ud83c\udde6\ud83c\uddf9"
}
````

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
