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
    var randomInt = 0
    @IBOutlet weak var randomLabel: UILabel!
    
    var allArray: [Int] = []
    
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
        randomInt = 1000*randomInt1 + 100 * randomInt2 + 10 * randomInt3 + randomInt4
        randomLabel.text = String(randomInt)
        print(randomInt)
        
        for s in 1..<7 {
            for h in 1..<7 {
                for t in 1..<7 {
                    for o in 1..<7{
                        allArray.append(s*1000 + h*100 + t*10 + o)
                    }
                }
            }
        }
        
        var firstArray: [Int] = []
        
        for hikaku in allArray {
            if(hikaku/1000 == randomInt/1000){
                firstArray.append(hikaku)
            }
        }
        
        for hit in 0...4{
            for blow in 0...4{
                createhitBlowArray(hit: hit, blow: blow)
            }
        }
        
        print(hitBlowArray)
        allArray = hitBlowArray[0][0]
        print(allArray)
        hitBlowArray = [[[],[],[],[],[]],[[],[],[],[],[]],[[],[],[],[],[]],[[],[],[],[],[]],[[],[],[],[],[]]]  
    }
    
    
    func createhitBlowArray(hit: Int, blow: Int){
        if(hit == 0){
            for hikaku in allArray {
                if(hikaku/1000 != randomInt/1000){
                    if(hikaku/100%10 != randomInt/100%10){
                        if(hikaku/10%10 != randomInt/10%10){
                            if(hikaku%10 != randomInt%10){
                                if(blow == 0){ // once
                                    hitBlowArray[hit][countHitColor(hikaku: hikaku)].append(hikaku)
                                }
                            }
                        }
                    }
                }
            }
        }else if(hit == 1){
            for hikaku in allArray {
                if(((hikaku/1000 == randomInt/1000) && (hikaku/100%10 != randomInt/100%10) && (hikaku/10%10 != randomInt/10%10) && (hikaku%10 != randomInt%10)) || ((hikaku/1000 != randomInt/1000) && (hikaku/100%10 == randomInt/100%10) && (hikaku/10%10 != randomInt/10%10) && (hikaku%10 != randomInt%10)) || ((hikaku/1000 != randomInt/1000) && (hikaku/100%10 != randomInt/100%10) && (hikaku/10%10 == randomInt/10%10) && (hikaku%10 != randomInt%10)) || ((hikaku/1000 != randomInt/1000) && (hikaku/100%10 != randomInt/100%10) && (hikaku/10%10 != randomInt/10%10) && (hikaku%10 == randomInt%10))){
                    if(blow == 0){ // once
                        hitBlowArray[hit][countHitColor(hikaku: hikaku)-1].append(hikaku)
                    }
                }
            }
        }else if(hit == 2){
            for hikaku in allArray {
                if(((hikaku/1000 == randomInt/1000) && (hikaku/100%10 == randomInt/100%10) && (hikaku/10%10 != randomInt/10%10) && (hikaku%10 != randomInt%10)) || ((hikaku/1000 == randomInt/1000) && (hikaku/100%10 != randomInt/100%10) && (hikaku/10%10 == randomInt/10%10) && (hikaku%10 != randomInt%10)) || ((hikaku/1000 == randomInt/1000) && (hikaku/100%10 != randomInt/100%10) && (hikaku/10%10 != randomInt/10%10) && (hikaku%10 == randomInt%10)) || ((hikaku/1000 != randomInt/1000) && (hikaku/100%10 == randomInt/100%10) && (hikaku/10%10 == randomInt/10%10) && (hikaku%10 != randomInt%10)) || ((hikaku/1000 != randomInt/1000) && (hikaku/100%10 == randomInt/100%10) && (hikaku/10%10 != randomInt/10%10) && (hikaku%10 == randomInt%10)) || ((hikaku/1000 != randomInt/1000) && (hikaku/100%10 != randomInt/100%10) && (hikaku/10%10 == randomInt/10%10) && (hikaku%10 == randomInt%10))){
                    if(blow == 0){ // once
                        hitBlowArray[hit][countHitColor(hikaku: hikaku)-2].append(hikaku)
                    }
                }
            }
        }else if(hit == 3){
            for hikaku in allArray {
                if(((hikaku/1000 != randomInt/1000) && (hikaku/100%10 == randomInt/100%10) && (hikaku/10%10 == randomInt/10%10) && (hikaku%10 == randomInt%10)) || ((hikaku/1000 == randomInt/1000) && (hikaku/100%10 != randomInt/100%10) && (hikaku/10%10 == randomInt/10%10) && (hikaku%10 == randomInt%10)) || ((hikaku/1000 == randomInt/1000) && (hikaku/100%10 == randomInt/100%10) && (hikaku/10%10 != randomInt/10%10) && (hikaku%10 == randomInt%10)) || ((hikaku/1000 == randomInt/1000) && (hikaku/100%10 == randomInt/100%10) && (hikaku/10%10 == randomInt/10%10) && (hikaku%10 != randomInt%10))){
                    if(blow == 0){ // once
                        hitBlowArray[hit][countHitColor(hikaku: hikaku)-3].append(hikaku)
                    }
                }
            }
        }else{
            for hikaku in allArray {
                if(hikaku/1000 == randomInt/1000){
                    if(hikaku/100%10 == randomInt/100%10){
                        if(hikaku/10%10 == randomInt/10%10){
                            if(hikaku%10 == randomInt%10){
                                if(blow == 0){ // once
                                    hitBlowArray[hit][0].append(hikaku)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    func countHitColor(hikaku: Int) -> Int{
        var count = 0
        for searchColor in 1...6{
            var randomCount = 0
            if(searchColor == randomInt/1000){
                randomCount += 1
            }
            if(searchColor == randomInt/100%10){
                randomCount += 1
            }
            if(searchColor == randomInt/10%10){
                randomCount += 1
            }
            if(searchColor == randomInt%10){
                randomCount += 1
            }
            var hikakuCount = 0
            if(searchColor == hikaku/1000){
                hikakuCount += 1
            }
            if(searchColor == hikaku/100%10){
                hikakuCount += 1
            }
            if(searchColor == hikaku/10%10){
                hikakuCount += 1
            }
            if(searchColor == hikaku%10){
                hikakuCount += 1
            }
            if(randomCount <= hikakuCount){
                count += randomCount
            }else{
                count += hikakuCount
            }
        }
        return count
    }
    


}

