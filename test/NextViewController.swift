//
//  NextViewController.swift
//  test
//
//  Created by 宗丽娜 on 2018/5/8.
//  Copyright © 2018年 宗丽娜. All rights reserved.
//

import UIKit
import ObjectMapper
class NextViewController: UIViewController {

    var Person:Person? {
        willSet{
              print("赋值之前\(Person?.memberA)\(Person?.age?.ages)")
            
        }
        didSet{
              print("赋值之后\(Person?.memberA)\(Person?.age?.ages)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  json = ["memberA":40,"age":["ages":20]] as [String : Any]

        self.Person = Mapper<Person>.init().map(JSON: json)
         print("赋值之后\(Person?.memberA)\(Person?.age?.ages)")
        self.view.backgroundColor = UIColor.red
        // Do any additional setup after loading the view.
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.dismiss(animated: true, completion: nil)
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
