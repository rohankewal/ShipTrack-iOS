//
//  ContentView.swift
//  TaskTime
//
//  Created by Rohan Kewalramani on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var wrongEmail: Float = 0
    @State private var showingLoginScreen = false
    @State private var showingSignupScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)

                VStack {
                    Text("ShipTrack Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongEmail))
                    
                    NavigationLink {
                        // go to main view of app if login is successful
                        MainView()
                    } label: {
                        Text("Login")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink {
                        // go to forgot email view if this is tapped
                        SignUpView()
                    } label: {
                        Text("Forgot email?")
                            .foregroundColor(.black)
                            .frame(width: 300, height: 50)
                    }
                }
            }.navigationBarHidden(true)
        }
    }
    
    func authenticateUser(email: String) {
        if email.lowercased() == "rkewalramani4@gmail.com" {
            wrongEmail = 0
        } else {
            wrongEmail = 2
        }
    }
}

#Preview {
    ContentView()
}
