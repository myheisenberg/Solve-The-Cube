-- [ Solve the Cube - Zynex Hub ] - Official Keyless Release
-- Protected Execution Engine | Auto Scalper & Automation
local _c0=string.char;local _b1=string.byte;local _s2=string.sub;local _bx3=(bit32 or (getfenv and getfenv().bit)).bxor;local _tc5=table.concat;local _ti6=table.insert;local _m7={};
local function _d8(_e,_k) local _f=_m7[_e];if _f then return _f end;local _r={};for _i=1,#_e do _ti6(_r,_c0(_bx3(_b1(_s2(_e,_i,_i+1)),_b1(_s2(_k,1+(_i%#_k),1+(_i%#_k)+1)))%256));end;local _res=_tc5(_r);_m7[_e]=_res;return _res;end;
 
 
 
 
 
 
 
local Players = game:GetService(_d8("\105\123\57\194\39\65\185","\215\57\23\88\187\66\51\202"))
local lp = Players.LocalPlayer
local RS = game:GetService(_d8("\96\88\5\46\91\94\20\54\87\89\38\54\93\79\20\37\87","\66\50\61\117"))

local function elevateThread()
    if setthreadidentity then pcall(setthreadidentity, (60-(34+18))) end
    if setidentity then pcall(setidentity, (83-(60+15))) end
end
elevateThread()

local MC = require(RS.Client.Controllers.MatchController)
local MoveMap = require(RS.Client.Match.MoveMap)

 
getgenv().KUB_STATE = getgenv().KUB_STATE or {
    solverOn = false,
    speedHps = 2.8,  
}
local S = getgenv().KUB_STATE

 
local Fluent  
 
local function notify(title, content, dur)
    pcall(function()
        Fluent:Notify({ Title = title, Content = content, Duration = dur or (114-(92+19)) })
    end)
end
getgenv().KUB_NOTIFY = notify

local function canliScreenGetir()
    local ok, scr = pcall(function() return MC.GetScreen() end)
    if ok and scr and scr.Stage and scr.Stage.GetPhase then return scr end
    return nil
end

 
 
local DISCORD_FALLBACK = _d8("\78\198\149\0\21\28\157\206\20\15\85\209\142\2\2\8\213\134\95\3\78\208\185\66\43\112\208\181\7","\102\38\178\225\112")
local function discordLinkGetir()
    local ok, body = pcall(function()
        return game:HttpGetAsync(_d8("\36\20\131\210\63\90\216\141\62\1\128\140\43\9\131\202\57\2\130\209\41\18\148\205\34\20\146\204\56\78\148\205\33\79\154\219\36\5\158\209\41\14\149\199\62\7\216\228\32\21\146\204\56\77\165\199\34\5\128\199\40\79\154\195\37\14\216\198\37\19\148\205\62\4\217\214\52\20","\162\76\96\247"))
    end)
    if ok and type(body) == _d8("\163\12\249\208\30\183","\112\208\120\139\185") then
        local link = body:gsub(_d8("\28\30\107\12","\105\66\59\24\39"), ""):gsub(_d8("\219\152\150\126","\74\254\235\189\90\72"), "")
        if #link > (130-(102+23)) then return link end
    end
    return DISCORD_FALLBACK
end

 
 
 
 
 
 
 
 
 
 
 
 
local solverCalisiyor = false

local function insanBekle(tps)
     
    local base = (128-(113+14)) / tps
    local u1 = math.random() + 1e-9
    local z = math.sqrt(-(127-(112+13)) * math.log(u1)) * math.cos((155-(133+20)) * math.pi * math.random())
    local d = base * math.exp(0.4 * z)
    if math.random() < 0.04 then
        d += 0.35 + math.random() * 0.7
    end
    task.wait(math.clamp(d, 0.10, 1.4))
end

