//
//  Spinner.swift
//  SpinnerKit
//
//  Created by Paige Sun on 2019-06-19.
//  Copyright © 2019 Paige Sun. All rights reserved.
//

import UIKit

struct Spinner {
    
    static func show(in parent: UIView) {
        if let _ = getSpinner(in: parent) {
            return
        }
        
        let spinner = SpinnerContent()
        parent.addSubview(spinner)
        spinner.constrainCenterX(to: parent)
        spinner.constrainCenterY(to: parent)
    }
    
    static func hide(in parent: UIView) {
        getSpinner(in: parent)?.removeFromSuperview()
    }
    
    private static func getSpinner(in parent: UIView) -> UIView? {
        let view = parent.subviews.first(where: {
            $0.isKind(of: SpinnerContent.self)
        })
        return view
    }
}
