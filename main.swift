//
//  main.swift
//  Protocol and Delegate
//



protocol AdvancedLifeSupport {
    func performCPR()
}


class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    
    func assessSituation() {
        print("Can you tell me what happend?")
    }
    
   
    func meducalEmergency() {
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second")
    }
}

class Doctor: AdvancedLifeSupport {
    
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per secind")
    }
    func useStetThescope() {
        print("Listening for heart sounds")
    }
    
    
}

class Sugreon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staing alive by the BeeGees")
    }
    func useElectricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let angela = Sugreon(handler: emilio)

emilio.assessSituation()
emilio.meducalEmergency()
emilio.assessSituation()
