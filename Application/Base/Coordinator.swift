//
//  Coordinator.swift
//  FinikTest
//
//  Created by Diachenko Ihor on 13.09.2023.
//

import Foundation

import UIKit

typealias UseCases = GistsUseCases

protocol Coordinator: AnyObject {
    var useCases: UseCases { get }
    
    func start()
    func stop()
}
