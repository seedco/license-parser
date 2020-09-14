import Foundation
import Quick
import Nimble
import LicenseParser

class VersionFourParserSpec: QuickSpec {
  override func spec() {

    describe("Parsing Data Adhereing to the 2009 AAMVA DL/ID Card Design Standard (aka version 4)"){
      describe("Parsing the AAMVA Document Standard"){
        context("when the version is present"){
          it("should reveal the correct version number"){
            let sut = LicenseParser.Parser(data: "ANSI 636026080102DL00410288ZA03290015DL\n")
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.version).to(equal("08"))
          }
        }
      }

      describe("Parsing the Name Suffix"){
        context("when the suffix is present"){
          context("when the suffix is JR"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUJR\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.junior))
            }
          }
          context("when the suffix is senior"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUSR\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.senior))
            }
          }
          context("when the suffix is 1ST"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU1ST\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.first))
            }
          }
          context("when the suffix is 2ND"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU2ND\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.second))
            }
          }
          context("when the suffix is 3RD"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU3RD\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.third))
            }
          }
          context("when the suffix is 4TH"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU4TH\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.fourth))
            }
          }
          context("when the suffix is 5TH"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU5TH\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.fifth))
            }
          }
          context("when the suffix is 6TH"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU6TH\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.sixth))
            }
          }
          context("when the suffix is 7TH"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU7TH\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.seventh))
            }
          }
          context("when the suffix is 8TH"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU8TH\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.eighth))
            }
          }
          context("when the suffix is 9TH"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCU9TH\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.ninth))
            }
          }
          context("when the suffix is I"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUI\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.first))
            }
          }
          context("when the suffix is II"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUII\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.second))
            }
          }
          context("when the suffix is III"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUIII\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.third))
            }
          }
          context("when the suffix is IV"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUIV\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.fourth))
            }
          }
          context("when the suffix is V"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUV\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.fifth))
            }
          }
          context("when the suffix is VI"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUVI\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.sixth))
            }
          }
          context("when the suffix is VII"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUVII\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.seventh))
            }
          }
          context("when the suffix is VIII"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUVIII\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.eighth))
            }
          }
          context("when the suffix is IX"){
            it("should reveal the correct suffix"){
              let sut = LicenseParser.Parser(data: "DCUIX\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.suffix).to(equal(LicenseParser.NameSuffix.ninth))
            }
          }
        }
      }


      describe("Parsing the suffix alias"){
        context("when the suffix alias is present"){
          it("should reveal the suffix alias"){
            let sut = LicenseParser.Parser(data: "DBSJR\n")
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.suffixAlias).to(equal("JR"))
          }
        }
      }

      describe("Parsing the first name alias"){
        context("when the first name alias is present"){
          it("should reveal the first name alias"){
            let sut = LicenseParser.Parser(data: "DBGJOHNALIAS\n")
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.firstNameAlias).to(equal("JOHNALIAS"))
          }
        }
      }

      describe("Parsing the last name alias"){
        context("when the last name alias is present"){
          it("should reveal the last name alias"){
            let sut = LicenseParser.Parser(data: "DBNPUBLICALIAS\n")
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.lastNameAlias).to(equal("PUBLICALIAS"))
          }
        }
      }

      describe("Parsing the Inventory Control Number"){
        context("when the inventory control number is present"){
          it("should reveal the inventory control number"){
            let sut = LicenseParser.Parser(data: "DCK12345678900000000000\n")
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.inventoryControlNumber).to(equal("12345678900000000000"))
          }
        }
      }

      describe("Parsing the Audit Information"){
        context("when the audit information is present"){
          it("should reveal the audit information"){
            let sut = LicenseParser.Parser(data: "DCJCA1234BBB\n")
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.auditInformation).to(equal("CA1234BBB"))
          }
        }
      }

      describe("Parsing the place of birth"){
        context("when the place of birth is present"){
          it("should reveal the place of birth"){
            let sut = LicenseParser.Parser(data: "DCICALIFORNIA, USA\n")
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.placeOfBirth).to(equal("CALIFORNIA, USA"))
          }
        }
      }

      describe("Parsing the Hair Color"){
        context("when the hair color is present"){
          context("when the hair color is bald"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZBAL\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.bald))
            }
          }
          context("when the hair color is black"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZBLK\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.black))
            }
          }
          context("when the hair color is blond"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZBLN\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.blond))

            }
          }
          context("when the hair color is brown"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZBRO\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.brown))

            }
          }
          context("when the hair color is grey"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZGRY\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.grey))

            }
          }
          context("when the hair color is red/Auburn"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZRED\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.red))

            }
          }
          context("when the hair color is sandy"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZSDY\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.sandy))

            }
          }
          context("when the hair color is white "){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZWHI\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.white))

            }
          }
          context("when the hair color is unknown"){
            it("should reveal the correct hair color"){
              let sut = LicenseParser.Parser(data: "DAZFFF\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.hairColor).to(equal(LicenseParser.HairColor.unknown))
            }
          }
        }
      }

      describe("Parsing the second Street Address Line"){
        context("when the street address supplement is present"){
          it("should reveal the supplemental street address"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.streetAddressSupplement).to(equal("APT #4A"))
          }
        }
      }

      describe("Parsing the Issuing Country"){
        context("when the country is present"){
          context("when issued in the United States of America"){
            it("should reveal the correct issuing country"){
              let sut = LicenseParser.Parser(data: self.validLicenseData())
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.country).to(equal(LicenseParser.IssuingCountry.unitedStates))
            }
          }
          context("when issued in Canada"){
            it("should reveal the correct issuing country"){
              let sut = LicenseParser.Parser(data: "DCGCAN\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.country).to(equal(LicenseParser.IssuingCountry.canada))
            }
          }
        }
      }


      describe("Parsing the Document Identifier"){
        context("when the document id is present"){
          it("should reveal the document id"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.documentId).to(equal("04-29-2016 Rev 07-15-2009"))
          }
        }
      }

      describe("Parsing the Customer Id Number"){
        context("when the customer id number is present"){
          it("should reveal the customer id number"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.customerId).to(equal("D12345678"))
          }
        }
      }

      describe("Parsing the Postal Code"){
        context("when the postal code is present"){
          it("should reveal the postal code"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.postalCode).to(equal("902230000"))
          }
        }
      }

      describe("Parsing the State"){
        context("when the state is present"){
          it("should reveal the state"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.state).to(equal("CA"))
          }
        }
      }

      describe("Parsing the City"){
        context("when the city is present"){
          it("should reveal the city"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.city).to(equal("ANYTOWN"))
          }
        }
      }

      describe("Parsing the Street Address"){
        context("when the street address is present"){
          it("should reveal the street address"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.streetAddress).to(equal("789 E OAK ST"))
          }
        }
      }

      describe("Parsing Height"){
        context("when the height is present"){
          it("should reveal the height in inches"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.height).to(equal(76))
          }
        }
      }

      describe("Parsing Eye Color"){
        context("when the eye color is present"){
          context("when the eye color is black"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYBLK\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.black))
            }
          }
          context("when the eye color is blue"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYBLU\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.blue))

            }
          }
          context("when the eye color is brown"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYBRO\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.brown))

            }
          }
          context("when the eye color is gray"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYGRY\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.gray))

            }
          }
          context("when the eye color is green"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYGRN\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.green))
            }
          }
          context("when the eye color is hazel"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYHAZ\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.hazel))
            }
          }
          context("when the eye color is maroon "){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYMAR\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.maroon))
            }
          }
          context("when the eye color is pink"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYPNK\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.pink))

            }
          }
          context("when the eye color is dichromatic"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYDIC\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.dichromatic))

            }
          }
          context("when the eye color is unknown"){
            it("should reveal the correct eye color"){
              let sut = LicenseParser.Parser(data: "DAYUNK\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.eyeColor).to(equal(LicenseParser.EyeColor.unknown))
            }
          }
        }
      }

      describe("Parsing the gender"){
        context("when the gender is present"){
          context("when the gender is male"){
            it("should reveal the gender as male"){
              let sut = LicenseParser.Parser(data: "DBC1\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.gender).to(equal(LicenseParser.Gender.male))
            }
          }
          context("when the gender is female"){
            it("should reveal the gender as female"){
              let sut = LicenseParser.Parser(data: "DBC2\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.gender).to(equal(LicenseParser.Gender.female))
            }
          }
          context("when the gender is neither male or female"){
            it("should reveal the gender as other"){
              let sut = LicenseParser.Parser(data: "DBC3\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.gender).to(equal(LicenseParser.Gender.other))
            }
          }
        }
      }

      describe("Parsing the first name"){
        context("when the first name is present"){
          it("should reveal the first name"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.firstName).to(equal("JOHN"))
          }

          context("when the first name was truncated"){
            it("should reveal the correct truncation status"){
              let sut = LicenseParser.Parser(data: "DDFT\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.firstNameTruncation).to(equal(LicenseParser.Truncation.truncated))
            }
          }
          context("when the first name was not truncated"){
            it("should reveal the correct truncation status"){
              let sut = LicenseParser.Parser(data: "DDFN\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.firstNameTruncation).to(equal(LicenseParser.Truncation.none))
            }
          }
          context("when the truncation of the first name is unknown"){
            it("should reveal the correct truncation status"){
              let sut = LicenseParser.Parser(data: "DDFU\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.firstNameTruncation).to(equal(LicenseParser.Truncation.unknown))
            }
          }

        }
      }

      describe("Parsing the last name"){
        context("when the last name is present"){
          it("should reveal the last name"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.lastName).to(equal("PUBLIC"))
          }
        }
      }

      describe("Parsing the middle name"){
        context("when the middle name is present"){
          it("should reveal the middle name"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()
            expect(result.middleName).to(equal("QUINCY"))
          }

          context("when the middle name was truncated"){
            it("should reveal the correct truncation status"){
              let sut = LicenseParser.Parser(data: "DDGT\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.middleNameTruncation).to(equal(LicenseParser.Truncation.truncated))
            }
          }
          context("when the middle name was not truncated"){
            it("should reveal the correct truncation status"){
              let sut = LicenseParser.Parser(data: "DDGN\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.middleNameTruncation).to(equal(LicenseParser.Truncation.none))
            }
          }
          context("when the truncation of the middle name is unknown"){
            it("should reveal the correct truncation status"){
              let sut = LicenseParser.Parser(data: "DDGU\n")
              let result: LicenseParser.ParsedLicense = sut.parse()
              expect(result.middleNameTruncation).to(equal(LicenseParser.Truncation.unknown))
            }
          }
        }
      }

      describe("Parsing the expiration date"){
        context("when the expiration date is present"){
          it("should reveal the expiration date"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()

            let formatter = DateFormatter()
            formatter.dateFormat = "MMddyyyy"
            let expectedDate = formatter.date(from: "04072021")

            expect(result.expirationDate).to(equal(expectedDate))
          }

          context("when the expiration date is in the past"){
            it("should be expired"){
              let sut = LicenseParser.Parser(data: "DBA05052005\n")
              let result: LicenseParser.ParsedLicense = sut.parse()

              expect(result.isExpired()).to(beTrue())
            }
          }
          context("when the expiration date is in the future"){
            it("should not be expired"){
              let sut = LicenseParser.Parser(data: self.validLicenseData())
              let result: LicenseParser.ParsedLicense = sut.parse()

              expect(result.isExpired()).to(beFalse())
            }
          }
        }
      }

      describe("Parsing the issue date"){
        context("when the issue date is present"){
          it("should reveal the issue date"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()

            let formatter = DateFormatter()
            formatter.dateFormat = "MMddyyyy"
            let expectedDate = formatter.date(from: "04282016")

            expect(result.issueDate).to(equal(expectedDate))
          }

          context("when the issue date is in the past"){
            it("should have been issued"){
              let sut = LicenseParser.Parser(data: "DBD05052005\n")
              let result: LicenseParser.ParsedLicense = sut.parse()

              expect(result.hasBeenIssued()).to(beTrue())
            }
          }
          context("when the issue date is in the future"){
            it("should not yet have been issued"){
              let sut = LicenseParser.Parser(data: "DBD05053000\n")
              let result: LicenseParser.ParsedLicense = sut.parse()

              expect(result.hasBeenIssued()).to(beFalse())
            }
          }
        }
      }

      describe("Parsing the date of birth"){
        context("when the date of birth is present"){
          it("should reveal the date of birth"){
            let sut = LicenseParser.Parser(data: self.validLicenseData())
            let result: LicenseParser.ParsedLicense = sut.parse()

            let formatter = DateFormatter()
            formatter.dateFormat = "MMddyyyy"
            let expectedDate = formatter.date(from: "04071975")

            expect(result.dateOfBirth).to(equal(expectedDate))
          }
        }
      }
    }
  }

  func validLicenseData() -> String{
    let rawData = "@\n" +
      "\n" +
      "ANSI 636002040002DL00410250ZM02910036DLDCAD\n" +
      "DCBB\n" +
      "DCDNONE\n" +
      "DBA04072021\n" +
      "DCSPUBLIC\n" +
      "DACJOHN\n" +
      "DADQUINCY\n" +
      "DBD04282016\n" +
      "DBB04071975\n" +
      "DBC1\n" +
      "DAYUNK\n" +
      "DAU076 IN\n" +
      "DAG789 E OAK ST\n" +
      "DAHAPT #4A\n" +
      "DAIANYTOWN\n" +
      "DAJCA\n" +
      "DAK902230000  \n" +
      "DAQD12345678\n" +
      "DCF04-29-2016 Rev 07-15-2009\n" +
      "DCGUSA\n" +
      "DDEN\n" +
      "DDFN\n" +
      "DDGN\n" +
      "DCK16119S526416220601\n" +
      "DDB07152009\n" +
      "\n" +
      "ZMZMAY\n" +
      "ZMB\n" +
      "ZMC\n" +
      "ZMD04292016\n" +
      "ZME\n" +
      "ZMF\n"

    return rawData
  }

  func emptyLicenseData() -> String{
    let rawData = "@\n" +
      "\n" +
      "ANSI 636026080102DL00410288ZA03290015DLDAQ\n" +
      "DCS\n" +
      "DDE\n" +
      "DAC\n" +
      "DDF\n" +
      "DAD\n" +
      "DDG\n" +
      "DCA\n" +
      "DCB\n" +
      "DCD\n" +
      "DBD\n" +
      "DBB\n" +
      "DBA\n" +
      "DBC\n" +
      "DAU\n" +
      "DAY\n" +
      "DAG\n" +
      "DAI\n" +
      "DAJ\n" +
      "DAK\n" +
      "DCF\n" +
      "DCG\n" +
      "DAW\n" +
      "DAZ\n" +
      "DCK\n" +
      "DDB\n" +
      "DDK\n" +
      "ZAZ\n" +
      "ZAB\n" +
    "ZAC"
    return rawData
  }
}