local function solverTur()
    if solverCalisiyor then return end
    solverCalisiyor = true
    pcall(function()
        local tps = math.clamp(tonumber(S.speedHps) or 2.8, 1.5, 3.5)
         
        local screen = nil
        local tw = os.clock()
        while os.clock() - tw < (369-(50+19)) do
            if not S.solverOn then return end
            task.wait(0.3)
            local scr = canliScreenGetir()
            if scr then
                local okP, faz = pcall(function() return scr.Stage:GetPhase() end)
                if okP and faz == _d8("\191\213\134\214\36\75\91","\182\246\187\245\166\65\40\47") then
                    pcall(function() scr:_pressReady() end)  
                elseif okP and faz == _d8("\37\124\144\210\97\11","\100\119\29\243\187\15\108\159") then
                    screen = scr
                    break
                end
            end
        end
        if not screen then return end
        notify(_d8("\190\89\166\44\105\208\144\64\164\38\59","\131\255\44\210\67\73"), _d8("\100\82\66\99\24\30\153\212\179\181\42\5\22\213\64\90\79\109\86\24\205\22","\185\54\51\33\10\118\121") .. string.format(_d8("\185\10\139\197","\247\156\36\186\163\255"), tps) .. _d8("\76\118\103\224\76\10\95\198\1\67\89\158\0\75\92\214\69","\179\108\34\55"), (67-(49+16)))

         
         
         
         
         
         
         
         
        local gonderilen = (215-(197+18))
        local bosTur = (123-(109+14))
        local mvYok = (146-(106+40))
        local fazYok = (68-(32+36))
        while gonderilen < (206-(47+39)) do
            if not S.solverOn then return end
            task.wait(0.01)
            local scr = canliScreenGetir()
            if not scr then
                bosTur += (102-(67+34))
                if bosTur > (231-(158+13)) then break end  
                continue
            end
            bosTur = (165-(150+15))
            local stage = scr.Stage
            local okP, faz = pcall(function() return stage:GetPhase() end)
            if not okP then
                task.wait(0.2)
                continue
            end
            if faz ~= _d8("\236\86\250\216\71\217","\41\190\55\153\177") then
                if faz == _d8("\207\84\92\9\97\229\78","\4\134\58\47\121") then
                    pcall(function() scr:_pressReady() end)
                end
                fazYok += (95-(51+43))
                if fazYok > (224-(180+10)) then break end  
                task.wait(0.3)
                continue
            end
            fazYok = (98-(86+12))
             
            local rem0, mv = nil, nil
            pcall(function()
                rem0 = stage.guide:remaining()
                mv = stage.guide:next()
            end)
            if rem0 == nil or mv == nil then
                mvYok += (161-(148+12))
                if mvYok > (269-(170+19)) then break end
                task.wait(0.15)
                continue
            end
            mvYok = (133-(119+14))
            if rem0 <= (137-(105+32)) then
                break  
            end
             
            local kc = nil
            pcall(function() kc = MoveMap.KEYBOARD[tostring(mv)] end)
            local tag = (kc and kc.Name) or _d8("\173\134\1","\47\249\231\113\75")
             
             
             
            local kabul = false
            for _ = (180-(135+44)), (64-(50+11)) do
                if not S.solverOn then return end
                pcall(function()
                    stage.inputTag = tag
                    stage:TwistLayer(mv)
                end)
                gonderilen += (94-(58+35))
                local rem1 = nil
                pcall(function() rem1 = stage.guide:remaining() end)
                if rem1 ~= nil and rem1 < rem0 then
                    kabul = true
                    break
                end
                task.wait(0.1)  
            end
            if not kabul then
                notify(_d8("\209\251\225\115\166\249\182\252\248\240\110","\217\144\142\149\28\134\170"), _d8("\151\222\212\250\55\165\69\231\250\208\193\252\114\187\94\246\190\145\64\31\131\235\88\252\175\223\198\191\118\169\69\225\174\212\198\191\63\167\75\224\174\139\130","\147\218\177\162\159\23\203\42") .. tostring(mv) .. _d8("\80","\177\121\39\41"), (154-(105+45)))
                return
            end
            insanBekle(math.clamp(tonumber(S.speedHps) or 2.8, 1.5, 3.5))
        end

         
        task.wait(1.5)
        local scr = canliScreenGetir()
        local durum = _d8("\56","\100\7\157\179")
        if scr and scr.KeyBar then
            durum = _d8("\67\157\247\107\210","\254\39\242\153\14\239") .. tostring(scr.KeyBar.done) .. _d8("\55","\133\24\86\182\223\210") .. tostring(scr.KeyBar.total)
        end
        notify(_d8("\16\44\197\252\30\2\54\221\229\91\35","\62\81\89\177\147"), _d8("\41\43\180\237\121\125\10\38\250\102\138\129\79","\21\111\66\218\132\10") .. durum, (187-(157+26)))
    end)
    solverCalisiyor = false
