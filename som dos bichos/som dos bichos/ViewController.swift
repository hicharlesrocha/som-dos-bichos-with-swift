//
//  ViewController.swift
//  som dos bichos
//
//  Created by Hicharles Rocha on 25/09/18.
//  Copyright © 2018 Hicharles. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    @IBAction func cao(_ sender: Any) {
        self.tocaSom(som: "cao")
    }
    
    @IBAction func gato(_ sender: Any) {
        self.tocaSom(som: "gato")
    }
    
    @IBAction func leao(_ sender: Any) {
        self.tocaSom(som: "leao")
    }
    
    @IBAction func macaco(_ sender: Any) {
        self.tocaSom(som: "macaco")
    }
    
    @IBAction func ovelha(_ sender: Any) {
        self.tocaSom(som: "ovelha")
    }
    
    @IBAction func vaca(_ sender: Any) {
        self.tocaSom(som: "vaca")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tocaSom(som: String){
        if let path = Bundle.main.path(forResource: som, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
                player.play()
            } catch {
                print("Erro ao execultar o som")
            }
        }
    }


}

