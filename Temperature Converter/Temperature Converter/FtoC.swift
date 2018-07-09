//
//  FtoC.swift
//  Temperature Converter
//
//  Created by Kristina Feller on 4/28/17.
//  Copyright © 2017 Example. All rights reserved.
//

import Foundation

class FahrenheitToCelsiusConvertor {
  
  var scale: [Int] = []
  var degreesFarenheit: Int = 0
  
  init() {
    for degree in 0...250 {
      scale.append(degree)
    }
  }
  
  public func elementSelected(index: Int) {
    degreesFarenheit = scale[index]
  }
  
  public func degreesCelsius() -> String {
    let degreesCelsius = Double(degreesFarenheit - 32) * 5 / 9
    return String(format: "%.2f °C", degreesCelsius)
  }
  
}
