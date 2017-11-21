//
//  ViewController.swift
//  Simple Count
//
//  Created by Jamie King on 11/19/17.
//  Copyright © 2017 Jamie King. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    var countvalue = 0
    var defaults = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        
        
        countvalue = defaults.integer(forKey:"count_value")
        
        super.viewDidLoad()
       
       
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBOutlet weak var countLabel: UILabel!
        
    
    @IBAction func countButton(_ sender: Any) {
        
    
        countvalue = countvalue + 1
        update()
    }
    
    

    @IBAction func minusButton(_ sender: Any) {
       
        countvalue = countvalue - 1
        update()
    }
    
    

    @IBAction func resetButton(_ sender: Any) {
        
        countvalue = 0
        update()    
    }
    
    
    
    @IBAction func infoButton(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(countvalue, forKey: "count_value")
    }
    
    
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func update(){
        countLabel.text = "\(countvalue)"
    }

}

