//
//  ResortDetailsView.swift
//  SnowSeeker
//
//  Created by Michael & Diana Pascucci on 6/12/22.
//

import SwiftUI

struct ResortDetailsView: View {
    
    // MARK: - PROPERTIES
    let resort: Resort
    
    // MARK: - COMPUTED PROPERTIES
    var size: String {
        switch resort.size {
        case 1:
            return "Small"
        case 2:
            return "Average"
        default:
            return "Large"
        }
    }
    var price: String {
        String(repeating: "$", count: resort.price)
    }
    
    // MARK: - BODY
    var body: some View {
        Group {
            VStack {
                Text("Size")
                    .font(.caption.bold())
                Text(size)
                    .font(.title3)
            }
            
            VStack {
                Text("Price")
                    .font(.caption.bold())
                Text(price)
                    .font(.title3)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

// MARK: - PREVIEW
struct ResortDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ResortDetailsView(resort: Resort.example)
    }
}
