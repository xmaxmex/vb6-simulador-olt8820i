Attribute VB_Name = "modGeral"
Public Const VERSION = "1.0.5"



Public LOGADO As Boolean


Public OLT_CHASSI As String

Public PON_PORT As String

Public ONU_PORT As String

Public ONU_SUBPORT As String


Public Const ENDL = vbCrLf

Public Const DPROMPT = "intelbras-olt> "


Public ATIVIDADE1 As Boolean
Public ATIVIDADE2 As Boolean
Public ATIVIDADE3 As Boolean



Public SEND_LOGIN As String
Public SEND_HELP As String
Public SEND_ONU_SHOW As String

Public SEND_BRIDGE_SHOW As String

Public SEND_OLT_SHOW_PORT As String

Public SEND_ONU_INVENTORY As String
Public SEND_CPE_MGR_SHOW As String
Public SEND_PORT_DESCRIPTION_SHOW As String
Public SEND_PORT_SHOW_GPON_1 As String


Public Const LOGIN_OK = vbCrLf & _
vbCrLf & _
" |_   _| | \ | | |__   __| |  ____| | |      |  _ \  |  __ \      /\      / ___|" & vbCrLf & _
"   | |   |  \| |    | |    | |__    | |      | |_) | | |__) |    /  \    | (___" & vbCrLf & _
"   | |   | . ` |    | |    |  __|   | |      |  _ <  |  _  /    / /\ \    \___ \" & vbCrLf & _
"  _| |_  | |\  |    | |    | |____  | |____  | |_) | | | \ \   / ____ \   ____)|" & vbCrLf & _
" |_____| |_| \_|    |_|    |______| |______| |____/  |_|  \_\ /_/    \_\ |_____/" & vbCrLf & _
"" & vbCrLf & _
"" & vbCrLf & _
"   ____    _        _______    ___     ___    ___     ___     _____" & vbCrLf & _
"  / __ \  | |      |__   __|  / _ \   / _ \  |__ \   / _ \   / ____|" & vbCrLf & _
" | |  | | | |         | |    | (_) | | (_) |    ) | | | | | | |  __" & vbCrLf & _
" | |  | | | |         | |     > _ <   > _ <    / /  | | | | | | |_ |" & vbCrLf & _
" | |__| | | |____     | |    | (_) | | (_) |  / /_  | |_| | | |__| |" & vbCrLf & _
"  \____/  |______|    |_|     \___/   \___/  |____|  \___/   \_____|" & vbCrLf & _
"" & vbCrLf & _
"Intelbras S.A." & vbCrLf & _
"Industria de Telecomunicacao Eletronica Brasileira" & vbCrLf


Public Const CMD_HELP = vbCrLf & _
"Type 'help all' to obtain a list of all available commands." & vbCrLf & _
"   1  alarm - Usage : alarm show [summary]" & vbCrLf & _
"   2  alarm-config <set|clear> (group interface) <threshold|status-trap|admin-up> <value|holdtime> (number)" & vbCrLf & _
"   3  bridge <add|delete|modify|unblock|flush|show|showall|showdetail|capture|show onu|stats|rates|igmp|igmpstat|igmpver> bridge interfaces" & vbCrLf & _
"   4  bridge-path <add|delete|show|modify> [<interface>/<type>]" & vbCrLf & _
"       global | global-intralink | global-rlink" & vbCrLf & _
"       <vlan-phrase> <addr-spec>" & vbCrLf & _
"       <optional-arguments>" & vbCrLf & _
"   5  bulkstats - MIB-based periodic data collection" & vbCrLf & _
"   6  card < show | stats >" & vbCrLf & _
"   7  clkmgrshow [current | eligible | list]" & vbCrLf & _
"   8  dump <[console] | [file <filename>] | [network | binary <host> <filename>]>" & vbCrLf & _
"9" & vbCrLf & _
"eaps <add | delete | disable | enable | help | modify | show | topo>" & vbCrLf & _
"    domain <domain_name> <master | transit>" & vbCrLf & _
"    [interface1] <interface1> [interface2] <interface2>" & vbCrLf & _
"    control <VLAN> [interval <time>] [drop <count>] [timeout <time>]" & vbCrLf & _
"    [trap <on | off>] [cntlpri <priority> ]" & vbCrLf & _
"" & vbCrLf & _
"<SPACE> for next page, <CR> for next line, A for all, Q to quit"


