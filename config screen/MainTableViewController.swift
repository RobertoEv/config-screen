//
//  MainTableViewController.swift
//  config screen
//
//  Created by Roberto Evangelista da Silva Filho on 22/11/2018.
//  Copyright © 2018 Roberto Evangelista da Silva Filho. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var yellowSwitch: UISwitch!
    @IBOutlet weak var purpleSwitch: UISwitch!
    
    var arraySwithes = [UISwitch]()
    
    @IBAction func didBlueSwitchTap(_ sender: Any) {
        tableView.backgroundColor = .blue
        turnOffSwitch(mySwitch: blueSwitch)
    }
    
    @IBAction func didRedSwitchTap(_ sender: Any) {
        tableView.backgroundColor = .red
        turnOffSwitch(mySwitch: redSwitch)
    }
    
    @IBAction func didYellowSwitchTap(_ sender: Any) {
        tableView.backgroundColor = .yellow
        turnOffSwitch(mySwitch: yellowSwitch)
    }
    
    @IBAction func didPurpleSwitchTap(_ sender: Any) {
        tableView.backgroundColor = .purple
        turnOffSwitch(mySwitch: purpleSwitch)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        arraySwithes = [blueSwitch, redSwitch, yellowSwitch, purpleSwitch]
        
    }
    
    func turnOffSwitch(mySwitch: UISwitch) {
        if mySwitch.isOn == false {
            tableView.backgroundColor = .white
        }
        
        for singleSwitch in arraySwithes {
            if singleSwitch != mySwitch {
                singleSwitch.isOn = false
            }
        }
    }
}
