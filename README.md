# NumberPrinter

![](https://github.com/hgtlzyc/NumberPrinter/blob/e3c97c30f9e5e29276a877744c8291d1048454aa/NumberPrinterDemo.gif)


Code snippet:
```swift
import Foundation

struct NumberPrinter {
    
    
    enum NumComponents: String {
        case dashF = " ------ "
        case bothF = " |      |"
        case leftF = " |       "
       case rightF = "        |"
        case empty = "         "
       case center = "    |    "
    }

    static func generateNumString(_ int: Int) -> String {
        //convert to 2d string array like [ [components for num1], [components for num2] ...]
        let str2DArr = "\(int)".reduce( into: [ [String] ]() ) {
            $0.append( strArrayFor($1).map{$0.rawValue} )
        }
        
        return (0...4).reduce(into: [String]() ) { sum, next in
            //tempArray will be like [all the first elements] or [all the 2nd elements] ...
            var tempArr = [String]()
            str2DArr.forEach { strArray in
                tempArr.append(strArray[next])
            }
            let tempStr = tempArr.reduce(into: "") { $0 = $0 + "    " + $1 }
            sum.append(tempStr)
        }.reduce(into: "") { $0 = $0 + "\n" + $1 }
        
    }

    static func strArrayFor(_ chr: Character ) -> [NumComponents] {
        switch String(chr) {
        case "0":
            return [ .dashF, .bothF, .bothF, .bothF, .dashF ]
        case "1":
            return [ .empty, .center, .center, .center, .empty]
        case "2":
            return [ .dashF, .rightF, .dashF, .leftF, .dashF]
        case "3":
            return [ .dashF, .rightF, .dashF, .rightF, .dashF]
        case "4":
            return [ .empty, .bothF, .dashF, .rightF, .empty]
        case "5":
            return [ .dashF, .leftF, .dashF, .rightF, .dashF]
        case "6":
            return [ .dashF, .leftF, .dashF, .bothF, .dashF]
        case "7":
            return [ .dashF, .rightF, .rightF, .rightF, .empty]
        case "8":
            return [ .dashF, .bothF, .dashF, .bothF, .dashF]
        case "9":
            return [ .dashF, .bothF, .dashF, .rightF, .empty]
        default:
            print("unexpected result")
            return [ .dashF, .dashF, .dashF, .dashF, .dashF ]
        }
    }
}
 
 
```

check my github link for playground version  https://github.com/hgtlzyc/DevMountainStudy/blob/main/PlayGround.playground/Pages/NumberPrinter.xcplaygroundpage/Contents.swift
 
