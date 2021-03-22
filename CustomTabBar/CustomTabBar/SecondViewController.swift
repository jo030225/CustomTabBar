//
//  SecondViewController.swift
//  CustomTabBar
//
//  Created by 조주혁 on 2021/03/17.
//

import UIKit
import XLPagerTabStrip

class SecondViewController: UIViewController, IndicatorInfoProvider {
   
    var childNumber = ""

    @IBOutlet weak var childNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        childNameLabel.text = childNumber
        
    }
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        IndicatorInfo(title: "\(childNumber)")
    }

}
