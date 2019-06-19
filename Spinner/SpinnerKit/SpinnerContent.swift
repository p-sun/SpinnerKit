//
//  SpinnerView.swift
//  SpinnerKit
//
//  Created by Paige Sun on 2019-06-19.
//  Copyright © 2019 Paige Sun. All rights reserved.
//

import UIKit

class SpinnerContent: UIView, NibLoadable {
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        constrainNibToSelf()
        
        activityIndicator.style = .whiteLarge
        activityIndicator.transform = CGAffineTransform(scaleX: 2, y: 2)
    }
}
