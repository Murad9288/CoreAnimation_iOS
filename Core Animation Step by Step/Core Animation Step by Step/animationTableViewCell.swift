//
//  animationTableViewCell.swift
//  Core Animation Step by Step
//
//  Created by Md Murad Hossain on 6/11/22.
//

import UIKit

class animationTableViewCell: UITableViewCell {

    @IBOutlet weak var animationtextName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func configure(name1: String){
        animationtextName?.text = name1
    }
}
