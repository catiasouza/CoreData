//
//  ViewController.swift
//  CoreDataAula
//
//  Created by Catia Miranda de Souza on 21/10/19.
//  Copyright © 2019 Catia Miranda de Souza. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
    }


}

