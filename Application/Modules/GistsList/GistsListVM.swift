//
//  GistsListVM.swift
//  FinikTest
//
//  Created by Diachenko Ihor on 14.09.2023.
//

import Foundation

protocol GistsListVMDelegate: AnyObject {
    // TODO
}

final class GistsListVM {
    // MARK: - Private Properties
    private weak var delegate: GistsListVMDelegate?
    private let useCases: UseCases
    
    // MARK: - Life Cycle
    init(useCases: UseCases, delegate: GistsListVMDelegate) {
        self.useCases = useCases
        self.delegate = delegate
    }
}
