//
//  TableViewSetting.swift
//  FlightSimulator
//
//  Created by Герман Яренко on 29.01.24.
//

import Foundation
import UIKit

class TableViewSetting{
    static func SettingCellTableView(tableView: UITableView){
        tableView.register(ArrivalCell.self, forCellReuseIdentifier: ArrivalCell.identifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
    }
    static func AddedFixedLabel(view: UIView) -> UILabel{
        var fixedLabel = UILabel()
        
        fixedLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 50))
        fixedLabel.text = "Фиксированный лейбл"
        fixedLabel.textAlignment = .center
        fixedLabel.backgroundColor = .yellow
        

        return fixedLabel
    }
}
