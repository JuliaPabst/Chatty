//
//  MessageCell.swift
//  Chatty
//
//  Created by Julia Pabst on 24.01.24.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet var messageBubble: UIView!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var rightImageVIew: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
