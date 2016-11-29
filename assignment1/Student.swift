//
//  Student.swift
//  assignment1
//
//  Created by macDevMachinVB on 29/11/2016.
//  Copyright © 2016 macDevMachinVB. All rights reserved.
//

import Foundation


class Student {
    var id : NSString = ""
    var firstName:  NSString = ""
    var lastName : NSString = ""
    var phoneNumber : NSString = ""
    var degree : NSString = ""
}

class MasterStudent: Student {
    var mscDegree:NSString = ""
    var thisis:NSString = ""
}

class PhdStudent: MasterStudent {
    var phdDegree:NSString = ""
}
