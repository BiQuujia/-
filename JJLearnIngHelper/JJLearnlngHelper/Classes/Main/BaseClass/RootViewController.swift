//
//  RootViewController.swift
//  swiftUITestDemo
//
//  Created by 贾文鹏 on 2017/8/13.
//  Copyright © 2017年 贾文鹏. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createTabbarController()
        // Do any additional setup after loading the view.
    }
    
    func createTabbarController() {
        
        let FirstVc = JJLanguageLearningViewController()
        let SecondVc = JJStudyWorkersViewController()
        let ThirdVc = JJTranslationViewController()
        let FourthVc = JJPersonalCenterViewController()
        var VcArr = Array<UIViewController>()
        var vcs = Array<UIViewController>()
        var vcsTitle = ["语种学习","留学务工","智能翻译","个人中心"]
        
        VcArr = [FirstVc,SecondVc,ThirdVc,FourthVc]
        for i in 0...3{
            let nav = UINavigationController.init(rootViewController: VcArr[i])
            VcArr[i].navigationItem.title = vcsTitle[i]
            VcArr[i].navigationController?.navigationBar.isHidden = true
            vcs.append(nav)
            nav.tabBarItem.title = vcsTitle[i]
            nav.tabBarItem.setTitleTextAttributes([NSFontAttributeName:UIFont.boldSystemFont(ofSize: 20)] , for: .normal)
        }
        self.viewControllers = vcs
    }
    
    
}
