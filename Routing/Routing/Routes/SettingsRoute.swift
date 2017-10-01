//
//  SettingsRoute.swift
//  Routing
//
//  Created by Nikita Ermolenko on 29/09/2017.
//

import Foundation

protocol SettingsRoute {
    var settingsTransition: Transition { get }
    func openSettingsModule()
}

extension SettingsRoute where Self: Routerable {
    func openSettingsModule() {
        let (controller, router) = SettingsModuleBuilder.module()
        router.closableTransition = settingsTransition
        open(controller, transition: settingsTransition)
    }
}
