import UIKit

class MessageDecryptor: NSObject {
    
    func decryptMessage(_ message: String) -> String {
        var textOfMessage = message
        var number = 0
        var text = ""
        var resultText = ""
        var textNumber = ""
        
        for i in textOfMessage{
            if i.isNumber{
                textNumber.append(i)
                textOfMessage.removeFirst()
            } else if i != "[" && i != "]" {
                text.append(i)
            }
            
        }
        if textNumber.isEmpty{
            resultText = text
        } else {
            number = Int(textNumber)!
            while number>0{
                resultText+=text
                number-=1
            }
        }
        
        return resultText
    }
}
