//
//  AboutViewCell.swift
//  Facebook_window
//
//  Created by Katerina Ulasik on 22.08.2021.
//

import UIKit

class AboutViewCell: UITableViewCell {

    @IBOutlet weak var imageSubtitle: UILabel!
    @IBOutlet weak var imageTitelMain: UILabel!
    @IBOutlet weak var imageSecondScreen: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imageTitelMain.text = "Some title.."
        imageSubtitle.text = "Text.."
        imageSecondScreen.image = UIImage(named: "Image")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(item: MyMetaData) {
        imageTitelMain.text = item.title
        imageSubtitle.text = item.subtitle + " " + "id:" + String(item.id)
    }
    
}
