//
//  TableViewCell.swift
//  TESTRADIO
//
//  Created by Nirav  on 23/02/21.
//

 // LKCheckBox

import UIKit
import DLRadioButton
class TableViewCell: UITableViewCell {

    @IBOutlet weak var optionBtn: CheckBox!
    override func awakeFromNib() {
        super.awakeFromNib()
        optionBtn.style = .tick
        optionBtn.tintColor = .green
        optionBtn.borderStyle = .roundedSquare(radius: 2)
        optionBtn.checkmarkColor = UIColor.red
     
        optionBtn.checkedBorderColor = UIColor.red
        
        optionBtn.addTarget(self, action: #selector(onCheckBoxValueChange(_:)), for: .valueChanged)
        
        
    }

    @objc func onCheckBoxValueChange(_ sender: CheckBox) {
        
        print(sender.isChecked)
        if(sender.isChecked == false)
        {
            sender.tintColor = .green
        }
    }
}
