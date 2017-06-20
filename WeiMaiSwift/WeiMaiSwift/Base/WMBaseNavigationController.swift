//
//  WMBaseNavigationController.swift
//  WeiMaiSwift
//
//  Created by 茭白 on 2017/6/19.
//  Copyright © 2017年 茭白. All rights reserved.
//

import UIKit

class WMBaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /// 设置导航栏标题
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = UIColor.white
        navBar.tintColor = UIColor.red
        navBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 20)]
        // Do any additional setup after loading the view.
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
