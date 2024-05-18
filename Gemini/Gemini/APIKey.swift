//
//  APIKey.swift
//  Gemini
//
//  Created by Phan Tam Nhu on 18/5/24.
//

import Foundation

enum APIKey {
    static var `default`: String {
        guard let filePath = Bundle.main.path(forResource: "generativeAI-Info", ofType: "plist")
        else {
            fatalError("Couldn't find generativeAI file")
        }
        
        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "API_KEY") as? String else {
            fatalError("Couldn't find key api key")
        }
        if value.starts(with: "_") {
            fatalError("Follow the instruction at tutorials to get API key")
        }
        return value
    }
}
