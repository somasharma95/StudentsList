//
//  StudentTableViewCell.swift
//  Innovaj
//
//  Created by Apple on 26/01/22.
//

import UIKit

final class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userPhone: UIButton!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    var phone:Int?
    var callActionCallback:((Int)->Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        userImage.layer.cornerRadius = userImage.frame.height / 2
        userImage.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    @IBAction func callAction(_ sender: Any) {
        guard let phoneNumber = phone else {return}
        callActionCallback?(phoneNumber)
    }
    
    func setData(info:StudentInfo) {
        userImage.image = info.image
        username.text = info.name.capitalized
        userEmail.text = info.email
        self.phone = info.phone
        userPhone.setTitle("\(info.phone)", for: .normal)
    }
}
