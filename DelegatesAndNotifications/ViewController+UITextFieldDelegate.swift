//
//  ViewController+UITextFieldDelegate.swift
//  DelegatesAndNotifications
//
//  Created by Dustin Pfannenstiel on 4/7/15.
//  Copyright (c) 2015 Dustin Pfannenstiel. All rights reserved.
//

import UIKit

extension ViewController: UITextFieldDelegate {
	
	// MARK: - UITextFieldDelegate
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		textField.resignFirstResponder()
		return true
	}
	
}
