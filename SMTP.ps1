$EmailTo = "mehualarsenal@gmail.com"
$EmailFrom = "himsahu97@gmail.com"
$Subject = "Test" 
$Body = "Test Body" 
$SMTPServer = "smtp.gmail.com" 
$filenameAndPath = "C:\Users\Himanshu\Desktop\EMS\screen.bat"
$SMTPMessage = New-Object System.Net.Mail.MailMessage($EmailFrom,$EmailTo,$Subject,$Body)
$attachment = New-Object System.Net.Mail.Attachment($filenameAndPath)
$SMTPMessage.Attachments.Add($attachment)
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587) 
$SMTPClient.EnableSsl = $true 
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("himsahu97", "9752999190sahu");
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = { return $true } 
$SMTPClient.Send($SMTPMessage)