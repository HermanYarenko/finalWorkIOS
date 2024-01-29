//
//  AirpotFlightSchedule.swift
//  FlightSimulator
//
//  Created by Герман Яренко on 29.01.24.
//

import Foundation
struct ScheduleResponse: Decodable {
    let schedule: [ScheduleItem]
}

struct Station: Decodable {
    let title: String
}


struct ScheduleItem: Decodable {
  let thread: Thread?
  let arrival: String?
  let departure: String?

  private enum CodingKeys: String, CodingKey {
    case thread
    case arrival
    case departure
  }
}

struct Thread: Decodable {
  let number: String?
  let title: String?
  let vehicle: String?

  private enum CodingKeys: String, CodingKey {
    case number
    case title
    case vehicle
  }
}
