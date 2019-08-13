msgbox ("Obrigado pelo download."), vbinformation, "Obrigado!"
msgbox ("Muitos tutoriais e aulas em nosso canal youtube - www.youtube.com/ArphanetBR"), vbinformation, "Nosso canal ArphanetBR no youtube"
msgbox ("Muitos downloads em - www.arphanet.org"), vbinformation, "Nosso site ArphanetBR"
msgbox ("Sua visita é sempre bem vinda! Obrigado."), vbinformation, "ArphanetBR"

Set variable = CreateObject("WScript.Shell")
variable.Run "http://www.youtube.com/subscription_center?add_user=ArphanetBR"
Set variable = CreateObject("WScript.Shell")
variable.Run "www.arphanet.org"