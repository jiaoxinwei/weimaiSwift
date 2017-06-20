//
//  WMMicropulseViewController.swift
//  WeiMaiSwift
//
//  Created by 茭白 on 2017/6/19.
//  Copyright © 2017年 茭白. All rights reserved.
//

import UIKit

class WMMicropulseViewController: WMBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        WMNetManager.GET(URLString: "http://api.map.baidu.com/telematics/v3/weather", successHandler: { (result) in
            
        }) { (error) in
            
        }
        
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
