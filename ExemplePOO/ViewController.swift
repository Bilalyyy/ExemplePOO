//
//  ViewController.swift
//  ExemplePOO
//
//  Created by bilal on 21/12/2021.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var topImages: [RoundedImage]!
    @IBOutlet weak var mainView: UserView!
    var users: [User] = Datas.shared.allUsers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgColor(.systemCyan)
        mainView.user = users.first
        topImages.forEach { image in
            image.image = users[image.tag].image
            image.isUserInteractionEnabled = true
            image.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imagePressed(_:))))
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mainView.imageV.setupcorner()

    }
    
    
    @objc func imagePressed(_ gesture: UITapGestureRecognizer) {
        guard let tag = gesture.view?.tag else { return }
        let user = users[tag]
        mainView.user = user
    }
}


extension ViewController {
    
    func setBackgColor (_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
