//
//  ViewController.swift
//  MidTermQuestion1
//
//  Created by 李铭琛 on 3/18/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var wonders : [Wonder] = [
        Wonder(name: "Colosseum", city: "Italy", descrip: "The Colosseum of Rome is one of the most iconic structures in all of history. It was constructed from sand and stone over eight years, (72 AD to 80 AD),  commissioned by Emperor Vespasian, and the city initially named it the Flavian Amphitheater. The Colosseum stands today near the very center of Rome and still stands tall, offering visitors a glimpse into the past. The Colosseum was a place to host grand events such as gladiator fights and public executions. It had a seating capacity of over 50,000 people, with some speculation that more than 100,000 people could fit in its sizeable elliptical design. Under Emperor Titus, the first games included athletic performances, tragic dramas, and wild animal hunts. Gladiators from all over Italy came to show off their skills in battle, creating an exciting pastime for the citizens of Rome."),
        Wonder(name: "The Great Wall Of China", city: "China", descrip: "The Great Wall of China is one of the world's most ancient and impressive wonders. Spanning more than 13,000 miles across some of China's most challenging terrain. The history behind this spectacular structure dates back over 2,000 years, when Qin Shi Huang, the First Emperor of China, erected it. The primary purpose behind building the wall was to protect Chinese territories from foreign invaders such as Mongols and Manchu armies. After his reign, successive emperors added to it—including watchtowers, battlements, and parapets."),
        Wonder(name: "The Taj Mahal", city: "India", descrip: "The Taj Mahal is a grand monument in world history and one of the Seven Wonders of the World. Mughal Emperor Shah Jahan built it in memory of his beloved wife, Mumtaz Mahal, who died from childbearing complications. The construction began in 1632 and took around 20 years to complete. The Taj Mahal is on the banks of River Yamuna near Agra and is an architectural masterpiece that combines elements from both Islamic and Hindu traditions."),
        Wonder(name: "Christ The Redeemer", city: "Brazil", descrip: "Christ the Redeemer in Rio de Janeiro, Brazil, is a massive statue of Jesus Christ atop Corcovado Mountain. It stands 98 feet tall and has become one of the world's most venerated symbols of Brazilian culture and faith. This breathtaking monument's story began in the 1850s when a group of Catholics proposed erecting a symbolic representation of Christianity as a sign of gratitude towards God for protecting Brazil during WWI."),
        Wonder(name: "Machu Picchu", city: "Peru", descrip: "Machu Picchu is an ancient Incan city located in Peru and one of the most spectacular archaeological sites in the world. Construction finished around 1450 CE, during the reign of the Inca Emperor Pachacuti, and its likely function was for religious and administrative purposes. American explorer Hiram Bingham discovered the ruins in 1911 and, since then, the site has seen a steady influx of tourists from all over the world flock to admire Machu Picchu's grandeur. Notably, indigenous people in the area were aware of it and led Hiram to its location."),
        Wonder(name: "Chichén Itzá", city: "Mexico", descrip: "Chichén Itzá is an ancient Mayan city located in the Yucatán Peninsula of Mexico. Built around 600-900 CE, it was once one of the most influential cities of the Mayan civilization. Chichén Itzá played an essential role in trade, and its strategic position allowed it to become an important regional political and economic center. The city is home to some of the most spectacular examples of Mayan architecture, including El Castillo, a large pyramid structure with many symbolic decorations, and various temples featuring intricate carvings on their walls. One unique feature is the Ball Court, which showcases an ancient Mesoamerican game resembling a cross between basketball and soccer."),
        Wonder(name: "Petra", city: "Jordan", descrip: "Petra is an ancient city located in the Kingdom of Jordan, one of the New seven Wonders of the World. Known initially as Raqmu, Petra was built around the 3rd century BC by a tribe of nomads called the Nabataeans. The Nabataeans had experienced architects who made their living by trading spices and incense throughout the Middle East. The city is most famous for its buildings carved directly into sandstone cliffs creating a visual spectacle that fascinates visitors today. Petra's most impressive landmarks are its temples, tombs, and grandest structure Al Khazneh (The Treasury). These structures possess intricate sculptures and handcrafted ornaments observers still marvel at today, even after thousands of years.")
    ]

    @IBOutlet weak var WonderTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return wonders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  Bundle.main.loadNibNamed("TableViewCell", owner: self)?.first as! TableViewCell;
        var w = wonders[indexPath.row]
        cell.img.image = UIImage(named: w.name)
        cell.citylbl.text = w.city
        cell.namelbl.text = w.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueSecondVC", sender: tableView)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueSecondVC" {
            let secondVC = segue.destination as! DetailViewController
            guard let tableView = sender as? UITableView else { return }
            let didSelectRowAt = tableView.indexPathForSelectedRow!.row
            print(didSelectRowAt)
            let descrip = wonders[didSelectRowAt].descrip
            print(descrip)
            secondVC.text = descrip
        }
    }
}

