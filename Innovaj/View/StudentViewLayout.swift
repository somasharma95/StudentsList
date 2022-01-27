//
//  StudentViewLayout.swift
//  Innovaj
//
//  Created by Apple on 26/01/22.
//

import UIKit


struct ViewConstants {
    static let studentImage1 = "student1"
    static let studentImage2 = "student2"
    static let studentImage3 = "student3"
    static let name1 = "first"
    static let name2 = "second"
    static let name3 = "third"
    static let email1 = "first@first.com"
    static let email2 = "second@second.com"
    static let email3 = "third@third.com"
    static let cellNib = "StudentTableViewCell"
    static let title = "Students"
    static let phone1 = 98771
    static let phone2 = 93771
    static let phone3 = 92771
}

final class StudentViewLayout: UIView {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: ViewConstants.cellNib, bundle: nil), forCellReuseIdentifier: ViewConstants.cellNib)
        }
        
    }
}
