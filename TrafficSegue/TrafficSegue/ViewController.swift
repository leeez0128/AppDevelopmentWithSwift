//
//  ViewController.swift
//  TrafficSegue
//
//  Created by 이주원 on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //이건 exit 이용해서 화면 전환하고 싶을 때
    //목적지 뷰컨트롤러에 이름 짓고
    //스토리보드에서 출발하는 뷰에서 exit으로
    //세그웨이 연결하면 됨
    @IBAction func unwindToRed(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }

    //이건 출발하는 뷰에 적는거고
    //출발하는 뷰에서 어떤 데이터를 갖고 넘어갈 때 작성
    //어디에서 출발해서 어디로 갈건지 정해졌고 그걸 실제로 동작시키기 전에,
    //그 직전에 호출되는 메소드
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.destination.navigationItem.title = textField.text
//    }
//    
    
    
    @IBOutlet weak var segueSwitch: UISwitch!

    
    @IBAction func yellowButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Yellow", sender: self)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "Green", sender: self)
        }
    }
    
    
}

