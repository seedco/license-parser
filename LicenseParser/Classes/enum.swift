import Foundation

/**
  AAMVA Issuing Countries

  - unitedStates: The USA
  - canda: Canada, eh?
  - unknown: When the issuing country is not available
*/
public enum IssuingCountry: Equatable {
  /// The United States
  case unitedStates

  /// Canada
  case canada

  /// unknown Issuing Country
  case unknown
}

/**
  AAMVA Genders

  - male: male
  - female: female
  - other: Not yet part of the AAMVA spec
  - unknown: When the gender cannot be determined
*/
public enum Gender: Equatable {

  /// male
  case male

  /// female
  case female

  /// other
  case other

  /// unknown Gender
  case unknown
}

/**
  AAMVA Eye Colors

  - black: black eyes
  - blue: blue eyes
  - brown: brown eyes
  - gray: gray eyes
  - green: green eyes
  - hazel: hazel eyes
  - maroon: maroon eyes
  - pink: pink eyes
  - dichromatic: dichromatic eyes
  - unknown: unknown eye color
*/
public enum EyeColor: Equatable {
  /// black eye color
  case black
  /// blue eye color
  case blue
  /// brown eye color
  case brown
  /// gray eye color
  case gray
  /// green eye color
  case green
  /// hazel eye color
  case hazel
  /// maroon eye color
  case maroon
  /// pink eye color
  case pink
  /// dichromatic eye color
  case dichromatic
  /// unknown eye color
  case unknown
}

/**
  AAMVA hair colors

  - bald: bald hair
  - black: black hair
  - blond: blond hair
  - brown: brown hair
  - grey: grey hair
  - red: red hair
  - sandy: sandy hair
  - white: white hair
  - unknown: unknown hair color
*/
public enum HairColor{
  /// bald hair color
  case bald
  /// black hair color
  case black
  /// blond hair color
  case blond
  /// brown hair color
  case brown
  /// grey hair color
  case grey
  /// red hair color
  case red
  /// sandy hair color
  case sandy
  /// white hair color
  case white
  /// unknown hair color
  case unknown
}

/**
  AAMVA Name Truncations

  - truncated: The name was truncated
  - none: The name was not truncated
  - unknown: When the truncation cannot be determined
*/
public enum Truncation: Equatable {
  /// truncated Name
  case truncated
  /// Not truncated
  case none
  /// unknown Truncation
  case unknown
}

/**
  AAMVA Name Suffixes

  - junior: junior, Jr.
  - senior: senior, Sr.
  - first: first, I, 1st
  - second: second, II, 2nd
  - third: third, III, 3rd
  - fourth: fourth, IV, 4th
  - Fifth: Fifth, V, 5th
  - Sixth: Sixth, VI, 6th
  - Seventh: Seventh, VII, 7th
  - Eighth: Eighth, VIII, 8th
  - Ninth: Ninth, IX, 9th
  - unknown: When the name suffix is unknown
*/
public enum NameSuffix: Equatable {
  /// junior, Jr.
  case junior
  /// senior, Sr.
  case senior
  /// first, I, 1st
  case first
  /// second, II, 2nd
  case second
  /// third, III, 3rd
  case third
  /// fourth, IV, 4th
  case fourth
  /// Fifth, V, 5th
  case fifth
  /// Sixth, VI, 6th
  case sixth
  /// Seventh, VII, 7th
  case seventh
  /// Eighth, VIII, 8th
  case eighth
  /// Ninth, IX, 9th
  case ninth
  /// When the name suffix is unknown
  case unknown
}
