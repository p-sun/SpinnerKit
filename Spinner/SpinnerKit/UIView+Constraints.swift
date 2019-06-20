//
//  UIView+Constraints.swift
//

import UIKit

extension UIView {
    
    func constrainEdges(to otherview: UIView) {
        prepareForAutolayout()
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: otherview.topAnchor),
            leftAnchor.constraint(equalTo: otherview.leftAnchor),
            rightAnchor.constraint(equalTo: otherview.rightAnchor),
            bottomAnchor.constraint(equalTo: otherview.bottomAnchor)
            ])
    }

    func constrainCenterX(to view: UIView) {
        prepareForAutolayout()
         NSLayoutConstraint.activate([
            centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }

    func constrainCenterY(to view: UIView) {
        prepareForAutolayout()
        NSLayoutConstraint.activate([
            centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
    }
    
    private func prepareForAutolayout() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
