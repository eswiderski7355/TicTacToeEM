//
//  ViewController.swift
//  TicTacToeEM
//
//  Created by mobileapps on 3/16/15.
//  Copyright (c) 2015 mobileapps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var player = 1
    let o = UIImage(named: "o")
    let x = UIImage(named: "x")
    let p = UIImage(named: "placeHolder")
    var numberOfRounds = 0
    
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //game
    
    var button = UIButton()
    func player1()
    {
    button.setImage(o, forState: .Normal)
    player = 2
    button.enabled = false
    numberOfRounds++
    }
    func player2(){
        button.setImage(x, forState: .Normal)
        player = 1
        button.enabled = false
        numberOfRounds++
    }
    //Start Over
    
     func startover() {
        numberOfRounds = 0
        one.setImage(p, forState: .Normal)
        one.enabled = true
        two.setImage(p, forState: .Normal)
        two.enabled = true
        three.setImage(p, forState: .Normal)
        three.enabled = true
        four.setImage(p, forState: .Normal)
        four.enabled = true
        five.setImage(p, forState: .Normal)
        five.enabled = true
        six.setImage(p, forState: .Normal)
        six.enabled = true
        seven.setImage(p, forState: .Normal)
        seven.enabled = true
        eight.setImage(p, forState: .Normal)
        eight.enabled = true
        nine.setImage(p, forState: .Normal)
        nine.enabled = true
    }

    
    //alert
    
        func oAlert()
        {
            var winnerO = UIAlertController(title: "O wins!", message: nil, preferredStyle: .Alert)
            
            var oAction = UIAlertAction(title: "Play Again", style: .Default, handler: {action in self.startover()})
            winnerO.addAction(oAction)
            
            self.presentViewController(winnerO, animated: true, completion: nil)
        }
        func xAlert()
        {
            var winnerX = UIAlertController(title: "X wins!", message: nil, preferredStyle: .Alert)
        
            var xAction = UIAlertAction(title:"Play Again" , style: .Default, handler: {action in self.startover()})
            winnerX.addAction(xAction)
        
            self.presentViewController(winnerX, animated: true, completion: nil)
        }

        func tieAlert()
        {
            var winnerTie = UIAlertController(title: "Tie!", message: nil, preferredStyle: .Alert)
        
            var tieAction = UIAlertAction(title: "Play Again", style: .Default, handler: {action in self.startover()})
            winnerTie.addAction(tieAction)
        
            self.presentViewController(winnerTie, animated: true, completion: nil)
        }
    
    //Check
    
    func CheckwinnerO()
    {
        if one.imageView?.image == o && two.imageView?.image == o && three.imageView?.image == o
        {
            oAlert()
        }
        else if four.imageView?.image == o && five.imageView?.image == o && six.imageView?.image == o
        {
            oAlert()
        }
        else if seven.imageView?.image == o && eight.imageView?.image == o && nine.imageView?.image == o
        {
            oAlert()
        }
        else if one.imageView?.image == o && four.imageView?.image == o && seven.imageView?.image == o
        {
            oAlert()
        }
        else if two.imageView?.image == o && five.imageView?.image == o && eight.imageView?.image == o
        {
            oAlert()
        }
        else if three.imageView?.image == o && six.imageView?.image == o && nine.imageView?.image == o
        {
            oAlert()
        }
        else if one.imageView?.image == o && five.imageView?.image == o && nine.imageView?.image == o
        {
            oAlert()
        }
        else if three.imageView?.image == o && five.imageView?.image == o && seven.imageView?.image == o
        {
            oAlert()
        }

    }
    
        func CheckwinnerX()
        {
        if one.imageView?.image == x && two.imageView?.image == x && three.imageView?.image == x
        {
            xAlert()
        }
        else if four.imageView?.image == x && five.imageView?.image == x && six.imageView?.image == x
        {
            xAlert()
        }
        else if seven.imageView?.image == x && eight.imageView?.image == x && nine.imageView?.image == x
        {
            xAlert()
        }
        else if one.imageView?.image == x && four.imageView?.image == x && seven.imageView?.image == x
        {
            xAlert()
        }
        else if two.imageView?.image == x && five.imageView?.image == x && eight.imageView?.image == x
        {
            xAlert()
        }
        else if three.imageView?.image == x && six.imageView?.image == x && nine.imageView?.image == x
        {
            xAlert()
        }
        else if one.imageView?.image == x && five.imageView?.image == x && nine.imageView?.image == x
        {
            xAlert()
        }
        else if three.imageView?.image == x && five.imageView?.image == x && seven.imageView?.image == x
        {
            xAlert()
        }
    }
    
    func tie()
    {
        if numberOfRounds == 9
        {
            tieAlert()
        }
    }

    //Buttons
  
    @IBAction func buttonOne(button1: UIButton) {
            button = button1
            if player == 1
            {
                player1()
            }
            else if player == 2
            {
                player2()
            }
            
            CheckwinnerO()
            CheckwinnerX()
            tie()
        
    }
    
    @IBAction func buttonTwo(button2: UIButton) {
        button = button2
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        
        CheckwinnerO()
        CheckwinnerX()
        tie()
    }

    @IBAction func buttonThree(button3: UIButton) {
        button = button3
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        
        CheckwinnerO()
        CheckwinnerX()
        tie()
    }

    @IBAction func buttonFour(button4: UIButton) {
        button = button4
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        CheckwinnerO()
        CheckwinnerX()
        tie()
    }
    
    @IBAction func buttonFive(button5: UIButton) {
        button = button5
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        CheckwinnerO()
        CheckwinnerX()
        tie()

    }
    
    @IBAction func buttonSix(button6: UIButton) {
        button = button6
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        CheckwinnerO()
        CheckwinnerX()
        tie()
    }
    
    @IBAction func buttonSeven(button7: UIButton) {
        button = button7
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        CheckwinnerO()
        CheckwinnerX()
        tie()
    }
    
    @IBAction func buttonEight(button8: UIButton) {
        button = button8
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        CheckwinnerO()
        CheckwinnerX()
        tie()
    }
    @IBAction func buttonNine(button9: UIButton) {
        button = button9
        if player == 1
        {
            player1()
        }
        else if player == 2
        {
            player2()
        }
        CheckwinnerO()
        CheckwinnerX()
        tie()
    }
}





















