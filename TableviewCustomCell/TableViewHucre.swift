 import UIKit

protocol TableViewHucreProtocol {
    func hucreUzerindekiButonTiklandi(indexPath:IndexPath) //indexPath olarak veri versin hangi satırda olduğunu bize versin
        
    
}

class TableViewHucre: UITableViewCell {

    @IBOutlet weak var labelKisiler: UILabel!
    
    var hucreProtocol:TableViewHucreProtocol? //protocole ulaşmak için nesnele oluşturduk buton içinde tetikliyeceğiz.
    var indexPath:IndexPath?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    @IBAction func butonTikla(_ sender: Any) {
        hucreProtocol?.hucreUzerindekiButonTiklandi(indexPath: indexPath!)
    }
    
}
