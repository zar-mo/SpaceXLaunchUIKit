//
//  ViewController.swift
//  SpaceXLaunchUIKit
//
//  Created by Abouzar Moradian on 9/4/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var projects : [Launch] = []
     
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LaunchCell.identifier, for: indexPath) as? LaunchCell
        
        guard let customCell = cell else {return UITableViewCell()}
        
        customCell.name.text = projects[indexPath.row].name
        customCell.descript.text = projects[indexPath.row].description
        customCell.status.text = projects[indexPath.row].status.rawValue

        return customCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC {
            
            detailVC.descript = projects[indexPath.row].description
            detailVC.name = projects[indexPath.row].name
            
            navigationController?.pushViewController(detailVC, animated: true)
        }
        
        
    }
    
  
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: LaunchCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: LaunchCell.identifier)
        
        let date = createDate(year: 2023, month: 8, day: 23, hour: 12, minute: 34, second: 4, timeZoneIdentifier: "America/Chicago")
        let description = "The Falcon 9, developed by SpaceX, is a reusable rocket designed to cut spaceflight costs by landing and reusing its first stage. It supports satellite and crewed missions."
        
        let launch = Launch(name: "Falcon 9", description: description, launchTime: date, status: .success)
        
        for _ in 0..<10 {
            projects.append(launch)
        }

    }
    
 

    func createDate(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int, timeZoneIdentifier: String) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.hour = hour
        dateComponents.minute = minute
        dateComponents.second = second
        dateComponents.timeZone = TimeZone(identifier: timeZoneIdentifier)
        
        let calendar = Calendar.current
        // Provide a default date in case the components do not form a valid date
        let defaultDate = Date()
        return calendar.date(from: dateComponents) ?? defaultDate
    }



}