Public Const CMD_INTERFACE_SHOW = vbCrLf & _
"1 interface" & vbCrLf & _
"Interface      Status  Rd/Address            Media/Dest Address      IfName" & vbCrLf & _
"--------------------------------------------------------------------------------" & vbCrLf & _
"1/1/1/0/ip     UP      1 192.168.10.1/24     00:01:47:fb:79:30       AutoConfig" & vbCrLf & _
"--------------------------------------------------------------------------------"


Public Const CMD_WHO = "telnet : session 1 (intelbras) from 192.168.11.190" & vbCrLf & _
"telnet : session 2 (intelbras) from 192.168.11.16" & vbCrLf & _
"telnet : session 3 (intelbras) from 192.168.11.17" & vbCrLf & _
"telnet : session 4 (intelbras) from 192.168.11.15" & vbCrLf & _
"telnet : session 5 (intelbras) from 192.168.11.16" & vbCrLf & _
"ssh    : session 10 (intelbras) from 192.168.11.111" & vbCrLf & _
"ssh    : session 11 (intelbras) from 192.168.11.10" & vbCrLf & _
"ssh    : session 12 (intelbras) from 192.168.11.14" & vbCrLf & _
"ssh    : session 13 (intelbras) from 192.168.11.199" & vbCrLf & _
"ssh    : session 14 (intelbras) from 192.168.11.10"


Public Const CMD_PWD = vbCrLf & _
"/card1"

Public Const CMD_DIR = vbCrLf & _
"Listing Directory .:" & vbCrLf & _
"drwxrwxrwx  1 0       0             4096 Dec 27  1990 bulkstats/" & vbCrLf & _
"drwxrwxrwx  1 0       0             4096 Mar 19 15:35 datastor/" & vbCrLf & _
"drwxrwxrwx  1 0       0             4096 Mar 19 15:35 log/" & vbCrLf & _
"drwxrwxrwx  1 0       0             4096 Jan  1  1980 odm/" & vbCrLf & _
"drwxrwxrwx  1 0       0             4096 Jan  1  1980 onreboot/" & vbCrLf & _
"drwxrwxrwx  1 0       0             4096 Dec 27  1990 pub/" & vbCrLf & _
"-rwxrwxAwx  1 0       0             1124 Jan  1  1980 banner.txt" & vbCrLf & _
"-rwxrwxAwx  1 0       0             1124 Jan  1  1980 logo.txt" & vbCrLf & _
"-rwxrwxrwx  1 0       0         11931199 Jan  1  1980 mx1u19x.bin" & vbCrLf & _
"-rwxrwxrwx  1 0       0          8495616 Jan  1  1980 mx1u19x_http.tar" & vbCrLf & _
"219338476                                bytes available"


Public Const CMD_CARD_OPT = vbCrLf & _
"card < show | stats >"

Public Const CMD_CARD_SHOW = vbCrLf & _
"card-profile 1/1/10500" & vbCrLf & _
"sw-file-name: ----------->  {mx1u19x.bin}" & vbCrLf & _
"admin-status: ----------->  {operational}" & vbCrLf & _
"upgrade-sw-file-name: --->  {}" & vbCrLf & _
"upgrade-vers: ----------->  {}" & vbCrLf & _
"admin-status-enable: ---->  {enable}" & vbCrLf & _
"sw-upgrade-admin: ------->  {reloadcurrrev}" & vbCrLf & _
"sw-enable: -------------->  {true}" & vbCrLf & _
"sw-upgrade-enable: ------>  {false}" & vbCrLf & _
"card-group-id: ---------->  {1}" & vbCrLf & _
"hold-active: ------------>  {false}" & vbCrLf & _
"weight: ----------------->  {nopreference}" & vbCrLf & _
"card-line-type: --------->  {unknowntype}" & vbCrLf & _
"card-atm-configuration: ->  {notapplicable}" & vbCrLf & _
"card-line-voltage: ------>  {not-used}" & vbCrLf & _
"maxvpi-maxvci: ---------->  {notapplicable}" & vbCrLf & _
"card-init-string: ------->  {}" & vbCrLf & _
"wetting-current: -------->  {disabled}" & vbCrLf & _
"pwe-timing-mode: -------->  {none}"


Public Const CMD_CARD_STATUS = vbCrLf & _
"" & vbCrLf & _
"      -------------- cpu % utilization ------------  ------ memory (KB)---------  Card Memory       uptime" & vbCrLf & _
"slot  idle usage  high   services framework   low    % Used Total  Peak   Avail     Status       ddd:hh:mm:ss   s/w version" & vbCrLf & _
"====  ==== ===== ======= ======== ========= =======  ====== ====== ====== ======  =============  ============  =============" & vbCrLf & _
"  1    86    14      8       5         0        0     31.20 223453  72869 153742  1 - OK           0:01:10:04  MX 2.5.1.423"

