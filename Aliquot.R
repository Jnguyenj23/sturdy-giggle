#Making a calculator so I dont need to do shit
Aliquot<- function(){
        ps <- as.double(readline(prompt="Enter in percentage (w/v) strength: "))
       
        volume <- as.integer(readline(prompt="Enter in dispense volume (mL): "))
        
        fpa <- (ps/100)*volume
        
        print(paste("Amount of Drug needed", fpa, "g"))
        
        gc <- as.integer(readline(prompt="Enter in graduated cylinder volume used to dilute: "))
        
        ma <- 0.2*gc
        
        print(paste("Minimal measurable amount is 20% of", gc, "is", ma))
        
        print(paste("Measurable amount of pH20 dilution options is from", ma, "to", gc,"mL"))
        
        dv <- as.integer(readline(prompt="Enter in ph20 dilution volume chosen (mL): "))
        
        print("Minimal measurable amount of drug is 120 mg")
        
        mma <- as.double(readline(prompt="Enter in measurable amount of drug (mg): "))
        
        fpa1 <- fpa*1000
        
        fav <- as.double((fpa1*dv)/mma)
        
        print(paste("The final aliquot volume is",fav,"mL"))
}

