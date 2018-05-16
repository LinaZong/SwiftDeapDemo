//
//  Person.swift
//  test
//
//  Created by 宗丽娜 on 2018/5/8.
//  Copyright © 2018年 宗丽娜. All rights reserved.
//

import UIKit
import ObjectMapper

class Person: NSObject,NSCopying,Mappable{
    
    
    var memberA:Int = 0
    var age:age?
    
    required init?(map: Map) {
        
    }
    
   func mapping(map: Map) {
    
    memberA <- map["memberA"]
    age <- map["age"]
        
    }
    
    required override init() {
        
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let theCopyObj = type(of: self).init()
        theCopyObj.memberA = self.memberA
        
        return theCopyObj
    }

}


class age:NSObject,NSCopying, Mappable {
    
     var ages:Int = 0
    required override init() {
        
    }
    
    required init?(map: Map) {
        
    }
    
    
     func mapping(map: Map) {
        
        ages <- map["ages"]
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let theCopyObj = type(of: self).init()
        theCopyObj.ages = self.ages
        return theCopyObj
    }

    
    
}
