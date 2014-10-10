//
//  ViewController.swift
//  Postcard
//
//  Created by Matthew Nethersell on 09/10/14.
//  Copyright (c) 2014 Matthew Nethersell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var postcardButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendPostcardButtonPressed(sender: UIButton) {
        //Adding a comment to test commit to github
        nameLabel.text = enterNameTextField.text
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        nameLabel.hidden = false
        messageLabel.hidden = false
        enterNameTextField.resignFirstResponder()
        enterMessageTextField.resignFirstResponder()
        postcardButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }	

}

