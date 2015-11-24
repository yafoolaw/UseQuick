//
//  ViewController.swift
//  UseQuick
//
//  Created by FrankLiu on 15/11/23.
//  Copyright © 2015年 刘大帅. All rights reserved.
//
//  https://github.com/yafoolaw
//  http://www.jianshu.com/users/09e77d340dcf/latest_articles
//

import UIKit

public class ViewController: UIViewController {
    
    public var bananaCountLabel : UILabel!
    public var button           : UIButton!

    override public func viewDidLoad() {
        
        super.viewDidLoad()

        bananaCountLabel = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 40))
        view.addSubview(bananaCountLabel!)
        
        bananaCountLabel.text            = "0"
        bananaCountLabel.backgroundColor = UIColor.orangeColor()
        
        button = UIButton(type: .Custom)
        view.addSubview(button)
        
        button.frame           = CGRect(x: 100, y: 200, width: 100, height: 40)
        button.backgroundColor = UIColor.blackColor()
        button.setTitle("Button", forState: .Normal)
        button.addTarget(self, action: "buttonAction", forControlEvents: .TouchUpInside)
        
    }
    
    func buttonAction() {
    
        let bananaCount = Int(bananaCountLabel.text!)
        bananaCountLabel.text = String(bananaCount! + 1)
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

