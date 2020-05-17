
import UIKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    private var firstNumber: String = ""
    private var secondNumber: String = ""
    private var operation: String = ""
    private var isFirstNumber = true
    private var isResultCalculated = false
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Actions
    
    @IBAction private func didTapClear(_ sender: UIButton) {
        resultLabel.text = ""
        firstNumber = ""
        secondNumber = ""
        isFirstNumber = true
    }
    
    @IBAction private func didTapResult(_ sender: UIButton) {
        guard let firstNum = Double(firstNumber) else {
          return
        }
        guard let secondNum = Double(secondNumber) else {
          return
        }
        
        switch operation {
        case "+":
            resultLabel.text = String(firstNum + secondNum)
            break
        case "-":
            resultLabel.text = String(firstNum - secondNum)
            break
        case "*":
            resultLabel.text = String(firstNum * secondNum)
            break
        default:
            resultLabel.text = String(firstNum / secondNum)
        }
        
        firstNumber = ""
        secondNumber = ""
        isFirstNumber = true
        isResultCalculated = true
    }
    
    @IBAction private func didTapDivision(_ sender: UIButton) {
        operation = "÷"
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "÷"
        isFirstNumber = false
        
    }
    
    @IBAction private func didTapMultiplication(_ sender: UIButton) {
        operation = "*"
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "*"
        isFirstNumber = false
    }
    
    @IBAction private func didTapDifference(_ sender: UIButton) {
        operation = "-"
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "-"
        isFirstNumber = false
    }
    
    @IBAction private func didTapAmount(_ sender: UIButton) {
        operation = "+"
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "+"
        isFirstNumber = false
    }
    
    @IBAction private func didTap0(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "0"
        if isFirstNumber {
            firstNumber = firstNumber + "0"
        } else {
            secondNumber = secondNumber + "0"
        }
    }
    
    @IBAction private func didTap1(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "1"
        if isFirstNumber {
            firstNumber = firstNumber + "1"
        } else {
            secondNumber = secondNumber + "1"
        }
    }
    
    @IBAction private func didTap2(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "2"
        if isFirstNumber {
            firstNumber = firstNumber + "2"
        } else {
            secondNumber = secondNumber + "2"
        }
    }
    
    @IBAction private func didTap3(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "3"
        if isFirstNumber {
            firstNumber = firstNumber + "3"
        } else {
            secondNumber = secondNumber + "3"
        }
    }
    
    @IBAction private func didTap4(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "4"
        if isFirstNumber {
            firstNumber = firstNumber + "4"
        } else {
            secondNumber = secondNumber + "4"
        }
    }
    
    @IBAction private func didTap5(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "5"
        if isFirstNumber {
            firstNumber = firstNumber + "5"
        } else {
            secondNumber = secondNumber + "5"
        }
    }
    
    @IBAction private func didTap6(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "6"
        if isFirstNumber {
            firstNumber = firstNumber + "6"
        } else {
            secondNumber = secondNumber + "6"
        }
    }
    
    @IBAction private func didTap7(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "7"
        if isFirstNumber {
            firstNumber = firstNumber + "7"
        } else {
            secondNumber = secondNumber + "7"
        }
    }
    
    @IBAction private func didTap8(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "8"
        if isFirstNumber {
            firstNumber = firstNumber + "8"
        } else {
            secondNumber = secondNumber + "8"
        }
    }
    
    @IBAction private func didTap9(_ sender: UIButton) {
        if isResultCalculated {
            resultLabel.text = ""
            isResultCalculated = false
        }
        guard let text = resultLabel.text else {
          return
        }
        resultLabel.text = text + "9"
        if isFirstNumber {
            firstNumber = firstNumber + "9"
        } else {
            secondNumber = secondNumber + "9"
        }
    }
}

