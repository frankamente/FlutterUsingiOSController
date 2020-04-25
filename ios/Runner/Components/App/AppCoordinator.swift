//
//  AppCoordinator.swift
//  Runner
//
//  Created by Francisco Márquez Chaves on 25/04/2020.
//

import Foundation
import UIKit
class AppCoordinator: BaseCoordinator{
    weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        super.init()
        self.navigationController = navigationController
    }
    
    override func start() {
        super.start()
        navigateToNewsViewController()
    }
}
protocol NewsToAppCoordinatorDelegate: class {
    func navigateToFlutterViewController()
}
protocol FlutterToAppCoordinatorDelegate: class {
    func navigateToNewsViewController()
}
extension AppCoordinator: NewsToAppCoordinatorDelegate{
    func navigateToFlutterViewController(){
        let coordinator = FlutterCoordinator(navigationController:     self.navigationController)
        coordinator.delegate = self
        self.add(coordinator)
        coordinator.start()
    }
}
extension AppCoordinator: FlutterToAppCoordinatorDelegate{
    func navigateToNewsViewController(){
        let coordinator = NewsCoordinator(navigationController: self.navigationController)
        coordinator.delegate = self
        self.add(coordinator)
        coordinator.start()
    }
}
