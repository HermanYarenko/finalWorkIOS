//
//  DepartureScreenExtension.swift
//  FlightSimulator
//
//  Created by Герман Яренко on 29.01.24.
//

import Foundation
extension DepartureScreen: CellRegister{
    func registerCell() {
        tableView.register(DepartureCell.self, forCellReuseIdentifier: DepartureCell.identifier)
    }
}
