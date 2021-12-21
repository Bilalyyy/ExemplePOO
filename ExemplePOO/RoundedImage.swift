//
//  RoundedImage.swift
//  ExemplePOO
//
//  Created by bilal on 21/12/2021.
//

import UIKit

class RoundedImage: UIImageView {

    
    override init(frame: CGRect){
        super.init(frame: frame)
//        setupcorner()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupcorner()
    }
    
    func setupcorner() {
        let width = frame.width
        let height = frame.height
        let mini = width >= height ? height : width
        let cornerRaduis = mini / 2
        
        layer.cornerRadius = cornerRaduis
    }
    
    
}
