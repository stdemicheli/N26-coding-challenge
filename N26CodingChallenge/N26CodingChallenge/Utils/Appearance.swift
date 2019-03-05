//
//  Appearance.swift
//  N26CodingChallenge
//
//  Created by De MicheliStefano on 04.03.19.
//  Copyright © 2019 De MicheliStefano. All rights reserved.
//
import UIKit

/**
 An appearance object for defining default styling of the UI.
 */

struct Appearance {
    
    static func appFont(with size: CGFloat) -> UIFont {
        return UIFont(name: "Montserrat-SemiBold", size: size)!
    }
    
    static func setupNavBar() {
        UINavigationBar.appearance().barTintColor = UIColor.aztec
        UINavigationBar.appearance().tintColor = UIColor.cream
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.cream, NSAttributedString.Key.font: Appearance.appFont(with: 20)]
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.cream, NSAttributedString.Key.font: Appearance.appFont(with: 40)]
        UINavigationBar.appearance().isTranslucent = false
    }
    
    static func setupViews() {
        UIView.appearance().backgroundColor = UIColor.aztec
    }
    
}

