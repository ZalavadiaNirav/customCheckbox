//
//  ViewController.swift
//  TESTRADIO
//
//  Created by Nirav  on 23/02/21.
//

import UIKit
import DLRadioButton

extension DLRadioButton {
    func setSelected(_ selected: Bool) {
        if self.isSelected != selected {
            self.sendActions(for: .touchUpInside)
        }
    }
    
    func setOthersButtons(_ btn: [DLRadioButton]){
        self.otherButtons = btn
    }
    
    
}


class ViewController: UIViewController {

    @IBOutlet weak var btn: DLRadioButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        btn.isMultipleSelectionEnabled = true
        
    }

    
}

