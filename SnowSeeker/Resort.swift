//
//  Resort.swift
//  SnowSeeker
//
//  Created by Michael & Diana Pascucci on 6/12/22.
//

import Foundation

struct Resort: Codable, Identifiable {
    
    // MARK: - PROPERTIES
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]
    
    // MARK: - COMPUTED PROPERTIES
    var facilityTypes: [Facility] {
        facilities.map(Facility.init)
    }
    
    // MARK: - EXAMPLE DATA
    static let allResorts: [Resort] = Bundle.main.decode("resorts.json")
    static let example = allResorts[0]
}
