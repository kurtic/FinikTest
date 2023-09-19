//
//  MainVC.swift
//  FinikTest
//
//  Created by Diachenko Ihor on 14.09.2023.
//

import UIKit

extension MainVC: Makeable {
    static func make() -> MainVC { UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainVC") as! MainVC }
}

final class MainVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet private weak var gistNameTextField: UITextField!
    @IBOutlet private weak var containerViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet private weak var searchTextField: UITextField!
    
    // MARK: - Properties
    var viewModel: MainVM?

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)),
                                               name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)),
                                               name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            containerViewBottomConstraint.constant += keyboardSize.height
        }
    }

    @objc private func keyboardWillHide(notification: NSNotification) {
        containerViewBottomConstraint.constant = 0
    }
    
    // MARK: - Actions
    @IBAction private func searchTapped(_ sender: Any) {
        viewModel?.searchTapped()
    }
}
