//: Playground - noun: a place where people can play

import UIKit

// changing this to a struct will make it value semantic
class Temperature {
    var temp = 0
}

//Struct having a class
struct Pan {
    var temp:Temperature
}

//Struct having a class
struct Oven {
    var temperature: Temperature
}

//initing a class
var t = Temperature()
t.temp = 50

//initing a temp with a class inside
var pan = Pan(temp: t)

//printing before changing class value of class
print("\(pan.temp.temp)")

//changing the temperature
t.temp = 60

//oven initialized with the changed temperature.
var oven = Oven(temperature: t)

//pan's temperature have changed (so reference semantics at work)
print("\(pan.temp.temp)")

//oven's temp as expected is the changed value
print("\(oven.temperature.temp)")

