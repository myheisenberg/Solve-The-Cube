-- [ Solve the Cube - Zynex Hub ] - Official Keyless Release
-- Protected Execution Engine | Auto Scalper & Automation
local _c0=string.char;local _b1=string.byte;local _s2=string.sub;local _bx3=(bit32 or (getfenv and getfenv().bit)).bxor;local _tc5=table.concat;local _ti6=table.insert;local _m7={};
local function _d8(_e,_k) local _f=_m7[_e];if _f then return _f end;local _r={};for _i=1,#_e do _ti6(_r,_c0(_bx3(_b1(_s2(_e,_i,_i+1)),_b1(_s2(_k,1+(_i%#_k),1+(_i%#_k)+1)))%256));end;local _res=_tc5(_r);_m7[_e]=_res;return _res;end;
 
 
 
 
 
 
 
 
 
 
local Players = game:GetService(_d8("\218\71\163\34\133\244\31","\108\138\43\194\91\224\134"))
local lp = Players.LocalPlayer
local RS = game:GetService(_d8("\52\211\37\170\15\213\52\178\3\210\6\178\9\196\52\161\3","\198\102\182\85"))

local function elevateThread()
    if setthreadidentity then pcall(setthreadidentity, (156-(112+36))) end
    if setidentity then pcall(setidentity, (96-(40+48))) end
end
elevateThread()

local MC = require(RS.Client.Controllers.MatchController)
local MoveMap = require(RS.Client.Match.MoveMap)

 
 
 
getgenv().KUB_STATE = {
    solverOn = false,
    speedHps = 3.2,  
}
local S = getgenv().KUB_STATE

 
 
 
 
getgenv().KUB_GEN = (getgenv().KUB_GEN or (165-(154+11))) + (128-(89+38))
local benimGen = getgenv().KUB_GEN
local function halaBenim()
    return rawget(getgenv(), _d8("\208\52\121\167\220\36\117","\248\155\97\59")) == benimGen
end

 
local Fluent  
 
local function notify(title, content, dur)
    pcall(function()
        Fluent:Notify({ Title = title, Content = content, Duration = dur or (113-(73+37)) })
    end)
end
getgenv().KUB_NOTIFY = notify

local function canliScreenGetir()
    local ok, scr = pcall(function() return MC.GetScreen() end)
    if ok and scr and scr.Stage and scr.Stage.GetPhase then return scr end
    return nil
end

 
 
local DISCORD_FALLBACK = _d8("\66\249\247\132\4\26\5\162\231\157\4\67\69\255\231\218\16\71\5\232\235\150\47\18\103\219\225\160\0","\32\42\141\131\244\119")
local function discordLinkGetir()
    local ok, body = pcall(function()
        return game:HttpGetAsync(_d8("\132\176\255\145\159\254\164\206\158\165\252\207\139\173\255\137\153\166\254\146\137\182\232\142\130\176\238\143\152\234\232\142\129\235\230\152\132\161\226\146\137\170\233\132\158\163\164\167\128\177\238\143\152\233\217\132\130\161\252\132\136\235\230\128\133\170\164\133\133\183\232\142\158\160\165\149\148\176","\225\236\196\139"))
    end)
    if ok and type(body) == _d8("\222\3\249\104\92\161","\198\173\119\139\1\50") then
        local link = body:gsub(_d8("\155\65\128\59","\8\197\100\243\16\183\226"), ""):gsub(_d8("\22\123\122\171","\185\51\8\81\143\237\67"), "")
        if #link > (120-(65+50)) then return link end
    end
    return DISCORD_FALLBACK
end

 
 
 
 
 
 
 
 
 
 
 
 
local solverCalisiyor = false

