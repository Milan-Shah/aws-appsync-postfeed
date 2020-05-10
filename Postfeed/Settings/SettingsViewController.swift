//
//  SettingsViewController.swift
//  Postfeed
//
//  Created by Milan Shah on 5/10/20.
//  Copyright © 2020 Milan Shah. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var bioTextField: UITextField!
    @IBOutlet weak var locationSwitch: UISwitch!
    @IBOutlet weak var segmentForDF: UISegmentedControl!
    
    var theSettings : Settings?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bioTextField.text = theSettings?.bio ?? ""
        bioTextField.delegate = self
        locationSwitch.isOn = theSettings?.includeLocation ?? false
        segmentForDF.selectedSegmentIndex = theSettings?.dateFormat.rawValue ?? 0
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        guard let settings = theSettings else { return }
        settings.bio = bioTextField.text ?? ""
        settings.includeLocation = locationSwitch.isOn
        settings.dateFormat = PostDateFormatStyle.init(rawValue: segmentForDF.selectedSegmentIndex) ?? .medium
        
        settings.save()
        self.performSegue(withIdentifier: "segSettingsDone", sender: self)
    }
    
    @IBAction func logOutClicked(_ sender: Any) {
        // To do: perform log out
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
