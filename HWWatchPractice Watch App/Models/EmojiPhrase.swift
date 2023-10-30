//
//  EmojiPhrase.swift
//  HWWatchPractice Watch App
//
//  Created by Sarah Clark on 10/29/23.
//

import SwiftUI

@MainActor
class EmojiPhrase: ObservableObject {
    @Published var text = ""
    @Published var emoji = ""

    private let phrases = [
        (text: "Piece of cake.", emoji:"🎂🍰"),
        (text: "Put lipstick on a pig.", emoji:"💄🐷"),
        (text: "Break a leg.", emoji: "❤️‍🩹🦵🏻"),
        (text: "Knock on wood.", emoji: "✊🏻🪵" ),
        (text: "Green thumb.", emoji: "💚👍🏻")
    ]

    private var index = 0

    init() {
        update()
    }

    func next() {
        index += 1
        if index == phrases.count {
            index = 0
        }
        update()
    }

    private func update() {
        text = phrases[index].text
        emoji = phrases[index].emoji
    }
}
