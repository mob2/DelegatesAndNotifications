//
//  ViewController.swift
//  DelegatesAndNotifications
//
//  Created by Dustin Pfannenstiel on 4/7/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var outputLabel: UILabel!
	@IBOutlet weak var textField: UITextField!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)

		NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShowNotification:", name: UIKeyboardWillShowNotification, object: nil)
		NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardDidShowNotification:", name: UIKeyboardDidShowNotification, object: nil)
		NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHideNotification:", name: UIKeyboardWillHideNotification, object: nil)
		NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardDidHideNotification:", name: UIKeyboardDidHideNotification, object: nil)
		
		
	}
	
	override func viewDidDisappear(animated: Bool) {
		super.viewDidDisappear(animated)
		
		NSNotificationCenter.defaultCenter().removeObserver(self)
		
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	// MARK: - UIKeyboardNotification Methods
	func keyboardWillShowNotification(notificiation:NSNotification) {
		
	}
	
	func keyboardDidShowNotification(notification:NSNotification) {
		
	}
	
	func keyboardWillHideNotification(notification:NSNotification) {
		
		outputLabel.text = textField.text
		
	}

	func keyboardDidHideNotification(notification:NSNotification) {
		
		outputLabel.text = outputLabel.text?.uppercaseString
		
	}

}

