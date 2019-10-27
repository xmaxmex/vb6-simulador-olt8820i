VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form1 
   BackColor       =   &H00E0E0E0&
   Caption         =   "Multi Simulador OLT 8820i"
   ClientHeight    =   6345
   ClientLeft      =   11505
   ClientTop       =   1860
   ClientWidth     =   8430
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6345
   ScaleWidth      =   8430
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdAtividade3 
      Caption         =   "Atividade &3"
      Height          =   480
      Left            =   5880
      TabIndex        =   12
      Top             =   4080
      Width           =   1695
   End
   Begin VB.CommandButton cmdAtividade2 
      Caption         =   "Atividade &2"
      Height          =   480
      Left            =   3360
      TabIndex        =   11
      Top             =   4080
      Width           =   1695
   End
   Begin VB.CommandButton cmdAtividade1 
      Caption         =   "Atividade &1"
      Height          =   480
      Left            =   840
      TabIndex        =   10
      Top             =   4080
      Width           =   1695
   End
   Begin VB.CheckBox chkNaoEnviar 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Não enviar ECHO"
      Height          =   195
      Left            =   240
      TabIndex        =   8
      Top             =   1440
      Value           =   1  'Checked
      Width           =   1815
   End
   Begin VB.CommandButton cmdDesligarOLT 
      Caption         =   "&Desligar OLT"
      Height          =   480
      Left            =   3360
      TabIndex        =   6
      Top             =   3360
      Width           =   1695
   End
   Begin VB.CommandButton cmdAbrirOTerminal 
      Caption         =   "Abrir o &Terminal CLI"
      Height          =   480
      Left            =   3360
      TabIndex        =   5
      Top             =   2520
      Width           =   1695
   End
   Begin MSWinsockLib.Winsock Accept 
      Index           =   0
      Left            =   3240
      Top             =   1320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSWinsockLib.Winsock Listen 
      Left            =   3720
      Top             =   1320
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Image Image1 
      Height          =   555
      Left            =   4920
      Picture         =   "Form1.frx":C84A
      Stretch         =   -1  'True
      Top             =   240
      Width           =   3450
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackColor       =   &H00E0E0E0&
      BackStyle       =   0  'Transparent
      Caption         =   "claudemir.luz@intelbras.com.br"
      Height          =   195
      Left            =   6120
      TabIndex        =   13
      Top             =   6000
      Width           =   2190
   End
   Begin VB.Label lblconexoes 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      Height          =   195
      Left            =   7320
      TabIndex        =   9
      Top             =   1440
      Width           =   90
   End
   Begin VB.Label lblVersion 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "1.0.0"
      Height          =   195
      Left            =   7920
      TabIndex        =   7
      Top             =   960
      Width           =   360
   End
   Begin VB.Label lblMulti 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Multi®"
      Height          =   195
      Left            =   120
      MousePointer    =   14  'Arrow and Question
      TabIndex        =   4
      Top             =   6000
      Width           =   450
   End
   Begin VB.Label lblSimulador 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Simulador"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   240
      TabIndex        =   3
      Top             =   720
      Width           =   1065
   End
   Begin VB.Label lblOLT8820 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "OLT 8820i"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   840
      Left            =   120
      TabIndex        =   2
      Top             =   0
      Width           =   3450
   End
   Begin VB.Shape Shape1 
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      Height          =   1215
      Left            =   -120
      Top             =   0
      Width           =   8655
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   3600
      TabIndex        =   1
      Top             =   2040
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Server Active"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   3600
      TabIndex        =   0
      Top             =   1800
      Width           =   1215
   End
   Begin VB.Menu mnuPrincipal 
      Caption         =   "Simulador"
      Begin VB.Menu mnuSair 
         Caption         =   "Sai&r"
      End
   End
   Begin VB.Menu mnuSobre 
      Caption         =   "Sobre"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim UserInfo(1 To 25) As String
Dim SocketStatus(1 To 25) As Integer
Dim ReceivedInfo(1 To 25) As String
Dim WordNo As Integer
Dim theWords(0 To 2) As String


Dim ReceivedInfo2(1 To 25) As String

Dim NOECHO As Boolean


Dim conncount As Integer


Sub SendtoAll(stuff As String)
For a = 1 To 25

If SocketStatus(a) = 1 And UserInfo(a) <> "" Then
Accept(a).SendData stuff
DoEvents

End If
        
        
Next a
End Sub

Private Sub Accept_Close(Index As Integer)
SocketStatus(Index) = 0
UserInfo(Index) = ""
Accept(Index).Close
DoEvents
End Sub

Private Sub Accept_DataArrival(Index As Integer, ByVal bytesTotal As Long)

Dim tmp As String
Dim tmp2 As String

Dim sindex As Integer

Dim tmp4 As String


On Error Resume Next

sindex = Index

Accept(Index).GetData tmp
Debug.Print "xtmp: [" & tmp & "]"
DoEvents


