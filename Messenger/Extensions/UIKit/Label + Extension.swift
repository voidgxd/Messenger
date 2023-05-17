//
//  Label + Extension.swift
//  Messenger
//
//  Created by Максим Мосалёв on 17.05.2023.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        self.text = text
        self.font = font
    }
}
