//
//  GameMainRouter.swift
//  O_FOR_IOS
//
//  Created khanathip rachprachon on 19/3/2564 BE.
//  Copyright © 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Juanpe Catalán @JuanpeCMiOS
//

import UIKit

class GameMainRouter: GameMainWireframeProtocol {
    
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = GameMainViewController(nibName: nil, bundle: nil)
        let interactor = GameMainInteractor()
        let router = GameMainRouter()
        let presenter = GameMainPresenter(interface: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
