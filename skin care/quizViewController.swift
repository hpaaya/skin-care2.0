//
//  quizViewController.swift
//  skin care
//
//  Created by User14 on 2019/1/2.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class quizViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var choiceButtons: [UIButton]!
    @IBOutlet weak var submitButton: UIButton!
    
    var sum = 0
    var questionIndex = 0
    
    let questions = [
        Qna(question:"洗完臉後的肌膚狀態如何：",choice:["很快再出油","T字部位容易出油","無特別不適感","有點緊繃感","緊繃，有時有乾、癢的情況"]),
        Qna(question:"平時兩頰的狀態",choice:["看起來很油亮","稍微乾燥","看起來還好，沒什麼問題","局部微血管擴張皮膚較薄","乾燥、暗沉，有時會脫皮"]),
        Qna(question:"臉部肌膚摸起來感覺如何？",choice:["摸起來粗糙不平滑","T字部位粗糙兩頰乾燥","濕潤有光澤","皮膚薄、脫皮且出現粗糙","表面沒有光澤"]),
        Qna(question:"平時的肌膚狀態：",choice:["毛孔粗大油膩","T字部位毛孔粗大，兩頰幾乎看不到毛孔","油分、水分均衡適中","油脂分泌量少，易有潮紅、發癢現象","毛孔細小"]),
        Qna(question:"臉上出現何種問題：",choice:["長痘子、粉刺","兩頰及眼尾易長斑或細紋","沒什麼斑點或細紋，膚色紅潤","容易過敏、紅腫","全臉乾燥、暗沉，並容易有黑斑、脫皮或細紋"])]
    var skinType = ["屬油性肌膚。此類型肌膚表面看起來油亮，尤其T字部位容易脫妝，由於臉上經常排出油分及水分，毛孔呈現張開狀態，所以摸起來有點粗糙。此外毛孔粗大，易長粉刺、青春痘，也使皮膚表面看起來有點凹凸不平。","臺灣約有70％是混合性肌膚，此類膚質狀況是屬於T字較油但兩頰膚質正常，或兩頰較乾而T字部位正常。呈油性部位皮膚油膩、毛孔粗大；呈乾性部位皮膚較乾燥，毛孔細小。可能會有些痘痘、斑點或皺紋的情形。\n中性肌膚是最令人羨慕的膚質，不但膚色紅潤健康，並且有光澤，皮膚紋路細緻，沒有斑點、面皰等問題，其油分及水分均衡適中，毛孔較看不見，是最理想的皮膚狀態。\n而敏感性肌膚則是兩頰皮膚特別薄，微血管明顯，容易泛紅、起小疹子、乾燥，嚴重時還會脫皮。使用保養品容易有敏感不適的現象。如紅、腫、癢、痛等現象。所以選擇保養品要特別小心。","乾性肌膚的人，臉上看起來乾燥沒有光澤，使化妝品不易附著，油分和水分都缺乏，冬天氣候寒冷乾燥皮膚情況也跟著惡化，嚴重時有脫皮現象，皮膚薄而脆弱，使用不當保養品會有緊繃或刺痛感。保水較差，易長小細紋(尤其是眼尾及嘴角)或斑點多，不過臉上毛細孔看起來較小。"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = questions[0].question
        choiceButtons[0].setTitle(questions[0].choice[0], for: .normal)
        choiceButtons[0].titleLabel?.numberOfLines = 0
        choiceButtons[1].setTitle(questions[0].choice[1], for: .normal)
        choiceButtons[1].titleLabel?.numberOfLines = 0
        choiceButtons[2].setTitle(questions[0].choice[2], for: .normal)
        choiceButtons[2].titleLabel?.numberOfLines = 0
        choiceButtons[3].setTitle(questions[0].choice[3], for: .normal)
        choiceButtons[3].titleLabel?.numberOfLines = 0
        choiceButtons[4].setTitle(questions[0].choice[4], for: .normal)
        choiceButtons[4].titleLabel?.numberOfLines = 0
        submitButton.isHidden = true
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if sender.tag == 5 {
            sum = sum + 5
            if questionIndex == 4 {
                submitButton.isHidden = false
            }
            else {
                submitButton.isHidden = true
            }
        }
        if sender.tag == 4 {
            if questionIndex == 4 {
                submitButton.isHidden = false
            }
            else {
                submitButton.isHidden = true
            }
            sum = sum + 4
        }
        if sender.tag == 3 {
            if questionIndex == 4 {
                submitButton.isHidden = false
            }
            else {
                submitButton.isHidden = true
            }
            sum = sum + 3
        }
        if sender.tag == 2 {
            if questionIndex == 4 {
                submitButton.isHidden = false
            }
            else {
                submitButton.isHidden = true
            }
            sum = sum + 2
        }
        if sender.tag == 1 {
            if questionIndex == 4 {
                submitButton.isHidden = false
            }
            else {
                submitButton.isHidden = true
            }
            sum = sum + 1
        }
        nextQuestion()
    }
    
    func nextQuestion(){
        var choiceIndex = 0
        if questionIndex < questions.count - 1{
            questionIndex = questionIndex + 1
            questionLabel.text = questions[questionIndex].question
            for i in 0..<choiceButtons.count{
                choiceButtons[i].setTitle(questions[questionIndex].choice[choiceIndex], for: .normal)
                choiceIndex = choiceIndex + 1
                
            }
        }
    }
    
    @IBAction func submitButtonPress(_ sender: Any) {
        alter()
    }
    
    func alter(){
        var message = ""
        if sum > 23{
            message = skinType[0]
        }
        else if sum < 7{
            message = skinType[2]
        }
        else{
            message = skinType[1]
        }
        let alertController = UIAlertController(
            title: "測驗結束", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "確認", style: .default,
            handler:{
                (action: UIAlertAction!) -> Void in
        })
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as? productSelectViewController
        controller?.sum = self.sum
        //print(sum)
    }
    
    @IBAction func unwindToquizViewController(segue: UIStoryboardSegue){
    }

}
