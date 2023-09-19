//
//  MainFactory.swift
//  FinikTest
//
//  Created by Diachenko Ihor on 13.09.2023.
//

import Foundation

final class MainFactory: BaseFactory {
    static var main = MainFactory()
    private override init() {}
    
    func makeMainVC<T: Coordinator & MainVMDelegate>(coordinator: T) -> MainVC {
        makeController(coordinator) {
            $0.viewModel = MainVM(delegate: coordinator)
        }
    }
}
