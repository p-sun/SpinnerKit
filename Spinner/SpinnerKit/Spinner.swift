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

private class SpinnerContent: UIView {
    
    private lazy var activityView: UIView = {
        let view = UIActivityIndicatorView()
        view.style = .whiteLarge
        view.transform = CGAffineTransform(scaleX: 2, y: 2)
        view.startAnimating()
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        let view = activityView
        addSubview(view)
        view.constrainEdges(to: self)
    }
}
