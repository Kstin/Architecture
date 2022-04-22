//
//  ViewController.swift
//  Architecture
//
//  Created by Kstin on 22.04.2022.
//

import UIKit

class ViewController: BaseVC {

    @IBOutlet private weak var showButton: UIButton!
    
    override func setupVC() {
        
    }
    
    override func configureUI() {
        showButton.configure(R.string.localizable.actionNext(), style: .action) {
            print("tapped")
        }
    }

}

