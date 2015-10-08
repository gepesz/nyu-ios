//
//  utility.swift
//  user_input
//
//  Created by Peter on 10/4/15.
//  Copyright © 2015 PETER. All rights reserved.
//

import Foundation

func getInput() -> String {
    let kb:NSFileHandle = NSFileHandle.fileHandleWithStandardInput()
    let inputData:NSData = kb.availableData
    let strData = NSString(data: inputData, encoding: NSUTF8StringEncoding)
    return strData as! String
}