' swversion
Public Const CMD_SWVERSION = vbCrLf & _
"software version MX 2.5.1.423"

' romversion
Public Const CMD_ROMVERSION = vbCrLf & _
"MX 2.2.1.211" & vbCrLf & _
"Sep 13 2011, 21:23:57"

' slots
Public Const CMD_SLOTS = vbCrLf & _
"Cards" & vbCrLf & _
" 1: MXK 19x/MXK 198-10GE - 8 GPON OLT, 8 FE/GE, 2 10GE (RUNNING)"


Public Const CMD_ONU_SHOW_11 = vbCrLf & _
"Free ONUs for slot 1 olt 1:" & vbCrLf & _
"    1    2    3    4    5    6    7    8    9   10   11   12" & vbCrLf & _
"   13   14   15   16   17   18   19   20   21   22   23   24" & vbCrLf & _
"   25   26   27   28   29   30   31   32   33   34   35   36" & vbCrLf & _
"   37   38   39   40   41   42   43   44   45   46   47   48" & vbCrLf & _
"   49   50   51   52   53   54   55   56   57   58   59   60" & vbCrLf & _
"   61   62   63   64" & vbCrLf & _
"" & vbCrLf & _
"Discovered serial numbers for slot 1 olt 1:" & vbCrLf & _
"sernoID   Vendor  Serial Number    Model  Time Discovered" & vbCrLf & _
"    5      ZNTS    035C1608        110G    MAR 19 13:35:28 2015" & vbCrLf & _
"    6      ZNTS    035BF974        110G    MAR 19 13:35:42 2015" & vbCrLf & _
"    9      ZNTS    035BF908        110G    MAR 19 13:35:48 2015" & vbCrLf & _
"   10      ZNTS    035C7877        142NG    MAR 19 13:35:48 2015" & vbCrLf & _
"   13      ZNTS    035C0EE0        110G    MAR 19 13:36:02 2015" & vbCrLf & _
"   14      ZNTS    0370CE92        110G    MAR 19 13:36:12 2015" & vbCrLf & _
"   16      ZNTS    036FCE74        110G    MAR 19 13:36:42 2015" & vbCrLf & _
"   17      ZNTS    036FD556        110G    MAR 19 14:16:52 2015"
   
  
   
Public Const CMD_ONU_INVENTORY_11 = vbCrLf & _
" Processing list of 64" & vbCrLf & _
"" & vbCrLf & _
"This command may take several minutes to complete." & vbCrLf & _
"Do you want to continue?  (yes or no) [no] yes" & vbCrLf & _
"" & vbCrLf & _
"                           Serial    Vendor  Model       ONT       Software    ONT       OLT     Distance" & vbCrLf & _
"ID       Interface         Number      ID     ID       Version     Version   Rx Power  Rx Power   (KM)" & vbCrLf & _
"=== ==================== ========== ======= ====== ============== ========== ========= ========= ===========" & vbCrLf & _
"1   1-1-1-1              035BF974   ZNTS    110G   PON699GA.1L43A 1.1.25543 -17.0 dBm -17.5 dBm      0.1245" & vbCrLf & _
"13  1-1-1-13             0370CE92   ZNTS    110G   PON699GA.1L43A 1.1.ec7af -18.4 dBm -18.6 dBm      0.1219" & vbCrLf & _
"23  1-1-1-23             036FD556   ZNTS    110G   PON699GA.1L43A 1.1.ec7af -18.6 dBm -18.0 dBm      0.1214" & vbCrLf & _
"24  1-1-1-24             035BF908   ZNTS    110G   PON699GA.1L43A 1.1.25543 -19.1 dBm -19.1 dBm      0.1248" & vbCrLf & _
"64  1-1-1-64             035C1608   ZNTS    110G   PON699GA.1L43A 1.1.25543 -16.7 dBm -18.7 dBm      0.1235" & vbCrLf & _
"Total ONUs = 5"

' showdatetime
Public Const CMD_SHOWDATETIME = vbCrLf & _
"Current Time: WED AUG 15 19:54:23 2018 GMT"

