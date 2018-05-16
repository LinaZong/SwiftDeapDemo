//
//  FatherPerson.swift
//  test
//
//  Created by 宗丽娜 on 2018/5/8.
//  Copyright © 2018年 宗丽娜. All rights reserved.
//

import UIKit
import ObjectMapper
class FatherPerson: Mappable {
    
     var father:Int = 0
    
    required init?(map: Map) {
        
    }
    
     func mapping(map: Map) {
        
        father <- map["father"]

        
    }
    

   
    
    
    
}
