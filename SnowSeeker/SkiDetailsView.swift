//
//  SkiDetailsView.swift
//  SnowSeeker
//
//  Created by Michael & Diana Pascucci on 6/12/22.
//

import SwiftUI

struct SkiDetailsView: View {
    
    // MARK: - PROPERTIES
    let resort: Resort
    
    // MARK: - BODY
    var body: some View {
        Group {
            VStack {
                Text("Elevation")
                    .font(.caption.bold())
                Text("\(resort.elevation)m")
                    .font(.title3)
            }
            
            VStack {
                Text("Snow")
                    .font(.caption.bold())
                Text("\(resort.snowDepth)cm")
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

// MARK: - PREVIEW
struct SkiDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SkiDetailsView(resort: Resort.example)
    }
}
