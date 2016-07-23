//
//  GalleryViewController.swift
//  uitest
//
//  Created by xty19 on 16/5/19.
//  Copyright © 2016年 xty19. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController
{
    var imageName:String?

    @IBOutlet weak var beatyImage: UIImageView!
    
    override func viewDidLoad()
    {
        
        print(222)
        super.viewDidLoad()

        print(222)
 
        if(imageName != nil)
        {
            print(imageName)
            beatyImage.image=UIImage(named: imageName!)
            navigationItem.title=imageName
        }

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func shareTapped(sender: AnyObject) {
        var controller:SLComposeViewController=SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("一起来玩啊")
        controller.addImage(beatyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
//    @IBAction func close(segue:UIStoryboardSegue){
//        print("close2")
//    }
    
}
