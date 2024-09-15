//  HOMEWORK 2
//  Umut Birinci

func Question1(degree:Double)->Double{
    return (degree * 1.8) + 32
}

func Question2(shortEdge:Float,longEdge:Float){
    let perimeter = shortEdge * longEdge
}

func Question3(number:Int)->Int{
    
    if number == 0{
        return 1
    } else {
        return number * Question3(number:number-1)
    }
    
}

func Question4(word:String){
    
    var counter = 0
    var word = word.lowercased()
    for index in word.indices {
        if word[index] == "a"{
            counter = counter + 1
        }
    }
}


func Question5(sidesCount:Int)->Int{
    
    var interiorSum : Int = 0
    if sidesCount<3{
        print("The number of sides cannot be less than three")
    }else{
        interiorSum = (sidesCount-2)*180
    }
    return interiorSum
}

func Question6(day:Int)->Int{
    
    var totalHours = day * 8
    var extraHours = totalHours - 160
    var normalHours = totalHours - extraHours
    
    return (normalHours*10) + (extraHours*20)
}

func Question7(quota:Int)->Int{
    
    var overQuota = quota-50
    var fee = 0
    
    if quota<50{
        return 100
    }else{
        return 100 + (overQuota * 4)
    }

}


// Tests

Question1(degree: 30)
Question2(shortEdge: 4.5, longEdge: 6.7)
Question3(number: 5)
Question4(word: "asdfa")
Question5(sidesCount: 3)
Question6(day: 30)
Question7(quota: 51)