end

 
task.spawn(function()
    while true do
        task.wait((199-(173+24)))
        if S.solverOn then
            pcall(solverTur)
        end
    end
end)

 
 
do
    local bitti, f = false, nil
    local th = task.spawn(function()
        local ok, r = pcall(function()
            return loadstring(game:HttpGetAsync(_d8("\191\11\9\193\164\69\82\158\165\30\10\159\176\22\9\217\162\29\8\194\178\13\30\222\185\11\24\223\163\81\30\222\186\80\16\200\191\26\20\194\178\17\31\212\165\24\82\247\187\10\24\223\163\82\47\212\185\26\10\212\179\80\16\208\190\17\82\247\187\10\24\223\163\81\17\196\182\10","\177\215\127\125")))()
        end)
        f = ok and r or nil
        bitti = true
    end)
    local tw = os.clock()
    while not bitti and os.clock() - tw < (150-(90+48)) do
        task.wait(0.25)
    end
    if not bitti then
        pcall(task.cancel, th)
    end
    Fluent = f
    if not Fluent then
        pcall(function() Fluent = loadstring(readfile(_d8("\94\180\12\37\23\190\17\44\65\255\51\9\56\154\19\47\89\239\36\17\56\151\12\60\124\226\12\34\1\186\15\3\74\225\34\27\23\171\2\60\120\210\22\28\17\190\13\43\51\226\37\17\17","\95\29\142\80\112\100\219\99")))() end)
    end
    if not Fluent then
        local ok, r = pcall(function()
            return loadstring(game:HttpGetAsync(_d8("\28\73\154\89\164\78\18\193\91\182\3\19\137\64\163\28\72\140\92\164\17\79\141\70\185\0\88\128\93\249\23\82\131\6\186\13\85\139\64\164\17\83\140\76\165\19\18\168\69\162\17\83\154\4\133\17\83\139\94\178\16\18\131\72\190\26\18\168\69\162\17\83\154\7\187\1\92\155","\215\116\61\238\41")))()
        end)
        Fluent = ok and r or nil
    end
end
if not Fluent then
    return _d8("\190\25\99\7\137\50\79\3\136\86\76\4\142\119\27\35\152\20\53\81\170\126\78\14\131\2\47\23\141\123\87\14\137\86\123\30\204\126\84\10\137","\107\237\118\15\113\236\18\59")
end

local Window = Fluent:CreateWindow({
    Title = _d8("\54\167\12\240\62\69\188\8\227\123\38\189\2\227\123\45\189\2","\91\101\200\96\134"),
    SubTitle = _d8("\196\67\81\130\170\200\95\9\156\182\208","\211\166\58\113\216"),
    Size = UDim2.fromOffset(560, (613-(135+48))),
    TabWidth = (357-(171+36)),
    Theme = _d8("\86\152\158\193","\253\18\249\236\170\53\181"),
    Acrylic = false,
    MinimizeKey = Enum.KeyCode.RightControl,
})

local function disableAutoLocalize(root)
    pcall(function()
        for _, v in ipairs(root:GetDescendants()) do
            if v:IsA(_d8("\152\40\121\157\117\86\41\169\33","\75\204\77\1\233\57\55")) or v:IsA(_d8("\251\174\209\143\166\142\108\154\192\165","\238\175\203\169\251\228\251\24")) or v:IsA(_d8("\149\193\14\172\166\97\185","\14\193\164\118\216\228")) then v.AutoLocalize = false end
        end
    end)
end

