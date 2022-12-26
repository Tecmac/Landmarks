//
//  ModelData.swift
//  Landmarks
//
//  Created by Eray Kayur on 25.12.22.
//

import Foundation
var landmarks: [Landmark] = load("landmarkData.json") //creating array of type landmark
func load<T: Decodable>(_ filename: String) -> T { //meaning of _ ??
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) //Guard works like a reverse if..else, so it works like guard based on [condition] if it’s true then move on and continue the loop, else do something to catch possible error.
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file) //trying to execute it
    } catch { // catch if its throwing out an error
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
