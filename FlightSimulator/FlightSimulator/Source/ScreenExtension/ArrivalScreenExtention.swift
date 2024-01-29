//
//  ArrivalScreenExtention.swift
//  FlightSimulator
//
//  Created by Герман Яренко on 29.01.24.
//

import Foundation
extension ArrivalScreen: CellRegister{
    func registerCell() {
        tableView.register(ArrivalCell.self, forCellReuseIdentifier: ArrivalCell.identifier)
    }
}
