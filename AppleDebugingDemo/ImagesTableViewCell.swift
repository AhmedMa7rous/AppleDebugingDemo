//
//  ImagesTableViewCell.swift
//  AppleDebugingDemo
//
//  Created by DGTERA on 28/09/2024.
//

import UIKit

class ImagesTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with name: String) {
        iconImageView.image = UIImage(systemName: name)
        titleLabel.text = name.capitalized
    }
}
