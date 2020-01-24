//
//  ViewController.swift
//  GroupedTV(Practice)
//
//  Created by Marni Anuradha on 1/8/20.
//  Copyright © 2020 Marni Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    var tollywoodActors = ["Tarak", "Mahesh Babu", "Prabhas", "Allu Arjun", "Nani", "Sumanth", "Ram", "Rana", "Sushanth", "Kalyan Ram"]
    
    var bollywoodActors = ["Salman Khan", "Sharukh Khan", "Aamir Khan", "Ajay Devgan", "Ranveer Singh", "Ranbir Kapoor", "Shahid Kapoor", "Saif Ali Khan", "Amitabh Bachan", "Akshay Kumar"]
    
    var hollywoodActors = ["Tom Cruise", "Tom Hank", "Will Smith", "Matt Damon", "Hugh Jackman", "Chris Evans", "Jackie Chan", "Johnny Depp", "Leonardo DiCaprio", "Dwayne Johnson"]
    
    var actorsTV:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        // Do any additional setup after loading the view.
    }
    
    func createUI()
    {
        actorsTV = UITableView(frame: view.frame, style: UITableView.Style.grouped)
        actorsTV.register(UITableViewCell.self, forCellReuseIdentifier: "abc")
        actorsTV.delegate = self
        actorsTV.dataSource = self
        view.addSubview(actorsTV)
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(section == 0)
        {
            return tollywoodActors.count
        }
        else if(section == 1)
        {
            return bollywoodActors.count
        }
        else{
            return hollywoodActors.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath)
        
        if(indexPath.section == 0)
        {
            cell.textLabel!.text = tollywoodActors[indexPath.row]
        }
        else if(indexPath.section == 1)
        {
            cell.textLabel!.text = bollywoodActors[indexPath.row]
        }
        else if(indexPath.section == 2)
        {
            cell.textLabel!.text = hollywoodActors[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0)
        {
            return "Tollywood"
        }
        else if(section == 1)
        {
            return "Bollywood"
        }
        else
        {
            return "Hollywood"
        }
    }

    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if(section == 0)
        {
            return "End of Tollywood"
        }
        else if(section == 1)
        {
            return "End of Bollywood"
        }
        else
        {
            return "End of Hollywood"
        }
    }
}

