//
//  ViewControllerExtention.swift
//  uitest
//
//  Created by xty19 on 16/5/18.
//  Copyright © 2016年 xty19. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource
{
    @available(iOS 2.0, *)
    public func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
    return 1
    }
    
    // returns the # of rows in each component..
    @available(iOS 2.0, *)
    public func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return beauties.count
    }
    
}


extension ViewController:UIPickerViewDelegate
{
    @available(iOS 2.0, *)
    public func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return beauties[row]
    }

}
