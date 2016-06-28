# LicenseParser
[![Build Status](http://img.shields.io/travis/sealz/license-parser.svg?style=flat-square)](https://travis-ci.org/sealz/license-parser)
[![Code Climate](http://img.shields.io/codeclimate/github/sealz/license-parser.svg?style=flat-square)](https://codeclimate.com/github/sealz/license-parser)
[![Issue Count](https://codeclimate.com/github/sealz/license-parser/badges/issue_count.svg)](https://codeclimate.com/github/sealz/license-parser)

Easily parse the information within PDF-417 barcodes found on the back of
US and Canadian driver's licenses adhering to the AAMVA Version 8
standard.

## AAMVA Standard

### Supported Fields
| Name                   | Description                                                                                                                                          | Type   | `ParsedLicense` Attribute |
|:-----------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:-------|:--------------------------|
| First Name             | Customer First Name                                                                                                                                  | String | `firstName`               |
| Last Name              | Customer Last Name                                                                                                                                   | String | `lastName`                |
| Middle Name            | Customer Middle Name                                                                                                                                 | String | `middleName`              |
| Expiration Date        | Document Expiration Date                                                                                                                             | NSDate | `expirationDate`          |
| Issue Date             | Document Issue Date                                                                                                                                  | NSDate | `issueDate`               |
| Date of Birth          | Customer Date of Birth                                                                                                                               | NSDate | `dateOfBirth`             |
| Gender                 | Customer Gender                                                                                                                                      | Enum   | `gender`                  |
| Eye Color              | Customer Eye Color                                                                                                                                   | Enum   | `eyeColor`                |
| Hair Color             | Customer Hair Color                                                                                                                                  | Enum   | `hairColor`               |
| Height                 | Customer Height (in inches)                                                                                                                          | Double | `height`                  |
| Street Address         | Customer Street Address                                                                                                                              | String | `streetAddress`           |
| Second Street Address  | Customer Street Address Line 2                                                                                                                       | String | `streetAddressSupplement` |
| City                   | Customer City                                                                                                                                        | String | `city`                    |
| State                  | Customer State                                                                                                                                       | String | `state`                   |
| Postal Code            | Customer Postal Code                                                                                                                                 | String | `postalCode`              |
| Customer ID            | Unique Customer ID Number                                                                                                                            | String | `customerId`              |
| Document ID            | Unique Document ID Number                                                                                                                            | String | `documentId`              |
| Issuing Country        | Issuing Country                                                                                                                                      | Enum   | `issuingCountry`          |
| Middle Name Truncation | Was Middle Name truncated?                                                                                                                           | Enum   | `middleNameTruncation`    |
| First Name Truncation  | Was First Name truncated?                                                                                                                            | Enum   | `firstNameTruncation`     |
| Last Name Truncation   | Was Last Name truncated?                                                                                                                             | Enum   | `lastNameTruncation`      |
| Place of Birth         | Country and municipality and/or state/province                                                                                                       | String | `placeOfBirth`            |
| Audit Information      | A string of letters and/or numbers that identifies when, where, and by whom a driver license/ID card was made.                                       | String | `auditInformation`        |
| Inventory Control      | A string of letters and/or numbers that is affixed to the raw materials (card stock, laminate, etc.) used in producing driver licenses and ID cards. | String | `inventoryControlNumber`  |
| Last Name Alias        | Other Last Name by which cardholder is known.                                                                                                        | String | `lastNameAlias`           |
| First Name Alias       | Other First Name by which the cardholder is known.                                                                                                   | String | `firstNameAlias`          |
| Suffix Alias           | Other suffix by which cardholder is known                                                                                                            | String | `suffixAlias`             |
| Name Suffix            | Name Suffix                                                                                                                                          | Enum   | `suffix`                  |

### AAMVA Element IDs

Below is a table of AAMVA Element Ids and the fields to which they map by AAMVA Version.

**bold** = Mandatory Field
`--` = not included in this version of the standard

| Field                  | Version 1 | Version 2 | Version 3 | Version 4 | Version 5 | Version 6 | Version 7 | Version 8 | Supported |
|:-----------------------|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|:---------:|
| First Name             |    DAC    |  **DCT**  |  **DCT**  |  **DAC**  |  **DAC**  |  **DAC**  |  **DAC**  |  **DAC**  |     Y     |
| Last Name              |    DAB    |  **DCS**  |  **DCS**  |  **DCS**  |  **DCS**  |  **DCS**  |  **DCS**  |  **DCS**  |     Y     |
| Middle Name            |    DAD    |  **DAD**  |  **DAD**  |  **DAD**  |  **DAD**  |  **DAD**  |  **DAD**  |  **DAD**  |     Y     |
| Expiration Date        |  **DBA**  |  **DBA**  |  **DBA**  |  **DBA**  |  **DBA**  |  **DBA**  |  **DBA**  |  **DBA**  |     Y     |
| Issue Date             |  **DBD**  |  **DBD**  |  **DBD**  |  **DBD**  |  **DBD**  |  **DBD**  |  **DBD**  |  **DBD**  |     Y     |
| Date of Birth          |  **DBB**  |  **DBB**  |  **DBB**  |  **DBB**  |  **DBB**  |  **DBB**  |  **DBB**  |  **DBB**  |     Y     |
| Gender                 |  **DBC**  |  **DBC**  |  **DBC**  |  **DBC**  |  **DBC**  |  **DBC**  |  **DBC**  |  **DBC**  |     Y     |
| Eye Color              |    DAY    |  **DAY**  |  **DAY**  |  **DAY**  |  **DAY**  |  **DAY**  |  **DAY**  |  **DAY**  |     Y     |
| Height (inches)        |    DAU    |  **DAU**  |  **DAU**  |  **DAU**  |  **DAU**  |  **DAU**  |  **DAU**  |  **DAU**  |     Y     |
| Street Address         |  **DAG**  |  **DAG**  |  **DAG**  |  **DAG**  |  **DAG**  |  **DAG**  |  **DAG**  |  **DAG**  |     Y     |
| City                   |  **DAI**  |  **DAI**  |  **DAI**  |  **DAI**  |  **DAI**  |  **DAI**  |  **DAI**  |  **DAI**  |     Y     |
| State                  |  **DAJ**  |  **DAJ**  |  **DAJ**  |  **DAJ**  |  **DAJ**  |  **DAJ**  |  **DAJ**  |  **DAJ**  |     Y     |
| Postal Code            |  **DAK**  |  **DAK**  |  **DAK**  |  **DAK**  |  **DAK**  |  **DAK**  |  **DAK**  |  **DAK**  |     Y     |
| Customer ID            |  **DBJ**  |  **DAQ**  |  **DAQ**  |  **DAQ**  |  **DAQ**  |  **DAQ**  |  **DAQ**  |  **DAQ**  |     Y     |
| Document ID            |   `--`    |  **DCF**  |  **DCF**  |  **DCF**  |  **DCF**  |  **DCF**  |  **DCF**  |  **DCF**  |     Y     |
| Issuing Country        |   `--`    |  **DCG**  |  **DCG**  |  **DCG**  |  **DCG**  |  **DCG**  |  **DCG**  |  **DCG**  |     Y     |
| Middle Name Truncation |   `--`    |  **DDG**  |   `--`    |  **DDG**  |  **DDG**  |  **DDG**  |  **DDG**  |  **DDG**  |     Y     |
| First Name Truncation  |   `--`    |  **DDF**  |   `--`    |  **DDF**  |  **DDF**  |  **DDF**  |  **DDF**  |  **DDF**  |     Y     |
| Last Name Truncation   |   `--`    |  **DDE**  |   `--`    |  **DDE**  |  **DDE**  |  **DDE**  |  **DDE**  |  **DDE**  |     Y     |
| Second Street Address  |    DAH    |    DAH    |    DAH    |    DAH    |    DAH    |    DAH    |    DAH    |    DAH    |     Y     |
| Hair Color             |    DAZ    |    DAZ    |    DAZ    |    DAZ    |    DAZ    |    DAZ    |    DAZ    |    DAZ    |     Y     |
| Place of Birth         |   `--`    |   `--`    |    DCI    |    DCI    |    DCI    |    DCI    |    DCI    |    DCI    |     Y     |
| Audit Information      |   `--`    |   `--`    |    DCJ    |    DCJ    |    DCJ    |    DCJ    |    DCJ    |    DCJ    |     Y     |
| Inventory Control      |   `--`    |   `--`    |    DCK    |    DCK    |    DCK    |    DCK    |    DCK    |    DCK    |     Y     |
| Last Name Alias        |    DBO    |    DBN    |    DBN    |    DBN    |    DBN    |    DBN    |    DBN    |    DBN    |     Y     |
| First Name Alias       |    DBP    |    DBG    |    DBG    |    DBG    |    DBG    |    DBG    |    DBG    |    DBG    |     Y     |
| Suffix Alias           |    DBR    |   `--`    |    DBS    |    DBS    |    DBS    |    DBS    |    DBS    |    DBS    |     Y     |
| Name Suffix            |    DBN    |  **DCU**  |    DCU    |    DCU    |    DCU    |    DCU    |    DCU    |    DCU    |     Y     |

### Example of a raw driver's license payload

Version 8 Example License Data

```
@

ANSI 636026080102DL00410288ZA03290015DLDAQD12345678
DCSPUBLIC
DDEN
DACJOHN
DDFN
DADQUINCY
DDGN
DCAD
DCBNONE
DCDNONE
DBD08242015
DBB01311970
DBA01312035
DBC1
DAU069 in
DAYGRN
DAG789 E OAK ST
DAIANYTOWN
DAJCA
DAK902230000  
DCF83D9BN217QO983B1
DCGUSA
DAW180
DAZBRO
DCK12345678900000000000
DDB02142014
DDK1
ZAZAAN
ZAB
ZAC
```


## Installation

LicenseParser is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LicenseParser"
```

## Usage

```swift

// First get the PDF-417 barcode data by scanning the barcode on the license
let pdf417Data: String = MyFakeLicenseScanner.scan()

// Create a parser with that data
let parser: Parser = Parser(data: pdf417Data)

// Ask the parser to parse it
let parsedLicense: ParsedLicense = parser.parse()

print(parsedLicense.firstName)
// => Optional("John")
print(parsedLicense.middleName)
// => Optional("Quincy")
print(parsedLicense.lastName)
// => Optional("Public")
```

## License

LicenseParser is available under the MIT license. See the LICENSE file for more info.

## Change Log

`0.5.3`

* Update CrossroadRegex dependencies and new API for Swift 3

`0.5.2`

* Dependency updates

`0.5.1`

* Support for Additional AAMVA versions

`0.5.0`

* Added parsing of the AAMVA Version from the document
