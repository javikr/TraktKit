//
//  RemoveListItemResult.swift
//  TraktKitTests
//
//  Created by Maximilian Litteral on 8/11/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct RemoveListItemResult: Codable {
    public let deleted: Added
    public let notFound: NotFound

    public struct Added: Codable {
        public let movies: Int
        public let shows: Int
        public let seasons: Int
        public let episodes: Int
        public let people: Int
    }
    
    public struct NotFound: Codable {
        public let movies: [ID]
        public let shows: [ID]
        public let seasons: [ID]
        public let episodes: [ID]
        public let people: [ID]
    }
    
    enum CodingKeys: String, CodingKey {
        case deleted
        case notFound = "not_found"
    }
}