'If Not LOGADO Then
'    Accept(Index).SendData tmp ' ECHOS WHAT IS WRITTEN
'    DoEvents
'End If

If NOECHO = False Then
    Accept(Index).SendData tmp ' ECHOS WHAT IS WRITTEN
    DoEvents
End If


' mostra tudo que é digitado!
'Debug.Print "xtmp: [" & tmp & "]"
'Debug.Print "tmp: [" & Replace(tmp, vbCrLf, "") & "]"

'Debug.Print "r: [" & Right$(tmp, 1) & "]"


If tmp = vbCrLf Or tmp = Chr$(13) Then

    If UserInfo(Index) = "" Then

LOGIN:


        z = 10

        If Len(ReceivedInfo(Index)) < z Then z = Len(ReceivedInfo(Index))

        tmp2 = Trim(Mid$(ReceivedInfo(Index), 1, z))
        tmp2 = Replace(tmp2, " ", "")

     
        tmp3$ = Trim(ReceivedInfo(Index))
            
            
        tmp4 = ReceivedInfo2(Index)
    
        'For y = 1 To 25
            'If UCase$(tmp3$) = UCase$(UserInfo(y)) Then
         '   If UCase$(tmp3$) = "intelbras" Then
         '       Accept(Index).SendData vbCrLf + "This name is already in use." + vbCrLf + "Please enter another: " + vbCrLf
         '       DoEvents
         '       ReceivedInfo(Index) = ""
         '       GoTo skippy
          '  End If
        'Next y
        
        'Debug.Print "1 - entrou if vbcrlf"

        'Call SendtoAll(vbCrLf + "Screen Name: " + tmp2 + " has joined the conversation" + vbCrLf)
    
        UserInfo(Index) = tmp2
    
    
        'Debug.Print "tmp2: [" & tmp2 & "]"
        'Debug.Print "tmp3: [" & tmp3 & "]"
        
        ''Debug.Print "tmp4: [" & tmp4 & "]"
    
    
'LOGIN:
        DoEvents
        If LOGADO = False Then
            Accept(Index).SendData "Login: "
            DoEvents
        End If
    
        UserInfo(Index) = tmp2
        
        ' checa pra ver se o login = intelbras
        If Trim(tmp4) = "intelbras" Or Replace$(tmp, vbCrLf, "") = "intelbras" Or Replace$(tmp, Chr$(13), "") = "intelbras" Or Left(tmp4, 9) = "intelbras" Then
            LOGADO = True
        Else
            LOGADO = False
                        
            ReceivedInfo2(Index) = ""
                                                
            Exit Sub
        End If
        
                        
        
        If LOGADO Then
            'Accept(Index).SendData LOGIN_OK
            Accept(Index).SendData SEND_LOGIN
        End If
        

        
    
        'Accept(Index).SendData vbCrLf + "Welcome to the conversation." + vbCrLf + "Your screen name is: " + tmp2 + vbCrLf
        DoEvents
    
        Call UserLIST(Index)
     
    
        ReceivedInfo(Index) = ""
        
    Else

        '==========EXTRA CHAT COMMANDS. USERLISTING, DESCRIPTIONS, ETC, ETC, ET============
        '==========COULD ALSO INCLUDE SERVER COMMANDS FOR DATA TRANSFER AND THE LIKE=======

       
        'If tmp2 = "intelbras" Then LOGADO = True

        If LOGADO = False Then GoTo LOGIN

        
        Debug.Print "2 - entrou else"


        Debug.Print "ret: [" & UCase$(ReceivedInfo(Index)) & "]"


        ' Proc principal dos comandos do simulador
        'sindex = Index
        Call Processa_CMD_Telnet(UCase$(ReceivedInfo(Index)), sindex)
    

        'Select Case UCase$(ReceivedInfo(Index)) Or Replace$(UCase$(ReceivedInfo(Index)), vbCrLf, "")
   

        '==================================================================================


        ReceivedInfo(Index) = ""

    End If

Else

    Debug.Print "3 - entrou else"

    ReceivedInfo(Index) = ReceivedInfo(Index) + tmp
    
    ReceivedInfo2(Index) = ReceivedInfo2(Index) + tmp
    
    
    If LOGADO = True Then
    
        Call Processa_CMD_Telnet2(UCase$(Replace(tmp, vbCrLf, "")), sindex)
        
    Else
    
        GoTo LOGIN
            
    End If
    

End If


End Sub

Sub PrivateMessage(ff As Integer, info As String)

Call WordCount(info)

If WordNo < 2 Then Accept(ff).SendData vbCrLf + "Syntax Error: /PRIVATE <SCREEN NAME> <MESSAGE>" + vbCrLf: DoEvents: GoTo skip

For i = 1 To 25
    If UCase$(theWords(1)) = UCase$(UserInfo(i)) Then
        Accept(i).SendData vbCrLf + "[Prv.Msg] " + UserInfo(i) + ": " + theWords(2) + vbCrLf
        DoEvents
        GoTo skip
    Else
    End If