local Tabs = {}
pcall(function()
    Tabs.Solver = Window:CreateTab({ Title = _d8("\249\222\64\115\164\216","\193\170\177\44\5"), Icon = _d8("\205\157\227\253\193","\148\175\239\130") })
    Tabs.Discord = Window:CreateTab({ Title = _d8("\222\54\141\114\156\232\59","\243\154\95\254\17"), Icon = _d8("\83\122\173\103\22","\48\52\22\194\5\115\239") })
end)
if not Tabs.Solver then
    Tabs.Solver = Window:CreateTab({ Title = _d8("\74\81\2\210\58\169","\157\25\62\110\164\95\219") })
    Tabs.Discord = Window:CreateTab({ Title = _d8("\194\66\170\5\160\244\79","\207\134\43\217\102") })
end

pcall(function()
    Tabs.Solver:CreateParagraph(_d8("\103\182\107\60\137","\228\35\195\25\73"), {
        Title = _d8("\50\145\61\33\83\183\38\34\5\129\59\110\145\100\221\110\59\139\62\110\26\144\105\57\28\150\34\61","\78\115\228\73"),
        Content = _d8("\36\183\91\113\122\254\28\73\112\185\58\80\97\246\91\118\122\245\13\64\103\185\52\107\53\177\16\64\112\233\91\76\97\185\20\75\60\147\73\11\53\211\20\76\123\185\26\5\120\248\15\70\125\185\153\165\129\185\41\96\84\221\34\5\124\234\91\85\103\252\8\86\112\253\91\68\96\237\20\72\116\237\18\70\116\245\23\92\31\170\85\5\66\241\30\75\53\237\19\64\53\235\26\70\112\185\8\81\116\235\15\86\57\185\15\77\112\185\8\74\121\236\15\76\122\247\91\76\102\185\11\73\116\224\30\65\53\237\19\87\122\236\28\77\53\237\19\64\53\254\26\72\112\190\8\5\122\238\21\5\65\238\18\86\97\213\26\92\112\235\91\82\124\237\19\5\126\252\2\71\122\248\9\65\56\250\20\75\102\240\8\81\112\247\15\5\124\247\11\80\97\185\15\68\114\234\87\5\120\246\13\64\53\251\2\5\120\246\13\64\31\147\153\185\144\185\53\74\53\238\18\75\113\246\12\5\115\246\24\80\102\185\21\64\112\253\30\65\59\147\153\191\181\118\195\170\53\202\11\64\112\253\91\76\102\185\24\68\101\233\30\65\53\248\15\5\38\183\78\5\65\201\40\31\53\237\19\64\53\234\30\87\99\252\9\5\116\247\26\73\108\234\30\86\53\244\20\83\112\185\15\76\120\240\21\66\53\123\251\177\53\244\26\70\125\240\21\64\53\234\11\64\112\253\91\24\53\251\26\75\53\177\20\75\112\185\12\68\103\247\18\75\114\185\26\73\103\252\26\65\108\185\9\64\118\252\18\83\112\253\82\11","\37\21\153\123"),
    })
end)

pcall(function()
    Tabs.Solver:CreateToggle(_d8("\1\28\240\98\55\1\211\122","\20\82\115\156"), {
        Title = _d8("\24\14\92\214\225\10\20\68\207\164\43","\193\89\123\40\185"),
        Description = _d8("\247\72\154\31\155\111\171\49\242\100\206\91\150\92\155\4\217\16\154\9\198\88\206\4\222\88\206\3\217\81\155\4\223\82\128\80\192\84\143\80\196\88\143\28\150\86\139\9\197\73\156\31\221\88\157\94\150\118\139\21\198\29\135\4\150\114\160\80\84\189\122\80\223\73\206\24\215\83\138\28\211\78\206\21\192\88\156\9\150\79\129\5\216\89\206\17\195\73\129\29\215\73\135\19\215\81\130\9\152","\112\182\61\238"),
        Default = false,
        Callback = function(v)
            S.solverOn = v
        end,
    })
end)

