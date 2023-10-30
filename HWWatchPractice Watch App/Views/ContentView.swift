//
//  ContentView.swift
//  HWWatchPractice Watch App
//
//  Created by Sarah Clark on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var phrase = EmojiPhrase()

    var body: some View {
        VStack {
            Image("Cookie")
                .resizable()
                .scaledToFit()
                .overlay(
                    Text(phrase.emoji)
                        .padding(.top, 10)
                        .buttonStyle(.plain)
                        .font(.title2)
                )
            Text(phrase.text)
                .font(.caption)
                .padding(.top, 20)
                .onTapGesture {
                    phrase.next()
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
