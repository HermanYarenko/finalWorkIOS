//
//  CellConfigurator.swift
//  FlightSimulator
//
//  Created by Герман Яренко on 29.01.24.
//


import Foundation
import UIKit
protocol CellConfigurator {
    func configureCell(flights: ScheduleItem)
}