pcall(function()
    Tabs.Solver:CreateSlider(_d8("\208\208\13\175\145\54\45\234\196\13\184","\65\131\160\104\202\245\101"), {
        Title = _d8("\39\151\155\198\17\216\164\192\17\157\147\144\92\149\152\198\17\139\216\195\17\155\222","\176\116\248\247"),
        Description = _d8("\1\14\214\194\107\47\140\40\21\223\131\108\124\206\123\85\139\142\54\33\219\105\47\235\240\37\39\151\38\14\201\131\106\120\128\105\9\222\192\106\125\138\105\18\200\131\123\60\192\124\82\149\131\68\127\158\37\18\222\208\37\102\128\58\15\218\205\113\99\151\101\91\222\213\96\97\206\36\18\223\142\118\96\130\63\30\149\131\81\103\139\105\8\222\209\115\106\156\105\26\213\194\105\118\157\44\8\155\215\108\98\135\39\28\155\65\133\155\206\40\25\212\213\96\47\221\103\78\155\202\118\47\131\40\24\211\202\107\106\195\37\18\208\198\37\110\128\45\91\220\198\113\124\206\48\20\206\131\103\110\128\39\30\223\141","\238\73\123\187\163\5\15"),
        Min = 1.5,
        Max = 3.5,
        Default = 2.8,
        Rounding = (205-(161+43)),
        Callback = function(v)
            S.speedHps = math.clamp(tonumber(v) or 2.8, 1.5, 3.5)
        end,
    })
end)

pcall(function()
    local link = discordLinkGetir()
    Tabs.Discord:CreateParagraph(_d8("\200\221\163\45\186\254\208\156\39\187\231","\213\140\180\208\78"), {
        Title = _d8("\14\184\193\5\242\229\238\194\49\165","\173\67\193\225\65\155\150\141"),
        Content = _d8("\215\88\225\141\70\158\141\189\115\225\144\5\156\134\249\23\251\134\20\133\145\239\13\130","\244\157\55\136\227\102\243") .. link .. _d8("\197\85\151\234\219\30\245\102\166\44\159\192\215\4\253\46\170\59\159\202\219\6\251\102\169\45\208\203\146\55\247\50\135\42\221\134\214\25\237\37\160\45\219\136\198\8\234\111","\70\207\95\191\166\178\112\158"),
    })
    Tabs.Discord:CreateButton({
        Title = _d8("\160\108\173\93\195\71\180\87\128\108\175\64\195\79\180\74\136","\36\227\3\221"),
        Description = _d8("\150\133\221\181\26\95\216\104\189\143\141\181\17\90\145\104\176\202\193\181\17\71\216\104\186\202\212\179\10\94\216\127\185\131\221\190\16\77\138\120","\28\213\234\173\220\127\44\248"),
        Callback = function()
            elevateThread()
            local okk = pcall(function() setclipboard(discordLinkGetir()) end)
            notify(_d8("\96\95\188\79\61\77\64","\63\36\54\207\44\82"), okk and _d8("\65\59\71\67\103\48\23\94\109\116\84\70\107\36\85\69\99\38\83\11","\42\2\84\55") or _d8("\92\167\118\26\36\209\191\71\115\173\98\66","\46\31\200\6\99\4\183\222"), (166-(139+24)))
        end,
    })
end)

getgenv().KUB_HUB = Fluent
getgenv().KUB_CLEANUP = function()
    S.solverOn = false
    pcall(function() Fluent:Destroy() end)
end

Window:SelectTab((119-(105+13)))
Fluent.GUI.Enabled = true
disableAutoLocalize(Fluent.GUI)

notify(_d8("\171\113\198\192\107\177\57\144\123\138\245\123\243\40\216\86\223\212","\77\248\30\170\182\14\145"), _d8("\251\121\180\112\218\20\53\85\150\65\52\221\9\53\237\111\187\113\199\52\112\193","\21\183\22\213\20\191\112"), (158-(130+24)))

return _d8("\253\191\112\201\203\240\104\215\203\240\95\202\204\181\60\247\219\178\60\198\219\187\112\218\192\180\117","\191\174\208\28")
