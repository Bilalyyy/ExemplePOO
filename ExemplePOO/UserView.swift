//
//  UserView.swift
//  ExemplePOO
//
//  Created by bilal on 21/12/2021.
//

import UIKit


@IBDesignable
class UserView: UIView {
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var imageV: RoundedImage!

    
    var color : UIColor = .lightGray
    var user : User! {
        didSet {
            nameLbl.text = user.fullName()
            imageV.image = user.image
            ageLbl.text = user.ageString
        }
    }
    
    @IBInspectable var raduis: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = raduis
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var bordercolor: UIColor = .clear {
        didSet {
            self.layer.borderColor = bordercolor.cgColor
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .systemGray

    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = color
    }
    
}
