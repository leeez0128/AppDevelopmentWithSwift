//
//  ViewController.swift
//  MemeMaker
//
//  Created by 이주원 on 2020/12/29.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    let topChoices : [CaptionOption] = [CaptionOption(emoji: topEmoji.red.emoji, caption: topEmoji.red.caption), CaptionOption(emoji: topEmoji.yellow.emoji, caption: topEmoji.yellow.caption), CaptionOption(emoji: topEmoji.blue.emoji, caption: topEmoji.blue.caption)]
    let bottomChoices : [CaptionOption] = [CaptionOption(emoji: bottomEmoji.top.emoji, caption: bottomEmoji.top.caption), CaptionOption(emoji: bottomEmoji.bottom.emoji, caption: bottomEmoji.bottom.caption)]
    
    @IBAction func segmentedClicked(_ sender: Any) {
        printLabel()
        imagePicker()
    }
    
    func printLabel()  {
        switch topCaptionSegmentedControl.selectedSegmentIndex {
        case 0:
            topCaptionLabel.text = topChoices[0].caption
        case 1:
            topCaptionLabel.text = topChoices[1].caption
        case 2:
            topCaptionLabel.text = topChoices[2].caption
        default:
            topCaptionLabel.text = "Pick a color for your clothes."
        }
            
        switch bottomCaptionSegmentedControl.selectedSegmentIndex {
        case 0:
            bottomCaptionLabel.text = bottomChoices[0].caption
        case 1:
            bottomCaptionLabel.text = bottomChoices[1].caption
        default:
            bottomCaptionLabel.text = "Do you want a top or a bottom?"
        }
    }
    
    func imagePicker() {
        if topCaptionSegmentedControl.selectedSegmentIndex == 0 &&
            bottomCaptionSegmentedControl.selectedSegmentIndex == 0{
            imageView.image = UIImage(named: "redTop.jpg")
        }
        if topCaptionSegmentedControl.selectedSegmentIndex == 0 &&
            bottomCaptionSegmentedControl.selectedSegmentIndex == 1{
            imageView.image = UIImage(named: "redPants.jpg")
        }
        if topCaptionSegmentedControl.selectedSegmentIndex == 1 &&
            bottomCaptionSegmentedControl.selectedSegmentIndex == 0{
            imageView.image = UIImage(named: "yellowTop.jpg")
        }
        if topCaptionSegmentedControl.selectedSegmentIndex == 1 &&
            bottomCaptionSegmentedControl.selectedSegmentIndex == 1{
            imageView.image = UIImage(named: "yellowPants.jpg")
        }
        if topCaptionSegmentedControl.selectedSegmentIndex == 2 &&
            bottomCaptionSegmentedControl.selectedSegmentIndex == 0{
            imageView.image = UIImage(named: "blueTop.jpg")
        }
        if topCaptionSegmentedControl.selectedSegmentIndex == 2 &&
            bottomCaptionSegmentedControl.selectedSegmentIndex == 1{
            imageView.image = UIImage(named: "bluePants.jpg")
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topCaptionSegmentedControl.removeAllSegments()
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        
        bottomCaptionSegmentedControl.removeAllSegments()
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        printLabel()
        
    }
    

}

