//
//  ViewController.swift
//  test
//
//  Created by 宗丽娜 on 2018/5/8.
//  Copyright © 2018年 宗丽娜. All rights reserved.
//

import UIKit
import ObjectMapper
class ViewController: UIViewController {
    var person:Person?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  json = ["memberA":10,"age":["ages":10]] as [String : Any]
        person = Mapper<Person>().map(JSON: json)
       
      
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBOutlet weak var sucessButtonClick: UIButton!
    
    @IBOutlet weak var Loading: UIButton!
    
    @IBAction func lodingBUttonclick(_ sender: Any) {
        
        LNProgressAdditonHUD.showLoading(text: "正在加载", toView: nil)
        
    }
    
    @IBAction func error(_ sender: Any) {
        LNProgressAdditonHUD.showError(error: "错误", toView: self.view)
    
    }
    
    
    @IBAction func successButtonclicks(_ sender: Any) {
        
        LNProgressAdditonHUD.showSuccess(success: "成功", toView: self.view)
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        let nextVC = NextViewController()
        var person:Person = self.person?.copy() as! Person
        person.age = self.person?.age?.copy() as! age 
         print("拷贝之后\(person.memberA)\(person.age?.ages)")
        print("第一页\(self.person?.memberA)\(self.person?.age?.ages)")
        nextVC.Person = person 
        
        
        
        self.present(nextVC, animated: true, completion: nil)

        
    }
    
    
    
}

