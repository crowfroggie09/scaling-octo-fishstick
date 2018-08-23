//
//  ViewController.swift
//  BookingLayout
//
//  Created by Adi Nugroho on 18/08/18.
//  Copyright © 2018 Lonely Box. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollContent: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var buttons = [UIButton]()
        
        for i in 0..<10 {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 150))
            button.backgroundColor = UIColor.brown
            
            switch appType {
            case .lite: button.setTitle("LITE", for: .normal)
            case .pro: button.setTitle("PRO", for: .normal)
            }
            
            self.scrollContent.addSubview(button)
            
            button.snp.makeConstraints { (make) in
                make.size.equalTo(CGSize(width: 100, height: 50))
                
                if (i == 0) {
                    make.left.equalTo(self.scrollContent).offset(10)
                } else {
                    make.left.equalTo(buttons.last!.snp.right).offset(10)
                }
                
                if (i == 9) {
                    make.right.equalTo(self.scrollContent)
                }
                
                make.centerY.equalTo(self.scrollContent)
//                make.top.equalTo(self.scrollContent).offset(10)
            }
            buttons.append(button)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