Next i
    Accept(ff).SendData vbCrLf + "Data Error: User specified does not exist" + vbCrLf
    DoEvents

skip:
End Sub



Private Sub Accept_Error(Index As Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)

SocketStatus(Index) = 0
UserInfo(Index) = ""
Accept(Index).Close
DoEvents

End Sub

Sub QUITCHAT(x As Integer)

Accept(x).SendData vbCrLf + "Good-bye " + UserInfo(x) + vbCrLf
DoEvents
SocketStatus(x) = 0
SendtoAll (vbCrLf + "Screen name: " + UserInfo(x) + " has left." + vbCrLf)
Accept(x).Close
DoEvents
End Sub


Sub EXITSIM(x As Integer)

    Accept(x).SendData vbCrLf + "Exiting... bye." + vbCrLf
    DoEvents
    
    SocketStatus(x) = 0
    
    'SendtoAll (vbCrLf + "Screen name: " + UserInfo(x) + " has left." + vbCrLf)
    Accept(x).Close

    DoEvents

End Sub

Sub CMD_INVALID(x As Integer)


    '

    'Accept(x).SendData "?Invalid command" & vbCrLf & DPROMPT
    Accept(x).SendData "%% Invalid command" & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_WHO(x As Integer)

    'Accept(x).SendData CMD_WHO & vbCrLf & DPROMPT
    'DoEvents
    Accept(x).SendData CMD_WHO & vbCrLf & "telnet : session 6 (intelbras) from " & Accept(x).RemoteHostIP & vbCrLf & DPROMPT
    DoEvents
    

End Sub


Sub SHOW_CMD_HELP(x As Integer)

    Accept(x).SendData SEND_HELP & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_WHOAMI(x As Integer)

    Dim CMD_WHOAMI As String
    
    CMD_WHOAMI = "telnet : session 6 (intelbras) from "

    Accept(x).SendData CMD_WHOAMI & Accept(x).RemoteHostIP & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_DIR(x As Integer)

    Accept(x).SendData CMD_DIR & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_PWD(x As Integer)

    Accept(x).SendData CMD_PWD & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_CARD(x As Integer)

    Accept(x).SendData CMD_CARD_OPT & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_CARD_SHOW(x As Integer)

    Accept(x).SendData CMD_CARD_SHOW & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_CARD_STATUS(x As Integer)

    Accept(x).SendData CMD_CARD_STATUS & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_SLOTS(x As Integer)

    Accept(x).SendData CMD_SLOTS & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_ROMVERSION(x As Integer)

    Accept(x).SendData CMD_ROMVERSION & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_SWVERSION(x As Integer)

    Accept(x).SendData CMD_SWVERSION & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_INTERFACE_SHOW(x As Integer)

    Accept(x).SendData CMD_INTERFACE_SHOW & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_NO_CMD(x As Integer)

    Accept(x).SendData DPROMPT
    DoEvents

End Sub



'------
Sub SHOW_CMD_SHOWUSER(x As Integer)

    Accept(x).SendData CMD_SHOWUSER & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_SHOW_SYSTEM(x As Integer)

    Accept(x).SendData CMD_SHOW_SYSTEM1 & vbCrLf & CMD_SHOW_SYSTEM2 & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_SHELFCTRL_STATS(x As Integer)

    Accept(x).SendData CMD_SHELF_STATS & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_SHELFCTRL_MONITOR(x As Integer)

    Accept(x).SendData CMD_SHELF_MONITOR & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_ROUTE(x As Integer)

    Accept(x).SendData CMD_ROUT & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_ROUTE_SHOW(x As Integer)

    Accept(x).SendData CMD_ROUTE_SHOW & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_SHOWDATETIME(x As Integer)

    'Accept(x).SendData CMD_SHOWDATETIME & vbCrLf & DPROMPT
    Accept(x).SendData Format(Now, "yyyy-mm-dd HH:MM:SS") & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_SETDATETIME(x As Integer)

    Accept(x).SendData Format(Now, "yyyy-mm-dd HH:MM:SS") & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_SHOWBRIDGE(x As Integer)

    Accept(x).SendData SEND_BRIDGE_SHOW & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_ONUSHOW(x As Integer)

    Accept(x).SendData SEND_ONU_SHOW & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub SHOW_CMD_OLT_SHOW_PORT(x As Integer)

    Accept(x).SendData SEND_OLT_SHOW_PORT & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_ONU_INVENTORY(x As Integer)

    Accept(x).SendData SEND_ONU_INVENTORY & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_CPE_MGR_SHOW(x As Integer)

    Accept(x).SendData SEND_CPE_MGR_SHOW & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_PORT_DESCRIPTION_SHOW(x As Integer)

    Accept(x).SendData SEND_PORT_DESCRIPTION_SHOW & vbCrLf & DPROMPT
    DoEvents

End Sub