Public Const CMD_SETDATETIME = vbCrLf & _
"NTP disabled; allowing manual setting of date/time..." & vbCrLf & _
"Invalid number of arguments:" & vbCrLf & _
"setdatetime < month(mm) day(dd) year(yyyy) hour(hh) minute(mm) second(ss) >"


Public Const CMD_SHOW_SYSTEM1 = vbCrLf & _
"syscontact:--------------------->   {260}" & vbCrLf & _
"sysname:------------------------>   {260}" & vbCrLf & _
"syslocation:-------------------->   {260}" & vbCrLf & _
"enableauthtraps:---------------->   enabled  disabled" & vbCrLf & _
"setserialno:-------------------->   {0 - 2147483647}" & vbCrLf & _
"zmsexists:---------------------->   true  false" & vbCrLf & _
"zmsconnectionstatus:------------>   active  inactive" & vbCrLf & _
"zmsipaddress:------------------->   {0 - 0}" & vbCrLf & _
"configsyncexists:--------------->   true  false" & vbCrLf & _
"configsyncoverflow:------------->   true  false" & vbCrLf & _
"configsyncpriority:------------->   none  low  medium  high" & vbCrLf & _
"configsyncaction:--------------->   noaction  createlist  createfulllist" & vbCrLf & _
"configsyncfilename:------------->   {68}" & vbCrLf & _
"configsyncstatus:--------------->   synccomplete  syncpending  syncerror  syncinitializing" & vbCrLf & _
"configsyncuser:----------------->   {36}" & vbCrLf & _
"configsyncpasswd:--------------->   {36}" & vbCrLf & _
"numshelves:--------------------->   {0 - 0}" & vbCrLf & _
"shelvesarray:------------------->   {36}" & vbCrLf & _
"numcards:----------------------->   {0 - 0}" & vbCrLf & _
"ipaddress:---------------------->   {0 - 0}" & vbCrLf & _
"alternateipaddress:------------->   {0 - 0}" & vbCrLf & _
"countryregion:------------------>   argentina  australia  belgium  china  costarica  finland  france  germany  hongkong  italy  japan  korea  mexico  netherlands  newzealand  singapore  spain  sweden  switzerland  uk  us  afghanistan  albania  algeria  americansamoa  andorra  angola  anguilla  antarctica  antiguabarbuda  armenia  aruba  austria  azerbaijan  bahamas  bahrain  bangladesh  barbados  belarus  belize  benin  bermuda  bhutan  bolivia  bosniaherzegovina  botswana  bouvetisland  brazil  britishindianoceanterritory  bruneidarussalam  bulgaria  burkinafaso  burundi  cambodia  cameroon  canada  capeverde  caymanislands  centralafricanrepublic  chad  chile  christmasisland  cocosislands  colombia  comoros  congo  cookislands  cotedivoire  croatia  cuba  cyprus  czechrepublic  denmark  djibouti  dominica  dominicanrepublic  easttimor  ecuador  egypt  elsalvador  equatorialguinea  eritrea  estonia  ethiopia  falklandislands  faroeislands  fiji  frenchguiana  frenchpolynesia " & vbCrLf & _
"gambia  georgia  ghana  gibraltar  greece  greenland  grenada  guadeloupe  guam  guatemala  guinea  guineabissau  guyana  haiti  heardislandmcdonaldislands  holysee  honduras  hungary  iceland  india  indonesia  iran  iraq  ireland  israel  jamaica  jordan  kazakstan  kenya  kiribati  northkorea  kuwait  kyrgyzstan  lao  latvia  lebanon  lesotho  liberia  libyanarabjamahiriya  liechtenstein  lithuania  luxembourg  macau  macedonia  madagascar  malawi  malaysia  maldives  mali  malta  marshallislands  martinique  mauritania  mauritius  mayotte  micronesia  moldova  monaco  mongolia  montserrat  morocco  mozambique  myanmar  namibia  nauru  nepal  netherlandsantilles  newcaledonia  nicaragua  niger  nigeria  niue  norfolkisland  northernmarianaislands  norway  oman  pakistan  palau  palestinianterritory  panama  papuanewguinea  paraguay  peru  philippines  pitcairn  poland  portugal  puertorico  qatar  reunion  romania  russia  rwanda  sainthelena  saintkittsnevis  saintpierremiquelon" & vbCrLf & _
"centthegrenadines  samoa  sanmarino  saotomeprincipe  saudiarabia  senegal  seychelles  sierraleone  slovakia  slovenia  solomonislands  somalia  southafrica  southgeorgia  srilanka  sudan  suriname  svalbardjanmayen  swaziland  syria  taiwan  tajikistan  tanzania  thailand  togo  tokelau  tonga  trinidadtobago  tunisia  turkey  turkmenistan  turkscaicosislands  uganda  ukraine  unitedarabemirates  uruguay  uzbekistan  vanuatu  venezuela  vietnam  virginislandsuk  virginislandsus  wallisfutuna  westernsahara  yemen  yugoslavia  zambia"

