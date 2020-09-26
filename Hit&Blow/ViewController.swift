//
//  ViewController.swift
//  Hit&Blow
//
//  Created by 村石拓海 on 2020/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    let randomInt1 = Int.random(in: 1..<7)
    let randomInt2 = Int.random(in: 1..<7)
    let randomInt3 = Int.random(in: 1..<7)
    let randomInt4 = Int.random(in: 1..<7)
    @IBOutlet weak var randomLabel: UILabel!
    
    var hitBlowArray: [[[Int]]] = [[[],[],[],[],[]],[[],[],[],[],[]],[[],[],[],[],[]],[[],[],[],[],[]],[[],[],[],[],[]]]
    let firstResult: [Int] = [20]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        青 = 1
//        赤 = 2
//        緑 = 3
//        黄色 = 4
//        ピンク = 5
//        白 = 6
        
        let randomInt = 1000*randomInt1 + 100 * randomInt2 + 10 * randomInt3 + randomInt4
        randomLabel.text = String(randomInt)
        print(randomInt)
        
        var allArray: [Int] = []
        for s in 1..<7 {
            for h in 1..<7 {
                for t in 1..<7 {
                    for o in 1..<7{
                        allArray.append(s*1000 + h*100 + t*10 + o)
                    }
                }
            }
        }
//        print(allArray)
//        print(allArray[1295])
        
        var firstArray: [Int] = []
        
        for hikaku in allArray {
            if(hikaku/1000 == randomInt/1000){
                firstArray.append(hikaku)
            }
        }
        
//        print(firstArray)
        
        createhitBlowArray(hit: 0, blow: 0)
        createhitBlowArray(hit: 0, blow: 1)
        createhitBlowArray(hit: 4, blow: 4)
        print(hitBlowArray[4][3])
        
        
    }
    
    
    func createhitBlowArray(hit: Int, blow: Int){
        hitBlowArray[hit][blow].append(1111)
        hitBlowArray[hit][blow].append(1112)
        hitBlowArray[hit][blow].append(1113)
    }
    


}

