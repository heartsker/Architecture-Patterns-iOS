//
//  Model.swift
//  SampleMVC
//
//  Created by Daniel Pustotin on 31.10.2021.
//

import Foundation

struct Model {
	// MARK: Properties
	var text: String = ""
	var length: Int = 5

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
}
