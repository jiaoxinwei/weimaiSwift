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
        tabBar.tintColor = UIColor.blue//UIColor(red: 245 / 255, green: 80 / 255, blue: 83 / 255, alpha: 1.0)
        // 添加子控制器
        
        addChildViewControllers()
        // Do any additional setup after loading the view.
    }
    fileprivate func addChildViewControllers (){
        
        
        let homeVC:WMMicropulseViewController! = WMMicropulseViewController()
        let messageVC:WMSeeDoctorViewController! = WMSeeDoctorViewController()
        let mineVC:WMMeViewController! = WMMeViewController()
        let otherVC:WMFindViewController! = WMFindViewController()
        
        //主页面
        let homeNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: homeVC)
        homeVC.navigationItem.title = "微脉"
        //构造器的知识点
        let homeItem = UITabBarItem(title: "微脉", image: UIImage(named: "ic_weimai_normal"), selectedImage: UIImage(named:"ic_weimai_selected"))
        homeNav.tabBarItem = homeItem
        //消息
        messageVC.navigationItem.title = "寻医"
        let messageNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: messageVC)
        let messageItem = UITabBarItem(title: "寻医", image: UIImage(named: "ic_jiankang_normal"), selectedImage: UIImage(named:"ic_jiankang_selected"))
        messageNav.tabBarItem = messageItem
        
        // 消息
        otherVC.navigationItem.title = "发现"
        
        let otherNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: otherVC)
        let otherItem = UITabBarItem(title: "发现", image: UIImage(named: "ic_faxian_normal"), selectedImage: UIImage(named:"ic_faxian_selected"))
        otherNav.tabBarItem = otherItem
        
        //我的
        mineVC.navigationItem.title = "我"
        let mineNav:WMBaseNavigationController = WMBaseNavigationController(rootViewController: mineVC)
        let mineItem = UITabBarItem(title: "我", image: UIImage(named: "ic_wode_normal"), selectedImage: UIImage(named:"ic_wode_selected"))
        mineNav.tabBarItem = mineItem
        self.tabBar.tintColor = UIColor.green
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
