//
//  MainViewController.swift
//  Dictionary
//
//  Created by Kristina Feller on 4/16/17.
//  Copyright © 2017 Example. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
  @IBOutlet weak var languageLabel: UILabel!
 
  @IBOutlet weak var somePicker: UIPickerView!
  
  var dictionary = Dictionary()

  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }

  func pickerView(_
    pickerView: UIPickerView,
                  numberOfRowsInComponent component: Int
    ) -> Int {
    return dictionary.wordCount()
  }
  
  func pickerView(_
    pickerView: UIPickerView,
                  titleForRow row: Int,
                  forComponent component: Int
    ) -> String? {
    return dictionary.word(index: row)
  }
  
  func pickerView(_
    pickerView: UIPickerView,
                  didSelectRow row: Int,
                  inComponent component: Int)
  {
    languageLabel.text = dictionary.translation(index: row)
    
  }
 
  override func viewDidLoad() {
    super.viewDidLoad()
    somePicker.delegate = self
    somePicker.dataSource = self
    
    // Do any additional setup after loading the view, typically from a nib.
  }
  
}



