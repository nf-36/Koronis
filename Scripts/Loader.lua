local a='KORONIS'local b,c,d,e,f=string.format('%s/key.txt',tostring(a)),{
KEY_HWID_LOCKED=
[[Key linked to a different HWID. Please reset it using the panel in #script in the Koronis discord]]
,KEY_INCORRECT='Key is wrong or has been deleted!',KEY_BANNED=
'You are BANNED from Koronis!',KEY_EXPIRED=
'Key has expired! Please get a new key to use Koronis'},loadstring(game:HttpGet
[[https://raw.githubusercontent.com/nf-36/Koronis/refs/heads/main/Data/KeySystemModule.lua]]
)(),(loadstring(game:HttpGetAsync
[[https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau]]
)())if not isfolder(a)then makefolder(a)end local g=function(g)e:Notify{Title=
'Koronis',Content=g}end local h,i,j=function(h,i)setclipboard(i)g(string.format(
'Copied %s.',tostring(h)))end,function(h)g'Loading Koronis...'script_key=h d.api
.load_script()end,function(h)f:Dialog{Title='Koronis',Content=h,Buttons={{Title=
'Dismiss',Callback=function()end}}}end local k=function(k)local l=d.Functions.
CheckKey(k)local m=l.STATUS.code local n,o=c[m]or m,m=='KEY_VALID'if o then f:
Destroy()writefile(b,k)task.spawn(i,k)return true end return false,n end f=e:
AddWindow{Title='Koronis',SubTitle='Key System',TabWidth=125,Size=UDim2.
fromOffset(600,400),Resize=true,MinSize=Vector2.new(600,400),Acrylic=false,Theme
='Monokai',MinimizeKey=Enum.KeyCode.LeftAlt}if isfile(b)then local l=readfile(b)
local m,n=k(l)if m then return end j(n)end local l={Main=f:CreateTab{Title=
'Main',Icon='phosphor-users-bold'},About=f:CreateTab{Title='About',Icon=
'phosphor-info-fill'}}local m=l.Main:AddSection'Key system'local n=m:
CreateInput('KeyInput',{Title='Key',Default='',Placeholder='Key here',Numeric=
false,Finished=false})m:CreateButton{Title='Check Key',Callback=function()local
o,p=k(n.Value)if o then return end j(p)end}local o=l.About:AddSection'Support'o:
CreateButton{Title='Copy Discord Server',Callback=function()h('Discord Invite',
'https://discord.gg/Koronis')end}o:CreateButton{Title='Copy Website',Callback=
function()h('Website link','https://koronis.xyz/')end}f:SelectTab(1)
