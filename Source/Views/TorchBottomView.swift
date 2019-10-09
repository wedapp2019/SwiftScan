//
//  TorchBottomView.swift
//  SwiftScanner
//
//  Created by janlionly<jan_ron@qq.com> on 2019/8/27.
//  Copyright © 2019 Jason. All rights reserved.
//

import UIKit

class TorchBottomView: UIView {
    @IBOutlet weak var flashButton: UIButton!
    var themeColor: UIColor = .white
    var flashHandler: (()->Void)? = nil
    
    @IBAction func flashButtonTapped(_ sender: Any) {
        guard let imageView = flashButton.imageView else {
            return
        }
        flashButton.isSelected = !flashButton.isSelected
        if flashButton.isSelected {
            flashButton.setTitleColor(themeColor, for: .selected)
            imageView.image = imageView.image?.withRenderingMode(.alwaysTemplate)
            imageView.tintColor = themeColor
            flashButton.setImage(imageView.image, for: .selected)
        } else {
            flashButton.setTitleColor(.white, for: .normal)
            imageView.image = imageView.image?.withRenderingMode(.alwaysTemplate)
            imageView.tintColor = .white
            flashButton.setImage(imageView.image, for: .normal)
        }
       
        flashHandler?()
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
