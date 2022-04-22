//
//  UIButton+Configurations.swift
//  Architecture
//
//  Created by Kstin on 22.04.2022.
//

import ReactiveCocoa

extension UIButton {
    
    func configure(_ source: String?, style: Style, onTap: @escaping () -> ()) {
        setTitle(source, for: .normal)
        tintColor = style.tintColor
        backgroundColor = style.backgroundColor
        titleLabel?.font = style.font
        reactive.onTap(onTap)
    }
    
    enum Style {
        case navigation
        case action
        
        var font: UIFont {
            switch self {
            case .navigation:
                return UIFont.systemFont(ofSize: 16)
            case .action:
                return UIFont.systemFont(ofSize: 18, weight: .heavy)
            }
        }
        
        var tintColor: UIColor? {
            switch self {
            case .navigation:
                return UIColor.systemBlue
            case .action:
                return UIColor.white
            }
        }
        
        var backgroundColor: UIColor? {
            switch self {
            case .navigation:
                return UIColor.clear
            case .action:
                return UIColor.cyan
            }
        }
        
    }
}
