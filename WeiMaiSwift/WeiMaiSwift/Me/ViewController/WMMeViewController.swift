//
//  WMMeViewController.swift
//  WeiMaiSwift
//
//  Created by 茭白 on 2017/6/19.
//  Copyright © 2017年 茭白. All rights reserved.
//

import UIKit
let JBCellID = "JBCellID"

/// 屏幕的宽
let Kscreen_width = UIScreen.main.bounds.size.width
/// 屏幕的高
let Kscreen_height = UIScreen.main.bounds.size.height
class WMMeViewController: WMBaseViewController ,UITableViewDataSource,UITableViewDelegate {
    var tableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      self.setupView()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.setupView()
    }
    func setupView()  {
        tableView = UITableView(frame:CGRect(x:0,y:64,width:Kscreen_width,height:Kscreen_height-64-44))
        self.view.addSubview(tableView)
        tableView.delegate=self
        tableView.dataSource=self
        //注册cell
        let nib = UINib(nibName: String(describing: WMMeTableViewCell.self), bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: JBCellID)
        //消去多余的cell
        //注册cell
        //消去多余的cell
        tableView.tableHeaderView=self.headerView()
        tableView.tableFooterView=UIView()
    }
    func headerView() -> UIView {
        
        let headerView : UIView = UIView(frame:CGRect(x:0,y:0,width:Kscreen_width,height:200))
        headerView.backgroundColor=UIColor.green
        //头像
        let headerImage = UIImageView(frame:CGRect(x:(Kscreen_width-60)*0.5,y:30,width:60,height:60))
        headerImage.image=UIImage.init(named: "ic_weimai_selected")
        headerView.addSubview(headerImage)
        //名字
        let nameLable = UILabel(frame:CGRect(x:0,y:60+30+10,width:Kscreen_width,height:30))
        nameLable.text="茭白"
        nameLable.textAlignment=NSTextAlignment.center
        headerView.addSubview(nameLable)
        
        
        
        let view = UIView(frame:CGRect(x:0,y:160,width:Kscreen_width,height:40))
        view.backgroundColor=UIColor.red
        headerView.addSubview(view)
        let registeredImageView = UIImageView (frame:CGRect(x:(Kscreen_width*0.5-100)*0.5,y:10,width:20,height:20))
        registeredImageView.image=UIImage.init(named: "ic_wode_selected")
        
        let registeredLabel = UILabel (frame:CGRect(x:(Kscreen_width*0.5-100)*0.5+20+10,y:10,width:70,height:20))
        registeredLabel.text="我的挂号"
        view.addSubview(registeredImageView)
        view.addSubview(registeredLabel)
        
        let  lable = UILabel(frame:CGRect(x:Kscreen_width*0.5,y:5,width:1,height:30))
        lable.backgroundColor=UIColor.green
        
        view.addSubview(lable)
        
        let healthImageView = UIImageView (frame:CGRect(x:(Kscreen_width*0.5-100)*0.5+Kscreen_width*0.5,y:10,width:20,height:20))
        let healthLabel = UILabel (frame:CGRect(x:(Kscreen_width*0.5-100)*0.5+Kscreen_width*0.5+20+10,y:10,width:70,height:20))
        healthImageView.image=UIImage.init(named: "ic_wode_selected")
        healthLabel.text="健康钱包"
        view.addSubview(healthImageView)
        view.addSubview(healthLabel)


        return headerView;
    }
    
    func specialView(nameString : String,  sting: String ) -> UIView {
        
        
        
        return view
        
    }
    
    // MARK: -UITableViewDataSource代理
    open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section==0 {
            return 2
  
        }
        else if section==1{
            return 6
 
        }
        else{
            return 2

        }
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: JBCellID) as! WMMeTableViewCell
        cell.backgroundColor=UIColor.white
        return cell
        
    }
    // TODO: -UITableViewDelegate代理
    
    open func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50;
    }
    open func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("你点击我干什么%d",indexPath.row)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
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