Public Const CMD_SHOW_SYSTEM2 = vbCrLf & _
"primaryclocksource:------------->   [Shelf {0-255}/Slot {0-1}/Port {0-500}/SubPort/Type] | [Name/Type]" & vbCrLf & _
"ringsource:--------------------->   internalringsourcelabel  externalringsourcelabel" & vbCrLf & _
"revertiveclocksource:----------->   true  false" & vbCrLf & _
"voicebandwidthcheck:------------>   true  false" & vbCrLf & _
"alarm-levels-enabled:----------->   critical+major+minor+warning" & vbCrLf & _
"userauthmode:------------------->   local  radius  radiusthenlocal  radiusthencraft" & vbCrLf & _
"radiusauthindex:---------------->   {0 - 2147483647}" & vbCrLf & _
"secure:------------------------->   enabled  disabled" & vbCrLf & _
"webinterface:------------------->   enabled  disabled" & vbCrLf & _
"options:------------------------>   cvlanonly+nol3bridgetable+ipg88bits+disdefpktrules+enablexcardlinkagg+fiberlan+cfmon+bondautodetect" & vbCrLf & _
"reservedVlanIdStart:------------>   {0 - 4090}" & vbCrLf & _
"reservedVlanIdCount:------------>   {0 - 2048}" & vbCrLf & _
"snmpVersion:-------------------->   snmpv2  snmpv3  snmpv3includingZMS" & vbCrLf & _
"persistentLogging:-------------->   enabled  disabled" & vbCrLf & _
"outletTemperatureHighThreshold:->   {35 - 65}" & vbCrLf & _
"outletTemperatureLowThreshold:-->   {-40 - 0}"


Public Const CMD_SHOWUSER = vbCrLf & _
".................................." & vbCrLf & _
"User name:(intelbras)  User prompt:(iSH>)" & vbCrLf & _
"Access Levels:" & vbCrLf & _
"(admin)(voice)(data)(manuf)(database)(systems)(tool)(useradmin)"


Public Const CMD_ROUTE = vbCrLf & _
"route [domain <domain-spec>] add | delete | help | list | show ..."


Public Const CMD_ROUTE_SHOW = vbCrLf & _
"Destination Routing Table" & vbCrLf & _
"" & vbCrLf & _
"Dest                     Nexthop          Cost     Owner      Fallback" & vbCrLf & _
"------------------------------------------------------------------------------" & vbCrLf & _
"192.168.10.0/24          1/1/1/0/ip       1        LOCAL"



Public Const CMD_SHELF_MONITOR = vbCrLf & _
"" & vbCrLf & _
"Shelf Status" & vbCrLf & _
"----------------------------------------------------------------------------" & vbCrLf & _
"Uptime                          38 minutes" & vbCrLf & _
"" & vbCrLf & _
"Temperature Sensor              Celsius(C)              Fahrenheit(F)" & vbCrLf & _
"----------------------------------------------------------------------------" & vbCrLf & _
"Card sensor                     39                      102" & vbCrLf & _
"Temperature reading             normal" & vbCrLf & _
"" & vbCrLf & _
"Fans Status" & vbCrLf & _
"----------------------------------------------------------------------------" & vbCrLf & _
"Fan A                           normal" & vbCrLf & _
"Fan B                           normal" & vbCrLf & _
"Fan C                           normal" & vbCrLf & _
"System Alarm                    Status" & vbCrLf & _
"----------------------------------------------------------------------------" & vbCrLf & _
"System                          Critical alarm set" & vbCrLf & _
"" & vbCrLf & _
"Alarm I/O Board" & vbCrLf & _
"----------------------------------------------------------------------------" & vbCrLf & _
"Alarm Active:                       Yes  Yes  Yes  Yes  Yes  Yes  Yes  Yes  Yes  Yes  Yes  Yes"



Public Const CMD_SHELF_STATS = vbCrLf & _
"Shelf Controller Message Statistics" & vbCrLf & _
"-----------------------------------" & vbCrLf & _
"Directory services: 2" & vbCrLf & _
"Clock: 84" & vbCrLf & _
"Info: 5" & vbCrLf & _
"" & vbCrLf & _
"Receive errors: 2"



