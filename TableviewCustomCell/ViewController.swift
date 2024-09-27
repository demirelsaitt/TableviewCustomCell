import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    //kisiler sınıfından arraylist oluşturuyoruz çünkü gelicek veri sayısı belirsiz geldikçe ekliyeceğiz
    var kisilerListe = [Kisiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //protokollerle tableView'i bağlıyoruz
        tableView.dataSource = self
        tableView.delegate = self
        //Nesneler oluşturuyoruz
        let k1 = Kisiler(kisiId: 1, kisiAd: "Yunus", kisiTel: "1345")
        let k2 = Kisiler(kisiId: 2, kisiAd: "Ali", kisiTel: "2345")
        let k3 = Kisiler(kisiId: 3, kisiAd: "Ayşe", kisiTel: "3345")
        let k4 = Kisiler(kisiId: 4, kisiAd: "Fatma", kisiTel: "4345")
        let k5 = Kisiler(kisiId: 5, kisiAd: "Mehmet", kisiTel: "5345")
        let k6 = Kisiler(kisiId: 6, kisiAd: "Veli", kisiTel: "6345")
        let k7 = Kisiler(kisiId: 7, kisiAd: "Ahmet", kisiTel: "7345")
        let k8 = Kisiler(kisiId: 8, kisiAd: "Zeynep", kisiTel: "8345")
        let k9 = Kisiler(kisiId: 9, kisiAd: "Murat", kisiTel: "9345")
        let k10 = Kisiler(kisiId: 10, kisiAd: "Selin", kisiTel: "10345")
        
        //append metodu ile arraylist'e nesneleri ekliyoruz
        kisilerListe.append(k1)
        kisilerListe.append(k2)
        kisilerListe.append(k3)
        kisilerListe.append(k4)
        kisilerListe.append(k5)
        kisilerListe.append(k6)
        kisilerListe.append(k7)
        kisilerListe.append(k8)
        kisilerListe.append(k9)
        kisilerListe.append(k10)
    }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //1 bölümden oluşucak
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kisilerListe.count //dizi içindeki elaman sayısı kadar
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucreKisiler", for: indexPath) as! TableViewHucre
        //cell'e eriştik ve kendine özgü bir tableView oluşturduysam as! TableViewHucre yaz
        let gelenKisi = kisilerListe[indexPath.row]
        
        cell.labelKisiler.text = "\(gelenKisi.kisiId!). \(gelenKisi.kisiAd!) - \(gelenKisi.kisiTel!)"
        //cell nesnesi ile istediğin bütün görsel nesnelere ulaşabilirsin.
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secilenKisi = kisilerListe[indexPath.row]
        
        print("ID: \(secilenKisi.kisiId!) ADI: \(secilenKisi.kisiAd!) TELEFON: \(secilenKisi.kisiTel!)")
    }
}
