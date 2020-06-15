//
//  ViewController.swift
//  LearnUIKit2
//
//  Created by Duy Ta on 6/13/20.
//  Copyright © 2020 Duy Ta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dropDownButton: UIButton!
    @IBOutlet var condition: [UIButton]!
    @IBOutlet weak var btnSearch: UIButton!
    
    private var searchCondition: Int!

    override func viewDidLoad() {
        super.viewDidLoad()

        dropDownButton.layer.cornerRadius = 12
        condition.forEach{ (button) in
            button.layer.cornerRadius = 12
        }
        
        btnSearch.layer.cornerRadius = 12
    }

    @IBAction func handleSelection(_ sender: UIButton) {
        condition.forEach { (button) in
            button.isHidden = !button.isHidden
        }
    }

    @IBAction func cityTapped(_ sender: UIButton) {
        let buttonTag = sender.tag
        
        if buttonTag == 1 {
            print("Tìm kiếm theo ngày request")
            searchCondition = 1
            dropDownButton.setTitle("Ngày request", for: .normal)
        } else if buttonTag == 2 {
            print("Tìm kiếm theo tên thiết bị")
            searchCondition = 2
            dropDownButton.setTitle("Tên thiết bị", for: .normal)
        } else if buttonTag == 3 {
            print("Tìm kiếm theo tên request")
            searchCondition = 3
            dropDownButton.setTitle("Tên request", for: .normal)
        }
        
        condition.forEach { (button) in
            button.isHidden = !button.isHidden
        }
    }

    @IBAction func handleSearch(_ sender: UIButton) {
        if let type = searchCondition {
            print("searchCondition: ", type)
        }
        
    }
}