' bridge
Public Const CMD_SHOW_BRIDGE = "         Orig" & vbCrLf & _
"Type     VLAN/SLAN  VLAN/SLAN      Physical                  Bridge                              St  Table Data" & vbCrLf & _
"---------------------------------------------------------------------------------------------------------------------" & vbCrLf & _
"tls                 Tagged  600    1/1/3/5/gpononu           1-1-3-260-gponport-600/bridge       DWN" & vbCrLf & _
"tls                 Tagged  600    1/1/3/9/gpononu           1-1-3-258-gponport-600/bridge       DWN" & vbCrLf & _
"tls                 Tagged  600    1/1/3/10/gpononu          1-1-3-259-gponport-600/bridge       DWN" & vbCrLf & _
"tls                 Tagged  600    1/1/3/30/gpononu          1-1-3-261-gponport-600/bridge       DWN" & vbCrLf & _
"tls                 Tagged  600    1/1/3/31/gpononu          1-1-3-257-gponport-600/bridge       DWN" & vbCrLf & _
"tls                     600        1/1/4/0/eth               1-1-4-0-eth/bridge                  DWN" & vbCrLf & _
"upl                     501        1/1/6/0/eth               1-1-6-0-eth/bridge                  DWN S VLAN 501 default" & vbCrLf & _
"tls                 Tagged  600    1/1/7/64/gpononu          1-1-7-257-gponport-600/bridge       DWN" & vbCrLf & _
"8 Bridge Interfaces displayed"



Public Const CMD_SHOW_IPSTATS = vbCrLf & _
"               total 13528" & vbCrLf & _
"             forward 12550" & vbCrLf & _
"         cantforward 589" & vbCrLf & _
"       localfastpath 13527" & vbCrLf & _
"ARPs processed total   52"


Public Const CMD_SHOW_RESOLVER = vbCrLf & _
"Resolver Configuration:" & vbCrLf & _
"   Routing Domain: 0" & vbCrLf & _
"   Query Order: QUERY_LOCAL_FIRST" & vbCrLf & _
"   Domain Name:" & vbCrLf & _
"   Nameserver[0]: 0.0.0.0" & vbCrLf & _
"   Nameserver [1]:" & vbCrLf & _
"   Nameserver [2]:"




' onu show 1/x
Public CMD_ONU_SHOW_1X As String



Public Const CMD_ONU_SHOW_X = vbCrLf & _
"Free ONUs for slot 1 olt 1:" & vbCrLf & _
"    1    2    3    4    5    6    7    8    9   10   11   12" & vbCrLf & _
"   13   14   15   16   17   18   19   20   21   22   23   24" & vbCrLf & _
"   25   26   27   28   29   30   31   32   33   34   35   36" & vbCrLf & _
"   37   38   39   40   41   42   43   44   45   46   47   48" & vbCrLf & _
"   49   50   51   52   53   54   55   56   57   58   59   60" & vbCrLf & _
"   61   62   63   64" & vbCrLf & _
"" & vbCrLf & _
"Discovered serial numbers for slot 1 olt 1:" & vbCrLf & _
"sernoID   Vendor  Serial Number    Model  Time Discovered"




'--------------------
Public Function FileText(filename$) As String

    Dim handle As Integer
    
    handle = FreeFile
    
    Open filename$ For Input As #handle
        FileText = Input$(LOF(handle), handle)
    Close #handle
    

End Function


Public Sub Carregar_Resource()

    Dim caminho As String

    caminho = App.Path & "\resource\"


    SEND_LOGIN = FileText(caminho & "login.txt")

    SEND_HELP = FileText(caminho & "help.txt")

    SEND_ONU_SHOW = FileText(caminho & "onu-show.txt")
    
    SEND_BRIDGE_SHOW = FileText(caminho & "bridge-show.txt")
    
    
    
    SEND_OLT_SHOW_PORT = FileText(caminho & "olt-show-port.txt")
    
    
    SEND_ONU_INVENTORY = FileText(caminho & "onu-inventory.txt")
    SEND_CPE_MGR_SHOW = FileText(caminho & "cpe-mgr-show.txt")
    SEND_PORT_DESCRIPTION_SHOW = FileText(caminho & "port-description-show.txt")
    SEND_PORT_SHOW_GPON_1 = FileText(caminho & "port-show-gpon-1.txt")
    
    

End Sub



