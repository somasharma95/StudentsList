//
//  Student.swift
//  Innovaj
//
//  Created by Apple on 26/01/22.
//

import Foundation
import UIKit

struct Student {
    var student: [StudentInfo]
}

struct StudentInfo {
    let image:UIImage
    let name:String
    let email:String
    let phone:Int
}
