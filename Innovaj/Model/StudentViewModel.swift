//
//  StudentViewModel.swift
//  Innovaj
//
//  Created by Apple on 26/01/22.
//

import UIKit

final class StudentViewModel {
    
    var students : Student?
    
    func setStudentsData(completion : @escaping ((Bool)->Void)) {
        
        guard let image1 = UIImage(named: ViewConstants.studentImage1), let image2 = UIImage(named: ViewConstants.studentImage2), let image3 = UIImage(named: ViewConstants.studentImage3) else {return}
        
        let student1 = StudentInfo(image:  image1 , name: ViewConstants.name1, email: ViewConstants.email1, phone: ViewConstants.phone1)
        
        let student2 = StudentInfo(image: image2 , name: ViewConstants.name2, email: ViewConstants.email2, phone: ViewConstants.phone2)
        
        let student3 = StudentInfo(image: image3, name: ViewConstants.name3, email: ViewConstants.email3, phone: ViewConstants.phone3)
       
        let studentArray = [student1,student2,student3]
        let student = Student(student: studentArray)
        self.students = student
        completion(true)
    }
}
