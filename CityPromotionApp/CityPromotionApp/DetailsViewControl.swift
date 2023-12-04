//
//  DetailsViewControl.swift
//  SehirTanitimKitabi
//
//  Created by Oğuzhan Gümüş on 28.09.2023.
//

import UIKit

class DetailsViewControl: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var bolgeLabel: UILabel!
    
    var secilenSehir : Sehir?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = secilenSehir?.isim
        bolgeLabel.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
        
    }
    

  

}
