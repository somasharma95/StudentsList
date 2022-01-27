//
//  StudentViewController.swift
//  Innovaj
//
//  Created by Apple on 26/01/22.
//

import UIKit

final class StudentViewController: UIViewController {
    
    @IBOutlet weak var viewLayout: StudentViewLayout!
    let viewModel:StudentViewModel = StudentViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    private func initUI() {
        self.title = ViewConstants.title
        viewModel.setStudentsData { [weak self] isCompleted  in
            if isCompleted {
                self?.viewLayout.tableView.reloadData()
            }
        }
    }
    
    private func callNumber(phoneNumber: String) {
        guard let url = URL(string: "telprompt://\(phoneNumber)"),
              UIApplication.shared.canOpenURL(url) else {
                  return
              }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    
}


extension StudentViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.students?.student.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : StudentTableViewCell = tableView.dequeueReusableCell(withIdentifier: ViewConstants.cellNib, for: indexPath) as! StudentTableViewCell
        
        guard let data = viewModel.students?.student[indexPath.row] else {
            return UITableViewCell()
        }
        
        cell.callActionCallback  = { phoneNumber in
            self.callNumber(phoneNumber: "\(phoneNumber)")
        }
        
        cell.setData(info: data)
        return cell
    }
    
    
}

extension StudentViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
    
}
