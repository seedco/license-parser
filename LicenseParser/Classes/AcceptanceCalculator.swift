//
//  AcceptanceCalculator.swift
//  Pods
//
//  Created by Clayton Lengel-Zigich on 6/29/16.
//
//

import Foundation

protocol AcceptanceCalculating{
  var license: License { get set }
  func calculate() -> Bool
}

class AcceptanceCalculator: AcceptanceCalculating{
  var license: License

  init(license: License){
    self.license = license
  }

  func calculate() -> Bool{
    return false
  }
}
