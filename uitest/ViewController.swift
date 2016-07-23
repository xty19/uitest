//
//  ViewController.swift
//  uitest
//
//  Created by xty19 on 16/5/17.
//  Copyright © 2016年 xty19. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautyPicker: UIPickerView!
    @IBOutlet weak var yearofBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    
    let beauties=["fujin","Fury","Gepard","Griffin"]
    override func viewDidLoad() {
        super.viewDidLoad()
        beautyPicker.dataSource=self
        beautyPicker.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearofBirth.resignFirstResponder()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="GoToGallery"
        {
            let index=beautyPicker.selectedRowInComponent(0)
            var imageName:String?
            switch index {
            case 0:
                imageName="fujin"
            case 1:
                imageName="Fury"
            case 2:
                imageName="Gepard"
            case 3:
                imageName="Griffin"
            default:
                imageName=nil
            }
            
            var vc=segue.destinationViewController as! GalleryViewController
            
            vc.imageName=imageName
            
            
            
        }
    }


    
    @IBAction func okTapped(sender: AnyObject)
    {
    
        var year=Int(yearofBirth.text!)
        var img=UIImage(named: "happy_birthday2016_EN")
        image.image=img
        yearofBirth.resignFirstResponder()
        
        var robotList:String=NSBundle.mainBundle().pathForResource("my_plist", ofType: "plist")!
        var data:NSMutableDictionary=NSMutableDictionary(contentsOfFile: robotList)!
        var robot_data:NSArray=data.objectForKey("Robot_data") as! NSArray
      
        //print(data)
        
        print(robot_data[0].objectForKey("r_string_nickname"))
        
        print(robot_data[0].objectForKey("speed"))
        
    }
    
    
    
    @IBAction func close(segue:UIStoryboardSegue){
        print("close1")
    }
}

