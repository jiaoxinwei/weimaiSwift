//
//  WMNetManager.swift
//  WeiMaiSwift
//
//  Created by 茭白 on 2017/6/19.
//  Copyright © 2017年 茭白. All rights reserved.
//

import UIKit
import Alamofire
class WMNetManager:NSObject {

    
    
    class func GET(URLString: String, parameters: [String: AnyObject]? = nil, successHandler:((_ result: AnyObject?) -> Void)?, failureHandler: ((_ error: NSError?) -> Void)?) {
        
        //NSDictionary; *dic=[[NSDictionary alloc] initWithObjectsAndKeys:"杭州","location","json","output", "6tYzTvGZSOpYB5Oc2YGGOKt8","ak",nil];
        let firstDic = [
            "location":"杭州",
            "output":"json",
            "ak":"6tYzTvGZSOpYB5Oc2YGGOKt8",
            ]
        let headers: HTTPHeaders = [
            "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
            "Accept": "application/json"
        ]
        /*
        Alamofire.request("https://httpbin.org/post", method: .post).responseJSON { (response) in
            
        };
        
        Alamofire.request("https://httpbin.org/get", parameters: parameters, encoding: URLEncoding.default).responseJSON { (response) in
            
        }
        
        Alamofire.request("https://httpbin.org/post", method: .post, parameters: parameters, encoding: URLEncoding.default).responseJSON { (response) in
            
        };*/

        Alamofire.request(URLString, method: .get, parameters: firstDic, encoding:  URLEncoding.default, headers: headers).responseJSON { (response) in
            guard response.result.isSuccess else{
               print("失败了")
                return;
            }
            
            print("%@",response)
        };

        
        
        //Alamofire.request(UrlString, method:  .get, parameters: parameters, encoding: JSONEncoding, headers: headers)
        
        
        /*
        Alamofire
            .request(.GET, "", parameters: parameters)
            .responseJSON { (response) in
                guard response.result.isSuccess else {
                    SVProgressHUD.showErrorWithStatus("加载失败...")
                    return
                }
                if let value = response.result.value {
                    let dict = JSON(value)
                    let code = dict["code"].intValue
                    let message = dict["message"].stringValue
                    guard code == RETURN_OK else {
                        SVProgressHUD.showInfoWithStatus(message)
                        return
                    }
                    let data = dict["data"].dictionary
                    //  字典转成模型
                    if let items = data!["items"]?.arrayObject {
                        var homeItems = [YMHomeItem]()
                        for item in items {
                            let homeItem = YMHomeItem(dict: item as! [String: AnyObject])
                            homeItems.append(homeItem)
                        }
                        finished(homeItems: homeItems)
                    }
                }
        }*/
        
    }
    
    /// post
    class func POST(URLString: String, parameters: [String: AnyObject]? = nil, successHandler:((_ result: AnyObject?) -> Void)?, failureHandler: ((_ error: NSError?) -> Void)?) {
        let headers: HTTPHeaders = [
            "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
            "Accept": "application/json"
        ]
        Alamofire.request(URLString, method: .post, parameters: parameters, encoding:  URLEncoding.default, headers: headers).responseJSON { (response) in
            
        };

        /*        Alamofire.request(.POST, URLString, parameters: parameters, encoding: .URL, headers: nil).responseJSON { (response) in
            
            if response.result.isSuccess {
                successHandler?(result: response.result.value)
            } else {
                failureHandler?(error: response.result.error)
            }
            
         }

        
    }*/
 }

    
}
