//
//  SampleModel.swift
//  Decoding
//
//  Created by Nilesh on 30/01/22.
//

import Foundation

// MARK: - SampleModel
struct SampleModel: Codable {
    let members: [Member]?
    
    enum CodingKeys: String, CodingKey {
        case members
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        members = try container.decodeIfPresent([Member].self, forKey: .members)
    }
}
// MARK: - Member
struct Member: Codable {
    let firstName, lastName: String
    let age: MyAgeType
    let dateCreated: Date
    let secretIdentity: String
    
    enum CodingKeys: String, CodingKey {
        case firstName, lastName, age
        case dateCreated = "formed"
        case secretIdentity
        
    }
  
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        firstName = try container.decode(String.self, forKey: .firstName)
        lastName = try (container.decodeIfPresent(String.self, forKey: .lastName)) ?? "N/A"
        dateCreated = try container.decode(Date.self, forKey: .dateCreated)
        age = try container.decode(MyAgeType.self, forKey: .age)
        secretIdentity = try container.decode(String.self, forKey: .secretIdentity)
        
    }
}

// Decoding the data when 2 datatype values are returned in an API model
enum MyAgeType: Codable {
    case int(Int)
    case string(String)
    
    init(from decoder: Decoder) throws {
        if let intValue = try? decoder.singleValueContainer().decode(Int.self) {
            self = .int(intValue)
            return
        }
        if let stringValue = try? decoder.singleValueContainer().decode(String.self) {
            self = .string(stringValue)
            return
        }
        throw MyAgeTypeError.missingValue
    }
    
    enum MyAgeTypeError: Error {
        case missingValue
    }
}