Sub SHOW_CMD_PORT_SHOW_GPON_1(x As Integer)

    Accept(x).SendData SEND_PORT_SHOW_GPON_1 & vbCrLf & DPROMPT
    DoEvents

End Sub


Sub UserLIST(x As Integer)

'Accept(x).SendData vbCrLf + "Participating characters:" + vbCrLf
    DoEvents
    
    For a = 1 To 25

        If SocketStatus(a) = 1 Then
        Accept(x).SendData UserInfo(a) + vbCrLf
        DoEvents
        End If
    Next a
End Sub

Private Sub chkNaoEnviar_Click()

If chkNaoEnviar.Value = 1 Then
    NOECHO = True
Else
    NOECHO = False
End If


Debug.Print "NOECHO: " & NOECHO

End Sub

Private Sub cmdAbrirOTerminal_Click()

    On Error Resume Next

    Shell App.Path & "\putty.exe -telnet -P 34 127.0.0.1", vbNormalFocus

End Sub

Private Sub cmdAtividade1_Click()

    ATIVIDADE1 = True

    ' adicionar uma ONU 110
    SendtoAll (vbCrLf & vbCrLf & "Atividade 1" & vbCrLf & vbCrLf & _
                "Uma ONU 110 foi adicionada na porta PON 3" & vbCrLf & _
                vbCrLf & "Você precisa provisionar esta ONU na subporta 128." & vbCrLf & vbCrLf & DPROMPT)
    

End Sub


Private Sub cmdAtividade2_Click()

    ATIVIDADE2 = True

    ' criar uma bridge TLS vlan 1000
    SendtoAll (vbCrLf & vbCrLf & "Atividade 2" & vbCrLf & vbCrLf & _
                "Criar uma Bridge TLS de vlan 3000 na porta PON 8" & vbCrLf & _
                "para a ONU de subporta 128." & vbCrLf & vbCrLf & DPROMPT)
    

End Sub


Private Sub cmdAtividade3_Click()

    ATIVIDADE3 = True

    ' criar uma bridge uplink porta eth 2 vlan 4000
    SendtoAll (vbCrLf & vbCrLf & "Atividade 3" & vbCrLf & vbCrLf & _
                "Criar uma Bridge UPLINK de vlan 4000 na porta Ethernet 2 untagged." & vbCrLf & _
                vbCrLf & DPROMPT)
    

End Sub

Private Sub cmdDesligarOLT_Click()

On Error Resume Next

    DoEvents
    
    
    Call SendtoAll(vbCrLf + "Simulador entrando em processo de Shutdown..." + vbCrLf)
    
    For a = 1 To 25
        
        Accept(a).Close
        DoEvents
        
    Next a


    conncount = 0
    
    lblconexoes.Caption = "conexões: " & conncount
    

End Sub

Private Sub Form_Load()

On Error GoTo ERRO

conncount = 0

lblVersion.Caption = VERSION


' Carrega resources
Carregar_Resource


CMD_ONU_SHOW_1X = vbCrLf & _
"Free ONUs for slot 1 olt " & PON_PORT & ":" & vbCrLf & _
"    1    2    3    4    5    6    7    8    9   10   11   12" & vbCrLf & _
"   13   14   15   16   17   18   19   20   21   22   23   24" & vbCrLf & _
"   25   26   27   28   29   30   31   32   33   34   35   36" & vbCrLf & _
"   37   38   39   40   41   42   43   44   45   46   47   48" & vbCrLf & _
"   49   50   51   52   53   54   55   56   57   58   59   60" & vbCrLf & _
"   61   62   63   64" & vbCrLf & _
"" & vbCrLf & _
"Discovered serial numbers for slot 1 olt " & PON_PORT & ":" & vbCrLf & _
"sernoID   Vendor  Serial Number    Model  Time Discovered" & vbCrLf


'Debug.Print "NOECHO: " & NOECHO
NOECHO = True
Debug.Print "NOECHO: " & NOECHO

' não enviar ECHO
If chkNaoEnviar.Value = 1 Then
'If chkNaoEnviar.Value = 1 Then
    NOECHO = True
Else
    NOECHO = False
End If




Dim Port As Integer
'===COMMAND LINE PORTION==============================
'DarkWindow.exe <Port>
If Command$ = "" Then Port = 34: GoTo 20
Call WordCount(Command$)
If WordNo > 0 And Int(theWords(0)) > 0 Then Port = Int(theWords(0)) Else Port = 34
20

'Anim.Open CurDir$ + "\smile.avi" 'Change this in development environment or it can't find file
'Anim.AutoPlay = True

'========================================================

'==LOAD LISTENING WINSOCK and load ACCEPTING ARRAY=======
For a = 1 To 25
Load Accept(a)
Next a

Label2.Caption = "PORT:" + Str$(Port)
Listen.LocalPort = Port
Listen.Listen
'========================================================

Exit Sub

ERRO:
MsgBox "Atenção! Erro ao iniciar o Simulador!" & vbCrLf & vbCrLf & Err.Number & ": " & Err.Description, vbCritical

