//
//  UIImageView + Extension.swift
//  Messenger
//
//  Created by Максим Мосалёв on 17.05.2023.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
