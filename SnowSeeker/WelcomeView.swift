//
//  WelcomeView.swift
//  SnowSeeker
//
//  Created by Michael & Diana Pascucci on 6/12/22.
//

import SwiftUI

struct WelcomeView: View {
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Text("Welcome to SnowSeeker!")
                .font(.largeTitle)
            
            Text("Please select a resort from the left-hand menu; swipe from the left edge to show it.")
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
    }
}

// MARK: - PREVIEW
struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
