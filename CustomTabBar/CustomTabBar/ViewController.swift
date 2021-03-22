//
//  ViewController.swift
//  CustomTabBar
//
//  Created by 조주혁 on 2021/03/16.
//

import UIKit
import XLPagerTabStrip


class ViewController: ButtonBarPagerTabStripViewController {
    
    override func viewDidLoad() {
        configureButtonBar()
        super.viewDidLoad()
        
        navigationController?.navigationBar.isTranslucent = false
        
    }
    
    func configureButtonBar() {
        // Sets the background colour of the pager strip and the pager strip item
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        
        // Sets the pager strip item font and font color
        settings.style.buttonBarItemFont = UIFont(name: "Helvetica", size: 16.0)!
        settings.style.buttonBarItemTitleColor = .gray
        
        // Sets the pager strip item offsets
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        // Sets the height and colour of the slider bar of the selected pager tab
        settings.style.selectedBarHeight = 3.0
        settings.style.selectedBarBackgroundColor = .orange
        
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let child1 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        
        child1.childNumber = "셀인"
        
        let child2 = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        child2.childNumber = "나눔"
        
        return [child1, child2]
        
    }
    
}

