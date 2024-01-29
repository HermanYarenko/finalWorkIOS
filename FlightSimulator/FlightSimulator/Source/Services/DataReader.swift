//
//  DataReader.swift
//  FlightSimulator
//
//  Created by Герман Яренко on 29.01.24.
//

import Foundation
final class DataReader{
    static func readTokenFromFile()->String{
        var token = ""
        if let fileURL = Bundle.main.url(forResource: "token", withExtension: "txt") {
            do {
                token = try String(contentsOf: fileURL)
            } catch {
                print("Ошибка чтения : \(error.localizedDescription)")
            }
        } else {
            print("Файл отсутствует")
        }
        return token
    }
    
}
