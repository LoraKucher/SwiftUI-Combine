//
//  NewMorphicShadow.swift
//  CoinTrackerDemo
//
//  Created by Lora Kucher on 28.10.2020.
//  Copyright © 2020 LK. All rights reserved.
//

import SwiftUI

struct NeumorphicShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.grayish.opacity(0.1), radius: 5, x: -5, y: -5)
            .shadow(color: Color.darkShadow.opacity(0.2), radius: 5, x: 5, y: 5)
    }
}

extension View {
    func neumorphicShadow() -> some View {
        return self.modifier(NeumorphicShadow())
    }
}
