//
//  GameModeView.swift
//  Draughts
//
//  Created by Gillian Roberts on 22/02/2024.
//

import SwiftUI

struct GameModeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Draughts")
                    .font(.largeTitle)
                    .padding()
                Text("Game Mode")
                    .font(.system(size: 20))
                    .padding()
                VStack(alignment: .leading) {
                    NavigationLink(destination: BoardView()) {
                        HStack {
                            Image(systemName: "checkerboard.rectangle")
                                .imageScale(.large)
                                .foregroundColor(Color.pink)
                            Text("Normal")
                                .foregroundColor(Color.blue)
                                .font(.system(size: 25))
                        }

                        Image(systemName: "timer")
                            .imageScale(.large)
                            .foregroundColor(Color.pink)
                        Text("Timed")
                            .font(.system(size: 25))
                            .foregroundColor(Color.blue)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    GameModeView()
}
