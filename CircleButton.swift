//
//  CircleButton.swift
//  Calculate
//
//  Created by Владислав Вишняков on 29.04.2021.
//

import UIKit

@IBDesignable class CircleButton: UIButton {
    
        override init(frame: CGRect) {
            super.init(frame: frame)
            sharedInit()
        }

        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            sharedInit()
        }

        override func prepareForInterfaceBuilder() {
            sharedInit()
        }

        func sharedInit() {
            refreshCorners(value: cornerRadius)
        }

        func refreshCorners(value: CGFloat) {
            layer.cornerRadius = value
        }

        @IBInspectable var cornerRadius: CGFloat = 40 {
            didSet {
                refreshCorners(value: cornerRadius)
            }
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