Unload Me

End Sub

Private Sub Form_Resize()

On Error Resume Next

Shape1.Width = Me.Width

End Sub

Private Sub Form_Unload(Cancel As Integer)
Close
End Sub

Private Sub lblMulti_Click()

MsgBox "Multi® Simulador OLT 8820i" & vbCrLf & vbCrLf & "Copyright (C) Claudemir P. da Luz Jr." & vbCrLf & vbCrLf & "Versão: " & VERSION, vbInformation

End Sub

Private Sub lblOLT8820_Click()

    Call lblMulti_Click

End Sub

Private Sub Listen_ConnectionRequest(ByVal requestID As Long)
Dim UseSocket As Integer

For a = 1 To 25
    If SocketStatus(a) = 0 Then UseSocket = a: SocketStatus(a) = 1: GoTo Accepting
Next a

Listen.Close
DoEvents
Listen.Listen
DoEvents
GoTo 30

Accepting:

Accept(UseSocket).Accept requestID
DoEvents
'Accept(UseSocket).SendData vbCrLf + "Welcome to Black Window v0.1 BETA" + vbCrLf
'DoEvents
'Accept(UseSocket).SendData "Emulation supported: ASCII" + vbCrLf
'DoEvents
'Accept(UseSocket).SendData "Please enter your desired nickname" + vbCrLf + "(No more than 10 characters): "

conncount = conncount + 1

Accept(UseSocket).SendData "Intelbras OLT 8820i Simulator version " & VERSION + vbCrLf
DoEvents
Accept(UseSocket).SendData "Login: "
DoEvents
 
'Accept(UseSocket).SendData LOGIN_OK & vbCrLf & DPROMPT
 
 
LOGADO = False
 
 
lblconexoes.Caption = "conexões: " & conncount
 
DoEvents
30

End Sub

Sub WordCount(text As String)

Dim count As Integer
Dim keepsafe(0 To 2) As String
count = 0
WordNo = 0
spacecount = 0
For a = 0 To 2
theWords(a) = ""
Next a
If Trim(text) = "" Then GoTo 10


message = Trim(text)

For a = 1 To Len(message)

If Mid$(message, a, 1) = " " Then spacecount = spacecount + 1: GoTo SkipALL
If count = 2 Then theWords(2) = Mid$(message, a - 1, (Len(message) - a + 2)): GoTo BreakLoop
If Mid$(message, a, 1) <> " " And spacecount > 0 Then count = count + 1: spacecount = 0

theWords(count) = theWords(count) + Mid$(message, a, 1)

SkipALL:

Next a
BreakLoop:
WordNo = count + 1

10
End Sub






