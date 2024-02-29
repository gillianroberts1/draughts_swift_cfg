//
//  StatsView.swift
//  Draughts
//
//  Created by Gillian Roberts on 22/02/2024.
//

import SwiftUI

struct StatsView: View {
    @State var userProfile: UserProfile = UserProfile(username: "Gillian", gamesAttempted: 0)
        @State private var dataSaved : String = " "
        
    var body: some View {
        VStack {
            Text("\(userProfile.username)'s Stats")
                .font(.title)
            Form {
                HStack {
                    Text("Username:")
                    TextField("username", text: $userProfile.username)
                        .onSubmit {
                            saveUserProfile()
                        }
                }
                HStack {
                    Text("Games Attempted:")
                    Text("\(userProfile.gamesAttempted)")
                }
            }
            Text("\(dataSaved)")
        }
        .onAppear {
            loadUserProfile()
        }
    }
            
    func saveUserProfile() {
        UserDefaults.standard.set(userProfile.username, forKey: "username")
        UserDefaults.standard.set(userProfile.gamesAttempted, forKey: "gamesAttempted")
        dataSaved = "Saved"
    }

    func loadUserProfile() {
        loadUserNameValue()
        loadGamesAttemptedValue()
    }

    func loadUserNameValue() {
        if UserDefaults.standard.object(forKey: "username") != nil {
            userProfile.username = UserDefaults.standard.string(forKey: "username")!
        }
    }

    func loadGamesAttemptedValue() {
        if UserDefaults.standard.object(forKey: "gamesAttempted") != nil {
            UserDefaults.standard.integer(forKey: "gamesAttempted")
        }
    }
}
        
#Preview {
    StatsView()
}
