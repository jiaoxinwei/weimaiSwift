//
//  WMBaseTabBarController.swift
//  WeiMaiSwift
//
//  Created by 茭白 on 2017/6/19.
//  Copyright © 2017年 茭白. All rights reserved.
//

import UIKit

class WMBaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = UIColor(red: 245 / 255, green: 80 / 255, blue: 83 / 255, alpha: 1.0)
        // 添加子控制器
        addChildViewControllers()
        // Do any additional setup after loading the view.
    }
    fileprivate func addChildViewControllers (){
        
        
        let homeVC:WMMicropulseViewController! = WMMicropulseViewController()
        let messageVC:WMSeeDoctorViewController! = WMSeeDoctorViewController()
        let mineVC:WMFindViewController! = WMFindViewController()
        let otherVC:WMMeViewController! = WMMeViewController()
        
        //主页面
        let homeNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: homeVC)
        homeVC.navigationItem.title = "主页"
        //构造器的知识点
        let homeItem = UITabBarItem(title: "主页", image: UIImage(named: "Home"), selectedImage: nil)
        homeNav.tabBarItem = homeItem
        //消息
        messageVC.navigationItem.title = "消息"
        let messageNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: messageVC)
        let messageItem = UITabBarItem(title: "消息", image: UIImage(named: "BreakNews"), selectedImage: nil)
        messageNav.tabBarItem = messageItem
        
        // 消息
        otherVC.navigationItem.title = "其他"
        
        let otherNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: otherVC)
        let otherItem = UITabBarItem(title: "其他", image: UIImage(named: "iMessage"), selectedImage: nil)
        otherNav.tabBarItem = otherItem
        
        
        //我的
        mineVC.navigationItem.title = "我的"
        let mineNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: mineVC)
        let mineItem = UITabBarItem(title: "我的", image: UIImage(named: "Mine"), selectedImage: nil)
        mineNav.tabBarItem = mineItem
        
        self.tabBar.tintColor = UIColor.red
        self.viewControllers = [homeNav,messageNav,otherNav,mineNav]
        
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
