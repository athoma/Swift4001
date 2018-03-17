//: Playground - noun: a place where people can play

import UIKit


var states = [String: String]()
states["MO"] = "Missouri"
states["PA"] = "Pennsylvania"
states["CA"] = "California"
for (abbrev, state) in states {
    print("\(abbrev) is \(state)")
}
let stateAbbre = [String](states.keys)
for item in stateAbbre {
    print(item)
}
states["PA"] = nil
states.removeValue(forKey: "MO")
for (abbrev, state) in states {
    print("\(abbrev) is \(state)")
}
