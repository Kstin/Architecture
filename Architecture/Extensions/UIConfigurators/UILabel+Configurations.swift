//
//  UILabel+Configurations.swift
//  Architecture
//
//  Created by Kstin on 22.04.2022.
//

import UIKit

extension UILabel {
    
    func configure(_ source: String?, style: Style) {
        text = source
        font = style.font
        textColor = style.textColor
    }
    
    enum Style {
        case title
        case subtitle
        case text
        
        var font: UIFont {
            switch self {
            case .title:
                return UIFont.systemFont(ofSize: 18)
            case .subtitle:
                return UIFont.systemFont(ofSize: 14)
            case .text:
                return UIFont.systemFont(ofSize: 16)
            }
        }
        
        var textColor: UIColor? {
            switch self {
            case .title:
                return UIColor.black
            case .subtitle:
                return UIColor.gray
            case .text:
                return UIColor.darkGray
            }
        }
    }
}
