//
//  LNProgressAdditonHUD.swift
//  test
//
//  Created by 宗丽娜 on 2018/5/9.
//  Copyright © 2018年 宗丽娜. All rights reserved.
//

import UIKit

class LNProgressAdditonHUD: MBProgressHUD {

    
    /// 显示信息
    ///
    /// - Parameters:
    ///   - text:名称
    ///   - icon: 图片
    ///   - view: 显示的View
  static  func show(text:String,icon:String,view:UIView) {
         var newView = view
        
        if newView == nil{
            newView = UIApplication.shared.keyWindow!
        }
        
        let hud = MBProgressHUD .showAdded(to: newView, animated: true)
        hud?.labelText = text
        hud?.customView = UIImageView(image: UIImage.init(named: String(format: "MBProgressHUD.bundle/%@", icon)))
        hud?.mode = .customView
        hud?.removeFromSuperViewOnHide = true
        hud?.hide(true, afterDelay: 0.7)
    }
    
    
    
    func startAnimation(img:UIView){
        
        let rotationAnimation:CABasicAnimation =  CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.toValue = .pi * 2.0
        rotationAnimation.duration  = 0.5
        rotationAnimation.isCumulative = true
        rotationAnimation.repeatCount = 100000
        img.layer.add(rotationAnimation, forKey: "rotationAnimation")
        
    }
    

    /// 显示错误信息
    ///
    /// - Parameters:
    ///   - error: 错误信息
    ///   - toView: 要显示的view
  static  func showError(error:String,toView:UIView) {
        self.show(text: error, icon: "error.png", view: toView)
    }
    
    
    
    static func showSuccess(success:String,toView:UIView) {
        self.show(text: success, icon: "success.png", view: toView)
    }
    
    
    
    
  static  func showLoading(showView:UIView?)  {
        
        self.showLoading(text: "", toView: showView)
    }
    
    
    
  static func showLoading(text:String,toView:UIView? ) {
        
        var newView = toView
        var showText = text
        if newView == nil {
            newView = UIApplication.shared.keyWindow!
        }
        if showText.isEmpty {
           showText = "Loading"
        }
        let hud = MBProgressHUD.showAdded(to: newView, animated: true)
        hud?.color = UIColor(red: 0.41, green: 0.46, blue: 0.50, alpha: 0.600)
        hud?.removeFromSuperViewOnHide = true
        hud?.hide(true, afterDelay: 15)
        
    }
    
    
    /// 显示提示信息
    ///
    /// - Parameter message: 信息内容
  static  func showMessage(message:String) {
        
        self.showMessage(message: message, toView: nil)
    }
 
    
  static  func showMessage(message:String,toView:UIView? )  {
        if message.isEmpty {
            return
        }
        
        var showView = toView
        if showView == nil {
            showView = UIApplication.shared.keyWindow!
        }
        let hud = MBProgressHUD.showAdded(to: showView, animated: true)
        hud?.labelText = message
        hud?.mode = .text
        hud?.margin = 10.0
        hud?.color = UIColor(red: 0.41, green: 0.46, blue: 0.50, alpha: 0.600)
        hud?.cornerRadius  = 0.5
        hud?.removeFromSuperViewOnHide = true
        hud?.hide(true, afterDelay: 1.0)
        
    }
    
    

    //详细说明的提示
    
  static  func showMessageAndDetailMessage(message:String,detailMessage:String,toView:UIView)  {
        
        var showView = toView
        if showView == nil {
            showView = UIApplication.shared.keyWindow!
        }
        let hud = MBProgressHUD.showAdded(to: showView, animated: true)
        hud?.labelText = message
        hud?.mode = .text
        hud?.detailsLabelText = detailMessage
        hud?.margin = 10.0
        hud?.removeFromSuperViewOnHide = true
        hud?.hide(true, afterDelay: 1.8)
    }

    
  static  func   hideAllHUDsInView(showView:UIView? ){
        var newShowView = showView
        if newShowView == nil {
            newShowView = UIApplication.shared.keyWindow!
        }
        
        MBProgressHUD.hideAllHUDs(for: newShowView, animated: true)
        
        
    }

    
}
