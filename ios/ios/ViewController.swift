//
//  ViewController.swift
//  ios
//
//  Created by اسرارالحق  on 25/11/2020.
//

import UIKit
import React

class ViewController: UIViewController {

    let button: UIButton = {
        let btn = UIButton()
        btn.setTitle("Load React-Native View", for: .normal)
        btn.layer.cornerRadius = 20
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.black.cgColor
        btn.backgroundColor = .darkGray
        btn.setTitleColor(.white, for: .normal)
        
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        button.frame = CGRect(x: 0, y: 0, width: view.frame.size.width - 100, height: 60)
        button.center = view.center
        view.addSubview(button)
        button.addTarget(self, action: #selector(highScoreButtonTapped), for: .touchUpInside)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
         highScoreButtonTapped()
    }
     @objc func highScoreButtonTapped() {
        NSLog("Hello")
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
                                        [
                                            ["name":"Alex", "value":"42"],
                                            ["name":"Joel", "value":"10"]
                                        ]
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation!,
            moduleName: "RNApp",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }

}

