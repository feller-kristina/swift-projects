//
//  CtoF.swift
//  Temperature Converter
//
//  Created by Kristina Feller on 4/28/17.
//  Copyright © 2017 Example. All rights reserved.
//

import Foundation

class CelsiusToFarenheightConvertor {
  
  var scale: [Int] = []
  var degreesCelsius: Int = 0
  
  init() {
    for degree in -50...150 {
      scale.append(degree)
    }
  }
  
  public func elementSelected(index: Int) {
    degreesCelsius = scale[index]
  }
  
  public func degreesFahrenheit() -> String {
    let degreesFahrenheit = Double(degreesCelsius) * 1.8 + 32
    return String(format: "%.2f °F", degreesFahrenheit)
  }
  
}
