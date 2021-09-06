-- environment mode
set envMode to displayDialog("Choose the mode: test/prod", "test")

-- working directory
set workingDir to displayDialog("Choose the working directory:", "~/Desktop/")



on mainFunc(mode, workingDir)
        if mode is equal to "prod" then
            try
                displayAlert("Sript is running on:", "Production code")
                (*
                    TODO: write the prod code here!
                *)
            on error errorText
                displayAlert("ERROR!", errorText)
            end try
        else
            try
                displayAlert("Sript is running on:", "Test code")
                (*
                    TODO: write the test code here!
                *)
            on error errorText
                displayAlert("ERROR!", errorText)
            end try
        end if
end mainFunc

on displayAlert(type, msg)
    display alert type message msg
end displayAlert

on displayDialog(msg, defaultAnswer)
    set result to display dialog msg default answer defaultAnswer
    if the button returned of result is equal to "OK" then
        return the text returned of result
    else
        return
    end if
end displayDialog

-- entry point
mainFunc(envMode, workingDir)