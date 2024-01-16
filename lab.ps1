$first_name = Read-Host "Enter first name"
 
if ($first_name -eq "Joshua"){
    
    Write-Host "Hello $first_name, welcome to the PowerShell menu system. Please make a choice from the displayed options: "
    Write-Host "" 
 
    $user_input = 0
 
    $count = 0
 
    while ($user_input -ne 5){
 
        if ($user_input -eq 1){
            $PSVersionTable
        }
 
        elseif ($user_input -eq 2){
            $folder = Read-Host "What is the name of the new folder you wish to create on drive C?"
            New-Item -Path $folder -ItemType directory
        }
 
        elseif ($user_input -eq 3){
            $file_name = Read-Host "What is the name of the new file you wish to create?"
            $folder_name = Read-Host "What is the name of the folder you wish to create this file in?"
            $file_path = Join-Path -Path $folder_name -ChildPath $file_name
            New-Item -Path $file_path -ItemType File      
        }
 
        elseif ($user_input -eq 4){
            Get-EventLog -LogName "Windows PowerShell" -Newest 5
        }
 
        if ($count -gt 0){
            pause
            Write-Host ""
 
            Write-Host "Please make a choice from the displayed menu otpions: "
            Write-Host ""
        }
 
        Write-Host "1. Display Version of PowerShell"     
        Write-Host ""
                
        Write-Host "2. Create a New folder"
        Write-Host "" 
 
        Write-Host "3. Create a New file"
        Write-Host "" 
 
        Write-Host "4. Print the 5 Most Recent Entries in the PowerShell Event Log"
        Write-Host "" 
 
        Write-Host "5. Exit the menu system"    
        Write-Host ""   
 
        $user_input = Read-Host "Please Enter Your Choice"
        Write-Host "" 
 
        $count += 1
    }
 
    Write-Host "Have a GREAT day and thank you for using the PowerShell menu system!"
}
 
else{
 
    Write-Host "Hello $first_name, you are not authorized to use this system." -Fore red
}
