//
//  BoardView.swift
//  Draughts
//
//  Created by Gillian Roberts on 22/02/2024.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        VStack {
            ForEach(0 ..< Utils.maxCells) {
                row in
                HStack {
                    ForEach(0 ..< Utils.maxCells){col in
                        if (col.isMultiple(of: 2)) {
                            Button(action: {
                                print("\(row),\(col) Tapped")
                            }) {
                                Image(systemName: "square.fill")
                                    .foregroundColor(Utils.colorDarkCell)
                            }
                        }
                        else {
                            Button(action: {
                                print("\(row),\(col) Tapped")
                            }) {
                                Image(systemName: "square.fill")
                                    .foregroundColor(Utils.colorLightCell)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    BoardView()
}
