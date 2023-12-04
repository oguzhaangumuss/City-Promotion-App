//
//  ViewController.swift
//  SehirTanitimKitabi
//
//  Created by Oğuzhan Gümüş on 28.09.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
       // Sehirler
    let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "istanbul")!)
    let denizli = Sehir(isim: "Denizli", bolge: "Ege Bölgesi", gorsel: UIImage(named: "pamukkale")!)
    let sanliurfa = Sehir(isim: "Şanlıurfa", bolge: "Güney Anadolu Bölgesi", gorsel: UIImage(named: "sanliurfa")!)
    let antalya = Sehir(isim: "Antalya", bolge: "Akdeniz Bölgesi", gorsel: UIImage(named: "antalya")!)
    let rize = Sehir(isim: "Rize", bolge: "Karadeniz Bölgesi", gorsel: UIImage(named: "rize")!)
    let nevsehir = Sehir(isim: "Nevşehir", bolge: "Doğu Anadolu Bölgesi",gorsel:UIImage(named:"nevsehir")!)
       
    
    sehirDizisi = [istanbul,denizli,sanliurfa,antalya,rize,nevsehir]
        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
        //print("seçim yapıldı" , kullaniciSecimi?.gorsel)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "toDetailVC" {
            let destinationVC = segue.destination as! DetailsViewControl
            destinationVC.secilenSehir = kullaniciSecimi
            print(kullaniciSecimi?.isim,kullaniciSecimi?.bolge,kullaniciSecimi?.gorsel)
        }
        else {print ("hata burda")}
    }

}

