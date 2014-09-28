//
//  ViewController.swift
//  QuoteOfTheDay
//
//  Created by Brendan McDonald on 9/23/14.
//  Copyright (c) 2014 Dangerous Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quoteText: UILabel!
    @IBOutlet weak var quoteAuthor: UILabel!
    @IBOutlet weak var quoteButton: UIButton!
    
    let quoteBook = QuoteBook()
    let colors = Colors()
    
    func displayNextQuote(){
        var nextQuoteIs = quoteBook.randomQuote()
        
        quoteText.text = nextQuoteIs.quote
        quoteAuthor.text = nextQuoteIs.author
        
    }
    
    func updateBackgroundColorAndButtonTint(){
        var randomColor = colors.randomColor()
        
        view.backgroundColor = randomColor
        quoteButton.tintColor = randomColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        displayNextQuote()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextQuote() {
        var randomColor = colors.randomColor()
        
        view.backgroundColor = randomColor
        //quoteText.tintColor = randomColor
        
        var nextQuoteIs = quoteBook.randomQuote()
        
        quoteText.text = nextQuoteIs.quote
        quoteAuthor.text = nextQuoteIs.author
        
        //quoteText.text = quoteBook.randomQuote().quote
        //quoteAuthor.text = quoteBook.randomQuote().author
        
    }

}

