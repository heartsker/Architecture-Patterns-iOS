//
//  Model.swift
//  SampleMVC
//
//  Created by Daniel Pustotin on 26.11.2021.
//

import Foundation

enum ColorSet: String {
    case orange
    case purple
}

struct Model {
    // MARK: Properties
    var text: String = ""
    var length: Int = 5
    var color: ColorSet = .orange

    private var minLenght = 2
    private var maxLenght = 10

    // MARK: Methods
    public mutating func changeText() {
        text = randomString()
    }

    public mutating func increaseLength() {
        length = min(maxLenght, length + 1)
        changeText()
    }

    public mutating func decreaseLength() {
        length = max(minLenght, length - 1)
        changeText()
    }

    private func randomString() -> String {
        let symbols = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-=/§"
        return String((0 ..< length).map{ _ in
            symbols.randomElement()!
        })
    }
    
    public mutating func changeColor() {
        switch color {
        case .orange:
            color = .purple
        case .purple:
            color = .orange
        }
    }
}
