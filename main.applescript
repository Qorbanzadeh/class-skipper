(*
    TODO:
        -   test code
        -   production code
*)

-- ask for the environment mode from user
set envModeInput to display dialog "Choose the mode" default answer "test"

if button returned of envModeInput is equal to "Cancel" then
    return
else
    if the text returned of envModeInput is equal to "prod" then
        try
            -- production code
        on error errorText
            display alert "ERROR!" message errorText
        end try
    else
        try
            -- test code
        on error errorText
            display alert "ERROR!" message errorText
        end try
    end if
end if