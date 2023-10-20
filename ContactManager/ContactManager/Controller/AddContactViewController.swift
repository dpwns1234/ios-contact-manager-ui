//
//  AddContactViewController.swift
//  ContactManager
//
//  Created by 김예준 on 10/11/23.
//

import UIKit

final class AddContactViewController: FormViewController {

  var contactAddDelegate: ContactAddDelegate?
  
  @IBAction override func saveButtonTapped(_ sender: UIButton) {
    super.saveButtonTapped(sender)
    guard let (name, age, phone) = validData else { return }
    contactAddDelegate?.addContact(name: name,
                                   age: age,
                                   phone: phone)
    contactChangedDelegate?.reload()
    dismiss(animated: true)
    
  }
  
  @IBAction override func cancelButtonTapped(_ sender: UIButton) {
    super.cancelButtonTapped(sender)
  }
  
  @IBAction override func phoneTextDidChanged(_ sender: UITextField) {
    super.phoneTextDidChanged(sender)
  }
}
