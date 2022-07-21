//
//  ViewController.swift
//  InterfaceLevelDemoApp
//
//  Created by Daniel Szabo on 2022. 07. 21..
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        switch traitCollection.userInterfaceLevel {
        case .base:
            // The `userInterfaceLevel` should be always `base`, however on iPad, when application is used in split screen mode
            // The interface level becomes `elevated`, despite the viewController is not presented
            label.text = "Base"
        case .elevated:
            label.text = "Elevated"
        case .unspecified:
            label.text = "Unspecified"
        @unknown default:
            label.text = "Unknown"
        }
    }
}