Public Function Processa_CMD_Telnet(tcmd As String, Index As Integer)


        Select Case UCase$(tcmd)
        
            Case "/USERS"

                Call UserLIST(Index)

            Case "/QUIT"

                Call QUITCHAT(Index)
                
            Case "QUIT"
            
                Call EXITSIM(Index)
                
            Case "EXIT"
            
                Call EXITSIM(Index)
                
            Case "/EXIT"
            
                Call EXITSIM(Index)


            Case "WHO"
            
                Call SHOW_CMD_WHO(Index)
                
            Case "HELP"
            
                Call SHOW_CMD_HELP(Index)
                
            Case "WHOAMI"
            
                Call SHOW_CMD_WHOAMI(Index)
                
            Case "DIR"
            
                Call SHOW_CMD_DIR(Index)
                
            Case "PWD"
            
                Call SHOW_CMD_PWD(Index)
                
            Case "CARD"
            
                Call SHOW_CMD_CARD(Index)

            Case "CARD SHOW"
            
                Call SHOW_CMD_CARD_SHOW(Index)
                
            Case "CARD STATS"
            
                Call SHOW_CMD_CARD_STATUS(Index)
                
                
            Case "SLOTS"
            
                Call SHOW_CMD_SLOTS(Index)
                
            Case "ROMVERSION"
            
                Call SHOW_CMD_ROMVERSION(Index)
                
            Case "SWVERSION"
            
                Call SHOW_CMD_SWVERSION(Index)
                
            Case "INTERFACE SHOW"
            
                Call SHOW_CMD_INTERFACE_SHOW(Index)
                
                
            Case "USER SHOW"
            
                Call SHOW_CMD_SHOWUSER(Index)
                
            Case "SHOW SYSTEM"
            
                Call SHOW_CMD_SHOW_SYSTEM(Index)
                
            Case "SHELFCTRL STATS"
            
                Call SHOW_CMD_SHELFCTRL_STATS(Index)
                
            Case "SHELFCTRL MONITOR"
            
                Call SHOW_CMD_SHELFCTRL_MONITOR(Index)
                
            Case "DATE"
            
                Call SHOW_CMD_SHOWDATETIME(Index)
                
            Case "SETDATETIME"
            
                Call SHOW_CMD_SETDATETIME(Index)
                                
            Case "ROUTE"
            
                Call SHOW_CMD_ROUTE(Index)
                
            Case "ROUTE SHOW"
            
                Call SHOW_CMD_ROUTE_SHOW(Index)
                
            Case "BRIDGE SHOW"
            
                Call SHOW_CMD_SHOWBRIDGE(Index)
                
                
            Case "ONU SHOW"
            
                Call SHOW_CMD_ONUSHOW(Index)
                
            Case "OLT SHOW PORT"
            
                Call SHOW_CMD_OLT_SHOW_PORT(Index)
                
                
                
            ' beta
            Case "ONU SHOW 1/1"
                Accept(Index).SendData CMD_ONU_SHOW_11 & vbCrLf & DPROMPT
                DoEvents

            Case "ONU INVENTORY 1/1"
                Accept(Index).SendData CMD_ONU_INVENTORY_11 & vbCrLf & DPROMPT
                DoEvents




            '
            ' Atividade 1
            '
            Case "ONU SHOW GPON 3"
            
                Call SHOW_ATIVIDADE1(Index)
            

            Case "ONU INVENTORY"
            
                Call SHOW_CMD_ONU_INVENTORY(Index)

            Case "CPE-MGR SHOW"
            
                Call SHOW_CMD_CPE_MGR_SHOW(Index)
                
            Case "PORT DESCRIPTION SHOW"
            
                Call SHOW_CMD_PORT_DESCRIPTION_SHOW(Index)
                
            Case "PORT SHOW GPON 1"
            
                Call SHOW_CMD_PORT_SHOW_GPON_1(Index)



            '
            ' Interativos
            '

            Case Left$(UCase$(tcmd), 11) = "ONU SHOW 1/"

                Dim glinha As String
                Dim npon As String
                
                npon = Mid$(tcmd, 12, 1)
                
                Debug.Print "porta pon: [" & npon & "]"
                
                Show_ONU_SHOW Val(tcmd), Index
                


            Case ""
            
                Call SHOW_NO_CMD(Index)
                Debug.Print "enter"



                
                ' ERROs Putty
                Case "ŸÛŸÛ ŸÛŸÛ'ŸÝŸÛŸÝ"
                    Debug.Print "putty 1"
                
                Case "ŸÞŸÞ ŸÞŸÞ'ŸÜ"
                    Debug.Print "putty 2"
                
                Case "ŸÛ$"
                    Debug.Print "putty 3"
                
                Case "ŸÞ$"
                    Debug.Print "putty 4"
                    
                Case "ŸÞŸÞŸ"
                    Debug.Print "putty 5"
                    
                Case "ŸÞ"
                    Debug.Print "putty 6"
                
                Case "ŸÞŸ"
                    Debug.Print "putty 7"
                
                ' fim erros putty

                















            Case Else

                If Mid$(Trim(UCase$(ReceivedInfo(Index))), 1, 8) = "/PRIVATE" Then Call PrivateMessage(Index, ReceivedInfo(Index)): GoTo skippy


                ' atividade 1
                If UCase$(tcmd) = "ONU SET GPON 3 ONU 128 ID 2 MEPROF INTELBRAS-110" Then
                
                    Call ATIVIDADE1_OK(Index)
                    Exit Function
                                
                    If Left(UCase$(tcmd), 7) = "ONU SET" Then
                        Call ATIVIDADE1_ERRO(Index)
                        Exit Function
                    End If
                                
                End If

                
                ' atividade 2
                If UCase$(tcmd) = "BRIDGE ADD GPON 8 ONU 128 TLS VLAN 3000 TAGGED ETH 1" Then
                
                    Call ATIVIDADE2_OK(Index)
                    Exit Function
                                
                    If Left(UCase$(tcmd), 10) = "BRIDGE ADD" Then
                        Call ATIVIDADE2_ERRO(Index)
                        Exit Function
                    End If
                                
                End If


                ' atividade 3
                If UCase$(tcmd) = "BRIDGE ADD ETH 2 UPLINK VLAN 4000 UNTAGGED" Then
                
                    Call ATIVIDADE3_OK(Index)
                    Exit Function
                                
                    If Left(UCase$(tcmd), 10) = "BRIDGE ADD" Then
                        Call ATIVIDADE3_ERRO(Index)
                        Exit Function
                    End If
                                
                End If



 

                'Call SendtoAll(vbCrLf + UserInfo(Index) + ": " + ReceivedInfo(Index) + vbCrLf)
                Call CMD_INVALID(Index)

skippy:

        End Select
        
        
        
        ' atividade1
        


End Function





