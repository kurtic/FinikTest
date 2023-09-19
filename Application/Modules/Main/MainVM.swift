//
//  MainVM.swift
//  FinikTest
//
//  Created by Diachenko Ihor on 14.09.2023.
//

import Foundation

protocol MainVMDelegate: AnyObject {
    func searchGists(query: String)
}

final class MainVM {
    // MARK: - Private Properties
    private weak var delegate: MainVMDelegate?
    
    // MARK: - Properties
    var searchQuery = ""
    
    // MARK: - Life Cycle
    init(delegate: MainVMDelegate) {
        self.delegate = delegate
    }
    
    func searchTapped() {
        delegate?.searchGists(query: searchQuery)
    }
}
