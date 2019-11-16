//
//  ListItemPostResult.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 8/10/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct ListItemPostResult: Codable {
    public let added: Added
    public let existing: Added
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
        case added
        case existing
        case notFound = "not_found"
    }
}