Public Function Processa_CMD_Telnet2(tcmd As String, Index As Integer)

        Debug.Print "telnet 2 - tcmd: [" & tcmd & "]"


        Select Case UCase$(tcmd)
        
            Case "/USERS"

                Call UserLIST(Index)

            Case "/QUIT"

                Call QUITCHAT(Index)
                
            Case "QUIT"
            
                Call EXITSIM(Index)
                
            Case "EXIT"
            
                Call EXITSIM(Index)
                
            Case "/EXIT"
            
                Call EXITSIM(Index)


            Case "WHO"
            
                Call SHOW_CMD_WHO(Index)
                
            Case "HELP"
            
                Call SHOW_CMD_HELP(Index)
                
            Case "WHOAMI"
            
                Call SHOW_CMD_WHOAMI(Index)
                
            Case "DIR"
            
                Call SHOW_CMD_DIR(Index)
                
            Case "PWD"
            
                Call SHOW_CMD_PWD(Index)
                
                
            Case "CARD"
            
                Call SHOW_CMD_CARD(Index)

            Case "CARD SHOW"
            
                Call SHOW_CMD_CARD_SHOW(Index)
                
            Case "CARD STATS"
            
                Call SHOW_CMD_CARD_STATUS(Index)
                
                
            Case "SLOTS"
            
                Call SHOW_CMD_SLOTS(Index)
                
            Case "ROMVERSION"
            
                Call SHOW_CMD_ROMVERSION(Index)
                
            Case "SWVERSION"
            
                Call SHOW_CMD_SWVERSION(Index)
                
            Case "INTERFACE SHOW"
            
                Call SHOW_CMD_INTERFACE_SHOW(Index)
                
                
                
                
            Case "USER SHOW"
            
                Call SHOW_CMD_SHOWUSER(Index)
                
            Case "SHOW SYSTEM"
            
                Call SHOW_CMD_SHOW_SYSTEM(Index)
                
            Case "SHELFCTRL STATS"
            
                Call SHOW_CMD_SHELFCTRL_STATS(Index)
                
            Case "SHELFCTRL MONITOR"
            
                Call SHOW_CMD_SHELFCTRL_MONITOR(Index)
                
            Case "DATE"
            
                Call SHOW_CMD_SHOWDATETIME(Index)
                
            Case "SETDATETIME"
            
                Call SHOW_CMD_SETDATETIME(Index)
                
            Case "ROUTE"
            
                Call SHOW_CMD_ROUTE(Index)
                
            Case "ROUTE SHOW"
            
                Call SHOW_CMD_ROUTE_SHOW(Index)
                
            Case "BRIDGE SHOW"
            
                Call SHOW_CMD_SHOWBRIDGE(Index)
                
                
            Case "ONU SHOW"
            
                Call SHOW_CMD_ONUSHOW(Index)
                
            Case "OLT SHOW PORT"
            
                Call SHOW_CMD_OLT_SHOW_PORT(Index)
                
                
                
            ' beta
            Case "ONU SHOW 1/1"
                Accept(Index).SendData CMD_ONU_SHOW_11 & vbCrLf & DPROMPT
                DoEvents

            Case "ONU INVENTORY 1/1"
                Accept(Index).SendData CMD_ONU_INVENTORY_11 & vbCrLf & DPROMPT
                DoEvents


            Case "ONU INVENTORY"
            
                Call SHOW_CMD_ONU_INVENTORY(Index)

            Case "CPE-MGR SHOW"
            
                Call SHOW_CMD_CPE_MGR_SHOW(Index)

            Case "PORT DESCRIPTION SHOW"
            
                Call SHOW_CMD_PORT_DESCRIPTION_SHOW(Index)
                
            Case "PORT SHOW GPON 1"
            
                Call SHOW_CMD_PORT_SHOW_GPON_1(Index)




            '
            ' Atividade 1
            '
            Case "ONU SHOW GPON 3"
            
                Call SHOW_ATIVIDADE1(Index)




            '
            ' Interativos
            '

            Case Left$(UCase$(tcmd), 11) = "ONU SHOW 1/"
            
                Dim glinha As String
                Dim npon As String
                
                npon = Mid$(tcmd, 12, 1)
                
                Debug.Print "porta pon: [" & npon & "]"
                
                Debug.Print "tcmd: " & tcmd
                
                Show_ONU_SHOW Val(tcmd), Index
                





            Case ""
            
                Call SHOW_NO_CMD(Index)
                Debug.Print "enter"


               
                
                ' ERROs Putty
                Case "ŸÛŸÛ ŸÛŸÛ'ŸÝŸÛŸÝ"
                    Debug.Print "putty 1"
                
                Case "ŸÞŸÞ ŸÞŸÞ'ŸÜ"
                    Debug.Print "putty 2"
                
                Case "ŸÛ$"
                    Debug.Print "putty 3"
                
                Case "ŸÞ$"
                    Debug.Print "putty 4"
                    
                Case "ŸÞŸÞŸ"
                    Debug.Print "putty 5"
                    
                Case "ŸÞ"
                    Debug.Print "putty 6"
                
                Case "ŸÞŸ"
                    Debug.Print "putty 7"
                
                ' fim erros putty

                


            Case Else

                If Mid$(Trim(UCase$(ReceivedInfo(Index))), 1, 8) = "/PRIVATE" Then Call PrivateMessage(Index, ReceivedInfo(Index)): GoTo skippy
                
                'Call CMD_INVALID(Index)
                
                
                ' atividade 1
                If UCase$(tcmd) = "ONU SET GPON 3 ONU 128 ID 2 MEPROF INTELBRAS-110" Then
                
                    Call ATIVIDADE1_OK(Index)
                    Exit Function
                                
                    If Left(UCase$(tcmd), 7) = "ONU SET" Then
                        Call ATIVIDADE1_ERRO(Index)
                        Exit Function
                    End If
                                
                End If
                
                ' atividade 2
                If UCase$(tcmd) = "BRIDGE ADD GPON 8 ONU 128 TLS VLAN 3000 TAGGED ETH 1" Then
                
                    Call ATIVIDADE2_OK(Index)
                    Exit Function
                                
                    If Left(UCase$(tcmd), 10) = "BRIDGE ADD" Then
                        Call ATIVIDADE2_ERRO(Index)
                        Exit Function
                    End If
                                
                End If

                ' atividade 3
                If UCase$(tcmd) = "BRIDGE ADD ETH 2 UPLINK VLAN 4000 UNTAGGED" Then
                
                    Call ATIVIDADE3_OK(Index)
                    Exit Function
                                
                    If Left(UCase$(tcmd), 10) = "BRIDGE ADD" Then
                        Call ATIVIDADE3_ERRO(Index)
                        Exit Function
                    End If
                                
                End If

                
                Call CMD_INVALID(Index)