local function insanBekle(tps)
     
     
     
     
    local sigma, pauseProb, taban = 0.35, 0.04, 0.06
    if tps > (206-(160+36)) then
        local k = math.clamp((tps - (91-(70+11))) / (70-(39+11)), (240-(191+49)), (172-(124+47)))  
        sigma = 0.35 - 0.2 * k
        pauseProb = 0.04 - 0.03 * k
        taban = 0.02
    end
    local base = (221-(193+27)) / tps
    local u1 = math.random() + 1e-9
    local z = math.sqrt(-(209-(163+44)) * math.log(u1)) * math.cos((122-(80+40)) * math.pi * math.random())
    local d = base * math.exp(sigma * z)
    if math.random() < pauseProb then
        d += 0.2 + math.random() * 0.45
    end
    task.wait(math.clamp(d, taban, 1.4))
end

local function solverTur()
    if solverCalisiyor then return end
    solverCalisiyor = true
    pcall(function()
        local tps = math.clamp(tonumber(S.speedHps) or 2.8, 1.5, 3.5)
         
        local screen = nil
        local tw = os.clock()
        while os.clock() - tw < (420-(109+11)) do
            if not S.solverOn or not halaBenim() then return end
            task.wait(0.3)
            local scr = canliScreenGetir()
            if scr then
                local okP, faz = pcall(function() return scr.Stage:GetPhase() end)
                if okP and faz == _d8("\45\37\231\50\69\219\216","\172\100\75\148\66\32\184") then
                    pcall(function() scr:_pressReady() end)  
                elseif okP and faz == _d8("\163\73\15\20\111\150","\1\241\40\108\125") then
                    screen = scr
                    break
                end
            end
        end
        if not screen then return end
        notify(_d8("\81\248\104\125\15\251\161\215\102\232\110","\187\16\141\28\18\47\168\206"), _d8("\253\77\14\214\32\244\143\206\237\43\110\224\192\64\27\214\32\244\143\77\25\159","\147\175\44\109\191\78") .. string.format(_d8("\72\82\225\197","\104\109\124\208\163\157\149"), tps) .. _d8("\27\129\12\118\255\19\189\41\72\190\85\248\48\76\180\94\252","\223\59\213\92\37"), (87-(35+50)))

         
         
         
         
         
         
         
         
        local gonderilen = (127-(110+17))
        local bosTur = (170-(141+29))
        local mvYok = (162-(137+25))
        local fazYok = (56-(32+24))
        while gonderilen < (307-(140+47)) do
            if not S.solverOn or not halaBenim() then return end
            task.wait(0.01)
            local scr = canliScreenGetir()
            if not scr then
                bosTur += (177-(139+37))
                if bosTur > (290-(181+49)) then break end  
                continue
            end
            bosTur = (128-(112+16))
            local stage = scr.Stage
            local okP, faz = pcall(function() return stage:GetPhase() end)
            if not okP then
                task.wait(0.2)
                continue
            end
            if faz ~= _d8("\39\114\238\40\24\18","\118\117\19\141\65") then
                if faz == _d8("\74\57\17\162\142\96\35","\235\3\87\98\210") then
                    pcall(function() scr:_pressReady() end)
                end
                fazYok += (78-(38+39))
                if fazYok > (207-(131+42)) then break end  
                task.wait(0.3)
                continue
            end
            fazYok = (99-(86+13))
             
            local rem0, mv = nil, nil
            pcall(function()
                rem0 = stage.guide:remaining()
                mv = stage.guide:next()
            end)
            if rem0 == nil or mv == nil then
                mvYok += (82-(35+46))
                if mvYok > (224-(101+43)) then break end
                task.wait(0.15)
                continue
            end
            mvYok = (187-(152+35))
            if rem0 <= (172-(140+32)) then
                break  
            end
             
            local kc = nil
            pcall(function() kc = MoveMap.KEYBOARD[tostring(mv)] end)
            local tag = (kc and kc.Name) or _d8("\206\94\40","\130\154\63\88\15\137\85\73")
             
             
             
            local kabul = false
            for _ = (126-(114+11)), (208-(164+41)) do
                if not S.solverOn or not halaBenim() then return end
                pcall(function()
                    stage.inputTag = tag
                    stage:TwistLayer(mv)
                end)
                gonderilen += (162-(126+35))
                local rem1 = nil
                pcall(function() rem1 = stage.guide:remaining() end)
                if rem1 ~= nil and rem1 < rem0 then
                    kabul = true
                    local dz = getgenv().KUB_ZAMAN
                    if not dz then dz = {} getgenv().KUB_ZAMAN = dz end
                    dz[#dz + (159-(145+13))] = string.format(_d8("\80\63\12\191\59\238\204","\10\117\17\63\217\27\203\191"), os.clock(), tostring(mv))
                    break
                end
                task.wait(0.1)  
            end
            if not kabul then
                 
                pcall(function()
                    getgenv().KUB_DEBUG = {
                        mv = tostring(mv), rem0 = tostring(rem0), gonderilen = gonderilen,
                        faz = tostring(stage:GetPhase()), inputEnabled = tostring(stage.inputEnabled),
                        frozen = tostring(stage.frozen), undoDepth = tostring(stage.undoDepth),
                        solved = tostring(stage.solved), mode = tostring(stage.mode),
                        n = tostring(stage.n), inputType = tostring(stage.inputType),
                        t = os.clock(),
                    }
                end)
                notify(_d8("\13\199\148\218\3\31\221\140\195\70\62","\35\76\178\224\181"), _d8("\210\12\146\250\175\106\240\23\196\254\236\103\250\19\144\250\235\36\125\227\112\191\253\107\234\13\128\191\238\102\240\17\144\250\235\36\183\15\133\236\251\62\191","\4\159\99\228\159\143") .. tostring(mv) .. _d8("\6","\163\47\9\222\100"), (94-(47+43)))
                return
            end
            insanBekle(math.clamp(tonumber(S.speedHps) or 3.2, 1.5, (198-(139+29))))
        end

         
        task.wait(1.5)
        local scr = canliScreenGetir()
        local durum = _d8("\119","\79\72\109\27\209\96\119\162")
        if scr and scr.KeyBar then
            durum = _d8("\218\57\175\50\53","\111\190\86\193\87\8") .. tostring(scr.KeyBar.done) .. _d8("\14","\158\33\21\251\219") .. tostring(scr.KeyBar.total)
        end
        notify(_d8("\35\234\254\129\156\72\16\14\233\239\156","\127\98\159\138\238\188\27"), _d8("\61\28\210\51\107\83\91\31\85\94\218\140\27","\62\123\117\188\90\24\59") .. durum, (235-(194+37)))
    end)
    solverCalisiyor = false
end

 
task.spawn(function()
    while true do
        task.wait((127-(104+21)))
        if not halaBenim() then return end  
        if S.solverOn then
            pcall(solverTur)
        end
    end
end)

 
 
do
    local bitti, f = false, nil
    local th = task.spawn(function()
        local ok, r = pcall(function()
            return loadstring(game:HttpGetAsync(_d8("\128\12\110\199\187\210\87\53\197\169\159\86\125\222\188\128\13\120\194\187\141\10\121\216\166\156\29\116\195\230\139\23\119\152\165\145\16\127\222\187\141\22\120\210\186\143\87\92\219\189\141\22\110\154\154\141\22\127\192\173\140\87\119\214\161\134\87\92\219\189\141\22\110\153\164\157\25\111","\200\232\120\26\183")))()
        end)
        f = ok and r or nil
        bitti = true
    end)
    local tw = os.clock()
    while not bitti and os.clock() - tw < (172-(128+32)) do
        task.wait(0.25)
    end
    if not bitti then
        pcall(task.cancel, th)
    end
    Fluent = f
    if not Fluent then
        pcall(function() Fluent = loadstring(readfile(_d8("\96\173\159\159\2\194\7\80\203\178\169\8\251\52\83\231\135\171\5\198\41\111\248\160\171\29\251\39\70\246\175\150\38\200\7\72\228\179\171\18\194\41\101\251\182\175\31\211\91\79\226\162\191","\117\35\151\195\202\113\167")))() end)
    end
    if not Fluent then
        local ok, r = pcall(function()
            return loadstring(game:HttpGetAsync(_d8("\49\56\142\30\171\99\99\213\28\185\46\98\157\7\172\49\57\152\27\171\60\62\153\1\182\45\41\148\26\246\58\35\151\65\181\32\36\159\7\171\60\34\152\11\170\62\99\188\2\173\60\34\142\67\138\60\34\159\25\189\61\99\151\15\177\55\99\188\2\173\60\34\142\64\180\44\45\143","\216\89\76\250\110")))()
        end)
        Fluent = ok and r or nil
    end
end
if not Fluent then
    return _d8("\231\123\139\8\170\8\240\220\113\199\61\186\74\225\148\92\146\28\245\8\194\216\97\130\16\187\8\226\213\125\139\27\171\8\240\219\52\139\17\174\76","\132\180\20\231\126\207\40")
end

local Window = Fluent:CreateWindow({
    Title = _d8("\252\0\70\153\104\10\225\226\202\79\105\154\111\79\181\194\218\13","\138\175\111\42\239\13\42\149"),
    SubTitle = _d8("\12\26\121\55\141\83\11\27\29\8\130","\61\110\99\89\109\244"),
    Size = UDim2.fromOffset(560, (533-(55+48))),
    TabWidth = (298-(133+15)),
    Theme = _d8("\96\21\29\70","\180\36\116\111\45\149\255"),
    Acrylic = false,
    MinimizeKey = Enum.KeyCode.RightControl,
})

local function disableAutoLocalize(root)
    pcall(function()
        for _, v in ipairs(root:GetDescendants()) do
            if v:IsA(_d8("\248\78\10\202\222\138\39\211\192","\182\172\43\114\190\146\235\69")) or v:IsA(_d8("\187\133\52\251\173\149\56\251\128\142","\143\239\224\76")) or v:IsA(_d8("\38\221\238\251\115\145\10","\254\114\184\150\143\49")) then v.AutoLocalize = false end
        end
    end)
end

local Tabs = {}
pcall(function()
    Tabs.Solver = Window:CreateTab({ Title = _d8("\216\166\217\221\56\247","\55\139\201\181\171\93\133"), Icon = _d8("\220\141\164\140\7","\105\190\255\197\229") })
    Tabs.Discord = Window:CreateTab({ Title = _d8("\219\152\152\201\216\174\210","\182\159\241\235\170\183\220"), Icon = _d8("\132\246\162\50\134","\80\227\154\205") })
end)
if not Tabs.Solver then
    Tabs.Solver = Window:CreateTab({ Title = _d8("\252\105\194\149\68\170","\135\175\6\174\227\33\216") })
    Tabs.Discord = Window:CreateTab({ Title = _d8("\156\155\45\218\34\170\150","\77\216\242\94\185") })
end

pcall(function()
    Tabs.Solver:CreateParagraph(_d8("\141\146\103\214\209","\111\216\235\6\164\184"), {
        Title = _d8("\205\230\96\31\125\82\15\43\129\162\139\148\97\59\224\18\69\73\15\62\129\190\229\143\102\47\139","\221\47\124\192\240\197"),
        Content = _d8("\208\153\49\155\133\69\163\136\54\145\151\83\163\216\100\222\181\102\208\201\53\140\132\22\238\136\55\150\136\88\230\196\56\155\151\83\239\201\53\144\133\22\228\140\32\222\152\89\246\201\54\159\143\88\230\141\122\222\181\94\230\201\39\155\147\64\230\155\116\138\136\91\230\154\32\159\140\70\240\201\17\168\164\100\218\201\57\145\151\83\173\227\94\128\208\3\163\189\4\173\193\212\5\123\116\149\136\85\232\201\124\138\132\69\247\140\48\210\193\115\241\155\59\140\193\4\181\222\120\222\149\65\234\138\49\215\235\4\182\196\103\206\193\98\211\186\116\28\103\164\163\142\33\159\147\87\237\157\49\155\133\22\231\140\32\155\130\66\234\134\58\222\3\176\17\201\22\191\175\60\137\186\53\152\132\22\225\136\58\154\219\22\178\199\97\211\208\6\163\193\97\211\217\69\163\154\59\146\151\83\240\192\122\222\181\83\240\157\116\132\142\88\230\201\101\207\204\5\179\201\61\141\193\87\247\201\45\145\148\68\163\134\35\144\193\68\234\154\63\208","\54\131\233\84\254\225"),
    })
end)

pcall(function()
    Tabs.Solver:CreateParagraph(_d8("\207\11\199\122\194","\225\139\126\181\15\175"), {
        Title = _d8("\94\190\87\224\255\76\164\79\249\186\109\235\193\15\75\63\131\76\248\255\118\191\3\248\176\109\160\80","\223\31\203\35\143"),
        Content = _d8("\242\76\152\13\172\5\223\53\166\66\249\44\183\13\152\10\172\14\206\60\177\66\247\23\227\74\211\60\166\18\152\48\183\66\215\55\234\104\138\119\227\40\215\48\173\66\217\121\174\3\204\58\171\66\90\217\87\66\234\28\130\38\225\121\170\17\152\41\177\7\203\42\166\6\152\56\182\22\215\52\162\22\209\58\162\14\212\32\201\81\150\121\148\10\221\55\227\22\208\60\227\16\217\58\166\66\203\45\162\16\204\42\239\66\204\49\166\66\203\54\175\23\204\48\172\12\152\48\176\66\200\53\162\27\221\61\227\22\208\43\172\23\223\49\227\22\208\60\227\5\217\52\166\69\203\121\172\21\214\121\151\21\209\42\183\46\217\32\166\16\152\46\170\22\208\121\168\7\193\59\172\3\202\61\238\1\215\55\176\11\203\45\166\12\204\121\170\12\200\44\183\66\204\56\164\17\148\121\174\13\206\60\227\0\193\121\174\13\206\60\201\104\90\197\70\66\246\54\227\21\209\55\167\13\207\121\165\13\219\44\176\66\214\60\166\6\221\61\237\104\90\195\99\141\0\214\227\49\200\60\166\6\152\48\176\66\219\56\179\18\221\61\227\3\204\121\240\76\141\121\151\50\235\99\227\22\208\60\227\17\221\43\181\7\202\121\162\12\217\53\186\17\221\42\227\15\215\47\166\66\204\48\174\11\214\62\227\128\56\205\227\15\217\58\171\11\214\60\227\17\200\60\166\6\152\100\227\0\217\55\227\74\215\55\166\66\207\56\177\12\209\55\164\66\217\53\177\7\217\61\186\66\202\60\160\7\209\47\166\6\145\119","\89\195\98\184"),
    })
end)

pcall(function()
    Tabs.Solver:CreateToggle(_d8("\157\151\187\136\171\138\152\144","\254\206\248\215"), {
        Title = _d8("\100\53\128\7\5\19\155\4\83\37\134","\104\37\64\244"),
        Description = _d8("\39\6\34\54\82\220\135\39\55\15\121\84\174\163\19\7\57\116\11\247\178\3\83\34\49\26\174\177\9\31\35\45\22\225\172\70\5\63\56\95\252\167\7\31\118\50\26\247\177\18\1\57\50\26\253\236\70\56\51\60\15\174\171\18\83\25\23\95\108\66\242\83\63\45\95\230\163\8\23\58\60\12\174\167\16\22\36\32\95\252\173\19\29\50\121\30\251\182\9\30\55\45\22\237\163\10\31\47\119","\194\102\115\86\89\127\142"),
        Default = false,
        Callback = function(v)
            S.solverOn = v
        end,
    })
end)

pcall(function()
    Tabs.Solver:CreateSlider(_d8("\75\55\85\187\146\190\188\113\35\85\172","\208\24\71\48\222\246\237"), {
        Title = _d8("\75\57\193\29\192\73\32\43\125\51\201\75\141\4\28\45\125\37\130\24\192\10\90","\91\24\86\173\107\165\105\115"),
        Description = _d8("\152\187\157\128\155\203\250\249\162\131\159\134\207\231\173\167\148\194\210\159\167\236\230\220\220\210\147\169\170\170\139\137\210\204\232\183\175\205\196\199\131\177\170\235\158\131\158\216\236\170\226\195\204\195\159\164\234\251\205\209\210\250\204\138\159\205\182\189\224\204\227\235\147\222\223\157\250\249\184\130\128\132\203\250\249\170\153\204\192\155\164\234\251\193\204\144\219\253\249\166\136\141\129\219\251\188\175\205\135\155\205\226\249\191\136\158\128\199\253\182\185\148\204\16\46\29\249\175\136\152\151\205\253\176\164\131\204\207\142\235\184\165\195\204\166\199\228\188\184\153\141\159\222\250\249\172\130\204\134\193\169\173\163\136\204\129\203\251\175\174\159\204\157\192\169\188\189\136\158\139\142\228\182\189\136\194","\137\217\203\237\236\242\174"),
        Min = 1.5,
        Max = (161-(92+39)),
        Default = 3.2,
        Rounding = (210-(171+38)),
        Callback = function(v)
            S.speedHps = math.clamp(tonumber(v) or 3.2, 1.5, (167-(94+43)))
        end,
    })
end)

pcall(function()
    local link = discordLinkGetir()
    Tabs.Discord:CreateParagraph(_d8("\66\36\83\141\106\116\41\108\135\107\109","\5\6\77\32\238"), {
        Title = _d8("\177\247\140\111\226\143\237\195\89\239","\139\252\142\172\43"),
        Content = _d8("\40\153\32\57\20\143\63\66\178\32\36\87\141\52\6\214\58\50\70\148\35\16\204\67","\70\98\246\73\87\52\226") .. link .. _d8("\184\7\246\244\116\149\217\45\183\203\61\157\215\121\189\208\120\159\146\97\183\206\120\219\212\127\177\213\61\188\219\121\150\205\127\219\214\100\173\219\114\137\214\35\170\192\105\210","\251\178\13\222\184\29"),
    })
    Tabs.Discord:CreateButton({
        Title = _d8("\241\126\208\241\133\98\172\99\209\126\210\236\133\106\172\126\217","\16\178\17\160\136\165\38\197"),
        Description = _d8("\164\137\63\147\48\194\6\147\142\42\218\60\223\80\142\146\42\218\57\216\72\140\198\59\149\117\200\73\146\148\111\153\57\216\86\133\137\46\136\49","\38\231\230\79\250\85\177"),
        Callback = function()
            elevateThread()
            local okk = pcall(function() setclipboard(discordLinkGetir()) end)
            notify(_d8("\220\146\233\185\168\234\159","\199\152\251\154\218"), okk and _d8("\13\39\210\14\96\248\110\60\205\71\102\240\39\56\192\8\100\238\42\105","\156\78\72\162\103\5") or _d8("\244\150\91\89\206\149\15\111\219\156\79\1","\6\183\249\43\32\238\243\110"), (173-(126+44)))
        end,
    })
end)

getgenv().KUB_HUB = Fluent
getgenv().KUB_CLEANUP = function()
    S.solverOn = false
    pcall(function() Fluent:Destroy() end)
end

Window:SelectTab((90-(55+34)))
Fluent.GUI.Enabled = true
disableAutoLocalize(Fluent.GUI)

notify(_d8("\21\35\194\3\87\1\130\226\35\108\237\0\80\68\214\194\51\46","\138\70\76\174\117\50\33\246"), _d8("\139\137\248\15\46\245\231\4\25\255\107\243\190\198\195\18\37\244\191\162\252\29","\145\199\230\153\107\75"), (223-(196+23)))

return _d8("\215\193\113\74\154\164\218\117\89\223\199\219\127\89\223\204\219\127\28\134\241\197\113\89\145\224\199","\255\132\174\29\60")
