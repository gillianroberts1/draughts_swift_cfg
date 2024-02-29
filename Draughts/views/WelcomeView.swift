//
//  ContentView.swift
//  Draughts
//
//  Created by Gillian Roberts on 15/02/2024.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Draughts")
                .font(.largeTitle)
            NavigationStack {
                VStack(alignment: .leading) {
                    NavigationLink(destination: GameModeView()) {
                        HStack {
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(Color.pink)
                            Text("Play")
                        }
                    }

                    NavigationLink(destination: StatsView()) {
                        HStack {
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(Color.pink)
                            Text("Stats")
                        }
                    }
                }
            }

            Text("CFG iOS App Dev MOOC")
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}