skippy:

        End Select


End Function


Public Function Show_ONU_SHOW(pon As Integer, x As Integer) As String

Dim ONU_SHOW_X As String

ONU_SHOW_X = vbCrLf & _
"Free ONUs for slot 1 olt " & pon & ":" & vbCrLf & _
"    1    2    3    4    5    6    7    8    9   10   11   12" & vbCrLf & _
"   13   14   15   16   17   18   19   20   21   22   23   24" & vbCrLf & _
"   25   26   27   28   29   30   31   32   33   34   35   36" & vbCrLf & _
"   37   38   39   40   41   42   43   44   45   46   47   48" & vbCrLf & _
"   49   50   51   52   53   54   55   56   57   58   59   60" & vbCrLf & _
"   61   62   63   64" & vbCrLf & _
"" & vbCrLf & _
"Discovered serial numbers for slot 1 olt " & pon & ":" & vbCrLf & _
"sernoID   Vendor  Serial Number    Model  Time Discovered"

    Accept(x).SendData ONU_SHOW_X & vbCrLf & DPROMPT
    DoEvents

End Function



Public Function SHOW_ATIVIDADE1(x As Integer)

    '
    Dim textatividade As String
    
    textatividade = FileText(App.Path & "\resource\atividade1-01.txt")
    
    If ATIVIDADE1 = True Then
    
        Accept(x).SendData textatividade & vbCrLf & DPROMPT
        DoEvents
        
    Else
    
        Dim pon As String
        Dim saida As String
        
    
        pon = FileText(App.Path & "\resource\pon.txt")
    
        saida = Replace(pon, "@", "3")
    
        Accept(x).SendData saida & vbCrLf & DPROMPT
        DoEvents
    
    End If
    

End Function


Public Sub ATIVIDADE1_OK(x As Integer)

    ' ok
    ' onu set gpon 3 onu 128 id 2 meprof intelbras-110
    ' 43020000
    ' Onu 128 successfully enabled with serial number ZNTS43020000

    ' erro
    ' %% No such ID in discovered ONUs

    Accept(x).SendData "Onu 128 successfully enabled with serial number ZNTS43020000" & vbCrLf & DPROMPT
    DoEvents
 
End Sub

Public Sub ATIVIDADE1_ERRO(x As Integer)
    
    ' erro
    ' %% No such ID in discovered ONUs

    Accept(x).SendData " %% No such ID in discovered ONUs" & vbCrLf & DPROMPT
    DoEvents
 
End Sub


Public Sub ATIVIDADE2_OK(x As Integer)
    
    Accept(x).SendData "Adding bridge gpon 3 onu 128 vlan 3000 ..................... Ok" & vbCrLf & DPROMPT
    DoEvents
 
End Sub

Public Sub ATIVIDADE2_ERRO(x As Integer)
    
    Accept(x).SendData "% No bridge created" & vbCrLf & DPROMPT
    DoEvents
 
End Sub


Public Sub ATIVIDADE3_OK(x As Integer)
    
    Accept(x).SendData "Adding bridge eth 2 vlan 4000 .............................. Ok" & vbCrLf & DPROMPT
    DoEvents
 
End Sub

Public Sub ATIVIDADE3_ERRO(x As Integer)
    
    Accept(x).SendData "% No bridge created" & vbCrLf & DPROMPT
    DoEvents
 
End Sub

Private Sub mnuSair_Click()

    Unload Me

End Sub

Private Sub mnuSobre_Click()

    lblMulti_Click

End Sub
