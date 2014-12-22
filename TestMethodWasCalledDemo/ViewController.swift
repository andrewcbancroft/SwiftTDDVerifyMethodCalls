//
//  ViewController.swift
//  TestMethodWasCalledDemo
//
//  Created by Andrew Bancroft on 12/15/14.
//  Copyright (c) 2014 Andrew Bancroft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {
	var alertView = UIAlertView(title: "Test Alert", message: "Alert!", delegate: nil, cancelButtonTitle: "OK")

	override func viewDidLoad() {
		super.viewDidLoad()
		alertView.show()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
}