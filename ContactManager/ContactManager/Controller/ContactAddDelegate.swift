//
//  ContactAddDelegate.swift
//  ContactManager
//
//  Created by 김예준 on 10/17/23.
//

protocol ContactAddDelegate {
  func addContact(nameText: String?, ageText: String?, phoneText: String?) throws
}