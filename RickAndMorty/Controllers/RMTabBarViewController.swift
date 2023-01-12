//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Adam Zapiór on 12/01/2023.
//

import UIKit

class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTabs()
    }

    private func setUpTabs() {
        view.backgroundColor = .systemBackground
        
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let espisodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        espisodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic

        //VC Views:
        let vc1 = UINavigationController(rootViewController: charactersVC)
        let vc2 = UINavigationController(rootViewController: locationsVC)
        let vc3 = UINavigationController(rootViewController: espisodesVC)
        let vc4 = UINavigationController(rootViewController: settingsVC)

        
        // TabBar Icons:
        vc1.tabBarItem.image = UIImage(systemName: "person")
        vc2.tabBarItem.image = UIImage(systemName: "globe")
        vc3.tabBarItem.image = UIImage(systemName: "tv")
        vc4.tabBarItem.image = UIImage(systemName: "gear")
        
        for vc in [vc1, vc2, vc3, vc4] {
            vc.navigationBar.prefersLargeTitles = true
        }


        // TabBar Title:
        charactersVC.title = "Characters"
        locationsVC.title = "Locations"
        espisodesVC.title = "Episodes"
        settingsVC.title = "Settings"
        
        self.tabBar.tintColor = .label
        self.tabBar.isTranslucent = false
        self.tabBar.tintColor = UIColor(red:  0.494, green: 0.69, blue: 0.608, alpha: 1.0)
           

        // Set of View Controllers in App   // wpisanie kontrollera w tablice powoduje jego dodanie do poziomej listy
        setViewControllers(
            [vc1, vc2, vc3, vc4], animated: true)
        
    }
}

