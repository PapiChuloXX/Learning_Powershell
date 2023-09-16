Set-StrictMode -Version Latest


while ($true){
    Write-Host "Math Tutor Menu"
    Write-Host "------------------------------"
    Write-Host "1. Addition problem"
    Write-Host "2. Subtraction problem"
    Write-Host "3. Multiplication problem"
    Write-Host "4. Division problem"
    Write-Host "5. Quit this program"
    Write-Host "------------------------------"

    [int]$choice = Read-Host "Enter choice (1-5)"

    Write-Host ""

    if (1 -le $choice -and $choice -le 5){
        if ($choice -eq 1){
            $first_number = Get-Random -Minimum 1 -Maximum 500
            $second_number = Get-Random -Minimum 1 -Maximum 500

            $res = $first_number + $second_number
            
            $width = 6

            $padding = [Math]::Max(0, $width - "$first_number".Length)
            $text1 =  " " * $padding + "$first_number"

            Write-Host "$text1"

            $padding = [Math]::Max(0, $width - "$second_number".Length - 1)
            $text2 =  "+" + " " * $padding + "$second_number"

            Write-Host "$text2"
            Write-Host "------"
            Write-Host ""
        }

        elseif ($choice -eq 2){
            $first_number = Get-Random -Minimum 1 -Maximum 500
            $second_number = Get-Random -Minimum 1 -Maximum 500

            while ($second_number -gt $first_number){
                $second_number = Get-Random -Minimum 1 -Maximum 500
            }

            $res = $first_number - $second_number
            
            $width = 6

            $padding = [Math]::Max(0, $width - "$first_number".Length)
            $text1 =  " " * $padding + "$first_number"

            Write-Host "$text1"

            $padding = [Math]::Max(0, $width - "$second_number".Length - 1)
            $text2 =  "-" + " " * $padding + "$second_number"

            Write-Host "$text2"
            Write-Host "------"
            Write-Host ""
        }

        elseif ($choice -eq 3){
            $first_number = Get-Random -Minimum 1 -Maximum 100
            $second_number = Get-Random -Minimum 1 -Maximum 9

            $res = $first_number * $second_number
            
            $width = 6

            $padding = [Math]::Max(0, $width - "$first_number".Length)
            $text1 =  " " * $padding + "$first_number"

            Write-Host "$text1"

            $padding = [Math]::Max(0, $width - "$second_number".Length - 1)
            $text2 =  "x" + " " * $padding + "$second_number"

            Write-Host "$text2"
            Write-Host "------"
            Write-Host ""
        }

        elseif ($choice -eq 4){
            $second_number = Get-Random -Minimum 1 -Maximum 9
            $first_number = (Get-Random -Minimum 1 -Maximum 50) * $second_number

            $res = $first_number / $second_number
           
            Write-Host "$first_number / $second_number"
            Write-Host ""
        }

        else{
            return "Thanks for using Math tutor."
        }

        $user_ans = Read-Host "Enter answer"

        if ($user_ans -eq $res){
            Write-Host "Congratulations! That's right."
        }

        else{
            Write-Host "Sorry, the correct answer is $res."
        }

        Write-Host ""
    }

    else{
        Write-Host "Error: Invalid input."
        Write-Host ""
    }
}