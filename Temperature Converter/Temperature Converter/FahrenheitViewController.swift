//
//  FahrenheitViewController.swift
//  Temperature Converter
//
//  Created by Kristina Feller on 4/28/17.
//  Copyright © 2017 Example. All rights reserved.
//

import UIKit

class FahrenheitViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  
  @IBOutlet weak var CelsiusLabel: UILabel!
  
  @IBOutlet weak var FahrenheitPicker: UIPickerView!
  
  @IBOutlet weak var SwitchButton: UIButton!
  
  let convertor = FahrenheitToCelsiusConvertor()
  
  public func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return convertor.scale.count
  }
  
  func pickerView(_
    pickerView: UIPickerView,
                  titleForRow row: Int,
                  forComponent component: Int
    ) -> String? {
    return "\(convertor.scale[row]) °F"
  }
  
  func pickerView(_
    pickerView: UIPickerView,
                  didSelectRow row: Int,
                  inComponent component: Int)
  {
    convertor.elementSelected(index: row)
    CelsiusLabel.text = convertor.degreesCelsius()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    FahrenheitPicker.delegate = self

  }
  

  
}
