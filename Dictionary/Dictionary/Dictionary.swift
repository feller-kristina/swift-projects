//
//  Dictionary.swift
//  Dictionary
//
//  Created by Kristina Feller on 4/16/17.
//  Copyright © 2017 Example. All rights reserved.
//

import Foundation

class Dictionary {
  
  let words = ["apple", "orange", "peach", "banana", "pineapple"]
  let translations = ["яблоко", "апельсин", "персик", "банан", "ананас"]
  
  func wordCount() -> Int {
    return words.count
  }
  
  func word(index: Int) -> String {
    return words[index]
  }
  
  func translation(index: Int) -> String {
    return translations[index]
  }

}
