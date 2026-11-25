-- Tong cong: 1495 ham da trich xuat tu dump_14_1843902.lua

-- [[ FUNCTION ID: 10 ]] Strings: [rbxts_include, node_modules, @easy-games, knit, src]
[10]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z,Y={"rbxts_include","node_modules","@easy-games","knit","src","Knit"},(game:GetService("ReplicatedStorage"));
    for n,n in z,nil,nil do
        Y=Y:FindFirstChild(n);
        if not(Y)then
            return false;
        end;
    end;
    z=Y:FindFirstChild("KnitClient");
    if z then
        if not(Y:FindFirstChild("Services"))then
            return false;
        end;
    else
        return false;
    end;
    if not(K.NativeRequire)then
        if not(K.Debug)then
            return false;
        end;
    end;
    local K,Y=_(z);
    return K and type(Y)=="table"and type(Y.Controllers)=="table"and next(Y.Controllers)~=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16 ]] 
[16]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if not(K.active)then
        return false;
    end;
    local _=z and(z.Entity or z);
    z=_ and K.isCheater(_.Player)or false;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 23 ]] Strings: [table]
[23]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z,Y=K(_[4][_[6]]);
    if z then
        if type(Y)~="table"then
            return false;
        end;
    else
        return false;
    end;
    local z,n=K(_[4][_[6]]);
    return z and n==Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 24 ]] Strings: [Players, PlayerScripts, PlayerModule, CommonUtils, FlagUtil]
[24]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()local z=game:GetService("Players").LocalPlayer:FindFirstChild("PlayerScripts");
    local _=z and(z:FindFirstChild("PlayerModule"));
    z=_ and(_:FindFirstChild("CommonUtils"));
    _=z and(z:FindFirstChild("FlagUtil")or z:FindFirstChild("ConnectionUtil"));
    if _ then
    else
        z=game:GetService("ReplicatedStorage"):FindFirstChild("rbxts_include");
        _=z and(z:FindFirstChild("RuntimeLib"));
    end;
    if _ then
        if _.ClassName=="ModuleScript"then
            K[4][K[6]]=_;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 25 ]] Strings: [table, function]
[25]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_,Y,n)local y=type(K)=="table"and K[z]or nil;
    if type(y)=="function"then
        return y(_,Y,n);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 28 ]] Strings: [Head, Instance, BasePart]
[28]=function(z,z,z,z,z)return function(z)return function(z)if not(z)then
    return nil;
end;
local K,_=z.RootPart,z.Head;
if _ then
    if _.Name=="Head"then
        return _;
    end;
end;
local Y=z.PistonwareHead;
if Y then
    if Y.Parent then
        return Y;
    end;
end;
Y=z.Character;
if typeof(Y)=="Instance"then
    local n=Y:FindFirstChild("Head");
    if n and(n:IsA("BasePart"))then
    else
        n=nil;
        for y,y in Y:GetChildren()do
            if y:IsA("BasePart")then
                if y.Name:lower():find("head",1,true)then
                    n=y;
                    break;
                end;
            end;
        end;
    end;
    if n then
        z.PistonwareHead=n;
        return n;
    end;
end;
return _ or K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 31 ]] Strings: [table]
[31]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K();
    if not(Y)then
        return;
    end;
    local K=type(_.Skipped)=="table"and _.Skipped or{};
    _.Skipped=K;
    local _={z.both or{},z[Y]or{}};
    for z,z in _,nil,nil do
        for _,Y in z,nil,nil do
            K[_]=Y;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 36 ]] Strings: [function]
[36]=function(z,z,z,z,z,z,z,z)return function(z,z)return function(z)return type(z)=="function";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 37 ]] Strings: [string, table, not supported on this executor]
[37]=function(z,z,z,z,z,z)return function(z)return function(z,K)if type(z)~="string"then
    return;
end;
local _=shared.PistonwareHidden;
if type(_)~="table"then
    _={};
    shared.PistonwareHidden=_;
else
end;
_[z]=K or"not supported on this executor";
K=shared.slinky;
if type(K)=="table"then
    if type(K.modules)=="table"then
        if K.modules[z]~=nil then
            pcall(K.remove,K,z);
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 39 ]] Strings: [killaura, string, number]
[39]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=K.ItemOwner;
    if z=="killaura"then
        return false;
    end;
    local Y=K.ITEM_PRIORITY or _;
    local _=type(z)=="string"and Y[z];
    if type(_)~="number"then
        return false;
    elseif _<(Y.standalone or 1.5)then
        return false;
    end;
    _=os.clock()-(tonumber(K.ItemOwnerSince)or 0);
    return _<3;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 41 ]] 
[41]=function(z,z,z,z,z,z,z)return function(z)return function()return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 46 ]] Strings: [Lowest health, Highest health, Farthest, Headhunter, Crosshair]
[46]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y)if not(z)then
        return 0;
    end;
    if z.Target then
        return-math.huge;
    end;
    if y=="Lowest health"then
        return K(z);
    end;
    if y=="Highest health"then
        local Q=K(z);
        return-Q;
    end;
    if y=="Farthest"then
        local K,Q=z.RootPart,_.isAlive and _.character.RootPart;
        if K then
            if not(Q)then
                return 0;
            end;
        else
            return 0;
        end;
        return-(K.Position-Q.Position).Magnitude;
    end;
    if y=="Headhunter"then
        return Y(z);
    end;
    if y=="Crosshair"then
        local K,_=z.RootPart,n or workspace.CurrentCamera;
        if K then
            if not(_)then
                return math.huge;
            end;
        else
            return math.huge;
        end;
        local z=K.Position-_.CFrame.Position;
        if z.Magnitude<=0 then
            return-1;
        end;
        return-z.Unit:Dot(_.CFrame.LookVector);
    end;
    return 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 47 ]] Strings: [Closest]
[47]=function(z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(Y,n)local y=Y or K;
    local K=_[y];
    if K then
    else
        K={};
        _[y]=K;
    end;
    local _=n or false;
    local Y=K[_];
    if Y then
        return Y;
    end;
    Y=function(Q,J)local f,q=z[3](Q),z[3](J);
    if f~=q then
        return f;
    end;
    if n then
        if n~="Closest"then
            q,f=z[4](Q.Entity,n),z[4](J.Entity,n);
            if q~=f then
                return q<f;
            end;
            if z[5][n]then
                local f,q=z[6](Q.Entity,n),z[6](J.Entity,n);
                if f~=q then
                    return f<q;
                end;
            end;
        end;
    end;
    return y(Q,J);
end;
K[_]=Y;
return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 51 ]] 
[51]=function(z,z,z,z,z,z,z,z)return function(z,z,z)return function(z)local K,_=pcall(z);
    return K and _==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 53 ]] 
[53]=function(z,z,z,z,z,z)return function()return function(z,K)return z.Magnitude<K.Magnitude;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 59 ]] Strings: [Players]
[59]=function(z,z,z,z,z,z,z)return function(z,z)return function()return game:GetService("Players");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 64 ]] Strings: [string, solara, xeno]
[64]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]==nil then
        local z=_.Name;
        if type(z)~="string"or z==""then
            local _,Y=pcall(function()return identifyexecutor and({identifyexecutor()})[1]or nil;
        end);
        z=_ and type(Y)=="string"and Y or"";
    else
    end;
    z=z:lower();
    local _=z:sub(1,6)=="solara"and"solara"or z:sub(1,4)=="xeno"and"xeno";
    K[4][K[6]]=_ or false;
end;
local z=K[4][K[6]];
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 66 ]] 
[66]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()table.clear(K);
    table.clear(_);
    table.clear(Y);
    table.clear(n);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 67 ]] 
[67]=function(z,z,z,z,z)return function(z,z)return function()return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 70 ]] 
[70]=function(z,z,z,z,z,z,z)return function(z,z)return function()return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 76 ]] Strings: [table]
[76]=function(z,z,z,z,z,z)return function(z)return function()return type(getgenv())=="table";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 90 ]] Strings: [Closest, NPCs first]
[90]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_)if _=="Closest"then
        return 0;
    elseif K[_]then
        return 0;
    end;
    local K=z and z.Player~=nil;
    if _=="NPCs first"then
        return K and 1 or 0;
    end;
    return K and 0 or 1;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 93 ]] 
[93]=function(z,z,z,z,z)return function(z,z)return function()return identifyexecutor and({identifyexecutor()})[1]or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 94 ]] 
[94]=function(z,z,z,z,z,z,z)return function(z)return function()
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 104 ]] Strings: [none]
[104]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_)if K.ItemOwner~=z then
        return false;
    end;
    if _~=nil then
        if _~=K.ItemOwnerToken then
            return false;
        end;
    end;
    K.ItemOwner="none";
    K.ItemOwnerToken=K.ItemOwnerToken+1;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 109 ]] Strings: [string]
[109]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.ITEM_PRIORITY or _;
    if type(z)~="string"then
        return false;
    elseif Y[z]==nil then
        return false;
    end;
    if(Y[z]or 0)<(Y[K.ItemOwner]or 0)then
        return false;
    end;
    K.ItemOwnerToken=K.ItemOwnerToken+1;
    K.ItemOwner=z;
    K.ItemOwnerSince=os.clock();
    return true,K.ItemOwnerToken;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 113 ]] Strings: [number]
[113]=function(z,z,z,z,z)return function(z)return function(z)if not(z)then
    return 0;
end;
local K=z.Health;
if type(K)=="number"then
    return K;
end;
K=z.Humanoid;
return K and K.Health or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 114 ]] Strings: [table, string]
[114]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)local _=K.Skipped;
    local Y=type(_)=="table"and _[z]or nil;
    if type(Y)~="string"then
        return false;
    end;
    K.hide(z,Y);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 116 ]] 
[116]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()if shared.bedwars then
        if shared.bedwars.getSpeed then
            return shared.bedwars.getSpeed();
        end;
    end;
    local z=K._baseGetSpeed;
    return z();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 118 ]] 
[118]=function(z,z,z,z,z,z)return function(z)return function(z,K)local _,Y,n=false,false;
    task.spawn(function()Y,n=pcall(require,z);
    _=true;
end);
local z=os.clock()+(K or 10);
while true do
    K=not _ and os.clock()<z;
    if not K then
        break;
    end;
    task.wait();
end;
if not _ then
    return false,nil;
end;
z,K=Y,n;
return z,K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 143 ]] 
[143]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 151 ]] 
[151]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local _=K[z];
    if not(_)then
        return;
    end;
    for Y,Y in _.connections,nil,nil do
        Y:Disconnect();
    end;
    K[z]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 156 ]] 
[156]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)if K[4][K[6]]>0 then
        if os.clock()-_[4][_[6]]>=0.04 then
            Y(z,n,y,0);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 174 ]] Strings: [ObservedChestFolder, ObjectValue]
[174]=function(z,z,z,z,z,z)return function()return function(z)local K=z and(z:FindFirstChild("ObservedChestFolder"));
    return K and K:IsA("ObjectValue")and K or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 176 ]] 
[176]=function(z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n,y,Q,J)if Q.Magnitude<=1.0E-4 then
        return nil;
    elseif y-n<=0.001 then
        return nil;
    end;
    if not(K and _.Blockcast)then
        local K,f=Q.Y>0 and y or n,_.Raycast;
        return f(workspace,Vector3.new(Y.X,K,Y.Z),Q,J);
    end;
    local K,f=Vector3.new(Y.X,(n+y)*0.5,Y.Z),_.Blockcast;
    return f(workspace,CFrame.lookAt(K,K+z.look),Vector3.new(z.sx,y-n,z.sz),Q,J);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 180 ]] 
[180]=function(z,z,z,z,z,z,z)return function(z,z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 182 ]] 
[182]=function(z,z,z,z,z,z)return function(z)return function()return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 208 ]] 
[208]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 226 ]] Strings: [RootPart]
[226]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)local J,f=_[4][_[6]],{Origin=z,Range=Y[4][Y[6]].value,Part="RootPart",Players=true,Wallcheck=n[4][n[6]].enabled or nil,Milo=y(Q[4][Q[6]])};
    return K(J,f);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 238 ]] 
[238]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K[4][K[6]]~=z then
        K[4][K[6]]=z;
        n[4][n[6]]=_(Y(z)/2);
    end;
    z=n[4][n[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 247 ]] 
[247]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=K(z,n);
    z,n=_.pace(y,_.rate()),Y[4][Y[6]];
    return z+n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 255 ]] 
[255]=function(z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 258 ]] 
[258]=function(z,z,z,z,z,z)return function()return function(z,K)if not(z)then
    return;
end;
if z.value~=K then
    z:set(K);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 273 ]] Strings: [stud, studs]
[273]=function(z,z,z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 316 ]] Strings: [stud, studs]
[316]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 328 ]] 
[328]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function(z)K.lock_camaera=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 334 ]] Strings: [tinker-util, TinkerMachineLevel]
[334]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[4];
    local Y=z[5];
    return function()if not K[4][K[6]]then
        K[4][K[6]]=true;
        pcall(function()_[4][_[6]]=z[2](z[3].TS.games.bedwars.kit.kits.tinker["tinker-util"]).TinkerBalance;
    end);
end;
if _[4][_[6]]then
    local z,K=pcall(function()local n=_[4][_[6]];
    return n:getMaxShield(Y);
end);
if z then
    if K then
        return K;
    end;
end;
end;
local z=math.clamp(Y:GetAttribute("TinkerMachineLevel")or 1,1,5);
return 100+({10,80,170,310,500})[z];
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 338 ]] 
[338]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z={};
    for Y in K.owned,nil,nil do
        table.insert(z,Y);
    end;
    for K,K in z,nil,nil do
        _(K);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 364 ]] 
[364]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)if K.getEntity(z)then
        K.removeEntity(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 387 ]] Strings: [Instance, PlacedByUserId]
[387]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n)if typeof(n)~="Instance"then
        return;
    elseif Y[n]then
        return;
    elseif n:GetAttribute("PlacedByUserId")~=K.UserId then
        return;
    end;
    if _(n)then
        Y[n]=true;
        table.insert(z,n);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 389 ]] Strings: [function, string, then if Y~=, ExtraKit_]
[389]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()local z={};
    if type(K.activeKits)=="function"then
        for Y,Y in K.activeKits()do
            z[Y]=true;
        end;
    end;
    local Y=K.equippedKit;
    if type(Y)=="string"then
        if Y~=""then
            if Y~="none"then
                z[Y]=true;
            end;
        end;
    end;
    for K,Y in _:GetAttributes()do
        if Y==true then
            if K:sub(1,9)=="ExtraKit_"then
                z[K:sub(10)]=true;
            end;
        end;
    end;
    z.none=nil;
    z.random=nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 395 ]] Strings: [stud, studs]
[395]=function(z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 407 ]] Strings: [function]
[407]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if type(K.connect)=="function"then
        return K:connect(_);
    end;
    if type(K.Connect)=="function"then
        return K:Connect(_);
    end;
    error("StatusEffectAdded has no connect method");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 410 ]] 
[410]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].setRadius(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 412 ]] 
[412]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 418 ]] 
[418]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y,Q,J)local f,q,t=K.XP,K.SERVER_FRAME,Q-1;
    Q=math.max(y+(n-1)*q-z.M-z.At,0);
    local T=math.exp(-Q/f.TAU);
    local L,X,l=z.M+z.L*T,z.MM+f.DRIFT*f.DRIFT*Q+2*z.ML*T+T*T*z.LL+f.LEVEL*f.LEVEL*(1-T*T),_(K.PFrame,K.PRECISE_SLACK);
    L+=l*0.5;
    local _,Q,a=Y(X+z.Sig*z.Sig+l*l/12),z.Known,z.Gap;
    Q[t-1]=0;
    for Y=t-2,0,-1 do
        T=t-1-Y;
        Q[Y]=Q[Y+1]+(T<=z.GapN and a[(z.GapI-T)%f.GAP_N+1]or 0);
    end;
    a=J*1000+t;
    z.CdfAge=z.CdfAge+1;
    if z.CdfKey~=a or z.CdfAge>=16 then
        z.CdfKey=a;
        z.CdfAge=0;
        K.xtTable(z,J,t);
    end;
    local Y,Q,T,a,Z,m,M=K.xtValue(z,0,J,t),K.xtValue(z,1,J,t),K.xtValue(z,2,J,t),K.xtValue(z,f.GHOST_GAP,J,t),-math.huge,(n-1)*q+0.002,(n+1)*q;
    q=nil;
    t=1;
    while m<=M do
        J,l=K.xtScore(m,_,n,Y,Q,T,a);
        if J>Z then
            Z,q,t=J,m,l;
        else
        end;
        m=m+0.001;
    end;
    z=q;
    q=z;
    for J=-3,3,1 do
        if J~=0 then
            M,X=K.xtScore(z+J*2.5E-4,_,n,Y,Q,T,a);
            if M>Z then
                Z,q,t=M,z+J*2.5E-4,X;
            else
            end;
        else
        end;
    end;
    if t>f.PG_MAX then
        return nil;
    end;
    return y+q-L;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 441 ]] Strings: [InfiniteFly]
[441]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()K.release("InfiniteFly");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 442 ]] 
[442]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=z+K;
    if not(_(n+K))then
        return false;
    end;
    for K,K in Y,nil,nil do
        if _(z+K)then
            if not(_(n+K))then
                return false;
            end;
        else
            return false;
        end;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 448 ]] Strings: [werewolf-fear-status]
[448]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(_)if _ then
        if K[4][K[6]].enabled then
            pcall(function()z[2]:UnbindFromRenderStep("werewolf-fear-status");
        end);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 461 ]] Strings: [table, function]
[461]=function(z,z,z,z,z)return function(z,z)return function()local K,_=pcall(function()return z[1].BedAlarmController;
end);
if K then
    if type(_)=="table"then
        if type(_.triggerBedAlarmModel)=="function"then
            return _;
        end;
    end;
end;
return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 472 ]] 
[472]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)local _,Y=Vector3.new,z.AssemblyMass*(K[4][K[6]].value-1)*20.5;
    return _(0,Y,0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 489 ]] 
[489]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n,y)local Q=Y.Y-n;
    n=K(z,Y,Q+0.02,Q+0.1,Vector3.new(0,-_.VOID_DEPTH,0),y);
    return n==nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 492 ]] 
[492]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()K.stop();
    _.master=false;
    _.cheaters=false;
    _.active=false;
    Y();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 503 ]] 
[503]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function(z,_)local Y=K(z)or K(z+_);
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 509 ]] Strings: [skip: %d swaps in the last %d s, table]
[509]=function(z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,z,z,n,y,Q)local J,f,q,t,T=K.FH,K.FhShot,os.clock(),workspace:GetServerTimeNow(),_();
    local _,L=math.max(T+J.AFTER_SWORD-(t+J.SWITCH),0),K.fhReply();
    local X,l,a=_+J.SWITCH+L+K.fhSettle()+(y and 3 or 1)*Y.PFrame,K.fhNextSwing(T),Y.PCatchUp and not K.Synchronized and Y.PRECISE_CATCHUP or 0;
    K.FhShotId=K.FhShotId+1;
    f.swing=n and q or q-(t-T);
    f.due,f.plan,f.ride=q+(l-t),q+X,n==true;
    f.held=false;
    f.ok=false;
    f.out=0;
    f.fire=0;
    f.reply=0;
    f.back=0;
    f.again=0;
    if not(K.fhSwapRoom(q,2))then
        if shared.PistonwareDeveloper then
            K.fhTrace("skip: %d swaps in the last %d s",J.SWAP_CAP,J.SWAP_WINDOW);
        end;
        return nil;
    end;
    if not(n)then
        if t+X>l+a then
            y,q=z.combat,K.Meta and K.Meta.sword;
            J=type(y)=="table"and tonumber(y.damage);
            J=J and J*(Q or 1);
            local z=t+X-(l+a);
            local Y=(q and tonumber(q.damage)or 0)*z/math.max(l-T,0.1);
            if J then
                if J<=Y then
                    K.fhNoteReply(nil);
                    if shared.PistonwareDeveloper then
                        K.fhTrace("skip: plan +%d ms, next swing +%d ms (reply %d ms)",math.floor(X*1000+0.5),math.floor((l+a-t)*1000+0.5),math.floor(L*1000+0.5));
                    end;
                    return nil;
                end;
            end;
            f.held=true;
        end;
    end;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 513 ]] 
[513]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=pcall(function()z[3][4][z[3][6]]=z[2].OnIncomingMessage;
    z[2].OnIncomingMessage=z[4];
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 518 ]] 
[518]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z,Y,n,y)K[4][K[6]],_[4][_[6]]=Color3.fromHSV(z,Y,n),y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 543 ]] Strings: [mage_spellbook]
[543]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_,Y)local n=_ and _.multiProjectileSource;
    if not(n)then
        return;
    end;
    if z=="mage_spellbook"then
        _=K();
        if n[_]then
            return n[_],_;
        end;
    end;
    _,z=nil;
    for K,y in n,nil,nil do
        local n=y.projectileType and y.projectileType(nil)or K;
        if Y then
            if table.find(Y,n)then
                return y,n;
            end;
        end;
        if _ then
        else
            _,z=y,n;
        end;
    end;
    return _,z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 566 ]] Strings: [RootPart]
[566]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)local y,Q=_[4][_[6]],{Origin=z,Range=Y[4][Y[6]]:Get(n[4][n[6]]),Part="RootPart",Players=true,Wallcheck=true};
    return K(y,Q);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 569 ]] 
[569]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y=math.max(1,(K[4][K[6]][z]or _[4][_[6]])-1),Y[z];
    if y then
    else
        y={times={},head=1};
        Y[z]=y;
    end;
    local K,_,Y=y.times,y.head,os.clock();
    z=Y-60;
    while K[_]and K[_]<=z do
        _+=1;
    end;
    if _>128 then
        z=#K;
        local Q=z-_+1;
        table.move(K,_,z,1);
        for J=Q+1,z,1 do
            K[J]=nil;
        end;
        _=1;
    else
    end;
    y.head=_;
    if#K-_+1>=n then
        return true;
    end;
    K[#K+1]=Y;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 572 ]] 
[572]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_,Y,n)z.p=_;
    z.v=Y;
    z.T=n;
    z.endPart.CFrame=K(_,Y);
    _=z.beam;
    _.CurveSize0=z.v0.Magnitude*n/3;
    _.CurveSize1=Y.Magnitude*n/3;
    if not(z.shown)then
        z.shown=true;
        _.Enabled=true;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 614 ]] Strings: [print, projectiletrails]
[614]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if shared.PistonwareDeveloper~=true then
        return;
    end;
    local Y=os.clock();
    if(K[z]or 0)>Y then
        return;
    end;
    K[z]=Y+1;
    _("print","projectiletrails",z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 620 ]] Strings: [raven]
[620]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K.inventory and K.inventory.inventory;
    for K,K in z and z.items or{},nil,nil do
        if K then
            if K.itemType=="raven"then
                return K;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 621 ]] 
[621]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)K[4][K[6]]=-math.huge;
    table.clear(_);
    Y(z and z.Humanoid);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 640 ]] 
[640]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        K[4][K[6]].refresh();
    end;
    if _[4][_[6]]then
        _[4][_[6]].refresh();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 644 ]] Strings: [juggernaut_rage_blade, number]
[644]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if z=="juggernaut_rage_blade"then
        local z=K.JuggernautUtil;
        local K=z and z.JUGGERNAUT_SWORD_COOLDOWN;
        return type(K)=="number"and K or 0.55;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 656 ]] Strings: [stud, studs]
[656]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 659 ]] 
[659]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()_[4][_[6]]=K["events-@easy-games/game-core:shared/game-core-networking@getEvents.Events"];
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 663 ]] 
[663]=function(z,z,z,z,z,z,z,z)return function(z,K,K)return function(K)local _={};
    for Y,Y in K,nil,nil do
        if not(Y.Parent)then
            continue;
        end;
        local K,n=pcall(function()local y,Q=z[1].BlockController,{blockPosition=Y.Position/3};
        return y:isBlockBreakable(Q,z[2]);
    end);
    if K then
        if not(n)then
            table.insert(_,Y.Position);
        end;
    end;
end;
return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 667 ]] Strings: [table, string, then return nil;end;return, ..z:gsub(]
[667]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K[z];
    if Y then
        return Y;
    end;
    Y=_.BedwarsKitMeta and _.BedwarsKitMeta[z];
    z=type(Y)=="table"and Y.name;
    if type(z)~="string"then
        return nil;
    elseif z==""then
        return nil;
    end;
    return"Auto"..z:gsub("[^%w]","");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 678 ]] Strings: [studs, stud]
[678]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z>=1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 693 ]] 
[693]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if not(z)then
        return false;
    end;
    local Y=K(z);
    z=Y and Y~=_;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 702 ]] 
[702]=function(z,K,K,K,K)return function(K,_,_)local _=K[1];
    return function(K,...)local Y,n=_.generation,{};
    z:nc(n,0,...);
    local z=task.spawn(function()if not(_.isCurrent(Y))then
        return;
    end;
    return K(Y,table.unpack(n));
end);
table.insert(_.tasks,z);
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 705 ]] 
[705]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]].enabled then
        _(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 706 ]] 
[706]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K[4][K[6]]~=nil and K[4][K[6]].enabled and table.find(_,z)~=nil;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 733 ]] 
[733]=function(z,z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)local Q=os.clock();
    if K.since then
        K.clock=K.clock+y;
    elseif K.on then
        if _()then
            K.since=Q;
            K.clock=math.min(Q-K.sent,0.016666666666666666);
        else
            return false;
        end;
    else
        return false;
    end;
    if K.clock<0.016666666666666666 then
        return true;
    end;
    K.clock=math.min(K.clock-0.016666666666666666,0.016666666666666666);
    y=_();
    if y and pcall(Y,y,n)then
        K.welds[y]=true;
        K.sent=Q;
    elseif not(next(K.welds))then
        K.on=false;
        K.since=nil;
        return false;
    end;
    z.AssemblyLinearVelocity=Vector3.zero;
    n:ChangeState(Enum.HumanoidStateType.Jumping);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 734 ]] 
[734]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if not(K[4][K[6]].enabled)then
        return;
    end;
    if z then
        _.apply();
    else
        _.remove();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 748 ]] 
[748]=function(z,z,z,z,z)return function(z)return function(z,K)K(z);
    for _,_ in ipairs(z:GetDescendants())do
        K(_);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 759 ]] 
[759]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()table.clear(K.evidence);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 767 ]] Strings: [iron, gold, diamond, emerald]
[767]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if z=="iron"then
        local y=K[4][K[6]];
        return y.enabled;
    end;
    if z=="gold"then
        local K=_[4][_[6]];
        return K.enabled;
    end;
    if z=="diamond"then
        local K=Y[4][Y[6]];
        return K.enabled;
    end;
    if z=="emerald"then
        local z=n[4][n[6]];
        return z.enabled;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 805 ]] Strings: [BedwarsAddItemPurchased]
[805]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z then
        K.SoundManager:playSound(K.SoundList.BEDWARS_PURCHASE_ITEM);
        K.Store:dispatch({type="BedwarsAddItemPurchased",itemType=_});
    end;
    Y(z==true);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 811 ]] 
[811]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
        K[4][K[6]]=nil;
    end;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 813 ]] 
[813]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()local z,Y=K.character,_.BlockController;
    local K=z.Character:GetPivot().Position-Vector3.new(0,z.Humanoid.HipHeight/2,0);
    return Y:getBlockPosition(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 819 ]] 
[819]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.show_tips=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 821 ]] Strings: [,18);z.Label=K(]
[821]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)if not(z.Arrow)then
        z.Arrow=K("\226\150\178",18);
        z.Label=K("",13);
    end;
    local K=_.Basis:PointToObjectSpace(n);
    n=math.atan2(K.X,-K.Z);
    local Q,J=Vector2.new(math.sin(n),-math.cos(n)),_.Px;
    local f,q,t,T=_.Center+Q*(60*J),_.Center+Q*(80*J),z.Arrow,z.Label;
    if z.X~=f.X or z.Y~=f.Y then
        z.X,z.Y=f.X,f.Y;
        t.Position=UDim2.fromOffset(f.X,f.Y);
        t.Rotation=math.deg(n);
        T.Position=UDim2.fromOffset(q.X,q.Y);
    end;
    K=math.round(18*J);
    if z.Size~=K then
        z.Size=K;
        t.TextSize=K;
        T.TextSize=math.round(13*J);
    end;
    if z.Color~=_.Accent then
        z.Color=_.Accent;
        t.TextColor3=_.Accent;
    end;
    n=Y[4][Y[6]]and Y[4][Y[6]].enabled and tostring(math.floor(y))or"";
    if z.Text~=n then
        z.Text=n;
        T.Text=n;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 829 ]] 
[829]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)task.defer(K,z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 832 ]] 
[832]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
        K[4][K[6]]=nil;
    end;
    _();
    Y();
    n();
    y.Visible=false;
    Q[4][Q[6]],J[4][J[6]]=0,0;
    if f[4][f[6]]then
        q.Clutching=nil;
        q.InfiniteFlyActive=nil;
    elseif q.InfiniteFlyActive then
        if not(t())then
            q.Clutching=nil;
            q.InfiniteFlyActive=nil;
        end;
    end;
    f[4][f[6]]=false;
    T.resume();
    L[4][L[6]],X[4][X[6]]=false,nil;
    l[4][l[6]]=-math.huge;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 835 ]] Strings: [Instance, LastTeleported, number, fireball, InflatedBalloons]
[835]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y,Q)local J=z.Character;
    if z.RootPart.Anchored then
        return true;
    end;
    local f=z.Humanoid;
    if typeof(f)=="Instance"then
        if f.Sit then
            return true;
        elseif f.SeatPart~=nil then
            return true;
        elseif f.PlatformStand then
            return true;
        end;
    end;
    if Q-(K.hurt[J]or-math.huge)<K.config.exempt then
        return true;
    end;
    if(K.pearled[y]or 0)>Q then
        return true;
    end;
    local f,q=y:GetAttribute("LastTeleported"),K.states[y];
    if q then
        if f~=q.teleported then
            q.teleported=f;
            q.teleportSeen=Q;
        end;
    end;
    if q then
        if Q-(q.teleportSeen or-math.huge)<K.config.pearl then
            return true;
        end;
    end;
    if type(f)=="number"then
        if workspace:GetServerTimeNow()-f<K.config.exempt+_:GetNetworkPing()then
            return true;
        end;
    end;
    if q then
        if K.caged(z,q,z.RootPart.Position)then
            return true;
        end;
    end;
    if Y.isAbility(J)then
        z=n(J);
        q=z and string.lower(z.Name);
        if q then
            if q:find("fireball",1,true)then
                y=tonumber(J:GetAttribute("InflatedBalloons"));
                if y then
                    if y<=0 then
                        return false,true;
                    end;
                else
                    return false,true;
                end;
            end;
        end;
        return true;
    end;
    return false,false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 837 ]] 
[837]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=K[4][K[6]]~=nil and K[4][K[6]].enabled and _();
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 845 ]] 
[845]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)if K.PFrame<=0 then
        return false;
    elseif z>K.PRECISE_SPIN_CAP then
        return false;
    end;
    if math.abs(K.PFrame-K.SERVER_FRAME)<K.SPIN_LOCK_WIDTH then
        return false;
    end;
    local y=K.PFrame+K.PDev*2;
    if z+_(K.PRECISE_SLACK,n*0.0117)>=y then
        return false;
    end;
    y=Y();
    n=y+z;
    while true do
        z=Y();
        if z>=n then
            break;
        end;
    end;
    K.PSpun=K.PSpun+(Y()-y);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 851 ]] 
[851]=function(z,z,z,z,z,z,z)return function()return function(z,K,_)table.insert(z,{object=K,tag=_});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 864 ]] Strings: [Humanoid]
[864]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)local _=z and(z:FindFirstChildOfClass("Humanoid"));
    if not(_)then
        return nil;
    end;
    local Y=z:GetPivot().Position-Vector3.new(0,_.HipHeight/2,0);
    return K(Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 865 ]] Strings: [BasePart, Model]
[865]=function(z,z,z,z,z,z,z)return function(z)return function(z)if z:IsA("BasePart")then
    return z.Position;
end;
if z:IsA("Model")then
    return z:GetPivot().Position;
end;
return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 868 ]] 
[868]=function(z,z,z,z,z)return function(z,z)return function(z)return"%";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 875 ]] 
[875]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)local _,Y=K.PRED,math.min;
    local n=K.predictTrip(z)+_.DRAW_LAG;
    return Y(n,_.HORIZON_MAX);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 879 ]] Strings: [RootPart]
[879]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n,y,Q,J,f)K.Output=_;
    K.Cache=true;
    K.Part="RootPart";
    K.Range=z;
    K.Wallcheck=Y;
    K.Milo=f;
    K.Players=n;
    K.NPCs=y;
    K.Limit=Q;
    K.Sort=J;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 884 ]] Strings: [fisherman_bobber]
[884]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n={K};
    if _.Character then
        table.insert(n,_.Character);
    end;
    for _,_ in workspace:GetChildren()do
        if _.Name=="fisherman_bobber"then
            table.insert(n,_);
        end;
    end;
    Y.FilterDescendantsInstances=n;
    n=workspace:Raycast(z.Position+K.CFrame.LookVector*6,Vector3.new(0,-20,0),Y);
    return n==nil or n.Material==Enum.Material.Water;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 913 ]] 
[913]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=not z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 917 ]] 
[917]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.mobile_auto_bridge_button=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 919 ]] Strings: [RootPart]
[919]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function()if K.isAlive then
        if K.character then
            if not(K.character.RootPart)then
                return nil;
            end;
        else
            return nil;
        end;
    else
        return nil;
    end;
    local z,T=K.character.RootPart.Position,_.modules and _.modules.Killaura;
    local _=T and T.enabled and Y.KillauraTarget;
    if _ then
        if _.RootPart then
            if _.RootPart.Parent then
                local Y,T=(_.RootPart.Position-z).Magnitude,n.KillauraGetSwingRange and n.KillauraGetSwingRange()or 14.4;
                if Y<=T then
                    return nil;
                end;
                if y(_,z,true)then
                    return _;
                end;
            end;
        end;
    end;
    _=K.AllPosition({Origin=z,Part="RootPart",Range=22,Players=Q[4][Q[6]].players.enabled,NPCs=Q[4][Q[6]].npcs.enabled,Wallcheck=Q[4][Q[6]].walls.enabled,Milo=J(Q[4][Q[6]]),Limit=10,Cache=true,Output=f});
    q(_,t[4][t[6]].targetPriority.value);
    for K,K in _,nil,nil do
        if y(K,z,false)then
            return K;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 931 ]] Strings: [Heatseeker]
[931]=function(z,z,z,z,z,z,z)return function(z)return function()return"Heatseeker";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 937 ]] Strings: [ChestLock, table, AutoBank]
[937]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=rawget(K,"ChestLock");
    local K=type(z)=="table"and type(z.Holds)=="table"and z.Owner~=nil and z.Owner~="AutoBank"and _.held(z,os.clock());
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 950 ]] Strings: [autopearl]
[950]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.ItemOwner=="autopearl"and(_==nil or K.ItemOwnerToken==_);
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 955 ]] 
[955]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()K.GameAnimationUtil:playAnimation(_,Y,{fadeInTime=0.02,fadeSamePriorityTracks=false});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 966 ]] 
[966]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(Y)if Y==K[4][K[6]]then
        return;
    end;
    if _[4][_[6]]then
        _[4][_[6]]:Disconnect();
        _[4][_[6]]=nil;
    end;
    K[4][K[6]]=Y;
    if not Y then
        return;
    end;
    _[4][_[6]]=Y.StateChanged:Connect(function(K,_)if K==Enum.HumanoidStateType.Freefall then
        if _==Enum.HumanoidStateType.Landed then
            local K=os.clock();
            local _,n=z[3](K),z[4][4][z[4][6]];
            z[4][4][z[4][6]]=false;
            z[5](K);
            local y=Y.RootPart;
            if _<299 then
                if y then
                    local Q=y.Position.Y;
                    z[7][4][z[7][6]]=z[6](K,Q);
                    if z[8][4][z[8][6]]then
                        if Y==z[9][4][z[9][6]]then
                            if not(n)then
                                if _<282 then
                                    if Q<z[10][4][z[10][6]]-0.001 then
                                        z[11][4][z[11][6]],z[12][4][z[12][6]],z[13][4][z[13][6]]=K,nil,false;
                                    end;
                                    z[10][4][z[10][6]],z[17][4][z[17][6]]=math.max(Q,z[14][z[15][4][z[15][6]]]and z[16][z[15][4][z[15][6]]]or Q),K;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 971 ]] Strings: [InventoryFolder, ObjectValue, Inventories]
[971]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=z and(z:FindFirstChild("InventoryFolder"));
    if n then
        if n:IsA("ObjectValue")then
            if n.Value then
                return n.Value;
            end;
        end;
    end;
    n=K.privateInventory();
    z=n and n:FindFirstChild(_.Name);
    if z then
        return z;
    end;
    z=Y:FindFirstChild("Inventories");
    n=z and z:FindFirstChild(_.Name)or nil;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 978 ]] 
[978]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)K.graphics_contrast=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 981 ]] 
[981]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z)local Y={K[4][K[6]],_[4][_[6]]};
    for K,K in Y,nil,nil do
        if K.Toggle then
            if K.Toggle.row then
                K.Toggle.row.Visible=not z;
            end;
        end;
        K:Refresh();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 987 ]] Strings: [NameTags, Folder, ScaledGui, Target InfoOverlay]
[987]=function(z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    return function(z)local Y=z:FindFirstAncestor("NameTags");
    local n=Y and Y.Parent;
    if n then
        if Y:IsA("Folder")then
            if n==K.gui then
                return true;
            elseif n.Name=="ScaledGui"then
                return true;
            end;
        end;
    end;
    if _[z]==false then
        return false;
    end;
    n=z:FindFirstAncestor("ScaledGui");
    if not n then
        _[z]=false;
        return false;
    end;
    if z:FindFirstAncestor("Target InfoOverlay")then
        _[z]=false;
        return false;
    end;
    if z:FindFirstAncestor("TargetInfoContainer")then
        _[z]=false;
        return false;
    end;
    Y=z:FindFirstAncestor("CustomChildren");
    if Y then
        if Y:FindFirstChild("HealthBKG",true)then
            _[z]=false;
            return false;
        end;
    end;
    Y=z:FindFirstAncestor("Notifications");
    if Y then
        if Y:IsA("Folder")then
            if Y.Parent==n then
                _[z]=false;
                return false;
            end;
        end;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 995 ]] 
[995]=function(z,K,K,K,K,K)return function(K,K,K,K,_)local _=K[1];
    local Y=K[2];
    return function(K,n,y)local Q,J=13;
    local f,q,t,T,L,X,l,a,Z,m,M,S=K,n,y;
    while true do
        K=nil;
        if Q<=14 then
            if Q<=6 then
                if Q<=2 then
                    if Q<=0 then
                        y=z[22](T,L+2);
                        Q,a=y<128 and 5 or 12,y;
                    elseif Q<=1 then
                        local y,u=X-1,1+0;
                        n=M-u;
                        local I={u,nil,J,y+0,n};
                        Q,J=3,I;
                    else
                        local n=z[22](Z,t+3);
                        Q,l=6,l-128+(a-128)*2097152+(m-128)*16384+n%128*128+(n-n%128)*2097152;
                    end;
                elseif Q<=4 then
                    if Q<=3 then
                        local n,y,u=J[5],J[1],J[4];
                        local I,O=n+y,y<=0;
                        y,n=I>=u,I<=u;
                        u=O and y or not O and n;
                        J[5]=I;
                        if u then
                            Q,X=16,I;
                        else
                            Q=29;
                        end;
                    else
                        local n,y=z[22](Z,t),t+1;
                        z[0](T,L+X,n,l);
                        Q=19;
                    end;
                elseif Q<=5 then
                    Q,X,L=30,(X-128)*16384+(l-128)*128+a,L+3;
                else
                    Q,t=4,t+4;
                end;
            elseif Q<=10 then
                if Q<=8 then
                    if Q<=7 then
                        Q,t=9,t+1;
                    else
                        Q,X,t=9,X-128+l*128,t+2;
                    end;
                elseif Q<=9 then
                    local n=z[22](Z,t);
                    Q,l=n<128 and 21 or 25,n;
                else
                    Q,l,t=4,(l-128)*16384+(a-128)*128+m,t+3;
                end;
            elseif Q<=12 then
                if Q<=11 then
                    Q,L=30,L+1;
                else
                    local n=z[22](T,L+3);
                    Q,X,L=30,X-128+(l-128)*2097152+(a-128)*16384+n%128*128+(n-n%128)*2097152,L+4;
                end;
            elseif Q<=13 then
                local n,y=f[6][q],f[5];
                local u=n+1;
                n=z[22](y,u);
                Q,T,L,X=n<128 and 11 or 26,y,u,n;
            else
                local n=z[22](Z,t+1);
                Q,l=n<128 and 8 or 20,n;
            end;
        elseif Q<=22 then
            if Q<=18 then
                if Q<=16 then
                    if Q<=15 then
                        local n=J[5];
                        Q,J=1,n;
                    else
                        K=(l*q+a)%256;
                        z[1](Z,X,(z[103](z[22](T,L+X),t,K)));
                        Q,q=3,K;
                    end;
                elseif Q<=17 then
                    local n=z[22](Z,t+2);
                    Q,m=n<128 and 10 or 2,n;
                else
                    local n,y,u=J[1],J[4],J[2];
                    local I,O=n+y,y<=0;
                    n,y=I>=u,I<=u;
                    u=O and n or not O and y;
                    J[1]=I;
                    if u then
                        Q,S=27,I;
                    else
                        Q=15;
                    end;
                end;
            elseif Q<=20 then
                if Q<=19 then
                    return f,q;
                else
                    local n=z[22](Z,t+2);
                    Q,a=n<128 and 28 or 23,n;
                end;
            elseif Q<=21 then
                Q,t=4,t+1;
            else
                Q,X,L=30,X-128+l*128,L+2;
            end;
        elseif Q<=26 then
            if Q<=24 then
                if Q<=23 then
                    local n=z[22](Z,t+3);
                    Q,X,t=9,X-128+(l-128)*2097152+(a-128)*16384+n%128*128+(n-n%128)*2097152,t+4;
                else
                    Q,l,t=4,l-128+a*128,t+2;
                end;
            elseif Q<=25 then
                local n=z[22](Z,t+1);
                Q,a=n<128 and 24 or 17,n;
            else
                local n=z[22](T,L+1);
                Q,l=n<128 and 22 or 0,n;
            end;
        elseif Q<=28 then
            if Q<=27 then
                local n,y,u=z[92],z[72](T,L+S),_[4][_[6]][q];
                n(Z,S,(z[103](y,u,m)));
                K=Y[4][Y[6]][q];
                Q,q=18,K;
            else
                Q,X,t=9,(X-128)*16384+(l-128)*128+a,t+3;
            end;
        elseif Q<=29 then
            local _=J[3];
            f[7]=z[14](f);
            local Y,n,y=z:Jc(f,Z);
            local T=z[22](Z,y);
            Q,J,f,q,t,X=T<128 and 7 or 14,_,Y,n,y,T;
        else
            local _,Y=41,235;
            K=(t+q)%256;
            local n,y,f=z[78](X),t*16843009,X-X%4;
            local z,t=f-1,4+0;
            local T={0-t,z+0,nil,t,J};
            Q,J,q,l,a,Z,m,M=18,T,K,_,Y,n,y,f;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1005 ]] Strings: [stud, studs]
[1005]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1008 ]] Strings: [stud, studs]
[1008]=function(z,z,z,z,z)return function()return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1010 ]] 
[1010]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)local y={K[4][K[6]],_[4][_[6]],Y[4][Y[6]],n[4][n[6]]};
    for K,K in y,nil,nil do
        K.row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1015 ]] Strings: [vesta, standalone]
[1015]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[16];
    return function()if K.isAlive then
        if not(_.hasKit("vesta"))then
            return;
        end;
    else
        return;
    end;
    local L=Y[n[4][n[6]].value];
    local Y=L and(y(L));
    if Y and Y.tool then
        local n=Y.amount;
        if n then
            if not(n>0)then
                return;
            end;
        end;
    else
        return;
    end;
    if Q(L,K.character.RootPart.Position)then
        return;
    end;
    local K=J(L);
    if not K then
        return;
    end;
    local n,y,Q,J;
    if f[4][f[6]].enabled then
        n=q(Y.tool);
        if not(n)then
            return;
        end;
        local f,q,X=pcall(t.claimItem,"standalone");
        if f then
            if not(q)then
                return;
            end;
        else
            return;
        end;
        Q,J=n,X;
    else
        Q,J=n,y;
    end;
    local n=_.hand and _.hand.tool;
    local y=_.inventory and _.inventory.hotbarSlot;
    local _=Q~=nil and n~=Y.tool;
    local f,q=pcall(function()if _ then
        z[11](Q);
        z[12](Y.tool,0);
        if z[13][4][z[13][6]].value>0 then
            task.wait(z[13][4][z[13][6]].value);
        end;
        if not(z[14][4][z[14][6]].enabled)then
            return false;
        end;
    end;
    z[15].placeBlock(K*3,L,Q~=nil);
    return true;
end);
if _ then
    pcall(function()if z[13][4][z[13][6]].value>0 then
        task.wait(z[13][4][z[13][6]].value);
    end;
    if t.ItemOwner~="standalone"then
        return;
    elseif t.ItemOwnerToken~=J then
        return;
    end;
    z[11](y);
    if n then
        if n.Parent then
            z[12](n,0);
        end;
    end;
end);
end;
if Q then
    pcall(t.releaseItem,"standalone",J);
end;
local z=f and q==true and T(L,K)==true;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1032 ]] 
[1032]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)local Y,n=os.clock(),K[z];
    if n then
        if Y-n.At<0.5 then
            return n.Values;
        end;
    end;
    local y=n and n.Values or{};
    table.clear(y);
    for n,n in _:GetTagged(z)do
        y[#y+1]=n;
    end;
    K[z]={At=Y,Values=y};
    return y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1044 ]] Strings: [_ShopItemCard]
[1044]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)if z.Name:find("_ShopItemCard",1,true)then
        task.defer(K,z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1045 ]] 
[1045]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K.List or K.build();
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1054 ]] Strings: [bed]
[1054]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[6];
    local Q=z[7];
    local J=z[8];
    local f=z[9];
    local q=z[10];
    local t=z[11];
    local T=z[12];
    return function(L)if L then
        local L=K("bed",_[4][_[6]]);
        local K=getmetatable(Y.BlockBreaker.maid).new();
        _[4][_[6]]:clean(function()K:DoCleaning();
    end);
    _[4][_[6]]:clean(n.Heartbeat:Connect(function(_)if not(z[5](_,K,L))then
        y[4][y[6]]=CFrame.identity;
    end;
end));
else
    Q[4][Q[6]],J[4][J[6]],f[4][f[6]],q[4][q[6]]=nil,nil,nil,0;
    y[4][y[6]]=CFrame.identity;
    t[4][t[6]],T[4][T[6]]=Vector2.zero,Vector2.zero;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1055 ]] Strings: [Falcon, ^Falcon%-]
[1055]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)if z then
    if z.Player then
        return false;
    end;
else
    return false;
end;
local K=z.Character and z.Character.Name;
return K~=nil and(K=="Falcon"or K:match("^Falcon%-")~=nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1066 ]] 
[1066]=function(z,z,z,z,z,z,z)return function(z,z)return function()return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1104 ]] 
[1104]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1139 ]] 
[1139]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()local z=K.Knit and K.Knit.Controllers and K.Knit.Controllers.StyxKitController;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1146 ]] Strings: [stud, studs]
[1146]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1150 ]] Strings: [RoactTree, ScreenGui]
[1150]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)if z.Name=="RoactTree"then
        if z:IsA("ScreenGui")then
            K(z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1154 ]] 
[1154]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z=K[4][K[6]].enabled and _[4][_[6]].enabled and not(Y.Knitless or n);
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1166 ]] 
[1166]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y,Q,J=K.xtState(),K.XP,K.SERVER_FRAME;
    local f,q=y.F,K.PSendT[z];
    for t=1,4,1 do
        local T=K.PSendT[t];
        if T then
            if T<q then
                if not(K.PSendDone[t])then
                    if not(y.SG[t])then
                        K.xtOutcome(y,t,nil);
                        if y.SD[t]then
                            K.xtSee(y,T,nil,(f-1)*J-y.SD[t]);
                        end;
                    end;
                end;
            end;
        end;
    end;
    local t=y.SG[z];
    if t then
        y.M,y.L,y.MM,y.ML,y.LL,y.At,y.Sig,y.N,y.Odd=table.unpack(t);
        y.SG[z]=nil;
        y.Ghost=math.max(y.Ghost-Q.GHOST_EASE,0);
        y.Rate[1]=math.max(y.Rate[1]-Q.EASE,0);
        y.Rate[3]+=Q.EASE;
    end;
    local T=n-q;
    K.xtSee(y,q,T-J,T);
    q=K.PSendC[z];
    if q then
        y.RetI=y.RetI%Q.RET_N+1;
        y.Ret[y.RetI]=_()-q-T;
        y.RetN=Y(y.RetN+1,Q.RET_N);
    end;
    q=K.PStamp;
    T=q and n>q and math.max(math.floor((n-q)/J+0.5)-f,0)or 99;
    y.GapI=y.GapI%Q.GAP_N+1;
    y.Gap[y.GapI]=T;
    y.GapN=Y(y.GapN+1,Q.GAP_N);
    if not(t)then
        K.xtOutcome(y,z,T);
    end;
    if y.Hold>0 then
        y.Hold=y.Hold-1;
        if y.Hold==0 then
            y.Extra=0.2;
        end;
    end;
    y.PlanFor=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1192 ]] 
[1192]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)if K(z-Vector3.yAxis)then
        return z;
    end;
    local n,y;
    for Q,J in _,nil,nil do
        Q=z+J;
        if K(Q-Vector3.yAxis)then
            if K(Q)then
            else
                if K(Q+Vector3.yAxis)then
                else
                    J=(Vector2.new(Q.X*3,Q.Z*3)-Vector2.new(Y.X,Y.Z)).Magnitude;
                    if n then
                        if J<n then
                            n,y=J,Q;
                        else
                        end;
                    else
                        n,y=J,Q;
                    end;
                end;
            end;
        else
        end;
    end;
    return y or z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1194 ]] 
[1194]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)K.removeEntity(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1197 ]] 
[1197]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1220 ]] 
[1220]=function(z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1241 ]] 
[1241]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y,n=math.huge,K.List;
    local y;
    for Q,J in n,nil,nil do
        if J.Targetable then
            continue;
        end;
        if J.Player then
            if J==K.character then
                continue;
            end;
        else
            continue;
        end;
        if J.RootPart then
            if J.Health<=0 then
                continue;
            elseif J.Health>=J.MaxHealth then
                continue;
            end;
        else
            continue;
        end;
        Q=(J.RootPart.Position-z).Magnitude;
        if Q<=_[4][_[6]].value then
            if Q<Y then
                Y,y=Q,J;
            else
            end;
        else
        end;
    end;
    return y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1242 ]] Strings: [personal-chest, chest]
[1242]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=workspace;
    if Y:IsDescendantOf(n)then
        if K:HasTag(Y,"personal-chest")then
            return;
        elseif _[Y.Name]then
            if K:HasTag(Y,"chest")then
                return;
            end;
        end;
    end;
    n=table.find(z,Y);
    if n then
        table.remove(z,n);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1271 ]] 
[1271]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_)local Y,n,y=K[z]or{},1;
    for z,K in Y,nil,nil do
        z=math.abs(K.at-_);
        if z<=n then
            n,y=z,K;
        else
        end;
    end;
    return y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1283 ]] 
[1283]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].enabled then
        _(Y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1285 ]] 
[1285]=function(z,K,K,K,K)return function(K,K,K,K,_)local _=K[1];
    return function(K,Y,...)local n,y=_.generation,{};
    z:nc(y,0,...);
    local z=task.delay(K,function()if not(_.isCurrent(n))then
        return;
    end;
    return Y(n,table.unpack(y));
end);
table.insert(_.tasks,z);
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1304 ]] Strings: [table, function, string, ;if n:find(, )then K[n]=z;elseif n:find(]
[1304]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if type(z)~="table"then
        return;
    elseif type(z.boundFunction)~="function"then
        return;
    end;
    local n=type(z.actionId)=="string"and z.actionId:lower()or"";
    if n:find("jade")then
        K[n]=z;
    elseif n:find("hammer")then
        K[n]=z;
    end;
    if z.action=="Attack"then
        _[4][_[6]]=z;
        Y[4][Y[6]]=os.clock();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1305 ]] Strings: [table]
[1305]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()K[4][K[6]],_[4][_[6]]=0,nil;
    table.clear(Y);
    table.clear(n);
    table.clear(y);
    for z in Q,nil,nil do
        pcall(function()z:Stop();
    end);
end;
table.clear(Q);
for z,z in J,nil,nil do
    z.Clean();
end;
table.clear(J);
local z=f[4][f[6]];
f[4][f[6]]=nil;
if z and z.Maid~=nil then
    if type(z.Controller.bedAlarmTriggerMaidMap)=="table"then
        if z.Controller.bedAlarmTriggerMaidMap[z.TeamId]==z.Maid then
            pcall(function()z.Maid:DoCleaning();
        end);
    end;
end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1314 ]] 
[1314]=function(z,z,z,z,z,z,z)return function()return function(z)return"%";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1334 ]] 
[1334]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function()if K then
        if K.PlayerGui then
            if K.PlayerGui.MobileUI then
                K.PlayerGui.MobileUI["2"].Visible=true;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1354 ]] 
[1354]=function(z,z,z,z,z)return function(z)return function(z,K)local _=z.missRate;
    if _ then
        if _<=1.0E-6 then
            return 1;
        elseif z.kbUntil then
            if os.clock()<z.kbUntil then
                return 1;
            end;
        end;
    else
        return 1;
    end;
    z=K.Magnitude;
    if z<=1.0E-6 then
        return 1;
    end;
    return z*z/(z*z+_*_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1369 ]] 
[1369]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]]then
        _:Release(K[4][K[6]]);
    end;
    if Y.AutoWinProjectileAuraBridge==_ then
        Y.AutoWinProjectileAuraBridge=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1389 ]] 
[1389]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_)if z.Game then
        if _.Game then
            if z.Game.matchState~=_.Game.matchState then
                K[4][K[6]]=os.clock()+1;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1391 ]] 
[1391]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=z~=nil and K[z.UserId]~=nil;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1418 ]] 
[1418]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function(z)local T=K.TinkerKitController;
    if T then
        if not(T.mounted)then
            return 0,false;
        end;
    else
        return 0,false;
    end;
    local K=T.userMap and T.userMap[_];
    if not(K)then
        return 0,false;
    end;
    T=Y(z);
    if K~=n[4][n[6]]then
        z=y.character and y.character.RootPart;
        if not z then
            return T,false;
        end;
        local _,Y,y=pcall(K.GetBoundingBox,K);
        if _ then
            if Y then
                if not(y)then
                    return T,false;
                end;
            else
                return T,false;
            end;
        else
            return T,false;
        end;
        _=z.CFrame:ToObjectSpace(Y);
        local Y,L,X=_.XVector,_.YVector,_.ZVector;
        Q[4][Q[6]],J[4][J[6]]=_.X,_.Z;
        f[4][f[6]]=(math.abs(Y.X)*y.X+math.abs(L.X)*y.Y+math.abs(X.X)*y.Z)/2;
        q[4][q[6]]=(math.abs(Y.Z)*y.X+math.abs(L.Z)*y.Y+math.abs(X.Z)*y.Z)/2;
        t[4][t[6]],n[4][n[6]]=math.max(0,math.max(math.abs(Q[4][Q[6]]-f[4][f[6]]),math.abs(Q[4][Q[6]]+f[4][f[6]]))-z.Size.X/2),K;
    end;
    return T,true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1431 ]] 
[1431]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].Transparency=1-z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1433 ]] 
[1433]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.mobile_projectile_button=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1446 ]] 
[1446]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.Parent and _(K);
    if not(z)then
        return;
    end;
    local K=z.Position;
    for _,_ in Y,nil,nil do
        z=K-_.Part.Position;
        if Vector3.new(z.X,0,z.Z).Magnitude<=4 then
            if math.abs(z.Y)<=8 then
                _.LastDrop=os.clock();
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1482 ]] 
[1482]=function(z,z,z,z,z,z)return function()return function(z)return(tonumber(z.activationTime)or workspace:GetServerTimeNow())+60-workspace:GetServerTimeNow()<=0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1501 ]] 
[1501]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function(z)K.show_recommended_shop=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1521 ]] 
[1521]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z,J,f,q,t,T,L)if K[4][K[6]]then
        if not(_(os.clock(),28))then
            Y[4][Y[6]]=nil;
            return J;
        end;
        K[4][K[6]]=false;
    end;
    local _,Y=5-L,math.max(f,J-q*t);
    t=n[4][n[6]]-_;
    if Y<t-0.001 then
        if J<=t+0.001 then
            q,L=y(z,J,T,8);
            if q then
                t=J-_;
            else
                if L then
                    K[4][K[6]]=true;
                    return J;
                end;
            end;
        else
        end;
        Y=math.min(J,math.max(Y,t));
    else
    end;
    if Y<J then
        Q[4][Q[6]]=0.3;
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1529 ]] Strings: [AlchemistFlaskStage, string, table]
[1529]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local _=K:GetAttribute("AlchemistFlaskStage");
    if type(_)~="string"then
        return{};
    elseif _==""then
        return{};
    end;
    local K,Y=pcall(function()return z[2]:JSONDecode(_);
end);
return K and type(Y)=="table"and Y or{};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1546 ]] Strings: [or z.., .._..]
[1546]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()if not K[4][K[6]]then
        return nil;
    end;
    local z,_=math.round(K[4][K[6]].min*1000),math.round(K[4][K[6]].max*1000);
    return z==_ and z.."ms"or z.."-".._.."ms";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1547 ]] Strings: [Count, Icon, snap_trap, rbxassetid://7805515071, ;end;else Y.Image=]
[1547]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_,Y)if not(z)then
        return;
    end;
    local n=z:FindFirstChild("Count");
    if n then
        n.Text=tostring(Y or 0);
    end;
    Y=z:FindFirstChild("Icon");
    if Y then
        if _=="snap_trap"then
            Y.Image="rbxassetid://7805515071";
        else
            n=_ and K[_];
            if n then
                if n.icon then
                    Y.Image=n.icon;
                else
                    Y.Image="";
                end;
            else
                Y.Image="";
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1552 ]] 
[1552]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)if z then
        if not(z.ammoItemTypes)then
            return;
        end;
    else
        return;
    end;
    local _=K.inventory.inventory;
    for K,Y in _.items,nil,nil do
        if Y then
            if table.find(z.ammoItemTypes,Y.itemType)then
                K=Y.count or Y.quantity or Y.amount;
                if K==nil then
                    return Y.itemType;
                elseif K>0 then
                    return Y.itemType;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1553 ]] 
[1553]=function(z,z,z,z,z)return function(z,z)return function(z,K)local _=K.Magnitude>0.001 and K.Unit or Vector3.new(1,0,0);
    K=math.abs(_.Y)>0.99 and Vector3.new(0,0,1)or Vector3.new(0,1,0);
    local Y=_:Cross(K).Unit;
    return CFrame.fromMatrix(z,_,Y:Cross(_),Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1554 ]] 
[1554]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]].value>=360 then
        return true;
    elseif not(_.isAlive)then
        return true;
    end;
    local Y=_.character.RootPart;
    local _,n=Y.CFrame.LookVector*Vector3.new(1,0,1),(z-Y.Position)*Vector3.new(1,0,1);
    if _.Magnitude<=0 then
        return true;
    elseif n.Magnitude<=0 then
        return true;
    end;
    z,Y=math.acos(math.clamp(_.Unit:Dot(n.Unit),-1,1)),math.rad(K[4][K[6]].value)/2;
    return z<=Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1567 ]] Strings: [AutoBank]
[1567]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z,_)local Y=K.lock();
    local K=Y.Owner=="AutoBank"and Y.Holds[z];
    if not(K)then
        return false;
    end;
    Y.Holds[z]=math.max(K,os.clock()+_);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1588 ]] 
[1588]=function(z,z,z,z,z,z,z)return function(z)return function()return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1597 ]] Strings: [string, table, userdata, Instance]
[1597]=function(z,z,z,z,z)return function()return function(z)local K=type(z);
    if K=="string"then
        return z;
    end;
    if K~="table"then
        if K~="userdata"then
            return nil;
        end;
    end;
    if typeof(z)=="Instance"then
        return z.Name;
    end;
    if K~="table"then
        return nil;
    end;
    K=rawget(z,"itemType")or rawget(z,"Name");
    if type(K)=="string"then
        return K;
    end;
    K=rawget(z,"tool");
    return typeof(K)=="Instance"and K.Name or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1602 ]] Strings: [stud, studs]
[1602]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1608 ]] 
[1608]=function(z,z,z,z,z)return function(z)return function(z)local K=math.abs(z)*0.7071067811865476;
    local _=1/(1+0.3275911*K);
    local Y=1-((((1.061405429*_-1.453152027)*_+1.421413741)*_-0.284496736)*_+0.254829592)*_*math.exp(-K*K);
    return z<0 and 0.5-0.5*Y or 0.5+0.5*Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1610 ]] 
[1610]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()while true do
        local z=os.clock()<K and _[4][_[6]].enabled and Y.isAlive;
        if not z then
            break;
        end;
        local K,_=Y.character.RootPart,n.RootPart;
        if K then
            if _ then
                if not(_.Parent)then
                    break;
                end;
            else
                break;
            end;
        else
            break;
        end;
        z=Vector3.new(_.Position.X-K.Position.X,0,_.Position.Z-K.Position.Z);
        if z.Magnitude>0.01 then
            _=z.Unit*23.3;
            K.AssemblyLinearVelocity=Vector3.new(_.X,K.AssemblyLinearVelocity.Y,_.Z);
        end;
        task.wait();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1641 ]] Strings: [table, function]
[1641]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.ProjectileController;
    if type(z)=="table"then
        if type(z.onSimulatedShot)=="function"then
            if type(z.simulatedShot)=="function"then
                _[4][_[6]]=z;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1646 ]] Strings: [Nugget, BasePart, Model, HarvestableCrop]
[1646]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[8];
    local f=z[9];
    local q=z[11];
    local t=z[12];
    return function(T)if K[4][K[6]].enabled then
        if T.Name=="Nugget"then
            if T:IsA("BasePart")then
                return _(T);
            end;
        end;
    end;
    local K=Y[T.Name];
    if K then
        if not(K.enabled)then
            return;
        end;
    else
        return;
    end;
    if not(T:IsA("BasePart"))then
        if not(T:IsA("Model"))then
            return;
        end;
    end;
    if n[T]then
        return;
    end;
    K=T.Parent;
    while K and K~=workspace do
        if n[K]then
            return;
        end;
        K=K.Parent;
    end;
    local K=y[T.Name];
    if K and K.Require and T:GetAttribute(K.Attribute)==nil and not Q:HasTag(T,"HarvestableCrop")then
        local _;
        local Y,y=K.Attribute,function()_:Disconnect();
        task.defer(z[7],T);
    end;
    _=T:GetAttributeChangedSignal(Y):Connect(y);
    J[4][J[6]]:clean(_);
    return;
end;
if not(K and K.Own)then
    if f(T)then
        return;
    end;
    if T:GetAttribute("PlacedByUserId")==nil then
        local function _()if f(T)then
            task.defer(z[10],T);
        end;
    end;
    J[4][J[6]]:clean(T:GetAttributeChangedSignal("PlacedByUserId"):Connect(_));
end;
end;
local _=q(T,T.Name);
if not _ then
    t[4][t[6]][T]="block";
    return;
end;
n[T]=_;
local Y;
local function n()if not(_.Parent)then
    return;
end;
z[13]();
pcall(function()z[14](_.Frame);
local y=z[15](_,z[16][T.Name]or T.Name,T);
Y=K and z[17](y,T:GetAttribute(K.Attribute)or 0)or nil;
end);
end;
n();
if K then
    local y=false;
    local function Q()y=false;
        z[13]();
        if not(_.Parent)then
            return;
        end;
        if z[18][T.Name]then
            if not(z[19][T.Name])then
                return n();
            end;
        end;
        if Y then
            pcall(function()local z=Y;
            z.Text=tostring(T:GetAttribute(K.Attribute)or 0);
        end);
    end;
end;
J[4][J[6]]:clean(T:GetAttributeChangedSignal(K.Attribute):Connect(function()if y then
    return;
end;
y=true;
task.defer(Q);
end));
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1650 ]] Strings: [JuggSpinning, StunnedUntilTime, number, GrimReaperChannel, elk]
[1650]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(_)if K.Char==_ then
        return;
    end;
    for Y,Y in K.Conns,nil,nil do
        Y:Disconnect();
    end;
    table.clear(K.Conns);
    K.Char=_;
    K.Spinning=false;
    K.StunnedUntil=0;
    K.Grim=false;
    K.Elk=false;
    K.HandInv=nil;
    if not _ then
        return;
    end;
    local function Y()local n=_:GetAttribute("JuggSpinning");
        K.Spinning=n and n~=0 and n~=""and true or false;
    end;
    local function n()local y=_:GetAttribute("StunnedUntilTime");
        K.StunnedUntil=type(y)=="number"and y or 0;
    end;
    local function y()local Q=_:GetAttribute("GrimReaperChannel")==true;
        if Q then
            if not(K.Grim)then
                K.GrimEnd=z[2]()+2.35;
            end;
        end;
        K.Grim=Q;
    end;
    local function z()K.Elk=_:FindFirstChild("elk")~=nil;
        K.HandInv=_:FindFirstChild("HandInvItem");
    end;
    Y();
    n();
    y();
    z();
    local Q=K.Conns;
    Q[#Q+1]=_:GetAttributeChangedSignal("JuggSpinning"):Connect(Y);
    Q[#Q+1]=_:GetAttributeChangedSignal("StunnedUntilTime"):Connect(n);
    Q[#Q+1]=_:GetAttributeChangedSignal("GrimReaperChannel"):Connect(y);
    Q[#Q+1]=_.ChildAdded:Connect(function(Y)local n=Y.Name;
    if n=="elk"then
        K.Elk=true;
    elseif n=="HandInvItem"then
        K.HandInv=Y;
    end;
end);
Q[#Q+1]=_.ChildRemoved:Connect(function(K)local _=K.Name;
if _=="elk"then
    z();
elseif _=="HandInvItem"then
    z();
end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1657 ]] 
[1657]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function(z,z)z=z or{};
    K[4][K[6]]+=1;
    local L=_[4][_[6]]and table.clone(_[4][_[6]])or{Id=K[4][K[6]],ScaffoldWasEnabled=Y[4][Y[6]].enabled,Expand=n[4][n[6]].value,Tower=y[4][y[6]].enabled,Downwards=Q[4][Q[6]].enabled,Diagonal=J[4][J[6]].enabled,LimitItem=f[4][f[6]].enabled,Mouse=q[4][q[6]].enabled};
    L.Id=K[4][K[6]];
    _[4][_[6]]=L;
    t(n[4][n[6]],z.Expand or 1);
    T(J[4][J[6]],z.Diagonal~=false);
    T(q[4][q[6]],z.Mouse==true);
    T(f[4][f[6]],z.LimitItem==true);
    T(Q[4][Q[6]],z.Downwards==true);
    T(y[4][y[6]],z.Tower==true);
    if not(Y[4][Y[6]].enabled)then
        Y[4][Y[6]]:flip(nil,true);
    end;
    return L;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1660 ]] Strings: [table, function]
[1660]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)local J=K.AudioManager;
    local f=K.SoundList;
    if type(J)~="table"then
        return;
    elseif type(f)~="table"then
        return;
    end;
    local K=_.Character;
    local _=K~=nil and(K:GetPivot().Position-z).Magnitude<Y;
    local K,Y=pcall(J.playAudio,J,_ and f.BED_ALARM or f.BED_ALARM_TRIGGERED_FAR,{rollOffMaxDistance=100,looped=true,volumeMultiplier=0.75*n[4][n[6]].value,position=_ and z or nil});
    if K then
        if not Y then
            return;
        end;
    else
        return;
    end;
    y[Y]=true;
    task.delay(Q,function()if not(y[Y])then
        return;
    end;
    if type(J.tweenAudioVolume)=="function"then
        pcall(J.tweenAudioVolume,J,Y,0,0.2);
    end;
    task.delay(0.2,function()y[Y]=nil;
    pcall(function()Y:Stop();
end);
end);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1673 ]] 
[1673]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()local z=K.menuOpen;
    if z~=nil then
        return z==true;
    end;
    if K.threadFix then
        pcall(setthreadidentity,8);
    end;
    local z,_=pcall(function()local Y=K.gui.ScaledGui.ClickGui;
    return Y.Visible;
end);
return z and _==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1700 ]] Strings: [Image]
[1700]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=_.__realImage;
    return K(z,Y,"Image");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1701 ]] 
[1701]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if not(K[4][K[6]].enabled)then
        return;
    end;
    if z then
        _();
        if Y.Knitless then
            local z=workspace;
            for K,K in z:GetChildren()do
                n(K);
            end;
        end;
    else
        y();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1718 ]] 
[1718]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=pairs;
    for _,Y in z(K)do
        pcall(function()if _ then
            if _.Parent then
                _.Text=Y;
            end;
        end;
    end);
end;
table.clear(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1733 ]] 
[1733]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=K.BlockController;
    return _:getBlockPosition(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1734 ]] Strings: [Team]
[1734]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z,_)local Y=_~=nil and z.Player~=nil and z.Player~=K and z.RootPart~=nil and z.Player:GetAttribute("Team")==_;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1787 ]] 
[1787]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()if K[4][K[6]]then
        if _[4][_[6]]then
            return true;
        end;
    end;
    local z=Y[4][Y[6]]~=nil and n[4][n[6]]and os.clock()-y[4][y[6]]<=3;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1790 ]] Strings: [BedwarsAddItemPurchased]
[1790]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if not(z)then
        return;
    end;
    K.SoundManager:playSound(K.SoundList.BEDWARS_PURCHASE_ITEM);
    K.Store:dispatch({type="BedwarsAddItemPurchased",itemType=_});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1796 ]] Strings: [Gradual]
[1796]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    return function()local z=K[4][K[6]]~=nil and K[4][K[6]].value=="Gradual";
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1840 ]] Strings: [HarvestableCrop, CropStage]
[1840]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q)if K[z]then
        return K[z];
    end;
    local J=_(z);
    if J then
        if not(Y:HasTag(Q,"HarvestableCrop"))then
            if(Q:GetAttribute("CropStage")or 0)<J then
                return nil;
            end;
        end;
    end;
    J=n(Q);
    if not J then
        return nil;
    end;
    if not(y(J))then
        J:Destroy();
        return nil;
    end;
    K[z]=J;
    return J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1841 ]] Strings: [PlacedByUserId, Team]
[1841]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=z:GetAttribute("PlacedByUserId");
    if not(Y)then
        return false;
    end;
    if Y==K.UserId then
        return true;
    end;
    z=_:GetPlayerByUserId(Y);
    if not z then
        return false;
    end;
    Y=K:GetAttribute("Team");
    return Y~=nil and z:GetAttribute("Team")==Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1843 ]] 
[1843]=function(z,z,z,z,z,z,z)return function(z)return function()
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1850 ]] Strings: [string, jade_hammer]
[1850]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if type(z)~="string"then
        return false;
    end;
    local _=K();
    if _ then
        if _.isJadeHammer then
            local K,Y=pcall(_.isJadeHammer,z);
            if K then
                return Y and true or false;
            end;
        end;
    end;
    return z:find("jade_hammer")~=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1870 ]] Strings: [string, TrapperSelectedTrap, snap_trap]
[1870]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K();
    local K,n=pcall(function()local y=z.getSelectedTrap;
    return y(_);
end);
if K then
    if type(n)=="string"then
        return n;
    end;
end;
n=_:GetAttribute("TrapperSelectedTrap");
K=table.find(Y,n)and n or"snap_trap";
return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1884 ]] 
[1884]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]]=K[4][K[6]]or _.SwordController;
    local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1891 ]] 
[1891]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()K[4][K[6]],_[4][_[6]]=nil,-1;
    local z=Y.conn;
    Y.conn=nil;
    if z then
        pcall(z.Destroy,z);
    end;
    z=Y.lateConn;
    Y.lateConn=nil;
    if z then
        pcall(z.Destroy,z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1899 ]] 
[1899]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()K[4][K[6]]=false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1903 ]] Strings: [digs]
[1903]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n,y=os.clock(),K[z];
    if y then
        local Q=n-y.at;
        if y[Y]then
            if Q<0.9 then
                return;
            end;
        end;
        if not(y[Y])then
            if Q<1.5 then
                y[Y]=true;
                return;
            end;
        end;
    end;
    K[z]={at=n,[Y]=true};
    _(z,"digs");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1904 ]] Strings: [number]
[1904]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K();
    local K=z and z.HAMMER_COOLDOWN;
    return type(K)=="number"and K or 1;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1916 ]] 
[1916]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if K[4][K[6]].enabled and z.entityInstance==_.Character and not z.finalKill then
        Y.modules.PingBypass:flip(false);
        while true do
            task.wait(0.03);
            local z=n.isAlive and n.character.Humanoid.Health>0 and y(n.character.HumanoidRootPart);
            if z then
                break;
            end;
        end;
        task.wait(0.7);
        if not(K[4][K[6]].enabled)then
            Y.modules.PingBypass:flip(false);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1917 ]] Strings: [TrapperLandedAt, TrapperArmAt, number]
[1917]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)for _,_ in z,nil,nil do
        local z,Y=_:GetAttribute("TrapperLandedAt"),_:GetAttribute("TrapperArmAt");
        if type(z)=="number"then
            if type(Y)=="number"then
                if Y>=z then
                    if Y-z<3 then
                        K[4][K[6]]=Y-z;
                    end;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1944 ]] 
[1944]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)K.receive_gifts=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1952 ]] Strings: [Team, bed, BasePart, TeamId]
[1952]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()if os.clock()<K.stamp then
        return K.cells;
    end;
    K.stamp=os.clock()+2;
    local z=_:GetAttribute("Team");
    z=z~=nil and z~=""and tostring(z)or nil;
    local _,Q=Y(),{};
    for Y,J in n:GetTagged("bed")do
        if not(J:IsA("BasePart"))then
            continue;
        end;
        Y=z and(J:GetAttribute("TeamId"));
        for n,n in y(J)do
            table.insert(Q,n);
            if Y~=nil then
                if tostring(Y)==z then
                    table.insert(_,n);
                end;
            end;
        end;
    end;
    if z~=nil then
        if#_>0 then
            K.known=_;
        end;
    end;
    local Y=K.known or z==nil and Q;
    K.cells=Y or _;
    if#K.cells==0 then
        K.stamp=os.clock()+0.25;
    end;
    return K.cells;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1955 ]] 
[1955]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]]:Refresh();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1963 ]] Strings: [dizzy]
[1963]=function(z,z,z,z,z,z)return function(z,K)return function()local K=false;
    pcall(function()local _,Y=z[1].StatusEffectUtil,z[1].StatusEffectMeta;
    K=_ and _:isActive(z[2].Character,Y and Y.DIZZY or"dizzy");
end);
return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1983 ]] 
[1983]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if z then
        if K[4][K[6]].enabled then
            if _[4][_[6]].enabled then
                if Y.KillauraTarget then
                    z.bufferAttack=n;
                    y[4][y[6]]=z;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 1985 ]] 
[1985]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=ipairs;
    for _,_ in z(K)do
        pcall(function()_:Disconnect();
    end);
end;
table.clear(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2000 ]] 
[2000]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K.Character;
    if n then
        if z:IsDescendantOf(n)then
            return true;
        end;
    end;
    n=_(z)or Y(z);
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2004 ]] 
[2004]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()K.PWired=true;
    K.PDamageConn=_.EntityDamageEvent.Event:Connect(K.preciseOnDamage);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2011 ]] 
[2011]=function(z,z,z,z,z,z,z)return function(z,z)return function()
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2020 ]] Strings: [%d+]
[2020]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()if K[4][K[6]]==nil then
        local _,Y=pcall(function()local n,y=z[2].GameAnimationUtil,z[2].AnimationType.JADE_HAMMER_SLAM;
        return n:getAssetId(y);
    end);
    K[4][K[6]]=_ and Y and tostring(Y):match("%d+")or false;
end;
local z=K[4][K[6]]or nil;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2050 ]] Strings: [Animator, %d+, metal_detector, animation]
[2050]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(Y)local n=Y.Player;
    local y=Y.Character;
    if not n or n==K then
        return;
    elseif not y then
        return;
    end;
    if _[y]then
        return;
    end;
    local K=Y.Humanoid;
    if not K then
        return;
    end;
    task.spawn(function()local Y=K:FindFirstChildOfClass("Animator")or K:WaitForChild("Animator",10);
    if Y then
        if z[3][4][z[3][6]].enabled then
            if _[y]then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    _[y]=Y.AnimationPlayed:Connect(function(K)local _=K and K.Animation;
    K=_ and tostring(_.AnimationId):match("%d+");
    if K then
        if not(z[4](n))then
            return;
        end;
    else
        return;
    end;
    if K==z[5][4][z[5][6]]then
        if z[6](n,"metal_detector")then
            z[7](n,"animation");
        end;
    elseif z[8][4][z[8][6]].enabled then
        if K==z[9][4][z[9][6]]then
            z[10](n);
        end;
    end;
end);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2061 ]] 
[2061]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K[z];
    if n then
        local y=#_;
        local Q=_[y];
        _[n]=Q;
        _[y]=nil;
        K[z]=nil;
        if Q then
            if Q~=z then
                K[Q]=n;
            end;
        end;
    end;
    Y[z]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2067 ]] 
[2067]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)local _=K.evidence[z];
    return _ and _.count or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2074 ]] 
[2074]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.character.RootPart;
    local K=z*3;
    local n=CFrame.Angles(0,0.7853981633974483,0);
    local function y()if not(Y.Parent)then
        return;
    end;
    Y.CFrame=CFrame.new(K.X,Y.Position.Y,K.Z)*n;
    local K=Y.AssemblyLinearVelocity;
    Y.AssemblyLinearVelocity=Vector3.new(0,K.Y,0);
end;
y();
z=_.Heartbeat;
return z:Connect(y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2079 ]] Strings: [ArmorChanger, armor-trim, armor-trim-type, armor-trim-meta, armor-trim-rank]
[2079]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[7];
    return function()if K.skip("ArmorChanger")then
        return;
    end;
    local K,Y,n,y,Q,J,f,q;
    local t={};
    local T,L=pcall(function()local X=z[2].TS["armor-trim"];
    local l,a,Z=z[3](X["armor-trim-type"]),z[3](X["armor-trim-meta"]),z[3](X["armor-trim-rank"]);
    local m={Type=l.ArmorTrimType,PackMeta=a.ArmorTrimPackTypeMeta,Meta=a.ArmorTrimMeta,RankMeta=Z.ArmorTrimEffectRankMeta,Color=z[3](X["armor-trim-colors"]).ArmorTrimColor,ColorMeta=z[3](X["armor-trim-color-meta"]).ArmorTrimColorMeta,EffectType=z[3](X["armor-trim-effect-type"]).ArmorTrimEffectType,EffectMeta=z[3](X["armor-trim-effect-meta"]).ArmorTrimEffectMeta,Util=z[3](X["armor-trim-util"]).ArmorTrimUtil,Accessory=z[3](z[2].TS.util["accessory-util"]).AccessoryUtil};
    return m;
end);
local X=T and L or nil;
if X and X.Type then
    if X.Util then
        if not(X.Util.createArmorTrims)then
            return;
        end;
    else
        return;
    end;
else
    return;
end;
local function l(a)return(tostring(a):gsub("_"," "):gsub("%a+",function(a)return a:sub(1,1):upper()..a:sub(2):lower();
end));
end;
local a,Z,m,M,S,u,I,O={},{},{},{"All"},{},{},{},{};
for d,e in X.Type,nil,nil do
    L=X.Meta[e];
    d=L and L.name or l(e);
    if S[d]==nil then
        S[d]=e;
        O[d]=L and L.packType;
        table.insert(a,d);
    end;
end;
table.sort(a);
for L,d in X.Color,nil,nil do
    T=l(L);
    if u[T]==nil then
        u[T]=d;
        table.insert(Z,T);
    end;
end;
table.sort(Z);
for L,d in X.EffectType,nil,nil do
    L=X.EffectMeta[d];
    T=L and L.name or l(d);
    if I[T]==nil then
        I[T]=d;
        table.insert(m,T);
    end;
end;
table.sort(m);
for T,T in X.PackMeta or{},nil,nil do
    if T.displayName then
        if not(table.find(M,T.displayName))then
            table.insert(M,T.displayName);
        end;
    end;
end;
local function T()local L=J and J.value or"All";
    if L=="All"then
        return a;
    end;
    local d={};
    for e,s in a,nil,nil do
        e=O[s];
        local O=e~=nil and X.PackMeta and X.PackMeta[e];
        if O then
            if O.displayName==L then
                table.insert(d,s);
            end;
        end;
    end;
    return#d>0 and d or a;
end;
local L={[0]="helmet",[1]="chestplate",[2]="boots"};
local function O()local d,e={},z[4].inventory.inventory.armor or{};
    for s,P in e,nil,nil do
        s=typeof(P)=="table"and z[5].ItemMeta[P.itemType];
        P=s and s.armor and L[s.armor.slot];
        if P then
            d[P]=true;
        end;
    end;
    return d;
end;
local function L()for d,d in t,nil,nil do
    if d.Parent then
        d:Destroy();
    end;
end;
table.clear(t);
end;
local function d()L();
    if K.enabled then
        if not(z[6].Character)then
            return;
        end;
    else
        return;
    end;
    local e=S[Y.value];
    local S=u[n.value];
    local u=I[y.value];
    if e and S then
        if not(u)then
            return;
        end;
    else
        return;
    end;
    local I={};
    for s,s in z[6].Character:GetDescendants()do
        I[s]=true;
    end;
    local s=Q.value-1;
    local P=z[5].ArmorTrimController;
    if P then
        pcall(function()P:attachArmorTrimEffects(z[6].Character,e,S,s,u);
    end);
end;
if not(q.enabled)then
    local u,P,v=X.ColorMeta[S],O(),X.Util.createArmorTrims;
    local S=u and u.color or Color3.new(1,1,1);
    for u,O in v(e,S,s)do
        u=nil;
        for S in P,nil,nil do
            if table.find(O.Name:split("_"),S)then
                u=S;
                break;
            end;
        end;
        if u or f.enabled then
            pcall(function()X.Accessory:addAccessory(z[6].Character,O);
        end);
    else
        O:Destroy();
    end;
end;
pcall(function()z[5].WeldTable:weldCharacterAccessories(z[6].Character);
end);
end;
for S,S in z[6].Character:GetDescendants()do
    if not(I[S])then
        table.insert(t,S);
    end;
end;
end;
local function t()if K.enabled then
    d();
end;
end;
K=_.categories.Render:module("ArmorChanger",{toggled=function(_)if _ then
    local function _()task.wait(1);
        d();
    end;
    K:clean(z[6].CharacterAdded:Connect(_));
    K:clean(L);
end;
d();
end,about="Changes the trim, color and effect of your armor."});
J=K:dropdown("Pack",{choices=M,default="All",changed=function()if Y then
    Y:setChoices(T());
end;
t();
end,about="Narrows the trim list to one of the locker packs."});
Y=K:dropdown("Trim",{choices=a,changed=t,about="Which trim pattern goes on the armor."});
n=K:dropdown("Color",{choices=Z,changed=t,about="What colour the trim is dyed."});
y=K:dropdown("Effect",{choices=m,changed=t,about="The particles riding along with the trim."});
Q=K:slider("Tier",{min=1,max=7,default=7,changed=t,suffix=function(z)local _=X.RankMeta[z-1];
return _ and _.tier and l(_.tier)or"";
end,about="How far the effect is levelled up. The top tiers are the showy ones."});
f=K:toggle("Empty slots",{changed=t,about="Wears the trim pieces for armor you do
    not actually have on."});
    q=K:toggle("Effects only",{changed=t,about="Keeps the particles and leaves the trim pattern off your armor."});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2089 ]] Strings: [table]
[2089]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if type(z)=="table"then
            if z.entityInstance~=nil then
                if z.entityInstance==_.Character then
                    K[4][K[6]]=nil;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2102 ]] Strings: [Instance, Player, Model, string]
[2102]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _,Y,n=pairs,false,false;
    for y,Q in _(z)do
        local z=typeof(Q)=="Instance"and(Q:IsA("Player")and Q==K or Q:IsA("Model")and Q==K.Character);
        if z then
            if y==7 then
                Y=true;
            else
                n=true;
            end;
        else
            if type(Q)=="string"then
                local z=K.Name;
                if Q:find(z)then
                    if y==7 then
                        local z=true;
                        Y=z;
                    else
                        local z=true;
                        n=z;
                    end;
                else
                end;
            else
            end;
        end;
    end;
    return n and not Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2106 ]] 
[2106]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()if K[4][K[6]].enabled then
        K[4][K[6]]:flip(nil,true);
        K[4][K[6]]:flip(nil,true);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2123 ]] 
[2123]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if not(z)then
            K[4][K[6]].Visible=false;
        end;
    end;
    if _[4][_[6]]then
        if _[4][_[6]].row then
            _[4][_[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2145 ]] 
[2145]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)K.graphics_ambient_light=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2161 ]] Strings: [PlayerGui, PrivateInventory]
[2161]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K:FindFirstChildOfClass("PlayerGui");
    return z and z:FindFirstChild("PrivateInventory")or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2177 ]] 
[2177]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z,_)if z then
        if _ then
            if z.Game then
                if _.Game then
                    if z.Game.matchState~=_.Game.matchState then
                        K();
                    end;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2181 ]] Strings: [Health, MaxHealth, number]
[2181]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.Character;
    if not(z)then
        return 100;
    end;
    local K,_=z:GetAttribute("Health"),z:GetAttribute("MaxHealth");
    if type(K)~="number"then
        return 100;
    elseif type(_)~="number"then
        return 100;
    elseif _<=0 then
        return 100;
    end;
    return K/_*100;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2194 ]] Strings: [ABCDEFGHIJKLMNPQRSTUVWXYZ123456789]
[2194]=function(z,z,z,z,z,z)return function()return function()local z=table.create(8);
    for K=1,8,1 do
        local _=math.floor(math.random()*34)+1;
        z[K]=string.sub("ABCDEFGHIJKLMNPQRSTUVWXYZ123456789",_,_);
    end;
    return table.concat(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2205 ]] Strings: [(<font.->).-(</font>), ..K:gsub(, %%%%]
[2205]=function(z,z,z,z,z,z,z)return function(z)return function(z,K)local _,Y=z:gsub("(<font.->).-(</font>)","%1"..K:gsub("%%","%%%%").."%2");
    if Y>0 then
        return _;
    end;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2210 ]] Strings: [NoBreak, Team, bed]
[2210]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y)if z:GetAttribute("NoBreak")then
        return false;
    end;
    if K(y,z)then
        return false;
    end;
    if z:GetAttribute("Team"..(_:GetAttribute("Team")or-1).."NoBreak")~=nil then
        return false;
    end;
    if Y:HasTag(z,"bed")then
        return false;
    end;
    return n(y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2249 ]] Strings: [table, number]
[2249]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function(z,_,Y)if type(_)~="table"then
        return _;
    end;
    for n,y in Y,nil,nil do
        local Y=K:optionKey(z,n);
        local z,K=_[Y],false;
        if type(z)=="number"then
            for n,n in type(y[1])=="table"and y[1]or{y[1]},nil,nil do
                if math.abs(z-n)<1.0E-6 then
                    K=true;
                    break;
                end;
            end;
            if K then
                _[Y]=y[2];
            end;
        end;
    end;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2259 ]] 
[2259]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if not(K[z])then
        return false;
    end;
    if _[4][_[6]]then
        if not(_[4][_[6]].enabled)then
            return false;
        end;
    end;
    local K=z.Name;
    return Y(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2270 ]] 
[2270]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()if not(K.isAlive)then
        return _(false);
    end;
    local z=K.character.Humanoid;
    if not(z)then
        return _(false);
    end;
    local K=z:GetState();
    local f=z.FloorMaterial==Enum.Material.Air or K==Enum.HumanoidStateType.Jumping or K==Enum.HumanoidStateType.Freefall;
    if not Y[4][Y[6]]then
        if f then
            n[4][n[6]]+=1;
            if n[4][n[6]]>=2 then
                Y[4][Y[6]]=true;
                y[4][y[6]]=os.clock();
            end;
        else
            n[4][n[6]]=0;
            if os.clock()-Q>1.5 then
                _(false);
            end;
        end;
        return;
    end;
    if f then
        J[4][J[6]]=0;
    else
        J[4][J[6]]+=1;
        if J[4][J[6]]>=2 then
            if os.clock()-y[4][y[6]]>0.25 then
                return _(true);
            end;
        end;
    end;
    if os.clock()-Q>8 then
        _(false);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2292 ]] Strings: [projectileaura]
[2292]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)K.ProjectileAuraFiringLock=z;
    if z then
        _("projectileaura");
    else
        Y("projectileaura");
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2307 ]] Strings: [guitar]
[2307]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()local z=K("guitar");
    if z then
        if not(z.tool)then
            return false;
        end;
    else
        return false;
    end;
    local K;
    if _[4][_[6]].enabled then
        K=Y(z.tool);
        if not(K)then
            return false;
        end;
    else
    end;
    if not n[4][n[6]]then
        n[4][n[6]]=y.hand.tool;
        Q[4][Q[6]]=y.inventory.hotbarSlot;
    end;
    if K then
        J(K);
    end;
    f(z.tool,0);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2312 ]] 
[2312]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function()local z,_=tostring,K[4][K[6]].value;
    return z(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2331 ]] 
[2331]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.Highlight;
    if not(Y)then
        return;
    end;
    local n=z and(_(z));
    z=n and K.resolve(n)or nil;
    if Y.Adornee~=z then
        Y.Adornee=z;
    end;
    K.recolor();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2336 ]] 
[2336]=function(z,z,z,z,z)return function(z)return function()return"%";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2372 ]] 
[2372]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=workspace.CurrentCamera;
    K.Noted=z and z.CFrame;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2402 ]] Strings: [Instance]
[2402]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=z.Humanoid;
    if typeof(y)~="Instance"then
        return math.abs(n.Y)>0.01;
    end;
    if math.abs(n.Y)>8 then
        return true;
    end;
    if y.FloorMaterial~=Enum.Material.Air then
        return false;
    end;
    n=z.RootPart;
    y=n and K(_.bodyFor(z),n.Position,z.HipHeight or 3,Y());
    return not y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2408 ]] 
[2408]=function(z,z,z,z,z)return function(z)return function(z,K,_)local Y=z.own;
    for z=1,K,1 do
        Y[#Y+1]=_;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2445 ]] 
[2445]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()K.Sword=nil;
    K.Meta=nil;
    K.Count=0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2452 ]] Strings: [stud, studs]
[2452]=function(z,z,z,z,z,z)return function()return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2472 ]] Strings: [stud, studs]
[2472]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2481 ]] 
[2481]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q)local J=os.clock()+0.75;
    for f=1,4,1 do
        if os.clock()>J then
            return;
        end;
        if not(K(z))then
            if _[4][_[6]].enabled then
                return;
            end;
        end;
        f=Y.BlockController:calculateBlockDamage(n,{blockPosition=Q});
        if f then
            if not(f>0)then
                return;
            end;
        else
            return;
        end;
        local K=y(z,Q);
        if K<=f then
            return;
        end;
        Y.breakBlock(z,false,nil,nil,nil,nil,false);
        f=math.min(os.clock()+0.5,J);
        while true do
            task.wait();
            local _=z.Parent==nil or y(z,Q)<K;
            if _ or os.clock()>f then
                break;
            end;
        end;
        if z.Parent==nil then
            return;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2486 ]] 
[2486]=function(z,z,z,z,z,z,z)return function(z,z)return function(z,K,_)local Y,n,y,Q=0,K,1,0;
    for J=1,16,1 do
        K=math.min(z-Y,n);
        if K<=0 then
            break;
        end;
        Q+=y*K;
        Y,n,y=Y+K,_,-y;
    end;
    return Q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2495 ]] Strings: [Team, trainingRoomDummy, Model, HumanoidRootPart]
[2495]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q,J)if K[4][K[6]]then
        if not(K[4][K[6]].npcs.enabled)then
            return nil;
        end;
    else
        return nil;
    end;
    local f=_:GetAttribute("Team");
    local q,t;
    for T,L in Y:GetTagged("trainingRoomDummy")do
        if L:IsA("Model")then
            T=workspace;
            if not(L:IsDescendantOf(T))then
                continue;
            end;
        else
            continue;
        end;
        local Y=L:GetAttribute("Team");
        if Y~=nil then
            if Y==f then
                continue;
            end;
        end;
        Y=L:FindFirstChild("HumanoidRootPart")or L.PrimaryPart;
        if not Y then
            continue;
        end;
        T=(Y.Position-z).Magnitude;
        if T>Q then
            continue;
        elseif q then
            if T>=q then
                continue;
            end;
        end;
        if J then
            if not(J(Y.Position))then
                continue;
            end;
        end;
        if K[4][K[6]].walls.enabled then
            if n.Wallcheck(z,Y.Position,{y,_.Character,L})then
                continue;
            end;
        end;
        q,t=T,L;
    end;
    if not(t)then
        return nil;
    end;
    Q=n.getEntity(t)or{Character=t,RootPart=t:FindFirstChild("HumanoidRootPart")or t.PrimaryPart,NPC=true,StandIn=true};
    return Q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2498 ]] Strings: [held, table, function, region, RegionLock]
[2498]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)K();
    if z then
        while true do
            local z=_();
            if z~=Y[4][Y[6]]then
                Y[4][Y[6]]=z;
                n:updateOverlay();
            end;
            task.wait(0.5);
            z=y[4][y[6]].enabled;
            if not z then
                break;
            end;
        end;
    else
        local z=Q();
        if z then
            if z.state=="held"then
                if type(z.gates)=="table"then
                    if z.gates.region then
                        if type(z.release)=="function"then
                            if z.release("region")then
                                J("RegionLock","Loading in.",4);
                            end;
                        end;
                    end;
                end;
            end;
        end;
        Y[4][Y[6]]="Next match";
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2502 ]] 
[2502]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_,Y,n)if(_.flagged[z]or 0)>n then
        return;
    end;
    _.flagged[z]=n+K.config.cooldown;
    z.normal(Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2511 ]] 
[2511]=function(z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2529 ]] 
[2529]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].Thickness=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2547 ]] Strings: [stud, studs]
[2547]=function(z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2584 ]] Strings: [TextBackgroundBar, PlayerName]
[2584]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local _=z and(z:FindFirstChild("TextBackgroundBar"));
    local Y=_ and _:FindFirstChild("PlayerName")or z and z:FindFirstChild("PlayerName",true);
    return K(Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2590 ]] 
[2590]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()local z=workspace;
    if not(K:IsDescendantOf(z))then
        return;
    end;
    local z,Q,J,f=_(K),os.clock(),15;
    for _,q in Y,nil,nil do
        _=(z-q.Origin).Magnitude;
        if Q-q.At<=1 then
            if _<=J then
                J,f=_,q;
            else
            end;
        else
        end;
    end;
    if f then
        if f.Own then
            return;
        end;
    else
        return;
    end;
    if not(f.Cheater)then
        if n()then
            return;
        end;
    end;
    y(K,f.Origin,f.Cheater);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2613 ]] Strings: [PlayerGui, ChestApp, LayerCollector]
[2613]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K:FindFirstChildOfClass("PlayerGui");
    local K=z and(z:FindFirstChild("ChestApp"));
    if not(K)then
        return false;
    end;
    if K:IsA("LayerCollector")then
        return K.Enabled;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2629 ]] 
[2629]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()K.SoundManager:playSound(K.SoundList[_.sound]);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2666 ]] Strings: [CAT_POUNCE]
[2666]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)if z==K.Character then
        if Y=="CAT_POUNCE"then
            _();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2736 ]] Strings: [arrow]
[2736]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z,z,f)if z~=K[4][K[6]]then
        return false;
    end;
    f=f or{};
    _(Y[4][Y[6]],f.Mode);
    _(n[4][n[6]],f.Range);
    _(y[4][y[6]],f.TargetPart);
    _(Q[4][Q[6]],f.FireDelay);
    if J[4][J[6]]then
        if J[4][J[6]].active then
            if not(table.find(J[4][J[6]].active,"arrow"))then
                table.insert(J[4][J[6]].active,"arrow");
            end;
        end;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2745 ]] Strings: [% health]
[2745]=function(z,z,z,z,z)return function(z)return function()return"% health";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2755 ]] 
[2755]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function(z,L)if L~=K[4][K[6]]or not _(z,Y[4][Y[6]])then
        table.clear(n);
        table.clear(y);
        table.clear(Q);
        table.clear(J);
        Y[4][Y[6]],K[4][K[6]]=z,L;
        local K=f.blocks;
        for _,Y in K,nil,nil do
            _=q(Y);
            if _ then
                if t(z,_,L)then
                    T(Y);
                end;
            else
                J[Y]=true;
                table.insert(Q,Y);
            end;
        end;
        return;
    end;
    local K,_=#Q,0;
    for Y=1,K,1 do
        local K=Q[Y];
        Q[Y]=nil;
        if J[K]then
            Y=q(K);
            if Y then
                J[K]=nil;
                if t(z,Y,L)then
                    T(K);
                end;
            else
                _+=1;
                Q[_]=K;
            end;
        else
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2770 ]] 
[2770]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)table.insert(K.unloadfuncs,z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2773 ]] 
[2773]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z,Y=K.PRED,math.min;
    local K=math.max(2*_:GetNetworkPing(),0)+z.LEAD_EXTRA;
    return Y(K,z.LEAD_MAX);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2793 ]] 
[2793]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].value==""then
        _();
    else
        Y();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2801 ]] 
[2801]=function(z,z,z,z,z,z,z)return function(z,z)return function()return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2810 ]] 
[2810]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K[4][K[6]].enabled and _[4][_[6]]==Y;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2825 ]] 
[2825]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.graphics_saturation=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2837 ]] Strings: [HumanoidRootPart, Humanoid, armed]
[2837]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    return function()local z=K();
    _[4][_[6]]=z;
    if not(z)then
        table.clear(Y);
        return;
    end;
    table.clear(n);
    local K=y[4][y[6]].value;
    for _,y in Q:GetPlayers()do
        if J(y)then
            _=y.Character;
            local Q,J=_ and(_:FindFirstChild("HumanoidRootPart")),_ and(_:FindFirstChildOfClass("Humanoid"));
            if Q then
                if J then
                    if J.Health>0 then
                        if(Q.Position-z.Position).Magnitude<=K then
                            n[y]=true;
                        end;
                    end;
                end;
            end;
        end;
    end;
    for _ in Y,nil,nil do
        if not(n[_])then
            Y[_]=nil;
        end;
    end;
    local _,y=f(),q();
    K=t(_,y);
    if K=="armed"then
        return;
    end;
    local Q=false;
    for J in n,nil,nil do
        if Y[J]then
        else
            Y[J]=true;
            if K==nil then
                T(J,_);
                Q=true;
            else
            end;
        end;
    end;
    if Q then
        L(z,_,y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2844 ]] Strings: [held, function, AutoQueueDodge, Loading in.]
[2844]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=K();
    if z then
        if z.state=="held"then
            if type(z.release)=="function"then
                if z.release()then
                    _("AutoQueueDodge","Loading in.",4);
                else
                    _("AutoQueueDodge","Not holding a match right now.",4);
                end;
            else
                _("AutoQueueDodge","Not holding a match right now.",4);
            end;
        else
            _("AutoQueueDodge","Not holding a match right now.",4);
        end;
    else
        _("AutoQueueDodge","Not holding a match right now.",4);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2851 ]] 
[2851]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n,y,Q)local J=K.preciseGuard(Y,y,Q);
    local f=J~=nil and(math.abs(Q-0.3)<1.0E-6 or K.ranked(Q));
    K.PCatchUp=f;
    f=K.PCatchUp and z-K.PRECISE_FAST or z;
    K.PPace=f;
    local q;
    if K.PLast==Y then
        if K.PTool==n then
            if K.PTarget==z then
                local t=K.PCatchUp and 0 or z-_(K.PRECISE_SLACK,z*0.0117);
                q=math.max(K.PAnchor+f-Y,t);
            else
                q=f;
            end;
        else
            q=f;
        end;
    else
        q=f;
    end;
    K.PHeld=J~=nil and J-Y>q;
    if K.rate()==36 then
        n=K.xtSendAt(Y,y,Q);
        if n then
            K.PHeld=false;
            return n-Y;
        end;
    end;
    return J and math.max(q,J-Y)or q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2852 ]] Strings: [table, string]
[2852]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)if not(K[4][K[6]].enabled())then
        return;
    end;
    if z.damageType~=0 then
        return;
    end;
    local J=_:GetPlayerFromCharacter(z.fromEntity);
    if J then
        if J==Y then
            return;
        end;
    else
        return;
    end;
    local _,f=z.fromEntity,z.entityInstance;
    if _ then
        if f then
            if _.PrimaryPart then
                if not(f.PrimaryPart)then
                    return;
                end;
            else
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    local q=z.attackData;
    local t=type(q)=="table"and type(q.itemUsed)=="string"and n.ItemMeta[q.itemUsed]or nil;
    if t then
        if not(t.sword)then
            return;
        end;
    elseif not(y(_))then
        return;
    end;
    t=z.fromPosition;
    z,q=t and Vector3.new(t.X,t.Y,t.Z)or _.PrimaryPart.Position,math.clamp(Y:GetNetworkPing()*2,0.1,0.5);
    t=Q(z,f,q,os.clock());
    if t then
        if t>17 then
            K[4][K[6]].normal(J);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2873 ]] 
[2873]=function(z,z,z,z,z)return function()return function(z)return function(K)if K:upper()==K then
    if K:lower()~=K then
        return z:upper();
    end;
end;
return z;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2878 ]] Strings: [stud, studs]
[2878]=function(z,z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2888 ]] Strings: [string, crop-meta, pumpkin, carrot, melon]
[2888]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(Y)if type(Y)~="string"then
        return false;
    end;
    local n=K[Y];
    if n~=nil then
        return n;
    end;
    if _[4][_[6]]==nil then
        local y,Q=pcall(function()local J=z[4].TS.crop["crop-meta"];
        return z[3](J);
    end);
    _[4][_[6]]=y and Q or false;
end;
n=nil;
if _[4][_[6]]and _[4][_[6]].getCropConfig then
    local z,y=pcall(_[4][_[6]].getCropConfig,Y);
    n=z and y~=nil;
else
    n=Y=="pumpkin"or Y=="carrot"or Y=="melon";
end;
K[Y]=n;
return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2897 ]] Strings: [table, going, armed]
[2897]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z,_)if not(z)then
        return nil;
    end;
    local Y,n=z.bedAlarmModelMap,z.bedAlarmTriggerMaidMap;
    z=type(n)=="table"and n[_]or nil;
    if z~=nil then
        if K[4][K[6]]then
            if K[4][K[6]].Maid==z then
                return nil;
            end;
        end;
        return"going";
    end;
    if type(Y)=="table"then
        if Y[_]~=nil then
            return"armed";
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2906 ]] Strings: [Health, MaxHealth, number]
[2906]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()local z=K.Character;
    local K,_=z and(z:GetAttribute("Health")),z and(z:GetAttribute("MaxHealth"));
    if type(K)~="number"then
        return nil;
    elseif type(_)~="number"then
        return nil;
    elseif K<=0 then
        return nil;
    elseif _<=0 then
        return nil;
    end;
    return K/_*100;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2909 ]] 
[2909]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=_.HIGHEST+1;
    return K:setPriority(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2910 ]] 
[2910]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2915 ]] Strings: [stud, studs]
[2915]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2982 ]] 
[2982]=function(z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2987 ]] Strings: [VoidKnightTier, number]
[2987]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()local z=K:GetAttribute("VoidKnightTier");
    return type(z)=="number"and z or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2991 ]] 
[2991]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_)local Y=K.FH;
    local n=K.FhSwaps[(K.FhSwapAt+_-1)%Y.SWAP_CAP+1];
    return n<=z-Y.SWAP_WINDOW;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 2996 ]] 
[2996]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()K.XT=nil;
    _[4][_[6]]=-1;
    if Y[4][Y[6]]then
        n:updateOverlay();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3004 ]] Strings: [drone]
[3004]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()if K[4][K[6]].enabled then
        local z=_.hand.tool;
        if z then
            if z.Name~="drone"then
                return;
            end;
        else
            return;
        end;
    end;
    if Y[4][Y[6]]then
        if Y[4][Y[6]].Parent then
            if Y[4][Y[6]].PrimaryPart then
                local z=Y[4][Y[6]];
                return z;
            end;
        end;
    end;
    Y[4][Y[6]]=nil;
    local z=n();
    if z then
        return z;
    end;
    if os.clock()<y[4][y[6]]then
        return;
    end;
    z=Q("drone");
    if z then
        if not(z.tool)then
            return;
        end;
    else
        return;
    end;
    local K=J.hold();
    if not(K.take())then
        return;
    end;
    y[4][y[6]]=os.clock()+5;
    local _,Y=pcall(f,z);
    K.release();
    if not(_)then
        error(Y,0);
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3005 ]] 
[3005]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z)for _,_ in K.RANKED,nil,nil do
        if math.abs(z-_)<1.0E-6 then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3007 ]] Strings: [gumdrop_bounce_pad]
[3007]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z=K();
    if _[4][_[6]].enabled then
        if z then
            if z.tool then
                if Y(z.itemType)then
                    n(z.tool);
                    return;
                end;
            end;
        end;
        Y("gumdrop_bounce_pad");
        return;
    end;
    if z then
        if z.tool then
            n(z.tool);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3008 ]] Strings: [AutoBank]
[3008]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _,Y=K.lock(),os.clock();
    if _.Owner~="AutoBank"then
        if _.Owner~=nil then
            if K.held(_,Y)then
                return nil;
            end;
        end;
        _.Owner="AutoBank";
        table.clear(_.Holds);
    end;
    _.Serial=_.Serial+1;
    _.Holds[_.Serial]=Y+z;
    return _.Serial;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3023 ]] Strings: [stud, studs]
[3023]=function(z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3039 ]] 
[3039]=function(z,z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3040 ]] 
[3040]=function(z,z,z,z,z)return function(z,z,z)return function()
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3051 ]] 
[3051]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3077 ]] 
[3077]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)y=y or 0;
    for Q,J in n,nil,nil do
        Q=z-J;
        if math.abs(Q.X)<=K+y then
            if math.abs(Q.Z)<=K+y then
                if Q.Y>=-_-y then
                    if Q.Y<=Y+y then
                        return true;
                    end;
                end;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3106 ]] Strings: [bulletOrigin, Attachment, Owl, Owner]
[3106]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.Knit and K.Knit.Controllers and K.Knit.Controllers.OwlProjectileController;
    local K=z and z.owl;
    if K then
        if K.Parent then
            z=K:FindFirstChild("bulletOrigin");
            if z then
                if z:IsA("Attachment")then
                    return K,z.WorldPosition;
                end;
            end;
            return K,K.Position;
        end;
    end;
    for n,n in _:GetTagged("Owl")do
        if n:GetAttribute("Owner")==Y.UserId then
            K,z=n:FindFirstChild("bulletOrigin",true),n:IsA("Model")and n.PrimaryPart or(n:IsA("BasePart")and n or nil);
            if K then
                if K:IsA("Attachment")then
                    return z or K.Parent,K.WorldPosition;
                end;
            end;
            if z then
                return z,z.Position;
            end;
        end;
    end;
    return nil,nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3116 ]] Strings: [Folder, GeneratorESP]
[3116]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]]=Instance.new("Folder");
    K[4][K[6]].Name="GeneratorESP";
    K[4][K[6]].Parent=_.gui;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3121 ]] 
[3121]=function(z,K,K,K,K,K,K)return function(K,K)local _=K[1];
    local Y=K[2];
    return function(K,n,y)for Q,Q in _,nil,nil do
        local _,J,f,q,t,T,L,X=Q.ParticleEmitter,ColorSequence.new,{},ColorSequenceKeypoint.new(0,Color3.fromHSV(K,n,y)),ColorSequenceKeypoint.new,Color3.fromHSV,Y[4][Y[6]].hue,Y[4][Y[6]].sat;
        z:nc(f,0,q,t(1,T(L,X,Y[4][Y[6]].value)));
        _.Color=J(f);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3147 ]] Strings: [InventorySelectHotbarSlot]
[3147]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if z==nil then
        return;
    elseif K.inventory then
        if K.inventory.hotbarSlot==z then
            return;
        end;
    else
        return;
    end;
    if K.handHeld then
        if K.handHeld()then
            return;
        end;
    end;
    _.Store:dispatch({type="InventorySelectHotbarSlot",slot=z});
    local _=os.clock()+0.15;
    while os.clock()<_ do
        local _=K.inventory;
        if _ then
            if _.hotbarSlot==z then
                break;
            end;
        else
            break;
        end;
        task.wait();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3173 ]] 
[3173]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()return K.DaoController;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3182 ]] Strings: [stud, studs]
[3182]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3192 ]] Strings: [string]
[3192]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if type(z)~="string"then
        return false;
    end;
    z=z:lower();
    for _,_ in K,nil,nil do
        if z:find(_,1,true)then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3200 ]] 
[3200]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y)local Q=z.Toggle();
    if K[4][K[6]].enabled then
        if Q then
            if not(Q.enabled)then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    if _.hasKit(z.Kit)then
        if not(Y.isAlive)then
            return;
        end;
    else
        return;
    end;
    Q=Y.character.RootPart;
    if not Q then
        return;
    end;
    local K;
    if z.Direction then
        local _=y and y*Vector3.new(1,0,1)or Vector3.zero;
        if _.Magnitude<=0 then
            return;
        end;
        K=_.Unit*Q.AssemblyMass*(n[4][n[6]].value-1)*70;
    else
        K=z.Impulse(Q);
    end;
    Q:ApplyImpulse(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3203 ]] 
[3203]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z then
        K[4][K[6]]:clean(_);
        Y();
    else
        _();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3224 ]] Strings: [Effects]
[3224]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.TinkerKitController;
    if not(z and z.mounted)then
        return;
    end;
    local n=z.userMap and z.userMap[_];
    if not n then
        return;
    end;
    local y=Y:GetServerTimeNow();
    if(z.lastAttack or-1)+0.35>y then
        return;
    end;
    z.lastAttack=y;
    local Y;
    pcall(function()local y=z:getSkinMeta(_);
    y=y and y.tinker;
    y=y and y.sound;
    Y=y and y.attack;
end);
if Y==""then
    Y=nil;
else
end;
pcall(function()K.AudioManager:playAudio(Y or K.SoundList.DRILL_ATTACK_1,{category="Effects"});
end);
pcall(function()K.MountAnimationController:playAnimationInMount(n,K.AnimationType.TINKER_ATTACK,1.85);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3241 ]] 
[3241]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3244 ]] 
[3244]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K.enabled()then
        if z then
            if not(_(z))then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    local _,_=K.add(z);
    if _ then
        local _=K.evidence[z];
        if _ then
            _.reported=true;
        end;
        K.report(z);
    elseif Y[4][Y[6]].enabled then
        n[4][n[6]](z,K);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3246 ]] 
[3246]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K(z)then
        _();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3251 ]] Strings: [dizzy-status]
[3251]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()K:UnbindFromRenderStep("dizzy-status");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3260 ]] 
[3260]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=pairs;
    for _,Y in z(K)do
        local z=Y.original;
        Y.original=nil;
        Y.last=nil;
        if z then
            pcall(function()_.Image=z;
        end);
    end;
    Y.fn();
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3270 ]] Strings: [Humanoid, in the air, line out, menu open, bobber out]
[3270]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[9];
    local Q=z[10];
    local J=z[11];
    local f=z[12];
    local q=z[13];
    local t=z[14];
    local T=z[15];
    local L=z[16];
    local X=z[17];
    local l=z[18];
    local a=z[19];
    local Z=z[20];
    local m=z[21];
    local M=z[22];
    return function(S)if S then
        K[4][K[6]]=false;
        _[4][_[6]]=_[4][_[6]]or Y.FishingMinigameController.startMinigame;
        n[4][n[6]]:clean(function()if _[4][_[6]]then
            Y.FishingMinigameController.startMinigame=_[4][_[6]];
            _[4][_[6]]=nil;
        end;
    end);
    Y.FishingMinigameController.startMinigame=function(...)local _={...};
    local S,u,I=_[2],_[3],false;
    if S then
        _=S.fishModel or"";
        if table.find(z[5][4][z[5][6]].active,_)then
            I=true;
        else
            if S.drops then
                local O=S.drops;
                for S,S in O,nil,nil do
                    if table.find(z[5][4][z[5][6]].active,S.itemType)then
                        I=true;
                        break;
                    end;
                end;
            else
            end;
        end;
    else
    end;
    _=z[6][4][z[6][6]].value or 0;
    if _>0 then
        task.wait(_);
    end;
    if I then
        if z[7][4][z[7][6]].enabled then
            K[4][K[6]]=true;
            task.spawn(function()pcall(function()local _=z[8].Character;
            if _ then
                local z=_:FindFirstChildOfClass("Humanoid");
                if z then
                    z:ChangeState(Enum.HumanoidStateType.Jumping);
                    task.wait(0.1);
                    z.Jump=true;
                    local _=20;
                    while true do
                        local S,I=z.FloorMaterial,Enum.Material;
                        if not(S~=I.Air and z.Health>0 and _>0)then
                            break;
                        end;
                        task.wait(0.05);
                        _-=1;
                    end;
                    while true do
                        local _,S=z.FloorMaterial,Enum.Material;
                        if not(_==S.Air and z.Health>0)then
                            break;
                        end;
                        task.wait(0.05);
                    end;
                end;
            end;
        end);
        K[4][K[6]]=false;
    end);
end;
u({win=false});
else
    u({win=true});
end;
end;
local z;
while true do
    local _=y.character;
    local S,u=_ and _.Head,Q.hand;
    local Q,I=u and u.tool,false;
    pcall(function()I=Y.FishingRodController.activeFishing;
end);
u=nil;
if y.isAlive then
    if J[4][J[6]].enabled then
        if Q then
            if f(Q.Name)then
                if K[4][K[6]]then
                    u="in the air";
                else
                    if I then
                        u="line out";
                    else
                        if q[4][q[6]].enabled and t()then
                            u="menu open";
                        else
                            if T()then
                                u="bobber out";
                            else
                                if S then
                                    if L(S)then
                                        _=workspace.CurrentCamera.ViewportSize/2;
                                        task.wait(math.max(X[4][X[6]].value or 0,0.05));
                                        local Y,y=_.X,game;
                                        l:SendMouseButtonEvent(Y,_.Y,0,true,y,1);
                                        y=os.clock()+1.5;
                                        while true do
                                            task.wait();
                                            Y=a()or os.clock()>y or not n[4][n[6]].enabled;
                                            if Y then
                                                break;
                                            end;
                                        end;
                                        local Y,y,J=a(),_.X,game;
                                        l:SendMouseButtonEvent(y,_.Y,0,false,J,1);
                                        if not(Y)then
                                            if shared.PistonwareDeveloper then
                                                Z("print","autofish.cast","the rod did not take the press (a menu over the middle of the screen?)");
                                            end;
                                        end;
                                        task.wait(0.5);
                                    else
                                        u="ground ahead";
                                    end;
                                else
                                    u="no head";
                                end;
                            end;
                        end;
                    end;
                end;
            else
            end;
        else
        end;
    else
    end;
else
end;
if u~=z then
    if u then
        if m[u]then
            if shared.PistonwareDeveloper then
                Z("print","autofish.cast","waiting: "..u);
            end;
        end;
    end;
    z=u;
else
end;
pcall(M[4][M[6]]);
task.wait(0.1);
Q=n[4][n[6]].enabled;
if not Q then
    break;
end;
end;
else
    K[4][K[6]]=false;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3283 ]] Strings: [table, string]
[3283]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.ItemMeta;
    if type(Y)~="table"then
        return nil;
    end;
    local K=_.entryKey(z);
    if K==""then
        return nil;
    end;
    if Y[K]then
        return K;
    end;
    z=K:gsub(" ","_");
    if Y[z]then
        return z;
    end;
    if not(_.Names)then
        z={};
        for n,y in Y,nil,nil do
            if type(y)=="table"then
                if type(y.displayName)=="string"then
                    local Q=y.displayName:lower();
                    if z[Q]==nil then
                        z[Q]=n;
                    end;
                end;
            end;
        end;
        _.Names=z;
    end;
    Y=_.Names;
    return Y[K];
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3298 ]] 
[3298]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z,_,Y,n,y)if not(_.Drift)then
        return n;
    end;
    local Q=K.PRED;
    local J,f=K.predictCands(_,K.predictVel(Y),y,Q.LEAD_SHARE,_.Out),2;
    if _.Scored>=Q.SCORE_MIN then
        y=_.Err[2]*Q.BLEND_BONUS;
        for Q=1,5,1 do
            if Q~=2 then
                if _.Err[Q]<y then
                    local q=_.Err[Q];
                    y,f=q,Q;
                else
                end;
            else
            end;
        end;
    else
    end;
    _=K.predictFloor(z,Y,n,J[f]);
    return n+_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3325 ]] Strings: [BasePart]
[3325]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.QueryUtil;
    for K,K in z:GetDescendants()do
        if K:IsA("BasePart")then
            if not(Y:isQueryIgnored(K))then
                _[K]=true;
                Y:setQueryIgnored(K,true);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3326 ]] 
[3326]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()return K.MinerController;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3372 ]] Strings: [fireball]
[3372]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_,Y)K(z,_,"fireball",55,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3401 ]] 
[3401]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].enabled then
            return;
        end;
    end;
    _(z,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3406 ]] Strings: [ImageLabel, ImageButton]
[3406]=function(z,z,z,z,z,z)return function()return function(z)return z:IsA("ImageLabel")or z:IsA("ImageButton");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3412 ]] 
[3412]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)if z then
        local z=K.Character or K.CharacterAdded:Wait();
        if not(_[4][_[6]].enabled)then
            return;
        end;
        Y(z);
        n[4][n[6]]=K.CharacterAdded:Connect(function(z)task.wait(0.5);
        if not(_[4][_[6]].enabled)then
            return;
        end;
        Y(z);
    end);
    _[4][_[6]]:clean(n[4][n[6]]);
else
    y();
    Q[4][Q[6]]=false;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3424 ]] Strings: [Destroying]
[3424]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,z)if z=="Destroying"then
        return K;
    end;
    return _[z];
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3441 ]] Strings: [Accessory, Handle]
[3441]=function(z,K,K,K,K,K)return function(K,K)local _=K[1];
    local Y=K[2];
    return function(K,n)local y,Q=ipairs,z[127](K:GetChildren());
    for K,K in y(z:Hc(Q))do
        if K:IsA("Accessory")then
            if K:FindFirstChild("Handle")then
                if _(K.Name)then
                    Y(K.Handle,n);
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3442 ]] Strings: [table]
[3442]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if type(z)=="table"then
            if z.spiritPlayer==_ then
                if z.bridgeId==K[4][K[6]].bridge.id then
                    K[4][K[6]]=nil;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3445 ]] 
[3445]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]]~=z then
        K[4][K[6]]=z;
        Y[4][Y[6]]=_.ItemMeta and _.ItemMeta[z]or nil;
    end;
    z=Y[4][Y[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3451 ]] Strings: [Instance, Vector3]
[3451]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y,Y)local n=typeof(Y)=="Instance"and K.echo[Y]or nil;
    Y=n and n.id;
    if Y==nil then
        return;
    elseif typeof(z)~="Vector3"then
        return;
    end;
    n=ipairs;
    for y,Q in n(_)do
        y=Q.shot;
        if y then
            if y.id==Y then
                if not(Q.landedAt)then
                    if not(Q.impact)then
                        Q.impact=z;
                    end;
                end;
                return;
            end;
        end;
    end;
    local _,n=os.clock(),K.impact;
    for K,y in pairs(n)do
        if _-y.at>1 then
            n[K]=nil;
        end;
    end;
    n[Y]={position=z,at=_};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3457 ]] Strings: [MeshPart, OriginalSize, SpecialMesh, OriginalScale]
[3457]=function(z,z,z,z,z,z)return function(z)return function(z)if z:IsA("MeshPart")then
    local K=z:GetAttribute("OriginalSize");
    if K then
        z.Size=K;
        z:SetAttribute("OriginalSize",nil);
    end;
elseif z:IsA("SpecialMesh")then
    local K=z:GetAttribute("OriginalScale");
    if K then
        z.Scale=K;
        z:SetAttribute("OriginalScale",nil);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3460 ]] Strings: [DisguiseDisplayName, DisguiseUsername]
[3460]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)if z then
        if z:IsDescendantOf(K)then
            if Y then
                local K=_[4][_[6]][z];
                if K then
                    z:SetAttribute("DisguiseDisplayName",K.DisplayName);
                    z:SetAttribute("DisguiseUsername",K.Username);
                end;
            else
                _[4][_[6]][z]={DisplayName=z:GetAttribute("DisguiseDisplayName"),Username=z:GetAttribute("DisguiseUsername")};
                z:SetAttribute("DisguiseDisplayName",z.DisplayName);
                z:SetAttribute("DisguiseUsername",z.Name);
            end;
            z:SetAttribute("StreamerModeDisguise",Y);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3475 ]] 
[3475]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()K[4][K[6]]+=1;
    if _[4][_[6]]then
        _[4][_[6]]:Disconnect();
        _[4][_[6]]=nil;
    end;
    if Y[4][Y[6]]then
        Y[4][Y[6]]:Disconnect();
        Y[4][Y[6]]=nil;
    end;
    for z,K in n,nil,nil do
        for _,Y in K,nil,nil do
            pcall(y,z,_,Y.Value);
        end;
        n[z]=nil;
    end;
    Q[4][Q[6]]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3493 ]] Strings: [Frame, PistonwarePreviousKits, UICorner, UIStroke, UIPadding]
[3493]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    return function(z,X)local l=Instance.new("Frame");
    l.Name="PistonwarePreviousKits";
    l.AnchorPoint=Vector2.new(0.5,1);
    l.Position=UDim2.new(0.5,0,0.8,-2);
    l.BackgroundColor3=K;
    l.BackgroundTransparency=0.25;
    l.BorderSizePixel=0;
    l.ZIndex=3;
    l.Visible=not _();
    local _=Instance.new("UICorner");
    _.CornerRadius=UDim.new(0,4);
    _.Parent=l;
    _=Instance.new("UIStroke");
    _.Color=Y;
    _.Thickness=1;
    _.Parent=l;
    _=Instance.new("UIPadding");
    _.PaddingTop=UDim.new(0,n);
    _.PaddingBottom=UDim.new(0,n);
    _.PaddingLeft=UDim.new(0,n);
    _.PaddingRight=UDim.new(0,n);
    _.Parent=l;
    _=Instance.new("UIListLayout");
    _.FillDirection=Enum.FillDirection.Horizontal;
    _.HorizontalAlignment=Enum.HorizontalAlignment.Center;
    _.VerticalAlignment=Enum.VerticalAlignment.Center;
    _.SortOrder=Enum.SortOrder.LayoutOrder;
    _.Padding=UDim.new(0,y);
    _.Parent=l;
    for Y,n in X,nil,nil do
        local y,a=Q.BedwarsKitMeta[n]or Q.BedwarsKitMeta.none,Instance.new("Frame");
        a.Name="Kit"..Y;
        a.LayoutOrder=Y;
        a.BackgroundColor3=J;
        a.BackgroundTransparency=0.1;
        a.BorderSizePixel=0;
        a.ZIndex=4;
        a.Parent=l;
        _=Instance.new("UICorner");
        _.CornerRadius=UDim.new(0,3);
        _.Parent=a;
        local _=Instance.new("UIStroke");
        _.Color=Y==1 and f or q;
        _.Thickness=1;
        _.Parent=a;
        _=Instance.new("ImageLabel");
        _.Name="Kit";
        _.AnchorPoint=Vector2.new(0.5,0.5);
        _.Position=UDim2.fromScale(0.5,0.5);
        _.Size=UDim2.fromScale(0.86,0.86);
        _.BackgroundTransparency=1;
        _.Image=y and y.renderImage or"";
        _.ImageTransparency=n=="none"and 0.6 or 0;
        _.ScaleType=Enum.ScaleType.Fit;
        _.ZIndex=5;
        _.Parent=a;
        y=Instance.new("TextLabel");
        y.Name="Order";
        y.Position=UDim2.fromOffset(1,1);
        y.Size=UDim2.fromScale(0.42,0.42);
        y.BackgroundColor3=K;
        y.BackgroundTransparency=0.15;
        y.BorderSizePixel=0;
        y.Font=Enum.Font.Code;
        y.Text=tostring(Y);
        y.TextColor3=f;
        y.TextScaled=true;
        y.ZIndex=6;
        y.Parent=a;
        Y=Instance.new("UICorner");
        Y.CornerRadius=UDim.new(0,2);
        Y.Parent=y;
    end;
    t(z,l,#X);
    l.Parent=z;
    T[l]=true;
    L[4][L[6]]:clean(l);
    local function K()if l.Parent then
        t(z,l,#X);
    end;
end;
local _=z:GetPropertyChangedSignal("AbsoluteSize"):Connect(K);
L[4][L[6]]:clean(_);
local function z()_:Disconnect();
end;
l.Destroying:Connect(z);
return l;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3500 ]] 
[3500]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.audio_effects_volume=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3503 ]] Strings: [Fly]
[3503]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()K.release("Fly");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3512 ]] 
[3512]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z)table.insert(K[4][K[6]],z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3514 ]] 
[3514]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.pictureMode=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3525 ]] Strings: [DetonateRaven, Instance, RemoteEvent, table, Vector3]
[3525]=function(z,z,z,z,z,z,z,z)return function(z,K)return function(K)local _,Y=pcall(function()local n=z[1]:Get("DetonateRaven");
    return n.instance;
end);
if _ then
    if typeof(Y)=="Instance"then
        if not(Y:IsA("RemoteEvent"))then
            return nil;
        end;
    else
        return nil;
    end;
else
    return nil;
end;
local function _(n)if K.detonatedOn then
    if type(n)=="table"then
        if not(typeof(n.position)=="Vector3")then
            return;
        end;
    else
        return;
    end;
else
    return;
end;
local y=n.user;
if typeof(y)=="Instance"then
    if y:IsA("Player")then
        if not(y.UserId==z[2].UserId)then
            return;
        end;
    else
        return;
    end;
else
    return;
end;
z[3].report(K,n.position);
end;
return Y.OnClientEvent:Connect(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3527 ]] 
[3527]=function(z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    return function()K.Blockcast=workspace.Blockcast;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3551 ]] 
[3551]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()local function z(f,q)if f then
        if f.row then
            f.row.Visible=q and true or false;
        end;
    end;
end;
local f=K[4][K[6]]~=nil and K[4][K[6]].enabled and not(_.Knitless or Y);
if n[4][n[6]]then
    local K=n[4][n[6]].options;
    for _,_ in K,nil,nil do
        z(_,n[4][n[6]].toggle.enabled);
    end;
end;
z(y[4][y[6]],f);
z(Q[4][Q[6]],f);
if J[4][J[6]]then
    z(J[4][J[6]].toggle,f);
    local K=J[4][J[6]].options;
    for _,_ in K,nil,nil do
        z(_,f and J[4][J[6]].toggle.enabled);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3568 ]] 
[3568]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)local Q,J=n-z,K.BlockController:getBlockPosition(z);
    local K,n,f=J.X,J.Y,J.Z;
    local J,q,t=_(K,z.X,Q.X);
    local T,L,X=_(n,z.Y,Q.Y);
    local l,a,Z=_(f,z.Z,Q.Z);
    for z=1,40,1 do
        if q>1 then
            if L>1 then
                if a>1 then
                    break;
                end;
            end;
        end;
        if q<=L and q<=a then
            K+=J;
            q=q+t;
        else
            if L<=a then
                n+=T;
                L=L+X;
            else
                f+=l;
                a=a+Z;
            end;
        end;
        z=Vector3.new(K,n,f);
        if z==y then
            break;
        end;
        if Y(z)then
            return z;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3573 ]] 
[3573]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3592 ]] 
[3592]=function(z,z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=0;
    while true do
        if z<=0 then
            K[4][K[6]]=true;
            _[4][_[6]]=_[4][_[6]]-_[4][_[6]]%2+1;
            Y[4][Y[6]],z=(120161*Y[4][Y[6]]+121894473)%268435456,1;
        else
            return;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3609 ]] Strings: [BoxHandleAdornment, ItemBox]
[3609]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function(z)local _=z.Size;
    local Y,n=math.clamp(math.max(_.X,_.Y,_.Z)*1.15,1,2.5),Instance.new("BoxHandleAdornment");
    n.Name="ItemBox";
    n.AlwaysOnTop=true;
    n.ZIndex=0;
    n.Size=Vector3.new(Y,Y,Y);
    n.Adornee=z;
    n.Visible=false;
    n.Parent=K[4][K[6]];
    return n,Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3613 ]] 
[3613]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y=math.huge,K.List;
    local Q;
    for J,f in y,nil,nil do
        if f.Targetable then
            continue;
        end;
        if f.Player then
            if f==K.character then
                continue;
            end;
        else
            continue;
        end;
        if f.RootPart then
            if f.Health<=0 then
                continue;
            elseif f.Health>=100 then
                continue;
            end;
        else
            continue;
        end;
        J=(f.RootPart.Position-z).Magnitude;
        if J>_[4][_[6]]:Get(Y[4][Y[6]])then
            continue;
        end;
        if J<n then
            n,Q=J,f;
        else
        end;
    end;
    return Q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3643 ]] 
[3643]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()for Y,n in K,nil,nil do
        pcall(function()Y.LocalTransparencyModifier=n;
    end);
end;
table.clear(K);
if _[4][_[6]]then
    pcall(function()z[3]().CameraSubject=_[4][_[6]];
end);
_[4][_[6]]=nil;
end;
pcall(function()z[4].Parent=nil;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3649 ]] 
[3649]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y,n=K.info();
    _[4][_[6]](z,Y.." "..n);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3655 ]] Strings: [Transparency, CastShadow, Visible, Enabled, TransparencyNS]
[3655]=function(z,z,z,z,z,z)return function(z,z)return function(z)for K,K in ipairs(z)do
    local _=K.instance;
    if _ and _.Parent then
        pcall(function()if K.property=="Transparency"then
            _.Transparency=K.original;
        elseif K.property=="CastShadow"then
            _.CastShadow=K.original;
        elseif K.property=="Visible"then
            _.Visible=K.original;
        elseif K.property=="Enabled"then
            _.Enabled=K.original;
        elseif K.property=="TransparencyNS"then
            _.Transparency=K.original;
        end;
    end);
end;
end;
table.clear(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3661 ]] Strings: [number]
[3661]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z and z.RootPart and z.RootPart.Parent and not(type(z.Health)=="number"and z.Health<=0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3664 ]] 
[3664]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=K[z];
    if n then
    else
        n={total={orbs=0,vitality=0,crit=0,digs=0},new={orbs=0,vitality=0,crit=0,digs=0}};
        K[z]=n;
    end;
    n.total[Y]+=1;
    n.new[Y]+=1;
    if not(n.open)then
        n.open=true;
        task.delay(3,_,z,n);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3675 ]] 
[3675]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()for z,n in K,nil,nil do
        z=_.Knit.Controllers[n];
        if z then
            if z.isPlayerCastingSpell then
                local K,_=pcall(z.isPlayerCastingSpell,z,Y);
                if K then
                    if _ then
                        return true;
                    end;
                end;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3688 ]] 
[3688]=function(z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3700 ]] Strings: [frozen]
[3700]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K();
    if z==_.FrozenChar then
        if n-_.FrozenAt<0.016666666666666666 then
            return _.Frozen;
        end;
    end;
    _.FrozenAt=n;
    _.FrozenChar=z;
    n=Y();
    _.Frozen=n and n:isActive(z,"frozen")and true or false;
    return _.Frozen;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3711 ]] 
[3711]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function(z)K.exposure_compensation=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3723 ]] Strings: [RootPart]
[3723]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function(z)if not(K.isAlive)then
        return 0;
    end;
    local _=K.AllPosition({Range=z,Part="RootPart",Players=true,NPCs=false});
    return#_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3737 ]] 
[3737]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)if not(math.abs(z-0.3)<1.0E-6)then
        if not(K.ranked(z))then
            return nil;
        end;
    end;
    local _,Y=K.WINDOW_FRAMES,math.ceil(z/K.SERVER_FRAME-1-1.0E-6);
    z=math.floor((_-1)/Y)+1;
    if z<=math.floor(_/(Y+0.5))+1 then
        return nil;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3738 ]] 
[3738]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()for z,z in K,nil,nil do
        if z.Conn then
            z.Conn:Disconnect();
        end;
        if z.AttrConn then
            z.AttrConn:Disconnect();
        end;
    end;
    table.clear(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3750 ]] Strings: [ Speed, stud/s, studs/s]
[3750]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)local Q;
    local J=K[4][K[6]]:toggle(n,{default=true,changed=function(f)if Q then
        Q.row.Visible=f;
    end;
end,about=y});
Q=K[4][K[6]]:slider(n.." Speed",{min=1,max=_[z],default=_[z],sub=true,visible=J.enabled,suffix=function(K)return K==1 and"stud/s"or"studs/s";
end,about="How fast this jump carries you, your own speed included, the way Speed and Fly count it."});
Y[z]={Toggle=J,Speed=Q};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3762 ]] Strings: [stud, studs]
[3762]=function(z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3770 ]] 
[3770]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function()for z,Y in K,nil,nil do
        z=_.modules[Y];
        if z then
            if z.enabled then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3783 ]] Strings: [):gsub(, );return z:match(]
[3783]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=(K[4][K[6]]and K[4][K[6]].value or""):gsub("%s","");
    return z:match("^%d+$")and z or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3809 ]] 
[3809]=function(z,z,z,z,z)return function(z,K,K)return function(K)local _,Y=pcall(function()local n,y=z[1].BlockController,K.Position;
    return n:getBlockPosition(y);
end);
if not(_)then
    return nil;
end;
return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3811 ]] 
[3811]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()K.gone=_.Destroying:Connect(K.forget);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3821 ]] Strings: [pistonware/autoqueuedodge.txt]
[3821]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()while true do
        task.wait(0.5);
        local z=K.loaded==true or K.loaded==nil;
        if z then
            break;
        end;
    end;
    if K.loaded==true then
        if not(_[4][_[6]].enabled)then
            pcall(function()if isfile("pistonware/autoqueuedodge.txt")then
                delfile("pistonware/autoqueuedodge.txt");
            end;
        end);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3832 ]] 
[3832]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.audio_master_volume=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3841 ]] Strings: [AutoWin, Logging to file: , Log write failed: ]
[3841]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if not(K[4][K[6]].SetLogFileEnabled)then
            return;
        end;
    else
        return;
    end;
    local Y,n=K[4][K[6]]:SetLogFileEnabled(z);
    if z then
        _("AutoWin",Y and"Logging to file: "..tostring(n)or"Log write failed: "..tostring(n),5);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3855 ]] Strings: [PlayingAsKits, string, then for _,_ in string.split(K,, )do if _~=, PlayingAsKit]
[3855]=function(z,z,z,z,z,z)return function(z)return function(z)local K=z and(z:GetAttribute("PlayingAsKits"));
    if type(K)=="string"and K~=""then
        for _,_ in string.split(K,",")do
            if _~=""then
                return _;
            end;
        end;
    end;
    return z and z:GetAttribute("PlayingAsKit")or"none";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3860 ]] Strings: [ability-indicator, ability-indicator-util, summoner-kit-util]
[3860]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[4];
    return function()if K[4][K[6]]==nil then
        local Y,n=pcall(function()local y=z[2](z[3].TS.games.bedwars.items["ability-indicator"]["ability-indicator-util"]);
        return y.AbilityIndicatorUtil;
    end);
    K[4][K[6]]=Y and n or false;
end;
if _[4][_[6]]==nil then
    local Y,n=pcall(function()local y=z[3].TS.games.bedwars.kit.kits.summoner["summoner-kit-util"];
    return z[2](y);
end);
_[4][_[6]]=Y and n or false;
end;
local z,Y=K[4][K[6]]or nil,_[4][_[6]]or nil;
return z,Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3864 ]] 
[3864]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if not(z)then
        return;
    end;
    if z.statusEffect==K.DIZZY then
        if _()then
            z.statusEffect=nil;
        end;
    elseif Y[4][Y[6]]then
        if Y[4][Y[6]].enabled then
            if z.statusEffect==K.WEREWOLF_FEAR then
                if z.entityInstance==n.Character then
                    z.statusEffect=nil;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3875 ]] Strings: [):lower()or]
[3875]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()K[4][K[6]]=identifyexecutor and tostring(({identifyexecutor()})[1]or""):lower()or"";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3911 ]] 
[3911]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)local _,Y=K.PRED,K.PredSelf;
    local K,n,y=Y.Head;
    for Q=1,Y.Count,1 do
        Q=Y.T[K];
        if Q<=z then
            if not(n)then
                return Y.P[K];
            end;
            return Y.P[K]:Lerp(y,(z-Q)/(n-Q));
        end;
        y=Y.P[K];
        K,n=(K-2)%_.SELF_KEEP+1,Q;
    end;
    return y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3945 ]] Strings: [hit / 10s, hits / 10s]
[3945]=function(z,z,z,z,z,z,z)return function()return function(z)return z==1 and"hit / 10s"or"hits / 10s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3955 ]] Strings: [arrow, snowball]
[3955]=function(z,K,K,K,K,K)return function(K,K,_,_,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    return function(K,J,f)local q=_(J);
    if q then
        local _=q.Name:lower();
        if _:find("arrow")then
            local t,T=ipairs,z[127](q:GetDescendants());
            for L,L in t(z:Hc(T))do
                Y(L,n);
            end;
        elseif _:find("snowball")then
            local _,n=ipairs,z[127](q:GetDescendants());
            for q,q in _(z:Hc(n))do
                Y(q,y);
            end;
        end;
    end;
    return Q(K,J,f);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3961 ]] Strings: [Team, Spectator]
[3961]=function(z,z,z,z,z,z)return function(z,z)return function(z)local K=z:GetAttribute("Team");
    return z:GetAttribute("Spectator")~=true and K~=nil and K~="";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3973 ]] Strings: [pirate_gunpowder_barrel]
[3973]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)n-=Vector3.new(0,K.character.HipHeight+K.character.RootPart.Size.Y/2-3,0);
    local K=Vector3.new(math.round(n.X/3)*3,math.round(n.Y/3)*3,math.round(n.Z/3)*3);
    _[4][_[6]]=Vector3.new(K.X,_[4][_[6]].Y,K.Z)+y*(z.itemType=="pirate_gunpowder_barrel"and 2.6 or 0.2);
    Y.placeBlock(K,z.itemType,false);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3977 ]] 
[3977]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()if K[4][K[6]]then
        return;
    elseif not(_.isAlive)then
        return;
    end;
    if os.clock()<Y[4][Y[6]]then
        return;
    end;
    Y[4][Y[6]]=os.clock()+0.1;
    if n(y)then
        K[4][K[6]]=true;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 3986 ]] 
[3986]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[3];
    return function(Y,n,y)local Q,J=pcall(K().canThrowTrap,Y,n,function(K,Y)return z[2](K,Y,y);
end,_);
return Q and J==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4004 ]] 
[4004]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4013 ]] 
[4013]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(_)if K[_]then
        return;
    end;
    K[_]=true;
    task.defer(function()K[_]=nil;
    if _.Parent then
        z[2](_);
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4015 ]] 
[4015]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if not K[4][K[6]]then
        _();
        Y();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4036 ]] Strings: [print, fasthits.shot]
[4036]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,...)if not(shared.PistonwareDeveloper)then
        return;
    end;
    local Y=os.clock();
    if Y<K.FhLogAt then
        return;
    end;
    K.FhLogAt=Y+1;
    _("print","fasthits.shot",string.format(z,...));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4038 ]] Strings: [sword]
[4038]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    local a=z[15];
    local Z=z[16];
    local m=z[17];
    local M=z[18];
    local S=z[19];
    local u=z[20];
    local I=z[21];
    local O=z[22];
    local d=z[23];
    local e=z[24];
    return function()if K[4][K[6]].enabled then
        if not(_:IsMouseButtonPressed(0))then
            return false;
        end;
    end;
    if Y[4][Y[6]].enabled then
        if n.matchState==0 then
            return false;
        end;
    end;
    if y[4][y[6]].enabled then
        if Q()then
            return false;
        end;
    end;
    local z=J.Character;
    f(z);
    if q.Spinning then
        return false;
    end;
    if t.selfDead()then
        return false;
    end;
    if T[4][T[6]].enabled then
        if not(L.isAlive)then
            return false;
        end;
        if not(z)then
            return false;
        end;
        if q.StunnedUntil>X:GetServerTimeNow()then
            return false;
        end;
        if l()then
            return false;
        end;
        if q.Elk then
            return false;
        end;
        if a(z)then
            return false;
        end;
    end;
    local K,_=n.selectedHand and n.selectedHand()or n.hand,Z();
    if _ and#_>0 and K and K.tool then
        z=m(K.tool);
        for Y,Y in _,nil,nil do
            if z:find(Y,1,true)then
                return false;
            end;
        end;
    end;
    _=M[4][M[6]].enabled;
    z=_ and K or S();
    if z then
        if not(z.tool)then
            return false;
        end;
    else
        return false;
    end;
    if _ then
        if K.toolType~="sword"then
            return false;
        elseif u.DaoController then
            if u.DaoController.chargingMaid then
                return false;
            end;
        end;
    end;
    if I[4][I[6]].enabled then
        _=O();
        if _ then
            if d()-_.lastSwing>0.25 then
                return false;
            end;
        end;
    end;
    K=e(z.tool.Name);
    if K then
        if not(K.sword)then
            return false;
        end;
    else
        return false;
    end;
    return z,K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4039 ]] 
[4039]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    return function(z)if z then
        K();
        _[4][_[6]]:clean(Y);
        n();
        y[4][y[6]]+=1;
        Q(J,y[4][y[6]]);
    else
        y[4][y[6]]+=1;
        f(false);
        table.clear(q);
        Y();
        t[4][t[6]],T[4][T[6]]=0,0;
        L.__isBlacklistHeld=false;
    end;
    X();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4045 ]] 
[4045]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(y)if K.isAlive and _.Knit.Controllers.MatchController:getMatchState()==1 then
        local _=K.character.RootPart;
        local y=_.Velocity;
        local Q=Y.modules.Fly and Y.modules.Fly.enabled;
        if y.Y<-35 then
            if not(Q)then
                if not(n.IsLongJumping)then
                    _.Velocity=Vector3.new(y.X,2.5,y.Z);
                    K.character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed);
                    task.spawn(function()z[5].PreRender:Wait();
                    local z=_.Velocity;
                    _.Velocity=Vector3.new(z.X,y.Y,z.Z);
                end);
            end;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4069 ]] 
[4069]=function(z,z,z,z,z,z,z,z)return function()return function()return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4082 ]] Strings: [Team1Column]
[4082]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K[4][K[6]].enabled then
        if not(z.Parent)then
            return;
        end;
    else
        return;
    end;
    if _.threadFix then
        setthreadidentity(8);
    end;
    Y[4][Y[6]](z);
    n(z,nil,z:FindFirstAncestor("Team1Column")~=nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4110 ]] Strings: [Health, MaxHealth, number]
[4110]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.Character;
    if not(z)then
        return 100;
    end;
    local K,_=z:GetAttribute("Health"),z:GetAttribute("MaxHealth");
    if type(K)~="number"then
        return 100;
    elseif type(_)~="number"then
        return 100;
    elseif _<=0 then
        return 100;
    end;
    return K/_*100;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4112 ]] Strings: [Amount]
[4112]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)local K=tonumber(z:GetAttribute("Amount"));
    return K==nil and 1 or math.max(0,K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4126 ]] 
[4126]=function(z,z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z-K[4][K[6]]<=15 then
        return true;
    end;
    z=_.modules;
    if not z then
        return false;
    end;
    for K,_ in Y,nil,nil do
        K=z[_];
        if K then
            if K.enabled then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4128 ]] 
[4128]=function(z,K,K,K,K)return function(K,_,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    return function(K)local y,Q,J,f,q=K.Position.Y-K.Size.Y*0.5,K.Position,math.huge,ipairs,z[127](_());
    K=nil;
    for _,t in f(z:Hc(q))do
        _=Y(t);
        if _ then
            local z,Y=_.Position,_.Size*0.5;
            local f,q=math.abs(Q.X-z.X),math.abs(Q.Z-z.Z);
            local z,Q,t=f<=Y.X+2,q<=Y.Z+2,n(_);
            Y=t+_.Size.Y;
            q=t<=y+0.5 and Y>=y-3;
            if z then
                if Q then
                    if q then
                        if t<J then
                            J,K=t,_;
                        else
                        end;
                    else
                    end;
                else
                end;
            else
            end;
        else
        end;
    end;
    return K,K and J or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4151 ]] Strings: [MeshPart, OriginalSize, SpecialMesh, OriginalScale]
[4151]=function(z,z,z,z,z,z,z)return function(z)return function(z)if z:IsA("MeshPart")and not z:GetAttribute("OriginalSize")then
    z:SetAttribute("OriginalSize",z.Size);
elseif z:IsA("SpecialMesh")then
    if not(z:GetAttribute("OriginalScale"))then
        z:SetAttribute("OriginalScale",z.Scale);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4152 ]] Strings: [ItemDrops]
[4152]=function(z,z,z,z,z,z,z,z)return function()return function()return workspace:FindFirstChild("ItemDrops");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4167 ]] 
[4167]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if z==K[4][K[6]]then
        K[4][K[6]]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4168 ]] Strings: [color]
[4168]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,z)if z=="color"then
        local z=K.current;
        return z();
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4177 ]] Strings: [Weld, Motor6D, BodyVelocity]
[4177]=function(z,z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()K[4][K[6]]=true;
    if shared.pingbypassroot then
        if not(shared.pingbypassroot.Parent)then
            return;
        end;
    else
        return;
    end;
    _.Character.Parent=game;
    Y.character.HumanoidRootPart:Destroy();
    Y.character.HumanoidRootPart=shared.pingbypassroot;
    Y.character.RootPart=shared.pingbypassroot;
    shared.pingbypassroot.Parent=_.Character;
    shared.pingbypassroot.Transparency=1;
    _.Character.PrimaryPart=shared.pingbypassroot;
    _.Character.PrimaryPart.Transparency=1;
    _.Character.Parent=workspace;
    shared.pingbypassroot.CanCollide=true;
    local z,K,Y=next,_.Character:GetDescendants();
    for Q,Q in z,K,Y do
        if Q:IsA("Weld")or Q:IsA("Motor6D")then
            if Q.Part0==n[4][n[6]]then
                Q.Part0=shared.pingbypassroot;
            end;
            if Q.Part1==n[4][n[6]]then
                Q.Part1=shared.pingbypassroot;
            end;
        end;
        if Q:IsA("BodyVelocity")then
            Q:Destroy();
        end;
    end;
    z,K,Y=next,shared.pingbypassroot:GetChildren();
    for Q,Q in z,K,Y do
        if Q:IsA("BodyVelocity")then
            Q:Destroy();
        end;
    end;
    Y=n[4][n[6]].Position.Y;
    if n[4][n[6]]then
        n[4][n[6]]:Destroy();
        n[4][n[6]]=nil;
    end;
    _.Character.Humanoid.HipHeight=y[4][y[6]]or 2;
    z={shared.pingbypassroot.CFrame:GetComponents()};
    z[2]=Y;
    shared.pingbypassroot.CFrame=CFrame.new(unpack(z));
    shared.pingbypassroot=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4183 ]] Strings: [Model, arrow, snowball, BasePart]
[4183]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if not(z:IsA("Model"))then
        return;
    end;
    local Q=z.Name:lower();
    if not(Q:find("arrow"))then
        if not(Q:find("snowball"))then
            return;
        end;
    end;
    local J,f=os.clock(),#K;
    for q=f,1,-1 do
        Q=K[q];
        if J-Q.at>1 then
            table.remove(K,q);
        elseif not(Q.model.Parent)then
            table.remove(K,q);
        end;
    end;
    local q={model=z,at=J};
    local t=z:FindFirstChildWhichIsA("BasePart",true);
    local T;
    task.defer(function()local L=T and T.root or z.Parent and(z.PrimaryPart or z:FindFirstChildWhichIsA("BasePart",true));
    if L then
        if L.Parent then
            q.spawn=L.Position;
        end;
    end;
    if not(t)then
        _(z.Name.." appeared with no parts;
        "..(L and"they came a moment later"or"still none"));
    end;
    if T then
        T.settling=nil;
        if T.mode then
        elseif L then
            if L.Parent then
                T.hint=L.Position;
            end;
        end;
    end;
end);
if t then
    q.spawn=t.Position;
    if Y(t.Position)then
        q.claimed=true;
        Q=n[z.Name];
        if Q then
        else
            Q={};
            n[z.Name]=Q;
        end;
        Q[#Q+1]=J;
        K[#K+1]=q;
        T=y(t.Position,z,J);
        if T then
            T.settling=true;
        end;
        _("your "..z.Name.." traced where it appeared"..(T and""or", but no beam was made"));
        return;
    end;
    f=workspace.CurrentCamera;
    _(string.format("%s appeared %d studs from the camera: taken as not yours",z.Name,f and math.floor((f.CFrame.Position-t.Position).Magnitude+0.5)or-1));
end;
K[#K+1]=q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4194 ]] Strings: [TrapperArmAt, explosive_trap, number]
[4194]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)local f=workspace:GetServerTimeNow();
    for q,t in z,nil,nil do
        q=t:GetAttribute("TrapperArmAt");
        if t.Name=="explosive_trap"and type(q)=="number"and q<=f then
            local z=K(t);
            if z then
                local K=_.List;
                for _,_ in K,nil,nil do
                    if _.Targetable and _.Health and _.Health>0 and _.RootPart and not Y(n[4][n[6]],_)and(_.RootPart.Position-z).Magnitude<=8 then
                        for z,z in y,nil,nil do
                            if Q(z)then
                                J(z,nil);
                                return true;
                            end;
                        end;
                        return false;
                    end;
                end;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4223 ]] Strings: [iron_ore_mesh_block]
[4223]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)local Q=K();
    if not(_(z,Q,y))then
        return false;
    end;
    y=n and(n.Name=="iron_ore_mesh_block"or Y:HasTag(n,"iron_ore_mesh_block"));
    if y then
        for K,K in Q,nil,nil do
            n=z-K;
            if math.abs(n.X)+math.abs(n.Y)+math.abs(n.Z)<=1 then
                return true;
            end;
        end;
        return false;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4227 ]] Strings: [iron_ore_mesh_block]
[4227]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=z;
    while Y and Y~=workspace do
        if K:HasTag(Y,"iron_ore_mesh_block")then
            if _(Y)then
                return Y;
            end;
            return nil,true;
        end;
        Y=Y.Parent;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4275 ]] 
[4275]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()K();
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4283 ]] 
[4283]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=true;
    if _[4][_[6]]then
        _[4][_[6]]:Disconnect();
    end;
    if not(z)then
        Y(false);
        return;
    end;
    task.delay(0.5,function()Y(false);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4299 ]] 
[4299]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if os.clock()<K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=os.clock()+0.1;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4314 ]] 
[4314]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K.TouchEnabled and not K.KeyboardEnabled;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4316 ]] 
[4316]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]].enabled then
        local K=workspace;
        if z:IsDescendantOf(K)then
            _[4][_[6]](z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4317 ]] Strings: [LastDamagedByUser, number]
[4317]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=z:GetAttribute("LastDamagedByUser");
    local Q=type(y)=="number"and K:GetPlayerByUserId(y);
    if Q then
        if Q==_ then
            return;
        end;
    else
        return;
    end;
    y=Q.Character;
    local K,_=y and y.PrimaryPart,z.PrimaryPart;
    if K then
        if _ then
            if(K.Position-_.Position).Magnitude>Y.REACH then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    Y.add(Q,y,n,Y.RULES);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4367 ]] 
[4367]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
    if _[4][_[6]]then
        if _[4][_[6]].row then
            _[4][_[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4389 ]] Strings: [number]
[4389]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K.TPDownPauseUntil;
    return type(z)=="number"and os.clock()<z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4393 ]] 
[4393]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)K.last=K.last+1;
    K.times[K.last]=z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4394 ]] 
[4394]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=next;
    for n,n in Y,K.Handlers,nil do
        n.reset(z);
    end;
    _(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4397 ]] 
[4397]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)for Y,Y in K,nil,nil do
        if _(z+Y)then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4404 ]] Strings: [PlayerGui, PlayerKitImage, PlayerLevel]
[4404]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[16];
    local a=z[19];
    local Z=z[20];
    local m=z[21];
    local M=z[22];
    local S=z[23];
    local u=z[24];
    local I=z[25];
    local O=z[26];
    local d=z[27];
    local e=z[28];
    return function(s)if s then
        K();
        _(Y,n);
        y();
        Q[4][Q[6]]:clean(J);
        f(q);
        f(t:FindFirstChild("PlayerGui"));
        f(workspace);
        f(T.gui);
        if q then
            table.insert(L,q.DescendantAdded:Connect(X));
        end;
        local Y=t:FindFirstChild("PlayerGui");
        if Y then
            table.insert(L,Y.DescendantAdded:Connect(X));
            table.insert(L,Y.DescendantAdded:Connect(function(Y)local n=Y.Name;
            if n=="PlayerKitImage"then
                z[14][4][z[14][6]][Y]=true;
                z[15]();
            elseif n=="PlayerLevel"then
                z[14][4][z[14][6]][Y]=true;
                z[15]();
            end;
        end));
    end;
    table.insert(L,workspace.DescendantAdded:Connect(X));
    if T.gui then
        table.insert(L,T.gui.DescendantAdded:Connect(X));
    end;
    table.insert(L,l.PlayerAdded:Connect(function()K();
    z[17]();
end));
table.insert(L,l.PlayerRemoving:Connect(function(Y)z[18](Y);
K();
z[17]();
task.defer(z[17]);
task.delay(0.25,function()if Q[4][Q[6]].enabled then
    z[17]();
end;
end);
end));
Q[4][Q[6]]:clean(a);
Z();
else
    _(nil,nil);
    J();
    a();
    m();
    table.clear(M);
    S();
    u();
    I();
    table.clear(O);
    table.clear(d);
    table.clear(e);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4407 ]] 
[4407]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=Y and K.fhSelect(z,nil)or _(z,0)==true;
    if n then
        Y=os.clock();
        K.FhShot.out=Y;
        K.fhSpend(Y);
        task.wait(K.FH.SWITCH);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4413 ]] Strings: [Falcon, OwnerId, FalconState, number]
[4413]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()for z,Y in K:GetTagged("Falcon")do
        if not(Y.Parent)then
            continue;
        end;
        if Y:GetAttribute("OwnerId")~=_.UserId then
            continue;
        end;
        z=Y:GetAttribute("FalconState");
        if z==nil then
            return true;
        elseif type(z)=="number"then
            if z>=2 then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4414 ]] Strings: [table, function]
[4414]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=shared.PistonwareHidden;
    if type(Y)=="table"then
        if Y[z]~=nil then
            return false;
        end;
    end;
    Y=K and K.Skipped;
    if type(Y)=="table"then
        if Y[z]~=nil then
            return false;
        end;
    end;
    Y=_.modules[z];
    if type(Y)~="table"then
        return nil;
    elseif type(Y.flip)~="function"then
        return nil;
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4421 ]] 
[4421]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function()K.SoundManager:playSound(_[math.random(1,#_)]);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4423 ]] 
[4423]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4446 ]] 
[4446]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()if K then
        local z=os.clock()+0.5;
        while true do
            task.wait();
            local q=_()~=Y;
            if q or os.clock()>z then
                break;
            end;
        end;
        y[4][y[6]]=os.clock()+n;
        if n>0 then
            task.wait(n);
        end;
    end;
    Q[4][Q[6]]=false;
    if K then
        if J[4][J[6]].enabled then
            pcall(f[4][f[6]]);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4464 ]] 
[4464]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function()K:destroyVignette(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4472 ]] 
[4472]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z then
        K[4][K[6]]:clean(_);
        Y();
    else
        _();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4474 ]] Strings: [number]
[4474]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_)local Y=K();
    local K,n=pcall(function()return Y.trapThrowDuration(z,_);
end);
if K then
    if type(n)=="number"then
        return n;
    end;
end;
return math.clamp((_-z).Magnitude/55,0.15,0.65);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4475 ]] Strings: [bed]
[4475]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K[z]then
        return;
    end;
    local y=_(z,"bed");
    if not(y)then
        Y[4][Y[6]][z]="bed";
        return;
    end;
    K[z]=y;
    n(y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4499 ]] Strings: [bed]
[4499]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K[4][K[6]].enabled then
        if _[4][_[6]].enabled then
            if z.Parent then
                if Y:HasTag(z,"bed")then
                    n(z);
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4504 ]] 
[4504]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z,z)local Y=z~=nil and K[4][K[6]]==z and _[4][_[6]].enabled;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4512 ]] 
[4512]=function(z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4516 ]] 
[4516]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y)K[4][K[6]]=z;
    _[4][_[6]]=z and y or nil;
    Y.JadeSlamLock=z or nil;
    if n.Knitless then
        Y.JadeSlamHold=z and{tool=y,expires=os.clock()+10}or nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4518 ]] Strings: [Team]
[4518]=function(z,z,z,z,z)return function()return function(z,K)if K then
    return not K[z.UserId];
end;
return z:GetAttribute("Team")==nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4522 ]] 
[4522]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        if K[4][K[6]].RefreshNavigationOptions then
            K[4][K[6]]:RefreshNavigationOptions();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4551 ]] Strings: [HeldItem, HeldItemAmount]
[4551]=function(z,z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[3];
    return function(Y)if K[Y]then
        return;
    end;
    K[Y]=true;
    local function K()task.spawn(z[2],Y);
    end;
    _[4][_[6]]:clean(Y:GetAttributeChangedSignal("HeldItem"):Connect(K));
    _[4][_[6]]:clean(Y:GetAttributeChangedSignal("HeldItemAmount"):Connect(K));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4553 ]] 
[4553]=function(z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()local z,Q=pcall(K,_);
    if z then
        if Q~=nil then
            if Q~=""then
                if Q~=Y.last then
                    n[_]=Q;
                end;
            end;
        end;
    end;
    y(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4560 ]] Strings: [stud, studs]
[4560]=function(z,z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4570 ]] 
[4570]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K[z]then
        return;
    end;
    local Y=_(z.Name);
    if Y then
        K[z]={Kind=Y};
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4572 ]] 
[4572]=function(z,K,K,K,K,K,K)return function(K,_,_)local _=K[1];
    local Y=K[2];
    return function(K,n,y)for Q,Q in _,nil,nil do
        local _,J,f,q=Q.ParticleEmitter,ColorSequence.new,{},ColorSequenceKeypoint.new(0,Color3.fromHSV(Y[4][Y[6]].hue,Y[4][Y[6]].sat,Y[4][Y[6]].value));
        z:nc(f,0,q,ColorSequenceKeypoint.new(1,Color3.fromHSV(K,n,y)));
        _.Color=J(f);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4582 ]] 
[4582]=function(z,K,K,K,K)return function(K,K,_)local _=K[1];
    return function(K,Y)local n=K[13];
    for n=1,Y,2 do
        for Y=1,32,4 do
            n=Y-1;
            local y,Q=z:vc(_,n),Y+1-1;
            local n,J=z:vc(_,Q),Y+2-1;
            local Q,f=z:vc(_,J),Y+3-1;
            local J,q,t,T=z:vc(_,f),K[y],K[n],K[Q];
            f=K[J];
            q=(q+t)%4294967296;
            Y=z[103](f,q);
            f=z[40](z[81](Y,16),(z[26](Y,16)))%4294967296;
            T=(T+f)%4294967296;
            Y=z[103](t,T);
            t=z[40](z[81](Y,12),(z[26](Y,20)))%4294967296;
            q=z[58](q+t,4294967295);
            Y=z[103](f,q);
            f=z[40](z[81](Y,8),(z[26](Y,24)))%4294967296;
            T=(T+f)%4294967296;
            Y=z[103](t,T);
            t=z[40](z[81](Y,7),(z[26](Y,25)))%4294967296;
            K[y]=q;
            K[n]=t;
            K[Q]=T;
            K[J]=f;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4589 ]] 
[4589]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if not(K[4][K[6]].enabled)then
        return;
    end;
    for z in _,nil,nil do
        if z.Parent then
            task.spawn(Y,z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4612 ]] Strings: [stud, studs]
[4612]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4618 ]] 
[4618]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)for n,n in K,nil,nil do
        return n;
    end;
    if _[4][_[6]]then
        if z then
            if Y[4][Y[6]]>=z then
                local z=_[4][_[6]];
                return z;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4629 ]] 
[4629]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
    if _[4][_[6]]then
        if _[4][_[6]].row then
            _[4][_[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4641 ]] Strings: [Health]
[4641]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z,f)local q=K.BlockController;
    local t,T=q:getStore(),q:getHandlerRegistry():getHandler(z.Name);
    local L,X,l,a,Z,m=T and T:getContainedPositions(z)or{q:getBlockPosition(z.Position)},{},{},{},{},{};
    for M,M in L,nil,nil do
        X[M]=true;
        if t:getBlockAt(M)==z then
            a[M]=0;
            Z[M]=0;
            table.insert(l,{cell=M,cost=0,depth=0});
        end;
    end;
    local M,S,u,I,O,d,e,s=_.character.RootPart.Position,Y(),K.BlockBreaker.blockHealthbar,math.huge,math.huge,math.huge;
    e,s=nil,math.huge;
    T=nil;
    for _=1,512,1 do
        local Y,P;
        for v,U in l,nil,nil do
            if Y then
                if U.cost<Y.cost then
                    Y,P=U,v;
                else
                    if U.cost==Y.cost then
                        if U.depth<Y.depth then
                            Y,P=U,v;
                        else
                        end;
                    else
                    end;
                end;
            else
                Y,P=U,v;
            end;
        end;
        if Y then
            if Y.cost>I then
                break;
            end;
        else
            break;
        end;
        table.remove(l,P);
        if m[Y.cell]then
            continue;
        end;
        m[Y.cell]=true;
        local P,v=t:getBlockAt(Y.cell),Y.cell*3;
        local U,w=(M-v).Magnitude,math.huge;
        for M,M in L,nil,nil do
            w=math.min(w,(Y.cell-M).Magnitude);
        end;
        _=P and U<=S and n(P,Y.cell,f)and(Y.cost<I or Y.depth<O or Y.depth==O and(w<d or w==d and(P==y[4][y[6]]and e~=y[4][y[6]]or P==y[4][y[6]]==(e==y[4][y[6]])and U<s)));
        if _ then
            I,O,d,e,s,T=Y.cost,Y.depth,w,P,U,v;
        else
        end;
        for n,y in Q,nil,nil do
            P=Y.cell+y;
            if m[P]then
                continue;
            elseif X[P]then
                continue;
            elseif(P*3-z.Position).Magnitude>18 then
                continue;
            end;
            _=t:getBlockAt(P);
            n=_ and K.ItemMeta[_.Name];
            if n then
                if n.block then
                    if not(q:isBlockBreakable({blockPosition=P},J))then
                        continue;
                    end;
                else
                    continue;
                end;
            else
                continue;
            end;
            y=q:calculateBlockDamage(J,{blockPosition=P});
            if y then
                if y<=0 then
                    continue;
                end;
            else
                continue;
            end;
            U=t:getBlockData(P);
            v=U and U:GetAttribute(u:getHealthKey(_))or _:GetAttribute("Health")or n.block.health or 10;
            local z,K=Y.cost+math.max(math.ceil(v/y),1),Y.depth+1;
            if z<(a[P]or math.huge)or z==a[P]and K<Z[P]then
                a[P]=z;
                Z[P]=K;
                table.insert(l,{cell=P,cost=z,depth=K});
            end;
        end;
    end;
    return e,T,I,O,s;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4654 ]] 
[4654]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K.active[z]then
        return;
    end;
    K.active[z]=true;
    K.owners=K.owners+1;
    if K.owners>1 then
        return;
    end;
    K.accumulator=0;
    K.connection=_.Heartbeat:Connect(K.tick);
    K.damageConnection=Y.EntityDamageEvent.Event:Connect(K.onDamage);
    K.pearlConnection=workspace.ChildAdded:Connect(K.onChild);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4663 ]] Strings: [studs, stud]
[4663]=function(z,z,z,z,z,z,z)return function(z,z,z)return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4674 ]] 
[4674]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)K[4][K[6]].enabled=z;
    _.DamageBoost=z or nil;
    if z then
        Y();
    else
        n[4][n[6]],y[4][y[6]],Q[4][Q[6]]=0,0,0;
        if J[4][J[6]]then
            J[4][J[6]]:Disconnect();
            J[4][J[6]]=nil;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4675 ]] 
[4675]=function(z,z,z,z,z)return function(z,K,K)return function()local K,_=pcall(function()local Y=z[1].FishingRodController;
    return Y.projectileHandler;
end);
return K and _~=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4679 ]] Strings: [Assets, Blocks, MeshPart]
[4679]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[z]==nil then
        local Y=_:FindFirstChild("Assets");
        local _=Y and(Y:FindFirstChild("Blocks"));
        Y=_ and(_:FindFirstChild(z));
        K[z]=Y and Y:FindFirstChildWhichIsA("MeshPart",true)or false;
    end;
    local _=K[z]or nil;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4682 ]] Strings: [then if z.Name==]
[4682]=function(z,z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if not(K[4][K[6]].enabled)then
        return;
    end;
    if _[4][_[6]]then
        if _[4][_[6]].enabled then
            Y(z);
        end;
    end;
    if n[4][n[6]]then
        if n[4][n[6]].value~=""then
            if z.Name=="PlayerLevel"then
                y(z,n[4][n[6]].value);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4691 ]] 
[4691]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(Y)local n,y=os.clock(),K.EntityDamageEvent;
    if n<_.FhShotLogAt then
        return nil;
    elseif not(Y and y)then
        return nil;
    end;
    _.FhShotLogAt=n+0.25;
    local K={proj=0,sword={}};
    K.conn=y.Event:Connect(function(_)if _.fromEntity~=z[3].Character then
        return;
    elseif _.entityInstance~=Y then
        return;
    end;
    if _.damageType==0 then
        table.insert(K.sword,os.clock());
    elseif K.proj==0 then
        K.proj=os.clock();
    end;
end);
return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4693 ]] Strings: [tinker, tinker_summon, ].useAbility:FireServer(, SelfRepairing, Shield_TINKER_MACHINE]
[4693]=function(z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()if not(K.hasKit("tinker"))then
        return;
    end;
    local z=_.TinkerKitController;
    local K=z and z.mounted or false;
    if K then
        Y[4][Y[6]]=false;
    elseif _.AbilityController:canUseAbility("tinker_summon",{disableBlockedAbilityAlert=true})then
        if n[4][n[6]].enabled then
            if not Y[4][Y[6]]then
                Y[4][Y[6]]=true;
                y["events-@easy-games/game-core:shared/game-core-networking@getEvents.Events"].useAbility:FireServer("tinker_summon");
            end;
        end;
    else
        Y[4][Y[6]]=false;
    end;
    if not(K)then
        return;
    end;
    if os.clock()<Q[4][Q[6]]then
        return;
    end;
    K=J:GetAttribute("SelfRepairing");
    if K then
        if K~=0 then
            return;
        end;
    end;
    K=J.Character;
    z=K and K:GetAttribute("Shield_TINKER_MACHINE")or 0;
    if z>=f()then
        return;
    end;
    if not(_.AbilityController:canUseAbility("tinker_self_repair",{disableBlockedAbilityAlert=true}))then
        return;
    end;
    if workspace:GetServerTimeNow()-_.SwordController.lastAttack<=1 then
        return;
    end;
    Q[4][Q[6]]=os.clock()+0.5;
    _.AbilityController:useAbility("tinker_self_repair");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4695 ]] Strings: [Humanoid]
[4695]=function(z,z,z,z,z,z)return function()return function(z)local K=z.target;
    if K then
        if K.Parent==nil then
            return true;
        end;
    else
        return true;
    end;
    z=K.Character;
    K=z and(z:FindFirstChildOfClass("Humanoid"));
    return not(z and z.PrimaryPart and K and K.Health>0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4718 ]] Strings: [PistonwareSelf]
[4718]=function(z,z,z,z,z,z)return function()return function(z)local K=z;
    for z=1,4,1 do
        if K then
            if K==workspace then
                return false;
            end;
        else
            return false;
        end;
        if K:GetAttribute("PistonwareSelf")then
            return true;
        end;
        K=K.Parent;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4733 ]] 
[4733]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()K();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4735 ]] 
[4735]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4744 ]] Strings: [BasePart, Transparency, CastShadow, Attachment, Visible]
[4744]=function(z,z,z,z,z,z)return function(z)return function(z,K)if z then
    if not(z.Parent)then
        return;
    end;
else
    return;
end;
if z:IsA("BasePart")and z.Transparency~=1 then
    K[#K+1]={instance=z,property="Transparency",original=z.Transparency};
    z.Transparency=1;
    if z.CastShadow~=false then
        K[#K+1]={instance=z,property="CastShadow",original=z.CastShadow};
        z.CastShadow=false;
    end;
elseif z:IsA("Attachment")and z.Visible~=false then
    K[#K+1]={instance=z,property="Visible",original=z.Visible};
    z.Visible=false;
elseif z:IsA("Decal")then
    K[#K+1]={instance=z,property="Transparency",original=z.Transparency};
    z.Transparency=1;
elseif(z:IsA("ParticleEmitter")or z:IsA("Light"))and z.Enabled~=false then
    K[#K+1]={instance=z,property="Enabled",original=z.Enabled};
    z.Enabled=false;
elseif z:IsA("Trail")or z:IsA("Beam")then
    K[#K+1]={instance=z,property="TransparencyNS",original=z.Transparency};
    z.Transparency=NumberSequence.new(1);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4746 ]] 
[4746]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()K:Release(_[4][_[6]]);
    if Y.AutoWinNukerBridge==K then
        Y.AutoWinNukerBridge=nil;
    end;
    if Y.ownBedZone==n then
        Y.ownBedZone=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4766 ]] 
[4766]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    return function(_)if K[_]then
        return;
    end;
    K[_]=true;
    task.delay(0,function()K[_]=nil;
    z[2](_);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4771 ]] Strings: [HonorPointsLeftToGiveToAllies, HonorPointsLeftToGiveToOpponents]
[4771]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=tonumber(K:GetAttribute(z and"HonorPointsLeftToGiveToAllies"or"HonorPointsLeftToGiveToOpponents"))or 0;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4792 ]] Strings: [and]
[4792]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function()table.clear(K);
    local z,L,X=_[4][_[6]].value,Y[4][Y[6]].value,n[4][n[6]].value==""and"[]"or n[4][n[6]].value;
    for _,_ in y:GetPlayers()do
        Q(_);
    end;
    J(f.Name,f.DisplayName,z);
    for z,_ in q,nil,nil do
        if z~=f.UserId then
            J(_.Name,_.DisplayName,L);
        end;
        if _.ClanTag then
            if _.ClanTag~=""then
                t(_.ClanTag,X);
            end;
        end;
        t(tostring(z),"1");
    end;
    table.sort(K,function(z,K)return z[3]>K[3];
end);
T();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4806 ]] 
[4806]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()K[4][K[6]],_[4][_[6]],Y[4][Y[6]]=os.clock(),true,nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4807 ]] 
[4807]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]].enabled then
        if _ then
            _.BLOCK_PLACE_CPS=z;
        end;
    end;
    Y();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4810 ]] Strings: [Humanoid, Head]
[4810]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=K(z);
    if not(y)then
        return;
    end;
    if not(n)then
        for K,K in _.List,nil,nil do
            if K.Character==z then
                return;
            end;
        end;
    end;
    n=Y[z];
    if n then
    else
        n={Character=z,Jumping=false,NPC=true};
        Y[z]=n;
    end;
    local K=z.FindFirstChildOfClass(z,"Humanoid");
    n.RootPart=y;
    n.Head=z.FindFirstChild(z,"Head")or y;
    n.Humanoid=K;
    n.HipHeight=K and K.HipHeight+y.Size.Y/2 or 2;
    n.Health=K and K.Health or 1;
    n.MaxHealth=K and K.MaxHealth or 1;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4814 ]] Strings: [BasePart]
[4814]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)if z:IsA("BasePart")then
    if z.Transparency<1 then
        return true;
    end;
end;
for K,K in z:GetDescendants()do
    if K:IsA("BasePart")then
        if K.Transparency<1 then
            return true;
        end;
    end;
end;
return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4820 ]] 
[4820]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)K.friendNotifications=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4835 ]] Strings: [shared-constants]
[4835]=function(z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    return function()local z=K(_.TS["shared-constants"]);
    return z.CpsConstants;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4836 ]] 
[4836]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if z then
        if K.SoundList then
            K.SoundManager:playSound(K.SoundList.PICKUP_ITEM_DROP);
            local z=K.ItemMeta[_];
            local _=z and z.pickUpOverlaySound;
            if _ then
                K.SoundManager:playSound(_,{position=Y.Position,volumeMultiplier=0.9});
            end;
        end;
    end;
    n[4][n[6]]=false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4862 ]] 
[4862]=function(z,K,K,K,K)return function(K,K)local _=K[1];
    local Y=K[2];
    local n=K[3];
    return function()if _[4][_[6]]then
        if not(_[4][_[6]].enabled)then
            return;
        end;
    else
        return;
    end;
    local K=Y();
    if not(K)then
        return;
    end;
    local _,Y=ipairs,z[127](K:GetChildren());
    for K,K in _(z:Hc(Y))do
        n(K);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4874 ]] Strings: [ItemDrop, shadow_coin]
[4874]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[9];
    return function(q)if q then
        for q,q in K:GetTagged("ItemDrop")do
            _(q);
        end;
        Y[4][Y[6]]:clean(K:GetInstanceAddedSignal("ItemDrop"):Connect(_));
        Y[4][Y[6]]:clean(K:GetInstanceRemovedSignal("ItemDrop"):Connect(n));
        if y[4][y[6]].enabled then
            for _,_ in K:GetTagged("shadow_coin")do
                Q(_);
            end;
            Y[4][Y[6]]:clean(K:GetInstanceAddedSignal("shadow_coin"):Connect(Q));
            Y[4][Y[6]]:clean(K:GetInstanceRemovedSignal("shadow_coin"):Connect(n));
        end;
        local function K()pcall(z[8]);
        end;
        Y[4][Y[6]]:clean(J.RenderStepped:Connect(K));
    else
        for z in f,nil,nil do
            n(z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4879 ]] Strings: [Folder, ItemESP]
[4879]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]]=Instance.new("Folder");
    K[4][K[6]].Name="ItemESP";
    K[4][K[6]].Parent=_.gui;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4881 ]] Strings: [stud, studs]
[4881]=function(z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4904 ]] 
[4904]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)K[4][K[6]]=z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4919 ]] 
[4919]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=next;
    for Y,Y in z,K.Handlers,nil do
        Y.resetAll();
    end;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4929 ]] 
[4929]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.audio_gameplay_volume=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4935 ]] 
[4935]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function()K[4][K[6]]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4951 ]] Strings: [HumanoidRootPart, BasePart]
[4951]=function(z,z,z,z,z)return function(z)return function(z)return z.PrimaryPart or z.FindFirstChild(z,"HumanoidRootPart")or z.FindFirstChildWhichIsA(z,"BasePart");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4965 ]] 
[4965]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function(z,_)local Y=K[z];
    if not(Y)then
        return true;
    end;
    for z,K in Y,nil,nil do
        z=_-K;
        local K,_,Y=math.abs(z.X),math.abs(z.Y),math.abs(z.Z);
        if K<=9 then
            if _<=9 then
                if Y<=9 then
                    return true;
                end;
            end;
        end;
        if _<=3 and Y<=3 or K<=3 and Y<=3 then
            return true;
        elseif K<=3 then
            if _<=3 then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4979 ]] 
[4979]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=K.ItemMeta[z];
    return _ and _.block and _.block.health or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 4992 ]] Strings: [):lower();if K:find(, )then _(z,Y);elseif K:find(]
[4992]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)local y=K(z);
    if not(y)then
        return;
    end;
    local K=(y.Name or""):lower();
    if K:find("arrow")then
        _(z,Y);
    elseif K:find("snowball")then
        _(z,n);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5008 ]] 
[5008]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function()local z,Y,n=math.max,K.FH.SETTLE,math.min(_:GetNetworkPing()+0.03,0.25)+0.02;
    return z(Y,n);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5019 ]] Strings: [TextLabel, UIPadding]
[5019]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z=Instance.new("TextLabel");
    z.AutomaticSize=Enum.AutomaticSize.XY;
    z.Size=UDim2.new();
    z.AnchorPoint=Vector2.new(0.5,1);
    z.BackgroundColor3=Color3.new();
    z.BackgroundTransparency=K[4][K[6]].value;
    z.BorderSizePixel=0;
    z.TextColor3=Color3.new(1,1,1);
    z.TextSize=14*_[4][_[6]].value;
    Y.libraries.fonts.track(z);
    z.RichText=true;
    z.Visible=false;
    local K=Instance.new("UIPadding");
    K.PaddingLeft=UDim.new(0,4);
    K.PaddingRight=UDim.new(0,4);
    K.PaddingTop=UDim.new(0,4);
    K.PaddingBottom=UDim.new(0,3);
    K.Parent=z;
    z.Parent=n[4][n[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5021 ]] 
[5021]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if K[4][K[6]].value<=0 then
        _[4][_[6]],Y[4][Y[6]]=Vector2.zero,Vector2.zero;
        return CFrame.identity;
    end;
    if os.clock()>=n[4][n[6]]then
        n[4][n[6]]=os.clock()+y:NextNumber(0.015,0.045);
        Y[4][Y[6]]=Vector2.new(y:NextNumber(-1,1),y:NextNumber(-1,1));
    end;
    _[4][_[6]]=_[4][_[6]]:Lerp(Y[4][Y[6]],math.min(z*45,1));
    z=Vector2.new(y:NextNumber(-1,1),y:NextNumber(-1,1));
    local Y,n=_[4][_[6]]*0.6+z*0.4,math.rad(5*(K[4][K[6]].value/100));
    return CFrame.Angles(Y.Y*n,Y.X*n,0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5023 ]] 
[5023]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=z.Name;
    if K[4][K[6]]~=Y then
        K[4][K[6]]=Y;
        _[4][_[6]]=Y:lower();
    end;
    z=_[4][_[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5049 ]] Strings: [Heatseeker]
[5049]=function(z,z,z,z,z,z)return function(z,z)return function()return"Heatseeker";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5063 ]] 
[5063]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=1;
    while true do
        if z<=0 then
            return;
        else
            K[4][K[6]](_[4][_[6]]);
            z=0;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5068 ]] Strings: [stud, studs]
[5068]=function(z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5089 ]] Strings: [warn, jade.attack.binding, Attack]
[5089]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K(z);
    if not(n)then
        if not _[4][_[6]]then
            _[4][_[6]]=true;
            Y("warn","jade.attack.binding","no Attack binding found for the hammer -- using raw remotes");
        end;
        return false;
    end;
    z=n.action or"Attack";
    local K=pcall(n.boundFunction,z,Enum.UserInputState.Begin,nil);
    pcall(n.boundFunction,z,Enum.UserInputState.End,nil);
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5090 ]] Strings: [TextLabel]
[5090]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_)local Y=Instance.new("TextLabel");
    Y.Size=UDim2.fromScale(1,1);
    Y.BackgroundTransparency=1;
    Y.Text=tostring(_);
    Y.TextColor3=Color3.new(1,1,1);
    Y.TextSize=16;
    Y.TextStrokeTransparency=0;
    K.libraries.fonts.track(Y);
    Y.Parent=z;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5097 ]] Strings: [stud, studs]
[5097]=function(z,z,z,z,z)return function()return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5103 ]] 
[5103]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5108 ]] Strings: [PlayerName, Text, PlayerRender, ImageLabel, ImageButton]
[5108]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[3];
    return function(Y)if K[Y]then
        return;
    end;
    K[Y]=true;
    local function K()z[2](Y);
    end;
    local z=Y:FindFirstChild("PlayerName",true);
    if z then
        _[4][_[6]]:clean(z:GetPropertyChangedSignal("Text"):Connect(K));
    end;
    z=Y:FindFirstChild("PlayerRender",true);
    local n=z and(z:IsA("ImageLabel")or z:IsA("ImageButton"));
    if n then
        _[4][_[6]]:clean(z:GetPropertyChangedSignal("Image"):Connect(K));
    end;
    local function z(n)if n.Name=="KitImage"then
        K();
    end;
end;
_[4][_[6]]:clean(Y.ChildAdded:Connect(z));
local function z(n)if n.Name=="KitImage"then
    K();
end;
end;
_[4][_[6]]:clean(Y.ChildRemoved:Connect(z));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5112 ]] 
[5112]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=K.RATES[Y].Cut;
    if not(K.ranked(z))then
        local y=n*_(1,z/0.3);
        return z-y;
    end;
    local y=K.SERVER_FRAME;
    local Q,J,f,q=math.ceil(z/y-1-1.0E-6),K.WINDOW_FRAMES,35-_(Y,35),math.ceil(0.3/y-1-1.0E-6);
    z=math.floor(J/(q+0.5))+1-f;
    local K,_=math.max(J/z,q),J/(z-1);
    Y=((0.3-n)/y-K)/(_-K);
    z=math.floor(J/(Q+0.5))+1-f;
    K=math.max(J/z,Q);
    return(K+Y*(J/(z-1)-K))*y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5121 ]] Strings: [entity, trapper_trap, DontBlockAbilityRaycast]
[5121]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z={K};
    for K,K in _.List,nil,nil do
        if K.Character then
            table.insert(z,K.Character);
        end;
    end;
    if Y.Character then
        table.insert(z,Y.Character);
    end;
    local K={"entity","trapper_trap","DontBlockAbilityRaycast"};
    for _,_ in K,nil,nil do
        for Y,Y in n:GetTagged(_)do
            table.insert(z,Y);
        end;
    end;
    K=RaycastParams.new();
    K.FilterType=Enum.RaycastFilterType.Exclude;
    K.FilterDescendantsInstances=z;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5122 ]] Strings: [number]
[5122]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()local z=K.BlackMarketeerBalance;
    local K=z and z.FURY_POTION_ATTACK_SPEED_MULTIPLIER;
    if type(K)~="number"then
        return 0.8;
    end;
    z=1-(K-1);
    return z>0 and z<=1 and z or 0.8;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5123 ]] 
[5123]=function(z,z,z,z,z,z)return function(z)return function(z,K)local _=z.keys;
    local Y=_[1];
    for n=#_,1,-1 do
        if _[n].t<=K then
            Y=_[n];
            break;
        end;
    end;
    _=K-Y.t;
    if _<=0 then
        return Y.pos;
    end;
    if Y.grounded then
        return Y.pos+Y.horiz*_;
    end;
    return Y.pos+Y.horiz*_+Vector3.new(0,Y.vy*_-0.5*z.grav*_*_,0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5129 ]] Strings: [Instance, LastDamageTakenTime]
[5129]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z.fromEntity~=K.Character then
        return;
    elseif z.damageType~=0 then
        return;
    end;
    local K=z.entityInstance;
    if typeof(K)~="Instance"then
        return;
    end;
    z=_();
    if not(Y.PWatched[K])then
        Y.PWatched[K]=true;
        local _=Y.PConns;
        for n,y in _,nil,nil do
            if not(n.Parent)then
                pcall(function()y:Disconnect();
            end);
            Y.PConns[n]=nil;
            Y.PWatched[n]=nil;
        end;
    end;
    Y.PConns[K]=K:GetAttributeChangedSignal("LastDamageTakenTime"):Connect(function()Y.preciseStampChanged(K);
end);
Y.PCand[K],Y.PCandAt[K]=K:GetAttribute("LastDamageTakenTime"),z;
end;
Y.PHitAt[K]=z;
Y.preciseConfirm(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5132 ]] 
[5132]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K[4][K[6]]and tostring(K[4][K[6]].value)or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5144 ]] 
[5144]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if not(K[4][K[6]].active)then
            return false;
        end;
    else
        return false;
    end;
    local _,Y=tostring(z):lower(),K[4][K[6]];
    for z,z in Y.active,nil,nil do
        z=tostring(z):lower();
        if z~=""then
            if _:find(z,1,true)then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5177 ]] Strings: [Instance]
[5177]=function(z,K,K,K,K,K,K)return function(K)local _=K[1];
    return function(K)if typeof(K)~="Instance"then
        return false;
    elseif not _[4][_[6]]then
        return false;
    end;
    local Y,n=K.Name:lower(),_[4][_[6]];
    for _,_ in ipairs(n.active)do
        K=z[127](_:lower());
        if Y:find(z:Hc(K))then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5178 ]] Strings: [second, seconds]
[5178]=function(z,z,z,z,z,z,z)return function()return function(z)return z==1 and"second"or"seconds";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5184 ]] 
[5184]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()K(false);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5188 ]] Strings: [table, string]
[5188]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K[4][K[6]]and K[4][K[6]].active;
    if type(n)~="table"then
        return false;
    end;
    local K,y=z:lower(),_.ItemMeta and _.ItemMeta[z];
    z=y and type(y.displayName)=="string"and y.displayName:lower()or nil;
    for _,y in n,nil,nil do
        _=Y.entryKey(y);
        if _~=""then
            if _==K then
                return true;
            elseif _==z then
                return true;
            elseif _:gsub(" ","_")==K then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5196 ]] 
[5196]=function(z,z,z,z,z,z,z)return function(z,z)return function()return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5202 ]] Strings: [stud, studs]
[5202]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5207 ]] 
[5207]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n)for y=-2,2,1 do
        for Q=-2,2,1 do
            for J=-2,2,1 do
                K(z,_(Y+Vector3.new(y,Q,J)*3),n);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5216 ]] Strings: [function]
[5216]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=K(z)==true and Y~=nil and Y.Player~=nil and type(_.isDisguised)=="function"and _.isDisguised(Y)or false;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5227 ]] Strings: [studs, stud]
[5227]=function(z,z,z,z,z,z)return function()return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5254 ]] 
[5254]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local n,y=K[4][K[6]],_[4][_[6]];
    if not n then
        return;
    end;
    local Q=Y.hold();
    if not(Q.take())then
        return;
    end;
    K[4][K[6]],_[4][_[6]]=nil,nil;
    pcall(function()if z[4][4][z[4][6]].enabled then
        if y then
            z[5](y);
        end;
    end;
    if n.Parent then
        z[6](n,0);
    end;
end);
Q.release();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5261 ]] Strings: [Model, HumanoidRootPart, Root, BasePart]
[5261]=function(z,z,z,z,z,z,z)return function(z)return function(z)if z:IsA("Model")then
    if z.PrimaryPart then
        return z;
    end;
else
    return z;
end;
return z:FindFirstChild("HumanoidRootPart")or z:FindFirstChild("Root")or z:FindFirstChildWhichIsA("BasePart")or z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5268 ]] 
[5268]=function(z,z,z,z,z,z)return function(z,K,K)return function(K,_)local Y,n=pcall(function()local y,Q=z[1].BlockController,z[3](_);
    return y:isAllowedPlacement(z[2],K,Q,0);
end);
return Y and n==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5282 ]] 
[5282]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z)K.mobileShiftLock=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5285 ]] Strings: [MageElementIndex, mage_spell_, mage_spell_base]
[5285]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K[(_:GetAttribute("MageElementIndex")or 0)+1];
    if z then
        if _:GetAttribute(z)then
            return"mage_spell_"..z;
        end;
    end;
    return"mage_spell_base";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5286 ]] Strings: [bed]
[5286]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z,n={},{};
    for y,Q in K:GetTagged("bed")do
        if _(Q)then
            for K,K in Y(Q)do
                y=tostring(K);
                if not(n[y])then
                    n[y]=true;
                    table.insert(z,K);
                end;
            end;
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5296 ]] Strings: [drone, drone_speed_boost, number]
[5296]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    return function(z,t)if K[4][K[6]].enabled then
        if t<=30 then
            return false;
        end;
    else
        return false;
    end;
    if os.clock()<_[4][_[6]]+Y[4][Y[6]].value then
        return false;
    end;
    if n.isAlive then
        if y(z)then
            return false;
        end;
    else
        return false;
    end;
    if Q[4][Q[6]].enabled then
        z=J.hand.tool;
        if z then
            if z.Name~="drone"then
                return false;
            end;
        else
            return false;
        end;
    end;
    local K=f.AbilityController;
    if not K then
        return false;
    end;
    t,z=pcall(function()local Y=K.cooldownController;
    return Y and Y:getRemainingCooldown("drone_speed_boost")or 0;
end);
if t then
    if type(z)=="number"then
        if z>0 then
            _[4][_[6]]=os.clock()+z+0.25;
            return false;
        end;
    end;
end;
z=q.ready;
return z("drone_speed_boost");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5307 ]] Strings: [AutoShoot]
[5307]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    return function()if K[4][K[6]]then
        if not(K[4][K[6]].enabled)then
            return nil;
        end;
    else
        return nil;
    end;
    local z,K,a,Z,m,M,S,u,I,O=_.active,Y.enabled,n.enabled,y.enabled,Q.enabled,J.enabled,f.value,q.value,t[4][t[6]].walls.enabled,T[4][T[6]];
    if O then
    else
        O={};
        T[4][T[6]]=O;
    end;
    O.Name="AutoShoot";
    O.list=z;
    O.useWhim=K;
    O.useNazar=a;
    O.useUmeko=Z;
    O.useSophia=m;
    O.useLasso=M;
    O.switchTimeout=S;
    O.switchBack=u;
    O.charge=L.value;
    O.rate=X[4][X[6]]:random();
    O.preferHotbar=true;
    O.range=22;
    O.wallcheck=I;
    O.milo=l(t[4][t[6]]);
    return O;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5313 ]] 
[5313]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)local Q,J,f,q=K[4][K[6]].value/100,_.List;
    for K,t in J,nil,nil do
        if t.Targetable then
            continue;
        elseif t.Player then
            if t==_.character then
                continue;
            end;
        else
            continue;
        end;
        if(t.RootPart.Position-z).Magnitude>Y[4][Y[6]]:Get(n[4][n[6]])then
            continue;
        end;
        K=y(t);
        if K then
            if K<1 then
                if K<=Q then
                    if f then
                        if K<f then
                            f,q=K,t;
                        else
                        end;
                    else
                        f,q=K,t;
                    end;
                else
                end;
            else
            end;
        else
        end;
    end;
    return q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5317 ]] 
[5317]=function(z,z,z,z,z,z)return function(z)return function(z,K)if z.Text~=K then
    z.Text=K;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5323 ]] Strings: [ProjectileShooter, number, Team]
[5323]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)if Y.Allowed~=nil then
        return Y.Allowed;
    end;
    local n=z:GetAttribute("ProjectileShooter");
    if type(n)~="number"then
        return true;
    end;
    z=n~=K.UserId;
    if z then
        local y=_:GetPlayerByUserId(n);
        local _=y and(y:GetAttribute("Team"));
        z=not(_~=nil and _==K:GetAttribute("Team"));
    else
    end;
    Y.Allowed=z;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5324 ]] Strings: [Vector3, %d,%d,%d]
[5324]=function(z,z,z,z,z,z)return function(z)return function(z)if typeof(z)~="Vector3"then
    return nil;
end;
return string.format("%d,%d,%d",math.round(z.X),math.round(z.Y),math.round(z.Z));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5339 ]] Strings: [function, boolean]
[5339]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)if z.Anchored then
        return false;
    end;
    local _=K.isnetworkowner;
    if type(_)~="function"then
        return nil;
    end;
    local K,Y=pcall(_,z);
    if K then
        if type(Y)=="boolean"then
            return Y;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5350 ]] 
[5350]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if K[4][K[6]]then
        if K[4][K[6]].enabled then
            if _[4][_[6]]then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    local z=0.05-(os.clock()-Y[4][Y[6]]);
    if z<=0 then
        Y[4][Y[6]]=os.clock();
        n:updateOverlay();
        return;
    end;
    _[4][_[6]]=true;
    task.delay(z,function()_[4][_[6]]=false;
    Y[4][Y[6]]=os.clock();
    if K[4][K[6]]then
        if K[4][K[6]].enabled then
            n:updateOverlay();
        end;
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5365 ]] Strings: [Nugget]
[5365]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[z]then
        task.defer(_,z);
        return;
    end;
    if z.Name=="Nugget"then
        Y(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5376 ]] Strings: [degree, degrees]
[5376]=function(z,z,z,z,z,z,z,z)return function(z,z)return function(z)return z==1 and"degree"or"degrees";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5388 ]] Strings: [Aggro, Vector3, telepearl]
[5388]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,z,y,Q,Q,J,J)if K[4][K[6]].value~="Aggro"then
        return;
    elseif typeof(z)~="Vector3"then
        return;
    end;
    if not(y~=nil and y.Name=="telepearl")then
        if Q~=nil then
            if not(Q.Name=="telepearl")then
                return;
            end;
        else
            return;
        end;
    end;
    local K,y,Q=pcall(_,J);
    if K then
        if not(y)then
            return;
        end;
    else
        return;
    end;
    y=Y.active and Q~=nil and Y.isCheater(Q)==true;
    n(z,false,y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5402 ]] 
[5402]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5431 ]] Strings: [stud, studs]
[5431]=function(z,z,z,z,z,z,z)return function()return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5434 ]] 
[5434]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]],_[4][_[6]]=tick()+2,false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5448 ]] 
[5448]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z,_,Y)local n=K.ownBedZone;
    return n==nil or n(z,_,Y)==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5452 ]] 
[5452]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=z/2;
    if Y>=90 then
        return nil;
    elseif K[4][K[6]]<=0 then
        return nil;
    end;
    local z,n=K[4][K[6]],math.tan(_(Y));
    return z/n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5463 ]] 
[5463]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5473 ]] 
[5473]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K();
    if not(n)then
        return nil;
    end;
    for K=1,8,1 do
        for y,Q in _,nil,nil do
            y=Y:Raycast(z+Q*(K*10)+Vector3.new(0,200,0),Vector3.new(0,-1000,0),n);
            if y then
                return y;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5501 ]] 
[5501]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=(tonumber(K.PistonwareHideNameVersion)or 0)+1;
    K.PistonwareHideNameVersion=z;
    pcall(function()shared.PistonwareHideNameVersion=z;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5502 ]] 
[5502]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5516 ]] Strings: [table, string, ;if not(K:find(, ))then if not(K:find(]
[5516]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if K[4][K[6]]then
        if type(z)~="table"then
            return;
        elseif z.id==nil then
            return;
        end;
    else
        return;
    end;
    local K=type(z.kind)=="string"and z.kind:lower()or"";
    if not(K:find("arrow"))then
        if not(K:find("snowball"))then
            return;
        end;
    end;
    local Q=_.ProjectileController;
    local _=type(Q)=="table"and Q.simulatedShot or nil;
    if type(_)~="function"then
        return;
    end;
    local J,f,q=os.clock(),Y.traced,Y.impact;
    for Y,t in pairs(f)do
        if J-t>5 then
            f[Y]=nil;
        end;
    end;
    for Y,t in pairs(q)do
        if J-t.at>1 then
            q[Y]=nil;
        end;
    end;
    local Y=z.id;
    f[Y]=J;
    J,K=n(z.spawn,nil,nil,z,function()return _(Q,Y)==z;
end),q[Y];
if K then
    q[Y]=nil;
    if J then
        J.impact=K.position;
    end;
end;
y("simulated "..tostring(z.kind).." "..tostring(Y)..": traced from its start"..(J and""or", but no beam was made"));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5521 ]] Strings: [Drone, PlayerUserId]
[5521]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()for z,z in K:GetTagged("Drone")do
        if z:GetAttribute("PlayerUserId")==_.UserId then
            if z.PrimaryPart then
                Y(z);
                n(z);
                y[4][y[6]]=z;
                return z;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5543 ]] Strings: [SummonerKitController, HalloweenKaidaController]
[5543]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.Knit.Controllers;
    local K=z.SummonerKitController;
    if K then
        if K.targetIndicator then
            return true;
        elseif K.awaitingSummonStart then
            return true;
        end;
    end;
    K={"SummonerKitController","HalloweenKaidaController"};
    for Y,n in K,nil,nil do
        Y=z[n];
        if Y then
            if Y.isPlayerCastingSpell then
                local z,K=pcall(Y.isPlayerCastingSpell,Y,_);
                if z then
                    if K then
                        return true;
                    end;
                end;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5545 ]] 
[5545]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=true;
    task.delay(0.3,function()K[4][K[6]]=false;
    if z[2][4][z[2][6]]then
        if z[2][4][z[2][6]].enabled then
            z[3]();
        end;
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5554 ]] Strings: [stud, studs]
[5554]=function(z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5568 ]] Strings: [stud, studs]
[5568]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5570 ]] 
[5570]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=z and z.launchSound;
    if Y then
        if#Y>0 then
            K[4][K[6]]=K[4][K[6]]%#Y+1;
            _:playSound(Y[K[4][K[6]]]);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5580 ]] 
[5580]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()if not(K.isAlive)then
        return false;
    end;
    local z=K.character.Humanoid;
    if not(z)then
        return false;
    end;
    local K=z:GetState();
    return z.FloorMaterial==Enum.Material.Air or K==Enum.HumanoidStateType.Jumping or K==Enum.HumanoidStateType.Freefall;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5607 ]] 
[5607]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_,Y,n,y)local Q=z.vyMarkAt;
    if Q then
        local J=(_.Y-z.yMark-(z.vyInt-z.vyIntMark))/(n-Q);
        if math.abs(J)<=K.VY_GAP then
            z.vyOdd=0;
        elseif(z.vyOdd or 0)>=1 and J*z.vyGap>0 then
            z.vyOdd=z.vyOdd+1;
            z.vyOff=z.vyOff+(J-z.vyOff)/math.min(z.vyOdd,4);
            z.vyLo,z.vyHi=math.min(z.vyLo,J),math.max(z.vyHi,J);
        else
            z.vyOdd=1;
            z.vyOff=J;
            z.vyLo=J;
            z.vyHi=J;
        end;
        z.vyGap=J;
    end;
    z.vyOld,z.vyOldAt,z.vyOldAir=z.vyPrev,z.vyPrevAt,z.vyPrevAir;
    z.vyPrev,z.vyPrevAt,z.vyPrevAir=z.vyMark,Q,z.vyMarkAir;
    z.vyMark=Y.Y;
    z.vyMarkAt=n;
    z.vyMarkAir=y;
    z.yMark,z.vyIntMark=_.Y,z.vyInt;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5615 ]] 
[5615]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K[4][K[6]];
    return z.value;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5645 ]] Strings: [projectileaura, RootPart]
[5645]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()K("projectileaura",_[4][_[6]]and _[4][_[6]].enabled and Y[4][Y[6]]and Y[4][Y[6]].enabled and not n and function()local K,Y=_[4][_[6]],{Part="RootPart",Range=z[6][4][z[6][6]].value,Players=z[7][4][z[7][6]].players.enabled,NPCs=z[7][4][z[7][6]].npcs.enabled,Wallcheck=z[7][4][z[7][6]].walls.enabled or nil,Milo=z[8](z[7][4][z[7][6]])};
    return z[5](K,Y);
end or nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5646 ]] 
[5646]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()while true do
        if K[4][K[6]]then
            break;
        end;
        if _[4][_[6]].enabled then
            Y.modules.PingBypass:flip(false);
        end;
        while true do
            task.wait(0.03);
            local z=n.isAlive and n.character.Humanoid.Health>0 and y(n.character.HumanoidRootPart);
            if z then
                break;
            end;
        end;
        task.wait(Q[4][Q[6]]and Q[4][Q[6]]==J.Character and 0 or 0.7);
        if not(_[4][_[6]].enabled)then
            Y.modules.PingBypass:flip(false);
        end;
        local z=K[4][K[6]];
        if z then
            break;
        end;
    end;
    f[4][f[6]]=false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5668 ]] 
[5668]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)if K[4][K[6]].row then
        K[4][K[6]].row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5671 ]] 
[5671]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]]=os.clock()+1;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5683 ]] Strings: [InflatedBalloons, number, string]
[5683]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=z:GetAttribute("InflatedBalloons");
    if type(Y)=="number"then
        if Y>0 then
            return true;
        end;
    end;
    Y=K(z);
    z=Y and Y.Name;
    if type(z)~="string"then
        return false;
    end;
    z=string.lower(z);
    for K,K in _.abilityNames,nil,nil do
        if z:find(K,1,true)then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5692 ]] Strings: [Model]
[5692]=function(z,z,z,z,z,z,z)return function(z)return function(z)if z:IsA("Model")then
    local K,_=z:GetBoundingBox();
    return K.Position,_;
end;
return z.Position,z.Size;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5705 ]] Strings: [number, ItemSkin]
[5705]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function(z)if z==nil then
        return;
    end;
    local q=z==K[4][K[6]];
    K[4][K[6]]=nil;
    if _[4][_[6]].enabled then
        if not(Y[4][Y[6]].enabled)then
            return;
        end;
    else
        return;
    end;
    if not(z:isCancelled())then
        return;
    end;
    local K=z.config;
    if K then
        if not(K.respectAttackSpeedOverride)then
            return;
        end;
    else
        return;
    end;
    K=n.ItemMeta and n.ItemMeta[z.swordType];
    local _=K and K.sword;
    if not(_)then
        return;
    end;
    if _.respectAttackSpeedForEffects then
        return;
    elseif _.applyCooldownOnMiss then
        return;
    elseif _.skipSwingEffects==true then
        return;
    end;
    local Y,n=y(),z.attackSpeed;
    if Y then
        if type(n)=="number"then
            if not(n>0)then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    _=Y.lastSwing;
    if type(_)~="number"then
        return;
    elseif _==Q[4][Q[6]]then
        return;
    end;
    if not(q)then
        local y=(n-(workspace:GetServerTimeNow()-(Y.lastAttack or 0)))*1.01;
        if y<math.min(n*J(),0.2)then
            return;
        end;
    end;
    Q[4][Q[6]]=_;
    _=z.chargedAttack;
    _=_ and _.chargeRatio or 0;
    local z,n,y,Q,J=f.hand and f.hand.tool,pcall,Y.playSwordEffect,_>=1,{};
    J.itemSkin=z and z:GetAttribute("ItemSkin")or nil;
    n(y,Y,K,Q,J);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5711 ]] 
[5711]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y,Q)local J=n.Y-y;
    y=K(z,n,J+_-0.05,J+_+0.05,Vector3.new(0,-Y,0),Q);
    return y~=nil and y.Normal.Y>0.5;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5715 ]] 
[5715]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if not(K:GetFocusedTextBox())then
        if z.KeyCode==Enum.KeyCode.Space then
            _[4][_[6]]=1;
        elseif z.KeyCode==Enum.KeyCode.ButtonA then
            _[4][_[6]]=1;
        elseif z.KeyCode==Enum.KeyCode.LeftShift then
            Y[4][Y[6]]=-1;
        elseif z.KeyCode==Enum.KeyCode.ButtonL2 then
            Y[4][Y[6]]=-1;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5716 ]] Strings: [studs, stud]
[5716]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)return z>=1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5725 ]] Strings: [Amount, PistonwareBankOwner]
[5725]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function(z)if K[z]then
        return;
    end;
    local q=_(z);
    if not(q)then
        return;
    end;
    local _=Y.ItemMeta[z.Name];
    local Y=_ and _.displayName or z.Name;
    if not n[4][n[6]]then
        if#(y[4][y[6]].active or{})>0 then
            if not(Q(z.Name,Y))then
                return;
            end;
        end;
    end;
    local _,n=J(q);
    local y={Part=q,Name=Y};
    y.Id=z.Name:lower();
    y.Box=_;
    y.Side=n;
    y.Tag=f();
    y.Count=z:GetAttribute("Amount");
    y.Banked=z:GetAttribute("PistonwareBankOwner")~=nil;
    y.Conn=z.AttributeChanged:Connect(function(_)if _=="Amount"then
        y.Count=z:GetAttribute("Amount");
    elseif _=="PistonwareBankOwner"then
        y.Banked=z:GetAttribute("PistonwareBankOwner")~=nil;
    end;
end);
K[z]=y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5731 ]] Strings: [ItemDrops]
[5731]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if z.Name=="ItemDrops"then
        K[4][K[6]]:Disconnect();
        _(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5735 ]] 
[5735]=function(z,K,K,K,K,K,K)return function(K,K,_,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    local f=K[7];
    local q=K[8];
    return function(K)_[4][_[6]]=K;
    if Y[4][Y[6]]then
        if not(Y[4][Y[6]].enabled)then
            return;
        end;
    else
        return;
    end;
    if K then
        n();
        local K,_=ipairs,z[127](workspace:GetDescendants());
        for Y,Y in K(z:Hc(_))do
            y(Y);
        end;
    else
        Q();
        J(f);
        J(q);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5740 ]] Strings: [AutoWin, Session log: , Session log failed: ]
[5740]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if not(K[4][K[6]].SetSessionLogsEnabled)then
            return;
        end;
    else
        return;
    end;
    local Y,n=K[4][K[6]]:SetSessionLogsEnabled(z);
    if z then
        _("AutoWin",Y and"Session log: "..tostring(n)or"Session log failed: "..tostring(n),5);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5752 ]] 
[5752]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()K();
    _[4][_[6]],Y[4][Y[6]],n[4][n[6]],y[4][y[6]]=os.clock(),nil,0,nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5764 ]] Strings: [MaxHealth, bigman, Team]
[5764]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(n)local y=n.Player;
    local Q=n.Character;
    if not y or y==K then
        return;
    elseif not Q then
        return;
    elseif _[Q]then
        return;
    end;
    local K,n=Y[Q];
    if K then
        n=K;
    else
        K={};
        K.peak=tonumber(Q:GetAttribute("MaxHealth"))or 0;
        K.since=os.clock();
        Y[Q]=K;
        n=K;
    end;
    _[Q]=Q:GetAttributeChangedSignal("MaxHealth"):Connect(function()local K=tonumber(Q:GetAttribute("MaxHealth"));
    if K then
        if K<=n.peak then
            return;
        end;
    else
        return;
    end;
    local _=n.peak<=0;
    n.peak=K;
    if _ then
        return;
    elseif os.clock()-n.since<3 then
        return;
    end;
    if z[4](y)then
        if not(z[5](y,"bigman"))then
            return;
        end;
    else
        return;
    end;
    local K=os.clock();
    local _=y:GetAttribute("Team");
    task.delay(0.5,function()local Y=_~=nil and z[6][_];
    if Y then
        if math.abs(Y-K)<=1.5 then
            return;
        end;
    end;
    Y=z[7][Q];
    if Y then
        if math.abs(Y-K)<=1.5 then
            return;
        end;
    end;
    if z[8][4][z[8][6]].enabled then
        z[9](y,"orbs");
    end;
end);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5765 ]] Strings: [spawn_cage]
[5765]=function(z,z,z,z,z)return function(z)return function()local z,K={},workspace:FindFirstChild("spawn_cage");
    if K then
        table.insert(z,K);
    end;
    for _,_ in ipairs(workspace:GetChildren())do
        if _.Name=="spawn_cage"then
            if _~=K then
                table.insert(z,_);
            end;
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5778 ]] 
[5778]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=0;
    while true do
        if z<=0 then
            K[4][K[6]]=true;
            _[4][_[6]]=_[4][_[6]]-_[4][_[6]]%2+1;
            Y[4][Y[6]]=(106325*Y[4][Y[6]]+212147129)%268435456;
            Y[4][Y[6]],z=(19401*Y[4][Y[6]]+135586185)%268435456,1;
        else
            return;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5784 ]] 
[5784]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()if#K.pending==0 then
        return;
    end;
    local z=K.pending;
    K.pending={};
    for _,_ in z,nil,nil do
        K.judge(_[1],_[2]);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5788 ]] Strings: [ProjectileShooter, number]
[5788]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.pearls;
    local n=#Y;
    for y=n,1,-1 do
        local n=Y[y];
        if n.Parent then
            local Q=n:GetAttribute("ProjectileShooter");
            local n=type(Q)=="number"and _:GetPlayerByUserId(Q);
            if n then
                K.pearled[n]=z+K.config.pearl;
            end;
        else
            table.remove(Y,y);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5795 ]] Strings: [RoactTree, Countdown, Timer, TextLabel]
[5795]=function(z,z,z,z,z,z,z)return function()return function(z)local K=z:FindFirstChild("RoactTree");
    z=K and(K:FindFirstChild("Countdown",true)or K:FindFirstChild("Timer",true));
    return z and z:IsA("TextLabel")and z or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5799 ]] Strings: [helmet, chestplate, boots]
[5799]=function(z,z,z,z,z,z)return function(z)return function(z)local K=z:lower();
    return K:find("helmet")or K:find("chestplate")or K:find("boots");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5812 ]] Strings: [simShot, impact, function, RBXScriptConnection]
[5812]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function()K();
    local z,K=ipairs,{"simShot","impact"};
    for L,X in z(K)do
        L=_[X];
        _[X]=nil;
        if type(L)=="function"then
            pcall(L);
        elseif typeof(L)=="RBXScriptConnection"then
            L:Disconnect();
        end;
    end;
    table.clear(Y.traced);
    table.clear(Y.echo);
    table.clear(Y.impact);
    if _.zap then
        _.zap:Disconnect();
        _.zap=nil;
    end;
    if _.recent then
        _.recent:Disconnect();
        _.recent=nil;
    end;
    table.clear(n);
    table.clear(y);
    K=_.launch;
    _.launch=nil;
    if type(K)=="function"then
        pcall(K);
    elseif typeof(K)=="RBXScriptConnection"then
        K:Disconnect();
    end;
    Q();
    J(f);
    J(q);
    K=ipairs;
    for z,z in K(t)do
        T(z);
    end;
    table.clear(t);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5821 ]] 
[5821]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(n)local y=K.character;
    local K,Q,J=_.BlockController:getBlockPosition(y.Character:GetPivot().Position-Vector3.new(0,y.Humanoid.HipHeight/2,0)),_.BlockController:getStore(),_.Knit.Controllers.MapController;
    for f,q in Y,nil,nil do
        local Y=K+q;
        y=Q:getBlockAt(Y-Vector3.yAxis);
        f=y and _.ItemMeta[y.Name];
        if y then
            if not(f and f.block and f.block.denyPlaceOn)then
                local K,y=pcall(function()if not(_.BlockController:isAllowedPlacement(z[4],n,Y,0))then
                    return false;
                end;
                return not(J and(J:isInDenyRegion(Y)or J:isOutOfBounds(Y)));
            end);
            if K then
                if y then
                    return Y;
                end;
            end;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5861 ]] Strings: [stud, studs]
[5861]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5863 ]] 
[5863]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].enabled then
        _(Y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5866 ]] 
[5866]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.audio_ambience_volume=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5868 ]] Strings: [^(.+)_ShopItemCard$]
[5868]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)while true do
        local _=z and z~=K.PlayerGui;
        if not _ then
            break;
        end;
        _=z.Name:match("^(.+)_ShopItemCard$");
        if _ then
            return _;
        end;
        z=z.Parent;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5874 ]] Strings: [AutoBank]
[5874]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)local _=K.lock();
    if _.Owner=="AutoBank"then
        if _.Holds[z]then
            _.Holds[z]=nil;
            if next(_.Holds)==nil then
                _.Owner=nil;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5899 ]] 
[5899]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z,n=pcall(K,_);
    Y.release();
    if not(z)then
        error(n,0);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5907 ]] 
[5907]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local z=K[4][K[6]];
    return z~=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5913 ]] Strings: [cloud-enchant-util, table]
[5913]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function(_)if K[4][K[6]]==nil then
        local Y,n=pcall(function()local y=z[2](z[3].TS.enchant.cloud["cloud-enchant-util"]);
        return y.CloudEnchantUtil;
    end);
    K[4][K[6]]=Y and type(n)=="table"and n or false;
end;
if not K[4][K[6]]then
    return nil;
end;
local z,Y=pcall(function()local n=K[4][K[6]];
return n:isAboveVoid(_);
end);
if not(z)then
    return nil;
end;
return Y==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5921 ]] 
[5921]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function()K[4][K[6]]=false;
    if _.threadFix then
        setthreadidentity(8);
    end;
    local z,K,_=Y[4][Y[6]],n[4][n[6]],y[4][y[6]];
    Y[4][Y[6]],n[4][n[6]],y[4][y[6]]={},{},{};
    if not(Q[4][Q[6]].enabled)then
        return;
    end;
    for Y in z,nil,nil do
        if Y.Parent then
            J(Y);
        end;
    end;
    for Y in K,nil,nil do
        z=f[Y]or q[Y];
        if z then
            pcall(z.fn);
        end;
    end;
    for z in _,nil,nil do
        if z.Parent then
            pcall(t,z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5927 ]] 
[5927]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    return function(z)local l,a=z and z.list or K[4][K[6]]and K[4][K[6]].active,{};
    if not(l)then
        return a;
    end;
    local K,Z,m,M,S;
    if z then
        K,Z,m,M,S=z.useWhim,z.useNazar,z.useUmeko,z.useSophia,z.useLasso;
    else
        local u=_[4][_[6]]~=nil and _[4][_[6]].enabled;
        K,Z,m,M,S=u and Y[4][Y[6]]~=nil and Y[4][Y[6]].enabled,u and n[4][n[6]]~=nil and n[4][n[6]].enabled,u and y[4][y[6]]~=nil and y[4][y[6]].enabled,u and Q[4][Q[6]]~=nil and Q[4][Q[6]].enabled,u and J[4][J[6]]~=nil and J[4][J[6]].enabled;
    end;
    l=f(l,K,Z,m,M,S);
    z=q.inventory.inventory.items;
    for K,_ in z,nil,nil do
        if _ then
            K=t.ItemMeta[_.itemType];
            local z=K and(K.projectileSource or K.block and K.block.projectileSource);
            if z and(T(z))then
                local Y=z.projectileType and z.projectileType(nil)or _.itemType;
                if table.find(l,Y)then
                    a[#a+1]={_,nil,Y,z};
                elseif table.find(l,_.itemType)then
                    a[#a+1]={_,nil,Y,z};
                end;
            elseif z then
                local Y=L(z);
                if Y and(table.find(l,Y)or table.find(l,_.itemType))then
                    a[#a+1]={_,Y,z.projectileType(Y),z};
                end;
            elseif K and K.multiProjectileSource then
                local z,Y=X(_.itemType,K,l);
                if z then
                    if table.find(l,Y)then
                        a[#a+1]={_,nil,Y,z};
                    elseif table.find(l,_.itemType)then
                        a[#a+1]={_,nil,Y,z};
                    end;
                end;
            elseif K then
                if K.projectile then
                    if table.find(l,_.itemType)then
                        local z=_.count or _.quantity or _.amount;
                        if z==nil or z>0 then
                            a[#a+1]={_,_.itemType,_.itemType,K};
                        end;
                    end;
                end;
            end;
        end;
    end;
    return a;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5951 ]] 
[5951]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)K[4][K[6]][z]=true;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5977 ]] 
[5977]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)local K=z.PrimaryPart;
    K.AssemblyLinearVelocity=Vector3.zero;
    K.CFrame=CFrame.new(K.Position.X,10000,K.Position.Z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5978 ]] Strings: [Health]
[5978]=function(z,K,K,K,K,K)return function(K,_,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    local f=K[7];
    local q=K[8];
    local t=K[9];
    local T=K[10];
    local L=K[11];
    local X=K[12];
    local l=K[13];
    local a=K[14];
    local Z=K[15];
    local m=K[16];
    local M=K[17];
    local S=K[18];
    local u=K[19];
    local I=K[20];
    local O=K[21];
    return function()if _[4][_[6]].enabled then
        if Y.isAlive then
            if n.modules.Godmode then
                if n.modules.Godmode.enabled then
                    return y();
                end;
            end;
        else
            return y();
        end;
    else
        return y();
    end;
    if Q.matchState==0 then
        return y();
    end;
    if n.modules.InfiniteFly then
        if n.modules.InfiniteFly.enabled then
            return y();
        end;
    end;
    if os.clock()<J[4][J[6]]then
        return y();
    end;
    local K=Y.character;
    if K then
        if K.RootPart then
            if not(K.Humanoid)then
                return y();
            end;
        else
            return y();
        end;
    else
        return y();
    end;
    local _=K.Character:GetAttribute("Health");
    if K.Humanoid.Health<=0 then
        return y();
    elseif _ then
        if _<=0 then
            return y();
        end;
    end;
    _=K.RootPart;
    if f[4][f[6]]~=K.Character or q[4][q[6]]~=t or T[4][T[6]]~=L then
        f[4][f[6]],q[4][q[6]],T[4][T[6]]=K.Character,t,L;
        local Y,n={},K.Character;
        z:nc(Y,0,n,t,L);
        X.FilterDescendantsInstances=Y;
    end;
    X.CollisionGroup=_.CollisionGroup;
    local z=os.clock()-(K.AirTime or os.clock());
    y(z);
    if l[4][l[6]]and not a.Clutching and not a.InfiniteFlyActive and not Z()and z>m[4][m[6]].value and not M[4][M[6]]and not S()and not u()then
        local z=I[4][I[6]]and I[4][I[6]].value or 100;
        local Y=workspace:Raycast(_.Position,Vector3.new(0,-z,0),X);
        if Y then
            if Q.matchState~=2 then
                l[4][l[6]]=false;
                M[4][M[6]]=_.Position.Y;
                O[4][O[6]]=os.clock()+0.08;
                _.CFrame=CFrame.lookAlong(Vector3.new(_.Position.X,Y.Position.Y+(K.HipHeight or 3),_.Position.Z),_.CFrame.LookVector);
            end;
        end;
    elseif M[4][M[6]]then
        if os.clock()>=O[4][O[6]]then
            local z=Vector3.new(_.Position.X,M[4][M[6]],_.Position.Z);
            _.CFrame=CFrame.lookAlong(z,_.CFrame.LookVector);
            l[4][l[6]],M[4][M[6]]=true,nil;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5982 ]] 
[5982]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if not K[4][K[6]]then
        return;
    end;
    local z=workspace.CurrentCamera;
    local y=z and z.ViewportSize or Vector2.new(1280,720);
    z=y.Y<450;
    local Q=z and UDim2.new(1,8,0,0)or UDim2.new(0,0,-1,0);
    if _[4][_[6]]then
        if _[4][_[6]].Position~=Q then
            _[4][_[6]].Position=Q;
            _[4][_[6]].Size=z and UDim2.fromOffset(48,20)or UDim2.new(1,0,1,0);
            _[4][_[6]].TextXAlignment=z and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center;
        end;
    end;
    Q=Y();
    if Q then
        z=UDim2.new(0.5,0,0,math.floor(Q-20));
        if K[4][K[6]].Position~=z then
            K[4][K[6]].Position=z;
        end;
        return;
    end;
    if not n then
        K[4][K[6]].Position=UDim2.new(0.5,0,1,-200);
        return;
    end;
    z=y.Y<450 or y.X<450;
    K[4][K[6]].Position=UDim2.new(0.5,0,z and 0.82 or 0.91,-28);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5991 ]] Strings: [Part, ParticleEmitter]
[5991]=function(z,K,K,K,K,K,K)return function(K)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    local f=K[7];
    return function(K)_[4][_[6]].row.Visible=K;
    Y[4][Y[6]].row.Visible=K;
    n[4][n[6]].row.Visible=K;
    y[4][y[6]].row.Visible=K;
    for q,q in Q,nil,nil do
        pcall(function()q:Destroy();
    end);
end;
table.clear(Q);
if K then
    for K=1,10,1 do
        local q=Instance.new("Part");
        q.Size=Vector3.new(2,4,2);
        q.Anchored=true;
        q.CanCollide=false;
        q.Transparency=1;
        q.CanQuery=false;
        q.Parent=J[4][J[6]].enabled and f or nil;
        local J=Instance.new("ParticleEmitter");
        J.Brightness=1.5;
        J.Size=NumberSequence.new(y[4][y[6]].value);
        J.Shape=Enum.ParticleEmitterShape.Sphere;
        J.Texture=_[4][_[6]].value;
        J.Transparency=NumberSequence.new(0);
        J.Lifetime=NumberRange.new(0.4);
        J.Speed=NumberRange.new(16);
        J.Rate=128;
        J.Drag=16;
        J.ShapePartial=1;
        local _,y,f,t,T,L,X=ColorSequence.new,{},ColorSequenceKeypoint.new(0,Color3.fromHSV(Y[4][Y[6]].hue,Y[4][Y[6]].sat,Y[4][Y[6]].value)),ColorSequenceKeypoint.new,Color3.fromHSV,n[4][n[6]].hue,n[4][n[6]].sat;
        z:nc(y,0,f,t(1,T(L,X,n[4][n[6]].value)));
        J.Color=_(y);
        J.Parent=q;
        Q[K]=q;
    end;
else
    for z,z in Q,nil,nil do
        z:Destroy();
    end;
    table.clear(Q);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5994 ]] 
[5994]=function(z,z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 5996 ]] Strings: [BasePart]
[5996]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)if z:IsA("BasePart")then
    return z.Position;
end;
local K,_=pcall(function()return z:GetPivot().Position;
end);
return K and _ or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6018 ]] Strings: [elk]
[6018]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K.Character;
    return z~=nil and z:FindFirstChild("elk")~=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6022 ]] 
[6022]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=K.BlockController:getStore();
    return _:getBlockAt(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6024 ]] 
[6024]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z,_)local Y,n,y=K.PRED,K.PredSelf,z.Position;
    if n.Count>0 then
        z=_-n.T[n.Head];
        if z<Y.SELF_STEP then
            return;
        end;
        if z>Y.STALE then
            n.Count=0;
        elseif not((y-n.P[n.Head]).Magnitude<=Y.TELEPORT*z)then
            n.Count=0;
        end;
    end;
    n.Head=n.Head%Y.SELF_KEEP+1;
    n.T[n.Head],n.P[n.Head]=_,y;
    n.Count=math.min(n.Count+1,Y.SELF_KEEP);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6041 ]] 
[6041]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if not K[4][K[6]]then
        return;
    end;
    table.clear(K[4][K[6]]);
    local z=_.blocks;
    for _,_ in z,nil,nil do
        if table.find(Y[4][Y[6]].active,_.Name)then
            table.insert(K[4][K[6]],_);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6044 ]] 
[6044]=function(z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6047 ]] 
[6047]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)while K.first<=K.last and K.times[K.first]<=z-60 do
        K.times[K.first]=nil;
        K.first=K.first+1;
    end;
    z=K.last-K.first;
    return z+1;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6055 ]] 
[6055]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function(z)local Y,n=z.seen,K();
    Y[#Y+1]=n;
    z.seenHead=_.trim(Y,z.seenHead,n-_.WINDOW);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6072 ]] Strings: [table]
[6072]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if z.tool then
        return z.tool;
    end;
    local _=pairs;
    for Y,Y in _(K.tools)do
        if type(Y)=="table"then
            if Y.tool then
                if Y.itemType==z.itemType then
                    return Y.tool;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6105 ]] Strings: [a tracer stopped in flight: ]
[6105]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if#K==0 then
        return;
    end;
    local z,y=os.clock(),1;
    while true do
        local Q=#K;
        if not(y<=Q)then
            break;
        end;
        Q=K[y];
        local J=Q.startPart.Parent and Q.endPart.Parent;
        local f=not J;
        if J then
            if not(Q.landedAt)then
                local q,t=pcall(_,Q,z);
                if not(q)then
                    Q.landedAt=z;
                    Y("a tracer stopped in flight: "..tostring(t));
                end;
            end;
        end;
        local _=Q.landedAt;
        if J then
            if _ then
                local Y=(z-_)/Q.lifetime;
                if Y>=1 then
                    f=true;
                else
                    Q.beam.Transparency=NumberSequence.new(1-Q.opacity*(1-Y));
                    local z=Q.thickness*(1-Y);
                    Q.beam.Width0=z;
                    Q.beam.Width1=z;
                end;
            else
            end;
        else
        end;
        if f then
            table.remove(K,y);
            n(Q);
        else
            y+=1;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6118 ]] Strings: [BasePart]
[6118]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if z then
        if z:IsA("BasePart")then
            if K[z]then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    _[#_+1]=z;
    K[z]=#_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6119 ]] Strings: [block]
[6119]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()local z=K.selectedHand and K.selectedHand()or K.hand;
    if z.toolType=="block"and not _(z.tool.Name)then
        return z.tool.Name,z.amount;
    elseif not(Y[4][Y[6]].enabled)then
        local z,Y=n();
        if z then
            return z,Y;
        else
            local z=K.inventory.inventory.items;
            for K,Y in z,nil,nil do
                K=y.ItemMeta[Y.itemType];
                if K then
                    if K.block then
                        if not(_(Y.itemType))then
                            return Y.itemType,Y.amount;
                        end;
                    end;
                end;
            end;
        end;
    end;
    return nil,0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6122 ]] 
[6122]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n)local y=K[z];
    if y then
    else
        y={at=os.clock()};
        K[z]=y;
        task.delay(1.5,_,z,y);
    end;
    if Y then
        y.victim=Y;
        y.reward=n;
    end;
    return y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6124 ]] 
[6124]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()K.GameAnimationUtil:playAnimation(_,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6126 ]] Strings: [bed, BasePart]
[6126]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if not(K.isAlive)then
        return nil;
    end;
    local z=K.character.RootPart.Position;
    for K,K in _:GetTagged("bed")do
        if K:IsA("BasePart")then
            if(K.Position-z).Magnitude<=Y[4][Y[6]].value then
                if not(n(K))then
                    return K;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6127 ]] 
[6127]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6138 ]] Strings: [warn, autokaida.tick]
[6138]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()while true do
        local z,f=pcall(K);
        if _[4][_[6]]then
            _[4][_[6]]=false;
        else
            Y.release();
        end;
        if not(z)then
            if n[4][n[6]]then
                pcall(function()n[4][n[6]].Adornee=nil;
            end);
        end;
    end;
    if not(z)then
        if not y[4][y[6]]then
            y[4][y[6]]=true;
            Q("warn","autokaida.tick",f);
        end;
    end;
    task.wait(0.1);
    z=J[4][J[6]].enabled;
    if not z then
        break;
    end;
end;
Y.release();
_[4][_[6]]=false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6139 ]] Strings: [mage_spellbook, RootPart]
[6139]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function(z)if z then
        K[4][K[6]]=0;
        while true do
            local z=false;
            if _.isAlive then
                local L=Y("mage_spellbook");
                if L then
                    if L.tool then
                        if n.holding("mage_spellbook",L)then
                            local Y=_.EntityPosition({Range=f[4][f[6]].value,Part="RootPart",Players=true,NPCs=false});
                            local _=Y and Y.RootPart;
                            if _ then
                                local Y,f=q();
                                n.fire(L,"mage_spellbook",Y,_.Position,f);
                                y.release();
                                task.wait(t[4][t[6]]:random());
                            end;
                        else
                            if os.clock()>=K[4][K[6]]then
                                if y.take()then
                                    K[4][K[6]]=os.clock()+Q[4][Q[6]].value;
                                    local K,_=pcall(J,L.tool,0);
                                    z=K and _==true;
                                else
                                end;
                            else
                            end;
                        end;
                    else
                    end;
                else
                end;
            else
            end;
            if not(z)then
                y.release();
            end;
            task.wait(0.05);
            local z=T[4][T[6]].enabled;
            if not z then
                break;
            end;
        end;
        y.release();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6147 ]] 
[6147]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K[4][K[6]].enabled then
        local K=_(z);
        if K then
            Y(K);
        end;
    end;
    n(z,0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6161 ]] 
[6161]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K:GetPivot();
    return z.Position;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6178 ]] Strings: [PlayerGui]
[6178]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function()if#K.Connections>0 then
        return;
    end;
    local z,Y={},_:FindFirstChildOfClass("PlayerGui");
    if Y then
        table.insert(z,Y);
    end;
    if workspace.CurrentCamera then
        table.insert(z,workspace.CurrentCamera);
    end;
    for _,_ in z,nil,nil do
        for z,z in _:GetChildren()do
            K.hide(z);
        end;
        table.insert(K.Connections,_.ChildAdded:Connect(K.hide));
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6183 ]] 
[6183]=function(z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6184 ]] Strings: [BoxHandleAdornment]
[6184]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)K[4][K[6]].row.Visible=z;
    _[4][_[6]].row.Visible=z;
    for K,K in Y,nil,nil do
        pcall(function()K:Destroy();
    end);
end;
table.clear(Y);
if z then
    for z=1,10,1 do
        local K=Instance.new("BoxHandleAdornment");
        K.Adornee=nil;
        K.AlwaysOnTop=true;
        K.Size=Vector3.new(3,5,3);
        K.CFrame=CFrame.new(0,-0.5,0);
        K.ZIndex=0;
        K.Parent=n.gui;
        Y[z]=K;
    end;
else
    for z,z in Y,nil,nil do
        z:Destroy();
    end;
    table.clear(Y);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6190 ]] 
[6190]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.FhReplyEst or _:GetNetworkPing()+K.FH.REPLY_SEED;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6194 ]] Strings: [stud, studs]
[6194]=function(z,z,z,z,z,z)return function(z)return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6213 ]] 
[6213]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K(z);
    if not(_[z])then
        _[z]=z.DescendantAdded:Connect(function()K(z);
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6223 ]] 
[6223]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z,f)if K[4][K[6]]then
        z:Configure(K[4][K[6]],f);
        local q=K[4][K[6]];
        return q;
    end;
    local q={WasEnabled=_[4][_[6]].enabled,Mode=Y[4][Y[6]]and Y[4][Y[6]].value,Range=n[4][n[6]]and n[4][n[6]].value,TargetPart=y[4][y[6]]and y[4][y[6]].value,FireDelay=Q[4][Q[6]]and Q[4][Q[6]].value,ListEnabled=J[4][J[6]]and J[4][J[6]].active and table.clone(J[4][J[6]].active)or nil,OwnsEnabled=false};
    K[4][K[6]]=q;
    z:Configure(q,f);
    if not(_[4][_[6]].enabled)then
        _[4][_[6]]:flip(nil,true);
        q.OwnsEnabled=true;
    end;
    return q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6228 ]] Strings: [bed]
[6228]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y=K.BlockController:getStore(),K.BlockController:getBlockPosition(z.Position);
    local K={y};
    for Q,J in _,nil,nil do
        Q=y+J;
        J=n:getBlockAt(Q);
        if J then
            if J==z then
                table.insert(K,Q);
            elseif Y:HasTag(J,"bed")then
                table.insert(K,Q);
            end;
        end;
    end;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6234 ]] 
[6234]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function(z,q,t,T)if t<-43 then
        K[4][K[6]]=nil;
        return false;
    end;
    local t,L=os.clock(),z:GetState();
    if not(_(t,T))then
        if L==Enum.HumanoidStateType.Freefall then
            K[4][K[6]]=nil;
        end;
        return false,true;
    end;
    if L~=Enum.HumanoidStateType.Freefall then
        K[4][K[6]]=K[4][K[6]]or t;
        if L==Enum.HumanoidStateType.Landed or L==Enum.HumanoidStateType.Running then
            if t-Y[4][Y[6]]>=0.04 then
                Y[4][Y[6]]=t;
                if n[4][n[6]]~=z then
                    y(t);
                end;
                z:ChangeState(Enum.HumanoidStateType.Freefall);
            end;
        end;
        return false;
    end;
    K[4][K[6]]=nil;
    if n[4][n[6]]~=z then
        y(t);
    end;
    Q[4][Q[6]],J[4][J[6]]=t,true;
    z:ChangeState(Enum.HumanoidStateType.Landed);
    f[4][f[6]]=q;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6247 ]] 
[6247]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(...)local z,_=K.AbilityController and K.AbilityController.enabledAbilities,{...};
    if z then
        for K,K in _,nil,nil do
            if z[K]~=nil then
                return K;
            end;
        end;
    end;
    return _[1];
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6248 ]] Strings: [Folder, Indicators]
[6248]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]]=Instance.new("Folder");
    K[4][K[6]].Name="Indicators";
    K[4][K[6]].Parent=_.gui;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6249 ]] Strings: [stud, studs]
[6249]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6252 ]] 
[6252]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function(z)K();
    if z then
        local K=z:FindFirstChild("1");
        if K then
            K.Visible=true;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6262 ]] 
[6262]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].Radius=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6265 ]] Strings: [conqueror-balance]
[6265]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=tonumber(K(_.TS.balance["conqueror-balance"]).ConquerorBalance.CONQUEROR_FLAG_RADIUS);
    if z then
        if z>0 then
            Y[4][Y[6]]=z/2;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6302 ]] Strings: [stud, studs]
[6302]=function(z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6311 ]] Strings: [number, table]
[6311]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.ItemMeta and K.ItemMeta.light_sword;
    local _=z and z.sword and z.sword.chargedAttack;
    local Y=_ and _.minChargeTimeSec;
    local n=_ and _.maxChargeTimeSec;
    local y=type(Y)=="number"and Y or 0.65;
    local Y=type(n)=="number"and n or 1.25;
    _=K.ClientSyncEvents;
    local K=_ and _.SwordChargeTimeModifierCheck;
    if K then
        _,z=pcall(function()local n,Q=Y,y;
        return K:fire(n,Q);
    end);
    if _ and type(z)=="table"then
        y=tonumber(z.minChargeTime)or y;
        Y=tonumber(z.maxChargeTime)or Y;
    else
    end;
else
end;
return y,Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6315 ]] 
[6315]=function(z,K,K,K,K)return function(K)local _=K[1];
    local Y=K[2];
    local n=K[3];
    return function(K,y)local Q,J={},Y.Character;
    z:nc(Q,0,J,n);
    _.FilterDescendantsInstances=Q;
    J=workspace:Raycast(K,Vector3.new(0,-y,0),_);
    return J==nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6350 ]] 
[6350]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6363 ]] Strings: [AutoWin, Save Map On Queue failed: ]
[6363]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if not(K[4][K[6]].SetSaveMapOnQueue)then
            return;
        end;
    else
        return;
    end;
    local Y,n=K[4][K[6]]:SetSaveMapOnQueue(z);
    if not(Y)then
        _("AutoWin","Save Map On Queue failed: "..tostring(n),5);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6375 ]] 
[6375]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)local y=K(z);
    if not(y)then
        return false;
    end;
    if _[4][_[6]].enabled then
        Y(y);
    end;
    n(y.tool);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6387 ]] 
[6387]=function(z,K,K,K,K,K,K)return function(K,_,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    local f=K[7];
    local q=K[8];
    return function()local K=_.isAlive and _.character.RootPart;
    if not(K)then
        return nil;
    end;
    local _,t,T=K.Position,Y[4][Y[6]].value,n(20);
    if T then
        K=(T-y-_).Magnitude<=t and T or nil;
        return K;
    end;
    if t<=60 then
        return nil;
    end;
    K,T={},J.Character;
    z:nc(K,0,T,f);
    Q.FilterDescendantsInstances=K;
    local z,Y,n=workspace,t;
    for J,f in z:GetPartBoundsInRadius(_,t,Q)do
        J=(f.Position-_).Magnitude;
        if J<Y then
            K,T=q(f.Position);
            if K then
                if T then
                    local z=T*3+y;
                    if q(z)then
                    else
                        Y,n=J,z;
                    end;
                else
                end;
            else
            end;
        else
        end;
    end;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6392 ]] 
[6392]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()K(_[4][_[6]]);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6393 ]] Strings: [effect, image, part]
[6393]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    return function(z)if z=="effect"then
        local t=K[4][K[6]].enabled or _[4][_[6]].enabled or Y[4][Y[6]].enabled or n[4][n[6]].enabled;
        return t;
    end;
    if y[4][y[6]].enabled then
        return true;
    end;
    if z=="image"then
        return false;
    end;
    if Q[4][Q[6]].enabled then
        if J[4][J[6]]then
            return true;
        end;
    end;
    local K=z=="part"and(n[4][n[6]].enabled or f[4][f[6]].enabled or q[4][q[6]].enabled);
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6401 ]] Strings: [ScreenGui, Visible, ImageButton]
[6401]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(_)if _ then
        if not(_:IsA("ScreenGui"))then
            return;
        end;
    else
        return;
    end;
    local Y=_:FindFirstChild("1");
    if not Y then
        return;
    end;
    local _=false;
    K(Y:GetPropertyChangedSignal("Visible"):Connect(function()if _ then
        if Y.Visible then
            Y.Visible=false;
        end;
    end;
end));
local n=false;
local function y()if n then
    return;
end;
n=true;
task.defer(function()n=false;
local n=z[2](Y);
if n>=1 and n<=6 then
    _=true;
    Y.Visible=false;
elseif n==0 then
    _=false;
    Y.Visible=true;
elseif n>=7 then
    _=false;
    Y.Visible=true;
end;
end);
end;
local function z(_)if _:IsA("ImageButton")then
    K(_:GetPropertyChangedSignal("Visible"):Connect(y));
end;
end;
for _,_ in ipairs(Y:GetDescendants())do
    z(_);
end;
K(Y.DescendantAdded:Connect(function(K)z(K);
y();
end));
y();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6418 ]] Strings: [InvItem, ArmorSlot, IsBackpack, BasePart]
[6418]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.Character;
    if not(z)then
        return nil;
    end;
    for K,_ in z:GetChildren()do
        if _:GetAttribute("InvItem")==true and _:GetAttribute("ArmorSlot")==nil and _:GetAttribute("IsBackpack")==nil then
            K={};
            for z,z in _:GetDescendants()do
                if z:IsA("BasePart")then
                    K[z]=z.Transparency;
                end;
            end;
            return K;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6421 ]] Strings: [DizzyEffect]
[6421]=function(z,z,z,z,z,z,z)return function(z,z,K,K,K)return function(K)if K.Name~="DizzyEffect"then
    return;
end;
task.defer(function()if z[1][4][z[1][6]].enabled then
    if z[2]()then
        if K.Parent then
            K.Parent=nil;
        end;
    end;
end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6424 ]] 
[6424]=function(z,K,K,K,K,K)return function(K,_,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    return function(K,f,q)if K then
        if K.RootPart then
            if K.RootPart.Parent then
                if _(K)then
                    return false;
                end;
            else
                return false;
            end;
        else
            return false;
        end;
    else
        return false;
    end;
    if K.Player then
        if not(Y[4][Y[6]].players.enabled)then
            return false;
        end;
    elseif not(Y[4][Y[6]].npcs.enabled)then
        return false;
    end;
    if n(Y[4][Y[6]],K)then
        return false;
    end;
    if(K.RootPart.Position-f).Magnitude>22 then
        return false;
    end;
    if q then
        if Y[4][Y[6]].walls.enabled then
            local _,Y,n,q=y.Wallcheck,K.RootPart.Position,{},J.Character;
            z:nc(n,0,Q,q,K.Character);
            if _(f,Y,n)then
                return false;
            end;
        end;
    end;
    local z,_=y.character.RootPart.CFrame.LookVector*Vector3.new(1,0,1),(K.RootPart.Position-f)*Vector3.new(1,0,1);
    return(z.Magnitude>0 and _.Magnitude>0 and math.acos(math.clamp(z.Unit:Dot(_.Unit),-1,1))or 0)<=1.0471975511965976;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6429 ]] 
[6429]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()return K.JadeHammerController;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6439 ]] 
[6439]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if K.owners<=0 then
        return;
    end;
    K.accumulator=K.accumulator+z;
    if K.accumulator<K.config.interval then
        return;
    end;
    K.accumulator=0;
    K.sample();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6463 ]] 
[6463]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_,Y)local n=K.QueryUtil;
    if n then
        local K,y=pcall(n.raycast,n,z,_,Y);
        if K then
            return y;
        end;
    end;
    return workspace:Raycast(z,_,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6466 ]] Strings: [InfiniteFly]
[6466]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if not(K[4][K[6]].isCurrent(z))then
        return;
    end;
    _.start("InfiniteFly");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6485 ]] Strings: [SpeedBoost]
[6485]=function(z,z,z,z,z,z,z)return function(z)return function(z)local K=z:GetAttribute("SpeedBoost");
    return K~=nil and K~=false and K~=0 and K~=""and K==K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6493 ]] 
[6493]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K();
    if not z then
        return nil;
    end;
    local K;
    pcall(function()K=z.resolveDependency("@easy-games/game-core:client/controllers/keybind/action-binder-controller@ActionBinderController");
end);
return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6500 ]] 
[6500]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
        K[4][K[6]]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6503 ]] 
[6503]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()local z,Q=K[4][K[6]]and K[4][K[6]].object,_[4][_[6]]and _[4][_[6]].object;
    if z then
    elseif Q then
    else
        return;
    end;
    Y();
    if n()then
        return;
    end;
    local K=y();
    if z then
        z.Position=K;
    end;
    if Q then
        Q.Position=K;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6514 ]] Strings: [ViewportSize]
[6514]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
    end;
    local z=workspace.CurrentCamera;
    K[4][K[6]]=z and z:GetPropertyChangedSignal("ViewportSize"):Connect(_);
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6516 ]] 
[6516]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=true;
    task.defer(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6567 ]] Strings: [personal-chest]
[6567]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_,Y)if Y=="personal-chest"or K[_.Name]then
        if not(table.find(z,_))then
            table.insert(z,_);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6595 ]] 
[6595]=function(z,z,z,z,z,z,z)return function()return function(z)return z.fireDelaySec or 0.4;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6622 ]] Strings: [stud, studs]
[6622]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6631 ]] 
[6631]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=Vector3.yAxis;
    local n,y,Q,J=z-Y,z+Y,z+Y*2,{{},{},{},{},{},{}};
    local function f(q,t)if not(K(t))then
        table.insert(J[q],t);
    end;
end;
f(1,n);
for q,q in _,nil,nil do
    f(2,n+q);
    f(3,z+q);
    f(4,y+q);
end;
if not(K(Q))then
    n=K(Q+Y);
    for z,z in _,nil,nil do
        n=n or K(Q+z);
    end;
    if not n then
        f(5,y+_[1]+Y);
    end;
    f(6,Q);
end;
return J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6646 ]] Strings: [):lower()or]
[6646]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()K[4][K[6]]=identifyexecutor and tostring(({identifyexecutor()})[1]or""):lower()or"";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6661 ]] 
[6661]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.fov=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6676 ]] Strings: [Humanoid, Animator, string]
[6676]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local _=K.Character;
    local K=_ and(_:FindFirstChildOfClass("Humanoid"));
    _=K and(K:FindFirstChildOfClass("Animator"));
    if not _ then
        return false;
    end;
    local Y,n=pcall(function()local y,Q=z[2].GameAnimationUtil,z[2].AnimationType.MINER_MINE_STONE;
    return y:getAssetId(Q);
end);
if Y then
    if type(n)~="string"then
        return false;
    end;
else
    return false;
end;
for z,z in _:GetPlayingAnimationTracks()do
    K=z.Animation;
    if K then
        if K.AnimationId==n then
            return true;
        end;
    end;
end;
return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6683 ]] 
[6683]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function(z)local _=K.loaded and K.generation==z and K.enabled();
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6688 ]] 
[6688]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z)local _=workspace.CurrentCamera or K;
    if not(_)then
        return false;
    end;
    local K=_.CFrame.Position;
    local Y=Vector3.new(z.X,K.Y,z.Z);
    if(Y-K).Magnitude<=0 then
        return false;
    end;
    _.CFrame=CFrame.lookAt(K,Y);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6691 ]] 
[6691]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.enable_auto_deposit=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6695 ]] Strings: [Team]
[6695]=function(z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function(z)local q,t,T=math.huge,K:GetAttribute("Team"),_.List;
    local K,_;
    for L,X in T,nil,nil do
        if not(Y(X,t))then
            continue;
        end;
        L=n(X);
        if L then
            if L>=100 then
                continue;
            elseif L>y[4][y[6]].value then
                continue;
            elseif L>=q then
                continue;
            end;
        else
            continue;
        end;
        local Y=(X.RootPart.Position-z).Magnitude;
        if Y<6 then
            continue;
        elseif Y>Q[4][Q[6]].value then
            continue;
        end;
        Y=J(X);
        if not Y then
            continue;
        end;
        local n=workspace:Raycast(z,Y-z,f.mapRayParams());
        if n then
            if(n.Position-Y).Magnitude>3 then
                continue;
            end;
        end;
        q,K,_=L,X,Y;
    end;
    return K,_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6703 ]] Strings: [MobileUI]
[6703]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.PlayerGui:WaitForChild("MobileUI",20);
    if z then
        if not(_[4][_[6]].enabled)then
            return;
        end;
    else
        return;
    end;
    for K,K in z:GetChildren()do
        Y(K);
    end;
    _[4][_[6]]:clean(z.ChildAdded:Connect(Y));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6712 ]] 
[6712]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6728 ]] 
[6728]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)z.AssemblyLinearVelocity=Vector3.zero;
    n:ChangeState(Enum.HumanoidStateType.Jumping);
    z=K();
    if z then
        if pcall(_,z,n)then
            Y[z]=true;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6735 ]] 
[6735]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=z.PrimaryPart;
    local Q,J=y.Position*Vector3.new(1,0,1),n*Vector3.new(1,0,1);
    n=(Q-J).Magnitude;
    y.CanCollide=false;
    y.AssemblyAngularVelocity=Vector3.zero;
    if n>0.1 then
        y.AssemblyLinearVelocity=CFrame.lookAt(Q,J).LookVector*(K(z)and 37 or 30);
    else
        y.AssemblyLinearVelocity=Vector3.zero;
    end;
    if _(z,n)then
        Y(z);
    end;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6753 ]] Strings: [fishing_rod]
[6753]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)local _=z=="fishing_rod"or table.find(K,z)~=nil;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6755 ]] 
[6755]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=z.UserInputType;
    if _==Enum.UserInputType.MouseButton1 then
        K[4][K[6]]=false;
    elseif _==Enum.UserInputType.Touch then
        K[4][K[6]]=false;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6757 ]] Strings: [Circle,  Color,  Transparency,  Filled,  Thickness]
[6757]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[2];
    return function(_,Y,n,y)local Q,J,f,q,t={};
    Q.refresh=function()if Q.object then
        local T=n()and not z[1]()and true or false;
        if Q.shown~=T then
            Q.shown=T;
            Q.object.Visible=T;
        end;
    end;
end;
Q.setRadius=function(n)if Q.object then
    Q.object.Radius=n;
end;
end;
Q.remove=function()local n=Q.object;
Q.object=nil;
Q.shown=nil;
if n then
    pcall(function()n.Visible=false;
    n:Remove();
end);
end;
end;
Q.toggle=K[4][K[6]]:toggle(_,{sub=y.Darker,visible=y.Visible,changed=function(n)Q.remove();
if n then
    local n,T=pcall(Drawing.new,"Circle");
    if n then
        if T then
            T.Filled=q~=nil and q.enabled or false;
            T.Color=J and Color3.fromHSV(J.hue,J.sat,J.value)or Color3.new(1,1,1);
            T.Position=z[3]();
            T.Radius=Y();
            T.NumSides=100;
            T.Thickness=t and t.value or 1;
            T.Transparency=1-(f and f.value or 0.5);
            Q.object=T;
            Q.refresh();
        end;
    end;
end;
z[4][4][z[4][6]]();
end,about=y.Tooltip});
J=K[4][K[6]]:color(_.." Color",{changed=function(z,Y,n)if Q.object then
    Q.object.Color=Color3.fromHSV(z,Y,n);
end;
end,sub=true,visible=false});
f=K[4][K[6]]:slider(_.." Transparency",{min=0,max=1,decimal=10,default=0.5,changed=function(z)if Q.object then
    Q.object.Transparency=1-z;
end;
end,sub=true,visible=false});
q=K[4][K[6]]:toggle(_.." Filled",{changed=function(z)if Q.object then
    Q.object.Filled=z;
end;
end,sub=true,visible=false});
t=K[4][K[6]]:slider(_.." Thickness",{min=1,max=10,default=1,changed=function(z)if Q.object then
    Q.object.Thickness=z;
end;
end,sub=true,visible=false});
Q.options={J,f,q,t};
return Q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6759 ]] 
[6759]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K(z);
    local K=n and _[n];
    if not(K)then
        return;
    end;
    K.Nuggets[z]=nil;
    Y(n);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6769 ]] Strings: [player, players]
[6769]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z==1 and"player"or"players";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6785 ]] Strings: [InventorySelectHotbarSlot]
[6785]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.inventory;
    if Y then
        if not(z)then
            return false;
        end;
    else
        return false;
    end;
    if K.handHeld then
        if K.handHeld()then
            return false;
        end;
    end;
    if Y.hotbarSlot==z then
        return true;
    end;
    _.Store:dispatch({type="InventorySelectHotbarSlot",slot=z});
    Y=os.clock()+0.15;
    while os.clock()<Y do
        local _=K.inventory;
        if _ then
            if _.hotbarSlot==z then
                break;
            end;
        else
            break;
        end;
        task.wait();
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6790 ]] 
[6790]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()if not(K.inventory)then
        return{};
    end;
    if not(_[4][_[6]].enabled)then
        local z=K.inventory.inventory and K.inventory.inventory.items or{};
        return z;
    end;
    local z,_={},K.inventory.hotbar or{};
    for K,K in _,nil,nil do
        if K.item then
            table.insert(z,K.item);
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6801 ]] 
[6801]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function()local z=pairs;
    for _,Y in z(K)do
        local z=Y.original;
        Y.original=nil;
        Y.last=nil;
        if z then
            pcall(function()_.Image=z;
        end);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6810 ]] 
[6810]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=z;
    for z=1,3,1 do
        if n then
            if n==workspace then
                return false;
            end;
        else
            return false;
        end;
        if K[n.Name]then
            return true;
        end;
        for z,z in _,nil,nil do
            if Y:HasTag(n,z)then
                return true;
            end;
        end;
        n=n.Parent;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6820 ]] Strings: [BasePart]
[6820]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)if z:IsA("BasePart")then
    return z;
end;
return z:FindFirstChildWhichIsA("BasePart");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6823 ]] Strings: [fireball, telepearl, arrow]
[6823]=function(z,z,z,z,z,z,z)return function(z)return function(z)if z=="fireball"then
    return z;
elseif z=="telepearl"then
    return z;
end;
if z:find("arrow",1,true)then
    return"arrow";
end;
return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6842 ]] 
[6842]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z,Y)local n,y=K.XP,Y-z.At;
    if y<=0 then
        return;
    end;
    z.At=Y;
    y=_(y,60);
    Y=math.exp(-y/n.TAU);
    z.L=z.L*Y;
    z.MM=z.MM+n.DRIFT*n.DRIFT*y;
    z.ML=z.ML*Y;
    z.LL=Y*Y*z.LL+n.LEVEL*n.LEVEL*(1-Y*Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6852 ]] 
[6852]=function(z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6857 ]] 
[6857]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K then
        if K~=_ then
            if K.Parent then
                pcall(Y,K);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6861 ]] Strings: [%[([%d%.]+)%], ([%d%.]+), Cooldown, number]
[6861]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_,Y)if not(_.Timer and _.Timer.Parent)then
        if Y>=_.NextLookup then
            _.Timer=K(z);
        end;
    end;
    if _.Timer then
        if _.Timer.Parent then
            local K=_.Timer.Text;
            return K:match("%[([%d%.]+)%]")or K:match("([%d%.]+)");
        end;
    end;
    local K=z:GetAttribute("Cooldown");
    if _.LastDrop then
        if type(K)=="number"then
            if K>0 then
                z=math.ceil(K-(Y-_.LastDrop));
                return z>=0 and z or nil;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6886 ]] 
[6886]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function()local z,Y=os.clock(),K.List;
    for K,n in Y,nil,nil do
        K=n.Targetable and n.RootPart;
        if K then
            local Y=_[n];
            if Y then
            else
                Y={};
                _[n]=Y;
            end;
            local _,n=K.Position,Y[#Y];
            if n then
                if(_-n.position).Magnitude>15 then
                    table.clear(Y);
                end;
            end;
            table.insert(Y,{time=z,position=_});
            while z-Y[1].time>1 do
                table.remove(Y,1);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6887 ]] Strings: [PlayerGui, FlamethrowerApp, LayerCollector, GuiObject]
[6887]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()local z=K:FindFirstChild("PlayerGui");
    local K=z and(z:FindFirstChild("FlamethrowerApp"));
    if not(K)then
        return false;
    end;
    if K:IsA("LayerCollector")then
        return K.Enabled;
    end;
    if K:IsA("GuiObject")then
        return K.Visible;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6909 ]] 
[6909]=function(z,z,z,z,z,z)return function(z)return function(z)if not z or not z.Parent then
    return;
end;
local K,_=pcall(function()return z:GetPivot();
end);
return K and _.Position or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6914 ]] Strings: [stud, studs]
[6914]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6951 ]] 
[6951]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()K(nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6971 ]] Strings: [fish_coin]
[6971]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()local z=K("fish_coin");
    return z and z.amount or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6975 ]] 
[6975]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()K:Disable();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 6994 ]] 
[6994]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]](_,true);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7003 ]] 
[7003]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[7];
    return function(J)if K[4][K[6]]then
        if K[4][K[6]].enabled then
            if _[4][_[6]]then
                if not Y[4][Y[6]]then
                    return;
                end;
            else
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    if n(J.Name,_[4][_[6]])then
        local K=Y[4][Y[6]].value;
        y(J,function(_)z[6](_,K);
    end);
else
    y(J,Q);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7004 ]] Strings: [PlayingAsKits, string]
[7004]=function(z,z,z,z,z,z)return function(z)return function(z,K)local _=z and(z:GetAttribute("PlayingAsKits"));
    if type(_)~="string"then
        return false;
    elseif _==""then
        return false;
    end;
    for z,z in string.split(_,",")do
        if z==K then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7007 ]] 
[7007]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(_)if K[_]then
        return;
    end;
    K[_]=true;
    task.defer(function()K[_]=nil;
    if z[2].threadFix then
        setthreadidentity(8);
    end;
    if z[3][4][z[3][6]].enabled then
        _();
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7015 ]] Strings: [scepter]
[7015]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K.hand;
    local K=z and z.tool;
    return K~=nil and K.Name=="scepter"and z or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7024 ]] 
[7024]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y,Q)table.clear(K);
    table.insert(K,z);
    for J,J in _:GetPlayers()do
        if J.Character then
            table.insert(K,J.Character);
        end;
    end;
    Y.FilterDescendantsInstances=K;
    local K,_=Vector3.new(0,-Q,0),n;
    for J=1,60,1 do
        Q=J*0.05;
        z=n+y*Q+K*(0.5*Q*Q);
        J=workspace:Raycast(_,z-_,Y);
        if J then
            return J.Position;
        end;
        _=z;
    end;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7030 ]] 
[7030]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local _=K[z];
    if _ then
        if _.Conn then
            _.Conn:Disconnect();
        end;
        _.Box:Destroy();
        _.Tag:Destroy();
        K[z]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7032 ]] 
[7032]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K[4][K[6]]and tostring(K[4][K[6]].value)or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7036 ]] 
[7036]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)for _,_ in K,nil,nil do
        if _.Tag then
            _.Tag.BackgroundTransparency=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7038 ]] 
[7038]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.BlockController:getBlockPosition(z-Vector3.new(0,1.5,0));
    local K,n,y=Y.Y+1,Y.Y-5,false;
    for Q=K,n,-1 do
        z=Vector3.new(Y.X,Q,Y.Z);
        if _(z)then
            if y then
                return(z+Vector3.new(0,1,0))*3;
            end;
            return nil;
        end;
        y=true;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7054 ]] Strings: [number]
[7054]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y,n,y,Q=K.inventory and K.inventory.hotbar or{},0;
    local K,J,f=0;
    for q,t in Y,nil,nil do
        local Y=t and t.item;
        t=Y and Y.tool and _.ItemMeta[Y.itemType];
        local _=t and t.breakBlock;
        if _ then
            t=z and tonumber(_[z])or 0;
            if t>n then
                n,y,Q=t,q-1,Y.tool;
            else
            end;
            for z,z in _,nil,nil do
                if type(z)=="number"then
                    if z>K then
                        local _,n=q-1,Y.tool;
                        K,J,f=z,_,n;
                    else
                    end;
                else
                end;
            end;
        else
        end;
    end;
    if y then
        return y,Q;
    end;
    return J,f;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7064 ]] Strings: [fireball, standalone]
[7064]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(y)local Q=K("fireball");
    if not(Q and Q.tool)then
        return false;
    end;
    local K,J,f=pcall(_.claimItem,"standalone");
    if K then
        if not(J)then
            return false;
        end;
    else
        return false;
    end;
    local q=Y.holding("fireball",Q);
    local t=n.hand and n.hand.tool;
    J,K=pcall(function()if not(q)then
        z[5](Q.tool,0.08);
    end;
    local n,T=z[6].ItemMeta and z[6].ItemMeta.fireball,Y.fire;
    return T(Q,"fireball","fireball",y,n and n.projectileSource);
end);
if not q and t and t.Parent and t~=Q.tool then
    task.delay(0.08,function()local Y=_.ItemOwner=="standalone"and(f==nil or _.ItemOwnerToken==f);
    if Y then
        pcall(function()z[5](t,0);
    end);
end;
pcall(_.releaseItem,"standalone",f);
end);
else
    pcall(_.releaseItem,"standalone",f);
end;
return J and K==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7066 ]] Strings: [scepter]
[7066]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].enabled then
        return _();
    end;
    local z=_()or Y("scepter");
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7074 ]] 
[7074]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if not(K[4][K[6]].enabled())then
        return;
    end;
    local z,K=os.clock(),_.List;
    for y,y in K,nil,nil do
        Y(y,z);
    end;
    if _.isAlive then
        Y(_.character,z);
    end;
    for K,_ in n,nil,nil do
        if z-_.last>0.5 then
            n[K]=nil;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7079 ]] Strings: [player, players]
[7079]=function(z,z,z,z,z)return function()return function(z)return z==1 and"player"or"players";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7089 ]] Strings: [Team]
[7089]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if z then
        if z==K then
            return false;
        end;
    else
        return false;
    end;
    local _=K:GetAttribute("Team");
    return _==nil or z:GetAttribute("Team")~=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7091 ]] Strings: [Text]
[7091]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=_.__realText;
    return K(z,Y,"Text");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7120 ]] 
[7120]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()if K[4][K[6]].enabled then
        K[4][K[6]]:flip(nil,true);
        K[4][K[6]]:flip(nil,true);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7123 ]] Strings: [snap_trap, venom_trap, explosive_trap]
[7123]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z=="snap_trap"then
        local n=K[4][K[6]];
        return n.enabled;
    end;
    if z=="venom_trap"then
        local K=_[4][_[6]];
        return K.enabled;
    end;
    if z=="explosive_trap"then
        local z=Y[4][Y[6]];
        return z.enabled;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7124 ]] Strings: [BasePart]
[7124]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()if not(K[4][K[6]]and K[4][K[6]].Parent)then
        K[4][K[6]]=nil;
        local z=workspace;
        for _,_ in z:GetChildren()do
            if _:IsA("BasePart")then
                if _.Anchored then
                    if _.Size.X==10000 then
                        if _.Size.Z==10000 then
                            K[4][K[6]]=_;
                            break;
                        end;
                    end;
                end;
            end;
        end;
    end;
    local z=K[4][K[6]]and K[4][K[6]].Position.Y;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7157 ]] 
[7157]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].setRadius(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7197 ]] Strings: [Instance, ):lower();if n:find(, )then K=y;break;elseif n:find(, BasePart]
[7197]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,z)if z then
        if not(K(z))then
            return;
        end;
    else
        return;
    end;
    local K;
    for n,y in ipairs(z)do
        if typeof(y)=="Instance"then
            n=(y.Name or""):lower();
            if n:find("arrow")then
                K=y;
                break;
            elseif n:find("snowball")then
                K=y;
                break;
            end;
        end;
    end;
    if not(K)then
        return;
    end;
    z=_.Character and _.Character.PrimaryPart and _.Character.PrimaryPart.Position or K:IsA("BasePart")and K.Position;
    local _=z or Vector3.zero;
    Y(_,K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7213 ]] 
[7213]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function(z)if z then
        K[4][K[6]],_[4][_[6]],Y[4][Y[6]],n[4][n[6]]=0,false,nil,nil;
        while true do
            if y.isAlive then
                local z=y.character.RootPart.Position;
                local _=Q(z);
                if _ then
                    if tick()-K[4][K[6]]>1 then
                        J(_);
                    end;
                else
                    f();
                    if q[4][q[6]].enabled then
                        t();
                    end;
                end;
            end;
            task.wait(0.1);
            local z=T[4][T[6]].enabled;
            if not z then
                break;
            end;
        end;
    else
        f();
        if q[4][q[6]].enabled then
            t();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7215 ]] Strings: [MageElementIndex]
[7215]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    return function()local z,a,Z,m=K.inventory.inventory.items,_[4][_[6]]~=nil and _[4][_[6]].enabled,Y[4][Y[6]]~=nil and Y[4][Y[6]].enabled,n[4][n[6]]~=nil and n[4][n[6]].enabled;
    local K,_,Y=y(z),Q:GetAttribute("MageElementIndex"),J[4][J[6]].active;
    local n=f.Hash==K and f.Mage==_ and f.Whim==a and f.Nazar==Z and f.Umeko==m and#f.List==#Y;
    if n then
        for y,Q in Y,nil,nil do
            if f.List[y]~=Q then
                n=false;
                break;
            end;
        end;
        if n then
            return q;
        end;
    end;
    f.Hash=K;
    f.Mage=_;
    f.Whim=a;
    f.Nazar=Z;
    f.Umeko=m;
    table.clear(f.List);
    table.move(Y,1,#Y,1,f.List);
    Y=t(J[4][J[6]].active,a,Z,m);
    table.clear(q);
    for y,Q in z,nil,nil do
        if Q then
            m=T[Q.itemType];
            a=m and(m.projectileSource or m.block and m.block.projectileSource);
            if a and(L(a))then
                n=a.projectileType and a.projectileType(nil)or Q.itemType;
                if table.find(Y,n)or table.find(Y,Q.itemType)then
                    q[#q+1]={Q,nil,n,a};
                end;
            elseif a then
                _=X(a);
                Z=_ and(table.find(Y,_)or table.find(Y,Q.itemType));
                if Z then
                    q[#q+1]={Q,_,a.projectileType(_),a};
                end;
            elseif m and m.multiProjectileSource then
                K,y=l(Q.itemType,m,Y);
                local z=K and(table.find(Y,y)or table.find(Y,Q.itemType));
                if z then
                    q[#q+1]={Q,nil,y,K};
                end;
            elseif m then
                if m.projectile then
                    if table.find(Y,Q.itemType)then
                        local z=Q.count or Q.quantity or Q.amount;
                        if z==nil or z>0 then
                            q[#q+1]={Q,Q.itemType,Q.itemType,m};
                        end;
                    end;
                end;
            end;
        end;
    end;
    return q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7229 ]] 
[7229]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.hand and K.hand.tool;
    local K=z~=nil and _[z.Name]==true;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7245 ]] 
[7245]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z,_)local Y,n,y=_-Vector3.new(0,1,0),z.Position,K(z);
    z=y<math.huge and math.min(y*0.01,0.5)or 0.5;
    return(Y-Vector3.new(n.X,Y.Y,n.Z)).Magnitude+z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7260 ]] Strings: [Frame, ScaffoldCount, UICorner, UIStroke, Border]
[7260]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=Instance.new("Frame");
    z.Name="ScaffoldCount";
    z.Size=UDim2.new(0,62,0,72);
    z.Position=UDim2.new(0.5,-31,0.5,30);
    z.BackgroundColor3=Color3.fromRGB(10,10,10):Lerp(Color3.fromRGB(240,122,31),0.1);
    z.BackgroundTransparency=0.3;
    z.BorderSizePixel=0;
    z.ZIndex=10;
    local _=Instance.new("UICorner");
    _.CornerRadius=UDim.new(0,8);
    _.Parent=z;
    _=Instance.new("UIStroke");
    _.Name="Border";
    _.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
    _.Color=Color3.fromRGB(240,122,31);
    _.Transparency=0.55;
    _.Thickness=1;
    _.Parent=z;
    _=Instance.new("ImageLabel");
    _.Name="Icon";
    _.Size=UDim2.new(0,38,0,38);
    _.Position=UDim2.new(0.5,-19,0,9);
    _.BackgroundTransparency=1;
    _.ScaleType=Enum.ScaleType.Fit;
    _.Image="";
    _.ZIndex=11;
    _.Parent=z;
    _=Instance.new("TextLabel");
    _.Name="Count";
    _.Size=UDim2.new(1,0,0,18);
    _.Position=UDim2.new(0,0,1,-22);
    _.BackgroundTransparency=1;
    _.Text="0";
    _.TextColor3=Color3.fromRGB(230,230,230);
    _.TextSize=14;
    K.libraries.fonts.track(_,"Bold");
    _.ZIndex=11;
    _.Parent=z;
    z.Parent=K.gui;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7292 ]] Strings: [dizzy-status]
[7292]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[2];
    local _=z[3];
    return function()pcall(function()z[1]:UnbindFromRenderStep("dizzy-status");
end);
local z=K();
local K=z and z.effectMap;
local z=K and K[_];
if z then
    pcall(function()z:DoCleaning();
end);
K[_]=nil;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7304 ]] 
[7304]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if z==K[4][K[6]]then
        K[4][K[6]]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7315 ]] Strings: [Closest]
[7315]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z,f)if K[4][K[6]]then
        local K,q=_[z]==true,_[f]==true;
        if K~=q then
            return K;
        end;
    end;
    if Y[4][Y[6]]~="Closest"then
        if Y[4][Y[6]]then
            local K,_=n[z]or 0,n[f]or 0;
            if K~=_ then
                return K<_;
            end;
        end;
    end;
    if y[4][y[6]]then
        local K,_=Q[z]or 0,Q[f]or 0;
        if K~=_ then
            return K<_;
        end;
    end;
    local K,_=J[z]or 0,J[f]or 0;
    return K<_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7362 ]] 
[7362]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Destroy();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7401 ]] Strings: [studs, stud]
[7401]=function(z,z,z,z,z,z)return function(z)return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7403 ]] 
[7403]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)for n,y in Y,nil,nil do
        n=K(y);
        if n then
            local K=_[y.Name]or _.snap_trap;
            if Vector3.new(n.X-z.X,0,n.Z-z.Z).Magnitude<=K then
                if math.abs(n.Y-z.Y)<=6 then
                    return true;
                end;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7405 ]] Strings: [GhostForm, Humanoid]
[7405]=function(z,z,z,z,z,z)return function()return function(z)if z then
    if z.Parent==nil then
        return false;
    end;
else
    return false;
end;
if z:GetAttribute("GhostForm")then
    return false;
end;
local K=z:FindFirstChildOfClass("Humanoid");
return K~=nil and K.Health>0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7409 ]] Strings: [Team]
[7409]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)local y,Q,J,f=K:GetAttribute("Team"),_.List,40;
    for q,t in Q,nil,nil do
        if t.Player then
            if t.Player~=K then
                if t.RootPart then
                    if t.Player:GetAttribute("Team")~=y then
                        q=(t.RootPart.Position-z).Magnitude;
                        if q<J then
                            J,f=q,t;
                        else
                        end;
                    else
                    end;
                else
                end;
            else
            end;
        else
        end;
    end;
    Q=Vector3.new(1,0,1);
    y=f and(z-f.RootPart.Position)*Q or _.character.RootPart.CFrame.LookVector*Q;
    if y.Magnitude<0.01 then
        return nil;
    end;
    y=y.Unit;
    local K,_,J=Y.mapRayParams(),math.min,n[4][n[6]].value;
    for Y=_(J,60),12,-4 do
        Q=workspace:Raycast(z+y*Y+Vector3.new(0,6,0),Vector3.new(0,-20,0),K);
        if Q then
            Y=Q.Position;
            local _=workspace:Raycast(z,Y-z,K);
            if _ then
                if(_.Position-Y).Magnitude<=3 then
                    return Y;
                end;
            else
                return Y;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7412 ]] Strings: [table]
[7412]=function(z,z,z,z,z,z,z)return function(z)return function()local z=shared.PistonwareDodgeHold;
    return type(z)=="table"and z.jobId==game.JobId and z or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7414 ]] Strings: [Map]
[7414]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=workspace:FindFirstChild("Map");
    if not(n)then
        return false;
    end;
    if n~=K[4][K[6]]then
        K[4][K[6]]=n;
        _.FilterDescendantsInstances={n};
    end;
    n=Y.Head;
    local K,y=n and n.Parent and n.Position or Y.RootPart.Position,z+Vector3.new(0,1.5,0);
    z=workspace:Raycast(y,K-y,_);
    return z==nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7428 ]] 
[7428]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=K[z];
    return _==nil or _.Toggle.enabled;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7433 ]] 
[7433]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.cleanups;
    K.cleanups={};
    for K,K in z,nil,nil do
        pcall(K);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7464 ]] 
[7464]=function(z,z,z,z,z,z)return function(z)return function(K)local _,Y=pcall(function()local n=z[1].AbilityController;
    return n:canUseAbility(K,{disableBlockedAbilityAlert=true});
end);
return _ and Y or false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7481 ]] Strings: [trapper-util, table, function]
[7481]=function(z,z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()if K[4][K[6]]==nil then
        local _,Y=pcall(function()local n=z[3].TS.games.bedwars.kit.kits.trapper["trapper-util"];
        return z[2](n);
    end);
    K[4][K[6]]=_ and type(Y)=="table"and type(Y.canThrowTrap)=="function"and Y or false;
end;
local z=K[4][K[6]]or nil;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7486 ]] 
[7486]=function(z,z,z,z,z,z)return function(z)return function(z,K,_,Y)table.insert(z.Bound,{Slider=K,Legit=_,Visible=Y});
    z:Refresh();
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7499 ]] 
[7499]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q)local J=K();
    local K=_(z,Q)or J and Y:Raycast(z.Position,Vector3.new(0,-1000,0),J);
    Q=K or n[4][n[6]]or y(z.Position);
    return Q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7505 ]] Strings: [stud, studs]
[7505]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7519 ]] Strings: [studs, stud]
[7519]=function(z,z,z,z,z,z,z)return function()return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7528 ]] Strings: [second, seconds]
[7528]=function(z,z,z,z,z)return function(z)return function(z)return z==1 and"second"or"seconds";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7552 ]] Strings: [spirit_staff]
[7552]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]].enabled then
        local z=_.hand.tool and _.hand.tool.Name=="spirit_staff"and _.hand.tool or nil;
        return z;
    end;
    local z=_.inventory.inventory;
    for K,K in z.items,nil,nil do
        if K.itemType=="spirit_staff"then
            if K.tool then
                return K.tool;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7568 ]] Strings: [Fly]
[7568]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if not(K[4][K[6]].isCurrent(z))then
        return;
    end;
    _.start("Fly");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7585 ]] 
[7585]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function(z)local T,L,X=K(),_[4][_[6]].value;
    for K,_ in Y,nil,nil do
        for Y in n(_)do
            if y(_,Y)then
                K=Q(Y,J[_]);
                if K then
                    if K.Health>0 then
                        local _,n=f.WorldToViewportPoint(f,K.RootPart.Position);
                        if n then
                            local n=(T-Vector2.new(_.X,_.Y)).Magnitude;
                            if n<=L then
                                if q[4][q[6]].walls.enabled then
                                    if t.Wallcheck(z,K.RootPart.Position,{Y})then
                                    else
                                        L,X=n,K;
                                    end;
                                else
                                    L,X=n,K;
                                end;
                            else
                            end;
                        else
                        end;
                    else
                    end;
                else
                end;
            else
            end;
        end;
    end;
    return X,L;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7594 ]] Strings: [RootPart]
[7594]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z,...)local Y,n=z.RootPart,K(z,_[4][_[6]]and _[4][_[6]].value or"RootPart",...);
    if n then
        if Y then
            if n==Y then
                return nil;
            end;
        else
            return nil;
        end;
    else
        return nil;
    end;
    return n.Position-Y.Position;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7597 ]] 
[7597]=function(z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7598 ]] 
[7598]=function(z,z,z,z,z,z,z)return function()return function(z,K)local _=K and z.Text~=nil and z.Text~="";
    if z.Shown==K then
        if z.LabelShown==_ then
            return;
        end;
    end;
    z.Shown=K;
    z.LabelShown=_;
    if z.Arrow then
        z.Arrow.Visible=K;
        z.Label.Visible=_;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7619 ]] 
[7619]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function()local z,Y=K[4][K[6]]~=nil and K[4][K[6]].enabled,_[4][_[6]];
    for K,K in Y,nil,nil do
        if K.row then
            K.row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7629 ]] Strings: [PlayingAsKits, string, ;for _,_ in K:split(, )do if _~=, then if _~=]
[7629]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z,Y={},K:GetAttribute("PlayingAsKits");
    local K=type(Y)=="string"and Y or _.equippedKit or"";
    for _,_ in K:split(",")do
        if _~=""then
            if _~="none"then
                table.insert(z,_);
            end;
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7634 ]] 
[7634]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z)local _=K.libraries.theme;
    if z>0.5 then
        return _.Green;
    elseif z>=0.2 then
        return _.Yellow;
    end;
    return _.Red;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7642 ]] Strings: [BasePart]
[7642]=function(z,K,K,K,K,K,K)return function(K,K)local _=K[1];
    return function(K,Y)if K:IsA("BasePart")then
        if _[K]==nil then
            _[K]=K.Transparency;
        end;
        local n=_[K];
        if n<1 then
            K.Transparency=n+(1-n)*Y;
        end;
    end;
    local n,y=ipairs,z[127](K:GetDescendants());
    for K,Q in n(z:Hc(y))do
        if Q:IsA("BasePart")then
            if _[Q]==nil then
                _[Q]=Q.Transparency;
            end;
            K=_[Q];
            if K<1 then
                Q.Transparency=K+(1-K)*Y;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7651 ]] 
[7651]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K[4][K[6]]or 0.5;
    return z+0.03;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7652 ]] Strings: [stud, studs]
[7652]=function(z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7653 ]] 
[7653]=function(z,z,z,z,z,z,z,z)return function(z,z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7654 ]] 
[7654]=function(z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
        K[4][K[6]]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7662 ]] Strings: [Border]
[7662]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)if z then
        if not K[4][K[6]]then
            return;
        end;
    else
        return;
    end;
    local _=z:FindFirstChild("Border");
    if _ then
        _.Color=Color3.fromHSV(K[4][K[6]].hue,K[4][K[6]].sat,K[4][K[6]].value);
        _.Transparency=1-K[4][K[6]].opacity;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7672 ]] 
[7672]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)K.evidence[z]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7704 ]] Strings: [Model, BasePart, Shadow Coin, shadow_coin]
[7704]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K[z]then
        return;
    end;
    local y=z:IsA("Model")and(z.PrimaryPart or z:FindFirstChildWhichIsA("BasePart",true));
    local Q=y or(_(z));
    if not(Q)then
        return;
    end;
    local _,y=Y(Q);
    K[z]={Part=Q,Name="Shadow Coin",Id="shadow_coin",Coin=true,Box=_,Side=y,Tag=n()};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7715 ]] 
[7715]=function(z,z,z,z,z)return function(z,z,z,K,K)return function(K)local _,Y=pcall(function()local n,y=z[1].BlockController,{blockPosition=K};
    return n:isBlockBreakable(y,z[2]);
end);
return _ and Y==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7729 ]] Strings: [stud, studs]
[7729]=function(z,z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7744 ]] Strings: [table]
[7744]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=type(z)=="table"and z.newBridgeInfo;
    if type(n)~="table"then
        return;
    end;
    for y,Q in n,nil,nil do
        z=K.Character;
        if type(Q)=="table"then
            if Q.creator==K then
                if type(Q.bridge)=="table"then
                    if z then
                        if z.PrimaryPart then
                            y=_.BalanceFile;
                            local z=type(y)=="table"and tonumber(y.SPIRIT_BRIDGE_DURATION)or 30;
                            Y[4][Y[6]]={bridge=Q.bridge,expires=os.clock()+z};
                        end;
                    end;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7776 ]] Strings: [number]
[7776]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)if z then
    if z.RootPart then
        if not(z.RootPart.Parent)then
            return false;
        end;
    else
        return false;
    end;
else
    return false;
end;
return not(type(z.Health)=="number"and z.Health<=0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7789 ]] 
[7789]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function(z)if K.isAlive then
        if K.character then
            if not(K.character.HumanoidRootPart)then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    _[4][_[6]]=z;
    local _=Y();
    if _-n[4][n[6]]<0.008333333333333333 then
        return;
    end;
    n[4][n[6]]=_;
    _=K.character.HumanoidRootPart;
    local K=_.Position;
    local Y=y[4][y[6]]and y[4][y[6]].enabled and Q.matchState~=0 and z or J(z.X,K.Y,z.Z);
    z=f(K,Y);
    if z==z then
        _.CFrame=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7798 ]] Strings: [number]
[7798]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.SwordController;
    local K=z and z.lastSwing;
    if type(K)~="number"then
        return false;
    elseif K<=0 then
        return false;
    end;
    if K==_[4][_[6]]then
        return false;
    end;
    if tick()-K>0.35 then
        _[4][_[6]]=K;
        return false;
    end;
    _[4][_[6]]=K;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7802 ]] Strings: [BasePart]
[7802]=function(z,z,z,z,z)return function(z)return function(z)for K,K in z:GetDescendants()do
    if K:IsA("BasePart")then
        K.CanCollide=false;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7803 ]] Strings: [stud, studs]
[7803]=function(z,z,z,z,z,z,z)return function()return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7810 ]] 
[7810]=function(z,z,z,z,z,z)return function(z)return function(z)local K={};
    for _,_ in z,nil,nil do
        K[_]=(K[_]or 0)+1;
    end;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7873 ]] Strings: [Target Priority, Players first]
[7873]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)local _=z:dropdown("Target Priority",{choices=K,default="Players first",about="Players first / NPCs first pick which class comes first and leave the\10rest to Target Mode. The rest decide the order themselves.\10Headhunter prefers whoever you can land a headshot on."});
    z.targetPriority=_;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7880 ]] Strings: [string, ExtraKit_]
[7880]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=type(z)=="string"and z~=""and(K.equippedKit==z or table.find(K.activeKits(),z)~=nil or _:GetAttribute("ExtraKit_"..z)==true);
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7886 ]] 
[7886]=function(z,z,z,z,z,z,z)return function(z,z)return function(z,K,_)local Y,n,y=z.s,z.v0,z.accel;
    z=math.max((K-Y):Dot(n)/math.max(n:Dot(n),1.0E-6),0);
    for Q=1,4,1 do
        local J,f=Y+n*z+y*(0.5*z*z)-K,n+y*z;
        Q=f:Dot(f)+J:Dot(y);
        if not(Q>1.0E-6)then
            break;
        end;
        z-=J:Dot(f)/Q;
    end;
    z=math.clamp(z,0,_+0.25);
    return z,(Y+n*z+y*(0.5*z*z)-K).Magnitude;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7898 ]] 
[7898]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()K();
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7901 ]] Strings: [Viewmodel, RightHand, RightWrist]
[7901]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K and(K:FindFirstChild("Viewmodel"));
    local K=z and(z:FindFirstChild("RightHand"));
    return K and(K:FindFirstChild("RightWrist"));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7924 ]] 
[7924]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    return function()local z=K.selectedHand and K.selectedHand()or K.hand;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7946 ]] Strings: [PlayingAsKits, PlayingAsKit]
[7946]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[4];
    return function(n,y)local Q=K[n];
    if Q then
        if Q.player==y then
            return;
        end;
    end;
    _(n);
    local function _()n.Image=z[3](y).renderImage;
    end;
    local z,Q=y:GetAttributeChangedSignal("PlayingAsKits"):Connect(_),y:GetAttributeChangedSignal("PlayingAsKit"):Connect(_);
    Y[4][Y[6]]:clean(z);
    Y[4][Y[6]]:clean(Q);
    K[n]={player=y,connections={z,Q}};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7970 ]] Strings: [TextLabel, Bold]
[7970]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=Instance.new("TextLabel");
    z.AutomaticSize=Enum.AutomaticSize.XY;
    z.Size=UDim2.new();
    z.AnchorPoint=Vector2.new(0.5,0.5);
    z.BackgroundTransparency=1;
    z.BorderSizePixel=0;
    z.TextColor3=Color3.new(1,1,1);
    z.TextStrokeColor3=Color3.new();
    z.TextStrokeTransparency=0.25;
    z.TextSize=18*K[4][K[6]].value;
    _.libraries.fonts.track(z,"Bold");
    z.RichText=true;
    z.Visible=false;
    z.Parent=Y[4][Y[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7981 ]] 
[7981]=function(z,z,z,z,z,z,z,z)return function(z)return function(z,K,_,Y)if _<=0.001 then
    return;
end;
local n=K-z;
if Y<=0.001 then
    K=n.Magnitude;
    if K<=0.001 then
        return;
    end;
    return z+n/K*_,K/_;
end;
K=Vector3.new(n.X,0,n.Z);
local y,Q=K.Magnitude,n.Y;
if y<=0.001 then
    if Q>=0 then
        n=_*_-2*Y*Q;
        if n<0 then
            return;
        end;
        return z+Vector3.new(0,_,0),(_-math.sqrt(n))/Y;
    end;
    local J=_*_-2*Y*Q;
    return z+Vector3.new(0,-_,0),(math.sqrt(J)-_)/Y;
end;
n=_*_;
local J=n*n-Y*(Y*y*y+2*Q*n);
if J<0 then
    return;
end;
Q=(n-math.sqrt(J))/(Y*y);
J=_/math.sqrt(1+Q*Q);
Y=J*Q;
return z+K/y*J+Vector3.new(0,Y,0),y/J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7986 ]] Strings: [Team, number]
[7986]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)local Q,J,f=math.huge,K:GetAttribute("Team"),_.List;
    local _;
    for q,t in f,nil,nil do
        if t.Player then
            if t.Player==K then
                continue;
            end;
        else
            continue;
        end;
        if t.Player:GetAttribute("Team")~=J then
            continue;
        end;
        if t.RootPart then
            if t.Health<=0 then
                continue;
            end;
        else
            continue;
        end;
        q=type(t.MaxHealth)=="number"and t.MaxHealth>0 and t.MaxHealth or 100;
        if t.Health/q*100>=Y[4][Y[6]].value then
            continue;
        end;
        if(t.RootPart.Position-z).Magnitude>n[4][n[6]]:Get(y[4][y[6]])then
            continue;
        end;
        if t.Health<Q then
            Q,_=t.Health,t;
        else
        end;
    end;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7989 ]] Strings: [ClanTag]
[7989]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)local _=K[z.UserId]or{};
    _.Name=z.Name;
    _.DisplayName=z.DisplayName;
    _.ClanTag=z:GetAttribute("ClanTag")or _.ClanTag;
    K[z.UserId]=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7992 ]] 
[7992]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()if K.enabled then
        return;
    end;
    if _[4][_[6]].enabled then
        _[4][_[6]]:flip();
    end;
    if not(K.enabled)then
        K:flip();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 7997 ]] 
[7997]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        if K[4][K[6]].enabled then
            _();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8004 ]] Strings: [number]
[8004]=function(z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function(z)local _=K:GetAttribute(z);
    return type(_)=="number"and _ or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8009 ]] 
[8009]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)for K,_ in z,nil,nil do
    if K.Parent then
        if K.Transparency==1 then
            if _~=1 then
                K.Transparency=_;
            end;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8010 ]] 
[8010]=function(z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function(q,t,T)if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
    end;
    local L=os.clock();
    Y[4][Y[6]],n[4][n[6]],y[4][y[6]],Q[4][Q[6]]=q,_(q),t,nil;
    J[4][J[6]]=T==true;
    K[4][K[6]]=f.Heartbeat:Connect(function()local f=Y[4][Y[6]]~=nil and Y[4][Y[6]]:IsDescendantOf(workspace);
    if f then
        if os.clock()-L<=5 then
            n[4][n[6]]=_(Y[4][Y[6]]);
            return;
        end;
    end;
    local _=Y[4][Y[6]]~=nil and not f;
    K[4][K[6]]:Disconnect();
    K[4][K[6]],Y[4][Y[6]]=nil,nil;
    if _ then
        if n[4][n[6]]then
            if(n[4][n[6]]-y[4][y[6]]).Magnitude>6 then
                local K,_,Y=workspace,n[4][n[6]]+Vector3.new(0,3,0),Vector3.new(0,-8,0);
                if K:Raycast(_,Y,z[9])then
                    Q[4][Q[6]],z[10][4][z[10][6]],z[11][4][z[11][6]]=n[4][n[6]],os.clock(),J[4][J[6]];
                end;
            end;
        end;
    end;
    J[4][J[6]]=false;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8027 ]] 
[8027]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z.ignoredByKit then
        local n=z.ignoredByKit;
        for y,y in n,nil,nil do
            if K.hasKit(y)then
                return false;
            end;
        end;
    end;
    if z.lockedByForge then
        return false;
    elseif z.disabled then
        return false;
    end;
    if z.require then
        if z.require.teamUpgrade then
            if(_.Store:getState().Bedwars.teamUpgrades[z.require.teamUpgrade.upgradeId]or-1)<z.require.teamUpgrade.lowestTierIndex then
                return false;
            end;
        end;
    end;
    local _,n=K.AutoBank;
    if _ and _.GetAvailable then
        n=_:GetAvailable(z.currency);
    else
        local K=Y(z.currency);
        n=K and K.amount or 0;
    end;
    return n>=z.price;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8031 ]] Strings: [stud, studs]
[8031]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8049 ]] 
[8049]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z)local _=workspace.CurrentCamera or K;
    if not(_)then
        return false;
    end;
    local K=z-_.CFrame.Position;
    if K.Magnitude<=0 then
        return false;
    end;
    return _.CFrame.LookVector:Dot(K.Unit)>=0.6;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8055 ]] 
[8055]=function(z,K,K,K,K,K,K)return function(K,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    return function(...)local K=select("#",...);
    for y=1,K,1 do
        if _(Y(select(y,...)))then
            return true;
        end;
    end;
    K=n.hand and n.hand.tool;
    local n=z[127](Y(K));
    return _(z:Hc(n));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8065 ]] Strings: [metal_detector]
[8065]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.hand and K.hand.tool and K.hand.tool.Name=="metal_detector";
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8067 ]] Strings: [ProjectileTargeting, ProjectilePreviewBeam, Beam, BasePart, table]
[8067]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    return function(z)local a=workspace:FindFirstChild("ProjectileTargeting");
    local Z=a and(a:FindFirstChild("ProjectilePreviewBeam"));
    a=Z and(Z:FindFirstChildOfClass("Beam"));
    local m,M=a and a.Attachment0 and a.Attachment0.Parent,workspace.CurrentCamera or K;
    if m and(m:IsA("BasePart"))then
        if _.isAlive then
            if M then
                if M.CameraType==Enum.CameraType.Scriptable then
                    Y.reset();
                    return;
                end;
            else
                Y.reset();
                return;
            end;
        else
            Y.reset();
            return;
        end;
    else
        Y.reset();
        return;
    end;
    Z=n.hand and n.hand.tool;
    local K=Z and y.ItemMeta[Z.Name];
    local n=K and not K.sword and K.projectileSource;
    if type(n)~="table"then
        return;
    end;
    K=Y.projectile(n);
    n=K and y.ProjectileMeta[K];
    if n then
        if Q(K)then
            return;
        end;
    else
        return;
    end;
    if not(J[4][J[6]].enabled)then
        if not(K:find("arrow"))then
            return;
        end;
    end;
    local y,Q,J=m.Position,m.CFrame.RightVector,3*a.CurveSize0/(n.predictionLifetimeSec or 3);
    if J<1 then
        return;
    elseif(y-_.character.RootPart.Position).Magnitude>10 then
        return;
    end;
    m,a=n.gravitationalAcceleration or 196.2,os.clock();
    if a>=Y.expires then
        Y.expires=a+Y.interval;
        Y.unit=nil;
        n=f(y);
        if n then
            if n.RootPart then
                if not(q(n))then
                    local _,f=t(n,T[4][T[6]].value,K,Z).Position-n.RootPart.Position,K=="telepearl"and Vector3.zero or n.RootPart.Velocity;
                    local q=L(y,J,m,n,_,f,X.targetGravity(n),0);
                    _=q and q-y;
                    if _ then
                        if _.Magnitude>0.001 then
                            Y.unit=_.Unit;
                            l.Targets[n]=tick()+1;
                        end;
                    end;
                end;
            end;
        end;
    end;
    K=Y.unit;
    if not K then
        return;
    end;
    n,Z=(math.atan2(-K.X,-K.Z)-math.atan2(-Q.X,-Q.Z)+3.141592653589793)%6.283185307179586-3.141592653589793,math.asin(math.clamp(K.Y,-1,1))-math.asin(math.clamp(Q.Y,-1,1));
    if math.abs(n)<1.0E-4 then
        if math.abs(Z)<1.0E-4 then
            return;
        end;
    end;
    a,J=1-math.exp(-Y.rate*z),M.CFrame;
    y=math.asin(math.clamp(J.LookVector.Y,-1,1));
    Z=math.clamp(y+Z*a,-1.39,1.39)-y;
    M.CFrame=CFrame.new(J.Position)*CFrame.Angles(0,n*a,0)*J.Rotation*CFrame.Angles(Z,0,0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8074 ]] 
[8074]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()table.clear(K.runs);
    table.clear(K.watched);
    table.clear(K.pending);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8075 ]] 
[8075]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z.enabled;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8079 ]] 
[8079]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function(z,_,Y,n,y,Q,J)local f,q,t=K.SERVER_FRAME,K.XP,K.xtCdf;
    local K,T,L=t(((Y-1)*f-z)/_),t((Y*f-z)/_),t(((Y+1)*f-z)/_);
    z,Y=L-T,1-L;
    return(T-K)*n+z*y+Y*Q+K*J-q.FRAME_COST*(z+2*Y+q.GHOST_COST*K),K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8105 ]] 
[8105]=function(z,z,z,z,z,z,z,z)return function(z)return function(K)local _;
    pcall(function()_=z[1].KeybindLoadController:getKeybinds();
end);
local z,Y=_ and _.keyboard and _.keyboard.controlActions.Attack or Enum.UserInputType.MouseButton1,_ and _.gamepad and _.gamepad.controlActions.Attack or Enum.KeyCode.ButtonR2;
return K.UserInputType==z or K.KeyCode==z or K.KeyCode==Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8115 ]] 
[8115]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z,_)z,_=z:lower(),_:lower();
    local Y=K[4][K[6]].active or{};
    for K,K in Y,nil,nil do
        K=tostring(K):lower();
        if K==z then
            return true;
        elseif K==_ then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8116 ]] Strings: [RootPart, BasePart]
[8116]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z and(z.PrimaryPart or z:FindFirstChild("RootPart")or z:FindFirstChildWhichIsA("BasePart"));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8117 ]] 
[8117]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
        K[4][K[6]]=nil;
    end;
    _[4][_[6]],Y[4][Y[6]],n[4][n[6]],y[4][y[6]],Q[4][Q[6]]=nil,nil,nil,nil,nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8126 ]] Strings: [On near]
[8126]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z=="On near";
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8138 ]] 
[8138]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y,Y=K(z.Position);
    if not(Y)then
        return{};
    end;
    local n=Y*3;
    Y={n};
    for y,y in _,nil,nil do
        if y.Y==0 then
            if K(n+y)==z then
                table.insert(Y,n+y);
                break;
            end;
        end;
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8158 ]] 
[8158]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if z then
        if K[z]then
            return;
        end;
        K[z]=true;
    end;
    local z=_.SoundList and _.SoundList.FORTIFY_BLOCK;
    if z==nil then
        return;
    end;
    pcall(function()_.AudioManager:playAudio(z,{});
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8160 ]] Strings: [number]
[8160]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.ItemMeta.gumdrop_bounce_pad;
    local Y,n,y=z and z.block and z.block.breakType,0;
    local Q,J=0;
    for f,q in _()do
        z=K.ItemMeta[q.itemType];
        f=z and z.breakBlock;
        if not f then
            continue;
        end;
        local z=Y and(f[Y]or 0)or 0;
        if z>n then
            n,y=z,q;
        else
        end;
        for z,z in f,nil,nil do
            if type(z)=="number"then
                if z>Q then
                    Q,J=z,q;
                else
                end;
            else
            end;
        end;
    end;
    return y or J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8202 ]] 
[8202]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].Filled=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8210 ]] Strings: [Instance, BasePart, gumdrop_bounce_pad]
[8210]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z)if K.isAlive then
        if typeof(z)~="Instance"then
            return false;
        elseif not(z:IsA("BasePart"))then
            return false;
        end;
    else
        return false;
    end;
    if z.Name~="gumdrop_bounce_pad"then
        return false;
    end;
    local Y,n=(z.Position-K.character.RootPart.Position).Magnitude,_[4][_[6]].value;
    return Y<=n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8213 ]] 
[8213]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()table.clear(K);
    while true do
        if not(_[4][_[6]].enabled)then
            break;
        end;
        local z=math.floor(1/Y.Heartbeat:Wait());
        if#K>=10 then
            table.remove(K,1);
        end;
        table.insert(K,z);
        task.wait(1);
        z=_[4][_[6]].enabled;
        if not z then
            break;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8214 ]] 
[8214]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()K();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8215 ]] 
[8215]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.graphics_shadows=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8239 ]] Strings: [pistonware/regionlock.txt]
[8239]=function(z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[8];
    return function()if K[4][K[6]]then
        if _.loaded==nil then
            return;
        end;
    else
        return;
    end;
    local K,_=pcall(function()local n={enabled=z[4][4][z[4][6]].enabled,list=z[5](false),regions=z[5](true),timeout=z[6][4][z[6][6]].value,requeue=z[7][4][z[7][6]].enabled};
    return z[3]:JSONEncode(n);
end);
if K then
    if _~=Y[4][Y[6]]then
        Y[4][Y[6]]=_;
        pcall(writefile,"pistonware/regionlock.txt",_);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8257 ]] Strings: [BountyHunterLevel, BountyHunterExp, bounty_hunter]
[8257]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)local y,Q,J=tonumber(z:GetAttribute("BountyHunterLevel"))or 0,tonumber(z:GetAttribute("BountyHunterExp"))or 0,K[z];
    K[z]={level=y,exp=Q};
    if not(J)then
        return;
    end;
    local K=y>J.level;
    if not(K)then
        if y==J.level then
            if not(Q>J.exp)then
                return;
            end;
        else
            return;
        end;
    end;
    if _(z)then
        if not(Y(z,"bounty_hunter"))then
            return;
        end;
    else
        return;
    end;
    J=n(z);
    if K then
        J.levelUp=y;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8277 ]] Strings: [trapper_throw]
[8277]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.AbilityController;
    return z:isAbilityBlocked("trapper_throw");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8281 ]] 
[8281]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8306 ]] Strings: [SpectatorPlatform]
[8306]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local _=workspace:FindFirstChild("SpectatorPlatform");
    if not(_)then
        return;
    end;
    local Y=K.cage;
    if Y then
        if Y.model==_ then
            if z-Y.at<5 then
                return;
            end;
        end;
    end;
    local Y,n,y=pcall(_.GetBoundingBox,_);
    if Y then
        if n then
            if y then
                K.cage={model=_,at=z,cframe=n,half=y/2+Vector3.new(3,3,3)};
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8311 ]] 
[8311]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8312 ]] 
[8312]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)if z then
        K[4][K[6]]:clean(function()_(false);
        Y(false);
        n(false);
    end);
    if y[4][y[6]]then
        if y[4][y[6]].enabled then
            _(true);
        end;
    end;
    if Q[4][Q[6]]then
        if Q[4][Q[6]].enabled then
            Y(true);
        end;
    end;
    if J[4][J[6]]then
        if J[4][J[6]].enabled then
            n(true);
        end;
    end;
else
    _(false);
    Y(false);
    n(false);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8317 ]] 
[8317]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=K.Sent[z];
    if not(_)then
        return 150;
    end;
    z=os.clock()-60;
    while _[1]and _[1]<=z do
        table.remove(_,1);
    end;
    return 150-#_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8326 ]] 
[8326]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].enabled then
        _(Y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8339 ]] 
[8339]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z,_=math.max,K[4][K[6]]and tonumber(K[4][K[6]].value)or 1;
    return z(_,1);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8341 ]] Strings: [function, table]
[8341]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(_,Y)local n=Y.save;
    if type(n)~="function"then
        return;
    elseif K.saves[_]then
        return;
    end;
    local function y(Q,...)local J=n(Q,...);
        if K.paused[_]then
            if not(Q.enabled)then
                if type(J)=="table"then
                    if z[2].loadGeneration==K.generation then
                        z[2]:savedOn(J,true);
                    end;
                end;
            end;
        end;
        return J;
    end;
    K.saves[_]={module=Y,save=n,kept=y};
    Y.save=y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8344 ]] 
[8344]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.welds;
    for n in Y,nil,nil do
        pcall(_,n);
    end;
    table.clear(K.welds);
    K.since=nil;
    if z and z.Health>0 then
        pcall(function()if z.Sit then
            z.Sit=false;
        end;
        local K=z:GetState();
        if K==Enum.HumanoidStateType.Jumping or K==Enum.HumanoidStateType.Seated then
            z:ChangeState(Enum.HumanoidStateType.Freefall);
        end;
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8347 ]] Strings: [grappling_hook_projectile]
[8347]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z,_,Y)K(z,_,"grappling_hook_projectile",140,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8369 ]] Strings: [block]
[8369]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.selectedHand and K.selectedHand()or K.hand;
    if z.toolType=="block"then
        if not(_(z.tool.Name))then
            return z.tool.Name;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8380 ]] 
[8380]=function(z,z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8406 ]] Strings: [Health, MaxHealth, number]
[8406]=function(z,z,z,z,z,z)return function(z,z)return function(z)local K=z and z.Character;
    if not(K)then
        return nil;
    end;
    local _,Y=K:GetAttribute("Health"),K:GetAttribute("MaxHealth");
    if type(_)~="number"then
        local K,n=z.Health,z.MaxHealth;
        _,Y=K,n;
    else
        if type(Y)~="number"then
            local K,n=z.Health,z.MaxHealth;
            _,Y=K,n;
        else
            if Y<=0 then
                local K,n=z.Health,z.MaxHealth;
                _,Y=K,n;
            else
            end;
        end;
    end;
    if type(_)~="number"then
        return nil;
    elseif type(Y)~="number"then
        return nil;
    elseif Y<=0 then
        return nil;
    end;
    return _/Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8409 ]] 
[8409]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_,Y,n,y)local Q,J=K.PRED,K.PredTargets[z];
    if not(J)then
        return false;
    end;
    local f,q,t=K.selfAt(y-Q.SELF_LAG)or Y,K.predictPoint(z,J,_,_.Position,K.predictHorizon(y)),K.HitCall;
    if not((q-f).Magnitude>Q.CAP+n-Q.MARGIN)then
        J.WaitAt=nil;
        return false;
    end;
    if J.WaitAt then
        if J.WaitCall~=t-1 then
            J.WaitAt=y;
        end;
    else
        J.WaitAt=y;
    end;
    J.WaitCall=t;
    return y-J.WaitAt<Q.VALVE;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8417 ]] 
[8417]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()if K[4][K[6]].enabled then
        K[4][K[6]]:flip(nil,true);
        K[4][K[6]]:flip(nil,true);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8422 ]] Strings: [Text]
[8422]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()K.conn=_:GetPropertyChangedSignal("Text"):Connect(K.mark);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8461 ]] Strings: [FastPlace, ,10,]
[8461]=function(z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if z then
        if not K then
            _("FastPlace","Could not read the place cooldown from the game (shared-constants missing)",10,"warning");
            Y[4][Y[6]]:flip();
            return;
        end;
    end;
    if K then
        K.BLOCK_PLACE_CPS=z and n[4][n[6]].value or y;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8464 ]] 
[8464]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()for z,z in K,nil,nil do
        pcall(function()z:Disconnect();
    end);
end;
table.clear(K);
local z=pairs;
for K,K in z(_)do
    if K.conn then
        pcall(function()K.conn:Disconnect();
    end);
    K.conn=nil;
end;
if K.gone then
    pcall(function()K.gone:Disconnect();
end);
K.gone=nil;
end;
end;
z=pairs;
for K,K in z(Y)do
    if K.conn then
        pcall(function()K.conn:Disconnect();
    end);
    K.conn=nil;
end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8471 ]] Strings: [number]
[8471]=function(z,z,z,z,z)return function(z)return function(z)local K=z and z.sword;
    z=K and K.attackRange;
    return type(z)=="number"and z>14.4 and z-14.4 or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8473 ]] 
[8473]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8474 ]] 
[8474]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]].enabled then
        if z then
            _();
        else
            Y();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8476 ]] Strings: [_personal, Inventories, PersonalChest]
[8476]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.privateInventory();
    local K=z and z:FindFirstChild(_.Name.."_personal");
    if K then
    else
        z=Y:FindFirstChild("Inventories");
        K=z and z:FindFirstChild(_.Name.."_personal");
    end;
    if not(K)then
        return nil;
    end;
    z=K:GetAttribute("PersonalChest");
    if z~=nil then
        if tonumber(z)~=_.UserId then
            return nil;
        end;
    end;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8478 ]] Strings: [stud, studs]
[8478]=function(z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8491 ]] 
[8491]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()local z,J=next,K.Toggles;
    for K,K in z,J,nil do
        if _.masterGeneration~=Y then
            return;
        elseif n[4][n[6]].enabled~=y then
            return;
        end;
        K(y);
    end;
    if _.masterGeneration==Y then
        if not y then
            Q();
            _.active=false;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8492 ]] 
[8492]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8506 ]] Strings: [function]
[8506]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()if not K[4][K[6]]then
        return;
    end;
    pcall(function()if type(K[4][K[6]].Disconnect)=="function"then
        K[4][K[6]]:Disconnect();
    elseif type(K[4][K[6]].disconnect)=="function"then
        K[4][K[6]]:disconnect();
    end;
end);
K[4][K[6]]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8515 ]] Strings: [Dead, Health, number]
[8515]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.isAlive and K.character;
    if not(z)then
        return false;
    end;
    local K,Y=z.Humanoid,z.Character;
    if K then
        if K.Parent then
            if K.Health<=0 then
                return true;
            end;
        else
            return true;
        end;
    else
        return true;
    end;
    if Y:GetAttribute("Dead")==true then
        return true;
    end;
    z=Y:GetAttribute("Health");
    if type(z)=="number"then
        if z<=0 then
            return true;
        end;
    end;
    Y,z=K:GetState(),_.DeadState;
    return Y==z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8531 ]] 
[8531]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]].enabled then
        task.defer(_);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8532 ]] Strings: [BasePart]
[8532]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[z]then
        return;
    elseif not(z:IsA("BasePart"))then
        return;
    end;
    local Y={Part=z,NextLookup=0};
    K[z]=Y;
    _(z,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8549 ]] 
[8549]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8553 ]] 
[8553]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()K.unit=nil;
    K.expires=0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8566 ]] Strings: [string]
[8566]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if type(z)~="string"then
        return false;
    elseif z==""then
        return false;
    end;
    local Y=K[4][K[6]]or _();
    return Y[z:lower()]==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8567 ]] Strings: [cat]
[8567]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()K[4][K[6]]=true;
    Y[4][Y[6]]=_("cat");
    n[4][n[6]]=os.clock()+2.5;
    J[4][J[6]]=y(Q);
    if f.isAlive then
        f.character.RootPart.Velocity=Vector3.zero;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8569 ]] 
[8569]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)local _=z and z.Character;
    z=_ and K[_];
    if z then
        z:Disconnect();
        K[_]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8574 ]] 
[8574]=function(z,z,z,z,z)return function(z)return function(z)return z.Text;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8580 ]] Strings: [InventorySelectHotbarSlot]
[8580]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K.handHeld then
        if K.handHeld()then
            return false;
        end;
    end;
    if z and K.inventory.hotbarSlot~=z then
        _.Store:dispatch({type="InventorySelectHotbarSlot",slot=z});
        local _=os.clock()+0.15;
        while os.clock()<_ do
            local _=K.inventory;
            if _ then
                if _.hotbarSlot==z then
                    break;
                end;
            else
                break;
            end;
            task.wait();
        end;
        return true;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8584 ]] 
[8584]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()Y[4][Y[6]]=K:calculateBlockTargetPoint(_.Position+Vector3.new(0,3,0),Vector3.new(0,-1,0),30,nil,{allowArenaBarrierTarget=false});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8585 ]] 
[8585]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)return"%";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8590 ]] 
[8590]=function(z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    return function()local z=K[4][K[6]]and tostring(K[4][K[6]].value)or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8591 ]] 
[8591]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_)local Y=z and z.RootPart;
    if Y then
        if not(Y.Parent)then
            return;
        end;
    else
        return;
    end;
    local n=K[z.Character];
    if n then
    else
        n={times={},positions={},head=0,count=0,last=_};
        K[z.Character]=n;
    end;
    z=n.head%64+1;
    n.times[z]=_;
    n.positions[z]=Y.Position;
    n.head=z;
    n.count=math.min(n.count+1,64);
    n.last=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8598 ]] 
[8598]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if z.KeyCode==Enum.KeyCode.Space then
        K[4][K[6]]=0;
    elseif z.KeyCode==Enum.KeyCode.ButtonA then
        K[4][K[6]]=0;
    elseif z.KeyCode==Enum.KeyCode.LeftShift then
        _[4][_[6]]=0;
    elseif z.KeyCode==Enum.KeyCode.ButtonL2 then
        _[4][_[6]]=0;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8605 ]] 
[8605]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        if K[4][K[6]].Parent then
            _(K[4][K[6]]);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8611 ]] Strings: [Team, NoBreak]
[8611]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(Y)if Y:GetAttribute("Team"..(K:GetAttribute("Team")or-1).."NoBreak")~=nil then
        return true;
    end;
    for n,n in _(Y)do
        local _,Y=pcall(function()local y,Q=z[3].BlockController,{blockPosition=n};
        return y:isBlockBreakable(Q,K);
    end);
    if _ then
        if not(Y)then
            return true;
        end;
    end;
end;
return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8626 ]] Strings: [Custom]
[8626]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K.Custom then
        K.Custom.row.Visible=z=="Custom";
    end;
    K.XT=nil;
    _[4][_[6]]=-1;
    if Y[4][Y[6]]then
        n:updateOverlay();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8632 ]] 
[8632]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)local _=K.Sent[z];
    if _ then
    else
        _={};
        K.Sent[z]=_;
    end;
    table.insert(_,os.clock());
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8635 ]] Strings: [table]
[8635]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=z.UserId;
    local Q=K[y];
    if type(Q)=="table"then
        return Q;
    end;
    if Q==nil then
        K[y]=false;
        table.insert(_,n and 1 or#_+1,z);
        Y();
    end;
    z=0;
    while true do
        n=K[y]==false;
        if not(n and z<15)then
            break;
        end;
        z+=task.wait(0.1);
    end;
    Q=K[y];
    return type(Q)=="table"and Q or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8636 ]] 
[8636]=function(z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8651 ]] Strings: [table, number]
[8651]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K(z);
    z=_.ClientSyncEvents;
    local K=type(z)=="table"and z.ProjectileCooldownModifierCheck;
    if not K then
        return Y;
    end;
    local _,n=pcall(function()return K:fire(Y);
end);
z=_ and type(n)=="table"and n.cooldown;
if type(z)=="number"then
    if z==z then
        if z>0 then
            if z<=Y*4 then
                return z;
            end;
        end;
    end;
end;
return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8675 ]] Strings: [Manual]
[8675]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K[4][K[6]].value;
    return z=="Manual";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8680 ]] 
[8680]=function(z,z,z,z,z,z,z)return function(z,z,z,z)return function()pcall(function()z[1]:disconnect();
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8689 ]] 
[8689]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=K.inventory.hotbar or{};
    for K,Y in _,nil,nil do
        if Y.item then
            if Y.item.tool==z then
                return K-1;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8697 ]] 
[8697]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)local Y=K[z];
    local K=Y and Y.Speed.value or _[z]or 0;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8703 ]] 
[8703]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)local _=K(z);
    if _ then
        if _.module.enabled then
            pcall(_.toggle,_.module);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8727 ]] 
[8727]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,z)if z then
        if K[4][K[6]]~=z then
            return;
        end;
    else
        return;
    end;
    K[4][K[6]]=nil;
    if not(z.WasEnabled)then
        if _[4][_[6]].enabled then
            _[4][_[6]]:flip();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8732 ]] Strings: [Head, face, Decal, 3DClothing, Accessory]
[8732]=function(z,K,K,K,K)return function(K,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    local f=K[7];
    local q=K[8];
    return function()if not(_[4][_[6]].enabled)then
        return;
    end;
    if not(Y.isAlive)then
        return;
    end;
    local K=n();
    if not(K)then
        return;
    end;
    local _=pairs;
    for Y,n in _(y)do
        local t=K:FindFirstChild(Y);
        if t then
            if Q[t]==nil then
                Q[t]=t.Transparency;
            end;
            t.Transparency=n.value;
            if Y=="Head"then
                local Y=t:FindFirstChild("face");
                if Y then
                    if Y:IsA("Decal")then
                        if Q[Y]==nil then
                            Q[Y]=Y.Transparency;
                        end;
                        Y.Transparency=n.value;
                    end;
                end;
            end;
        end;
    end;
    _=K:FindFirstChild("3DClothing");
    if _ then
        local Y=pairs;
        for n,Q in Y(y)do
            local Y=_:FindFirstChild(n);
            if Y then
                J(Y,Q.value);
            end;
        end;
    end;
    local _,Y=ipairs,z[127](K:GetChildren());
    for n,n in _(z:Hc(Y))do
        if n:IsA("Accessory")then
            if n:FindFirstChild("Handle")then
                if n.Name:lower():find("hair")then
                    J(n.Handle,y.Hair.value);
                end;
            end;
        end;
    end;
    if f[4][f[6]].enabled then
        q(K,1);
    else
        q(K,0);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8744 ]] 
[8744]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()local z=K.SprintController:getMovementStatusModifier():addModifier({moveSpeedMultiplier=0.5,blockSprint=true});
    task.delay(0.25,function()z.Destroy();
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8748 ]] 
[8748]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local _=K.character.RootPart;
    local K,Y=pcall(function()local n,y=z[2].BlockController,_.Position-Vector3.new(0,3,0);
    return n:getBlockPosition(y);
end);
return K and Y or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8752 ]] Strings: [PlayerGui, FrostyHammerApp, LayerCollector, GuiObject]
[8752]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K:FindFirstChild("PlayerGui");
    local K=z and(z:FindFirstChild("FrostyHammerApp"));
    if not(K)then
        return false;
    end;
    if K:IsA("LayerCollector")then
        return K.Enabled;
    end;
    if K:IsA("GuiObject")then
        return K.Visible;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8774 ]] Strings: [pistonware/autoqueuedodge.txt]
[8774]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if z then
        K();
    elseif _.loaded~=nil then
        pcall(delfile,"pistonware/autoqueuedodge.txt");
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8785 ]] Strings: [stud, studs]
[8785]=function(z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8790 ]] 
[8790]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z,_,Y)local n=K[z];
    if not(n)then
        return nil;
    end;
    z=n.target;
    if z~=nil then
        if z==_ then
            return n;
        elseif z==Y then
            return n;
        end;
    end;
    local K=n.previous;
    z=K and K.target;
    if z~=nil and(z==_ or z==Y)then
        if os.clock()-n.changed<=5 then
            return K;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8804 ]] Strings: [stud, studs]
[8804]=function(z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8815 ]] 
[8815]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z.KeyCode==Enum.KeyCode.Space then
        if not(K:GetFocusedTextBox())then
            _[4][_[6]]=true;
            Y();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8819 ]] Strings: [string]
[8819]=function(z,K,K,K,K)return function(K,_,_)local _=K[1];
    return function(K)if type(K)~="string"then
        return false;
    elseif not _[4][_[6]]then
        return false;
    end;
    local Y,n=K:lower(),_[4][_[6]];
    for _,_ in ipairs(n.active)do
        K=z[127](_:lower());
        if Y:find(z:Hc(K))then
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8823 ]] Strings: [stud, studs]
[8823]=function(z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8827 ]] 
[8827]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()return K.CatController;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8845 ]] 
[8845]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K(z)then
        _[4][_[6]],Y[4][Y[6]]=z,os.clock()+6;
        n();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8850 ]] 
[8850]=function(z,z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]]then
        return;
    end;
    K[4][K[6]],_[4][_[6]]=true,false;
    Y(false);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8864 ]] 
[8864]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _,Y=K.PHitAt[z],K.PCandAt[z];
    if _ then
        if Y then
            if math.abs(_-Y)>0.1 then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    if K.noteStamp(K.PCand[z])then
        K.PHitAt[z]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8876 ]] 
[8876]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n)local y=K.PRef;
    if y then
        if K.PLatN<4 then
            return nil;
        end;
    else
        return nil;
    end;
    local Q=K.PSendI;
    if Q==0 then
        return nil;
    elseif K.PSendT[Q]~=z then
        return nil;
    end;
    z=math.ceil(n/K.SERVER_FRAME-1-1.0E-6);
    K.PFrames=z;
    n=K.EARLY_EXTRA*math.max(0,1-K.PLatN/K.EARLY_N)+K.RATES[K.rate()].Margin;
    local J=(z-1)*K.SERVER_FRAME+K.PMarginUp+n-(y+K.PLift);
    if not(K.PSendDone[Q])then
        return nil;
    end;
    if K.PLateBand then
        if math.abs(K.PFrame-K.SERVER_FRAME)<K.SPIN_LOCK_WIDTH then
            y,n=K.PSendC[Q],(z+0.5)*K.SERVER_FRAME;
            local z=y and Y+(y+n-_())or K.PSendT[Q]+n;
            return z;
        end;
    end;
    n=K.PStamp;
    return n+J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8946 ]] 
[8946]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q,J,f,q,t)if Q then
    elseif J then
    elseif f then
    elseif q then
    elseif t then
    else
        return z;
    end;
    local T=table.clone(z);
    local function z(L)table.move(L,1,#L,#T+1,T);
    end;
    if Q then
        z(K);
    end;
    if J then
        z(_);
    end;
    if f then
        z(Y);
    end;
    if q then
        z(n);
    end;
    if t then
        z(y);
    end;
    return T;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8949 ]] 
[8949]=function(z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8950 ]] 
[8950]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()K.recolor();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8952 ]] Strings: [ClientPlaced]
[8952]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=os.clock()+0.5;
    while true do
        local y=K(Y*3);
        if y then
            if y.Name==z then
                if not(y:GetAttribute("ClientPlaced"))then
                    return true;
                end;
            end;
        end;
        task.wait();
        y=os.clock()>=n or not _[4][_[6]].enabled;
        if y then
            break;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8982 ]] Strings: [-note, -settle]
[8982]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[4];
    return function()local n,y=_.."-note",Enum.RenderPriority;
    local Q,J=y.Camera.Value,function()pcall(z[3].note);
end;
K:BindToRenderStep(n,Q+2,J);
y,J=_.."-settle",Enum.RenderPriority;
n,Q=J.Camera.Value,function()pcall(z[3].settle);
end;
K:BindToRenderStep(y,n+4,Q);
Y[4][Y[6]]:clean(function()z[3].Noted=nil;
pcall(function()K:UnbindFromRenderStep(_.."-note");
end);
pcall(function()K:UnbindFromRenderStep(_.."-settle");
end);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8983 ]] Strings: [LastSwordHitTime, number, Instance]
[8983]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(J)if not(K[4][K[6]].isCurrent(J))then
        return;
    end;
    local function f(q)if not q or _.watched[q]then
        return;
    end;
    _.watched[q]=true;
    K[4][K[6]].connect(q:GetAttributeChangedSignal("LastSwordHitTime"),function()local t=q:GetAttribute("LastSwordHitTime");
    if type(t)=="number"then
        if K[4][K[6]].enabled()then
            table.insert(_.pending,{q,t});
        end;
    end;
end,J);
end;
for q,q in Y.List,nil,nil do
    f(q.Character);
end;
f(n.Character);
if Y.Events then
    if Y.Events.EntityAdded then
        K[4][K[6]].connect(Y.Events.EntityAdded,function(Y)f(Y and Y.Character);
    end,J);
end;
end;
K[4][K[6]].connect(n.CharacterAdded,f,J);
K[4][K[6]].connect(y.Heartbeat,_.drain,J);
K[4][K[6]].connect(Q.EntityDamageEvent.Event,function(Y)if K[4][K[6]].enabled()then
    if Y.damageType~=0 then
        return;
    end;
else
    return;
end;
local K=Y.entityInstance;
if typeof(K)=="Instance"then
    if K:GetAttribute("LastSwordHitTime")~=nil then
        return;
    end;
end;
K=Y.fromEntity;
local y=K and(z[7]:GetPlayerFromCharacter(K));
if y then
    if y==n then
        return;
    end;
else
    return;
end;
local z=Y.attackData;
_.add(y,K,os.clock(),_.FALLBACK_RULES,type(z)=="table"and z.itemUsed or nil);
end,J);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 8984 ]] 
[8984]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_,Y)if K[4][K[6]]then
        K[4][K[6]].Color=Color3.fromHSV(z,_,Y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9004 ]] 
[9004]=function(z,z,z,z,z,z,z)return function()return function(z)local K={};
    for _,Y in z,nil,nil do
        K[_]=Y;
    end;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9009 ]] 
[9009]=function(z,z,z,z,z)return function(z)return function(z,K)return z[K];
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9058 ]] 
[9058]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function(z,z)if z~=K[4][K[6]]then
        return;
    end;
    if z.OwnsEnabled then
        if _[4][_[6]].enabled then
            _[4][_[6]]:flip(nil,true);
        end;
    end;
    Y(n[4][n[6]],z.Mode);
    Y(y[4][y[6]],z.Range);
    Y(Q[4][Q[6]],z.TargetPart);
    Y(J[4][J[6]],z.FireDelay);
    if z.ListEnabled and f[4][f[6]]and f[4][f[6]].active then
        table.clear(f[4][f[6]].active);
        local _=z.ListEnabled;
        for z,z in _,nil,nil do
            table.insert(f[4][f[6]].active,z);
        end;
    end;
    K[4][K[6]]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9070 ]] 
[9070]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9079 ]] Strings: [Gradual, Infinite, void_walker_warp]
[9079]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z=="Gradual";
        end;
    end;
    if z=="Infinite"then
        if _[4][_[6]].enabled then
            if Y[4][Y[6]]then
                pcall(Y[4][Y[6]].removeCooldown,Y[4][Y[6]],"void_walker_warp");
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9094 ]] 
[9094]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_,Y,n,y,Q,J,f)if y<=0 then
        return z;
    end;
    local q,t=K.pathAt,K.simulate(z,_,Y,n,y,Q,J,f);
    return q(t,y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9103 ]] 
[9103]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()for z,z in K.saves,nil,nil do
        pcall(function()if z.module.save==z.kept then
            z.module.save=z.save;
        end;
    end);
end;
table.clear(K.saves);
if _.loaded==nil or _.applying or _.loadGeneration~=K.generation then
    table.clear(K.paused);
    return;
end;
local z=K.paused;
for Y in z,nil,nil do
    local z=_.modules[Y];
    if z and not z.enabled then
        pcall(function()z:flip(nil,true);
    end);
end;
end;
table.clear(K.paused);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9134 ]] Strings: [light_sword]
[9134]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(_,Y,n)local y,Q=pcall(_.stopCharging,_,"light_sword");
    local _=y and tonumber(Q)or n;
    n=K.SwordController;
    if n then
        pcall(n.swingSwordAtMouse,n,_);
    end;
    n=K.ClientSyncEvents;
    local K=n and n.SwordChargedSwing;
    if K then
        pcall(function()K:fire(z[2],Y.tool,{chargeTime=_});
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9156 ]] 
[9156]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()K[4][K[6]]:SetStateEnabled(Enum.HumanoidStateType.Landed,false);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9160 ]] Strings: [Team]
[9160]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function()if K[4][K[6]]then
        return;
    elseif not(_[4][_[6]].enabled)then
        return;
    end;
    K[4][K[6]]=true;
    local z,_,L,X=Y:GetAttribute("Team"),n[4][n[6]].enabled and y()or nil,{},{};
    for y,l in Q:GetPlayers()do
        if l~=Y then
            if not(J[l.UserId])then
                if not(n[4][n[6]].enabled and f(l,_))then
                    y=l:GetAttribute("Team");
                    if y~=nil then
                        if y==z then
                            table.insert(L,l);
                        else
                            table.insert(X,l);
                        end;
                    else
                        table.insert(X,l);
                    end;
                end;
            end;
        end;
    end;
    if q[4][q[6]].enabled then
        t(L,true);
    end;
    if T[4][T[6]].enabled then
        t(X,false);
    end;
    K[4][K[6]]=false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9161 ]] 
[9161]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=z-K;
    local z,K=math.max((n-y).Magnitude,(n-_-y).Magnitude),math.min(Y[4][Y[6]].value,60);
    return z<=K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9174 ]] 
[9174]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z)task.defer(K,z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9190 ]] 
[9190]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y=K[z],_[z];
    if y then
        if n then
            if y>=n+(Y[4][Y[6]]or 0.5)then
                return y;
            end;
        else
            return y;
        end;
    end;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9194 ]] Strings: [number]
[9194]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=K();
    local K=z and z.lastAttack or 0;
    if type(K)~="number"then
        z=_[4][_[6]];
        return z;
    elseif K<_[4][_[6]]then
        local z=_[4][_[6]];
        return z;
    end;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9214 ]] 
[9214]=function(z,K,K,K,K,K)return function(K,_,_)local _=K[1];
    local Y=K[2];
    return function(K)local n=z[127](Y(K));
    return _(z:Hc(n));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9215 ]] 
[9215]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if z then
        K.Data.Following.Value=_.UserId;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9227 ]] 
[9227]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)K[z]=Y;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9229 ]] 
[9229]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if not(z)then
        return;
    end;
    local y,Q=workspace:GetServerTimeNow()+K:GetNetworkPing(),_(z);
    if Q then
        if y>=Q+(Y[4][Y[6]]or 0.5)then
            n[z]=y;
        end;
    else
        n[z]=y;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9239 ]] Strings: [Both, Fireball, Mine, Off]
[9239]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        if _[4][_[6]]then
            if K[4][K[6]].enabled then
                if _[4][_[6]].enabled then
                    return"Both";
                end;
            end;
            local z=K[4][K[6]].enabled and"Fireball"or _[4][_[6]].enabled and"Mine";
            return z or"Off";
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9248 ]] Strings: [_OreGenerator, _TeamOreGenerator, iron, )or, [_%d]+$]
[9248]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)for n,n in K,nil,nil do
        if _(n.."_OreGenerator",Y)then
            return n;
        end;
    end;
    for n=1,16,1 do
        if _(n.."_TeamOreGenerator",Y)then
            return"iron";
        end;
    end;
    Y=tostring(z:GetAttribute("Id")or""):lower();
    for z,z in K,nil,nil do
        if Y:find(z,1,true)then
            return z;
        end;
    end;
    Y=Y:gsub("[_%d]+$","");
    return Y~=""and Y or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9254 ]] Strings: [Map]
[9254]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()local z=workspace:FindFirstChild("Map");
    if not(z)then
        return nil;
    end;
    if z~=K[4][K[6]]then
        K[4][K[6]]=z;
        _.FilterDescendantsInstances={z};
    end;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9257 ]] 
[9257]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()K[4][K[6]]=false;
    if _.threadFix then
        setthreadidentity(8);
    end;
    if Y[4][Y[6]]then
        if not(n[4][n[6]].enabled)then
            return;
        end;
    else
        return;
    end;
    if y.Visible then
        Y[4][Y[6]].Visible=false;
    else
        Q();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9272 ]] 
[9272]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.QueryUtil;
    for K in _,nil,nil do
        if K.Parent then
            if z then
                pcall(z.setQueryIgnored,z,K,false);
            end;
        end;
    end;
    table.clear(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9294 ]] Strings: [PistonwareBankOwner, RootPart]
[9294]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)local J,f,q,t,T=z.PrimaryPart.Position,os.clock(),#K;
    for L=q,1,-1 do
        z=K[L];
        if z.Parent~=_[4][_[6]]then
            Y(z);
            continue;
        end;
        if not(table.find(n[4][n[6]].active,z.Name))then
            continue;
        end;
        if(y[z]or 0)>=f then
            continue;
        end;
        if z:GetAttribute("PistonwareBankOwner")~=nil then
            continue;
        end;
        if z.Position.Y<=0 then
            continue;
        elseif math.abs(z.AssemblyLinearVelocity.Y)>0.01 then
            continue;
        end;
        L=z.Position-J;
        local K=L:Dot(L);
        if t then
            if K>=t then
                continue;
            end;
        end;
        if Q.EntityPosition({Origin=z.Position,Range=60,Part="RootPart",Players=true})then
            continue;
        end;
        t,T=K,z;
    end;
    return T;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9306 ]] Strings: [InventorySelectHotbarSlot]
[9306]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K.handHeld then
        if K.handHeld()then
            return false;
        end;
    end;
    if z then
        if K.inventory.hotbarSlot~=z then
            _.Store:dispatch({type="InventorySelectHotbarSlot",slot=z});
            Y.InventoryChanged.Event:Wait();
            return true;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9309 ]] 
[9309]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.inventory and K.inventory.inventory;
    local Y=z and z.hand;
    if Y then
        if _(Y.itemType)then
            return true;
        end;
    end;
    Y=K.hand and K.hand.tool;
    z=Y~=nil and _(Y.Name);
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9322 ]] 
[9322]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]].enabled then
        _(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9327 ]] 
[9327]=function(z,z,z,z,z,z)return function(z,z,z)return function(z,K)if not(z)then
    return;
end;
if K==true~=z.enabled then
    z:flip();
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9329 ]] Strings: [ClientPlaced]
[9329]=function(z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=z.clientManager:getBlockSelector();
    z=n:getMouseInfo(0);
    if z then
        if not(z.placementPosition==z.placementPosition)then
            return nil;
        end;
    else
        return nil;
    end;
    local y=n.mouse and n.mouse.UnitRay;
    if not(y)then
        return z;
    end;
    local Q,J,f=K.BlockController:getStore(),y.Origin,y.Direction;
    for K=1,4,1 do
        K=z.placementPosition;
        y=Vector3.new(math.round(K.X),math.round(K.Y),math.round(K.Z));
        K=Q:getBlockAt(y);
        if K then
            if K.Parent==nil then
                if not(K:GetAttribute("ClientPlaced")==true)then
                    break;
                end;
            else
                break;
            end;
        else
            break;
        end;
        local Q,q,t,T,L=y*3-_,y*3+_,-math.huge,nil,math.huge;
        for _,X in Y,nil,nil do
            n,_=J:Dot(X),f:Dot(X);
            if math.abs(_)<1.0E-9 then
                if n<Q:Dot(X)then
                    return z;
                elseif n>q:Dot(X)then
                    return z;
                end;
            else
                local Y,l=(Q:Dot(X)-n)/_,(q:Dot(X)-n)/_;
                if Y>l then
                    Y,l=l,Y;
                else
                end;
                if Y>t then
                    t,T=Y,_>0 and-X or X;
                else
                end;
                L=math.min(L,l);
            end;
        end;
        if T then
            if t<0 then
                break;
            elseif t>L then
                break;
            end;
        else
            break;
        end;
        z={target={blockInstance=K,blockRef={blockPosition=y},hitPosition=J+f*t,hitNormal=T},placementPosition=y+T};
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9334 ]] Strings: [werewolf-fear-status]
[9334]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()K:UnbindFromRenderStep("werewolf-fear-status");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9335 ]] 
[9335]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z,y=workspace:GetDescendants(),os.clock();
    local Q=#z;
    for J=1,Q,1 do
        if K[4][K[6]]~=_ then
            return;
        elseif not(Y[4][Y[6]].enabled)then
            return;
        end;
        local K=z[J];
        if K.Parent then
            n[4][n[6]](K);
        end;
        if os.clock()-y>0.004 then
            task.wait();
            y=os.clock();
        else
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9366 ]] 
[9366]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=K.hand and K.hand.tool;
    local K=z and _.ItemMeta[z.Name];
    return K~=nil and K.breakBlock~=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9371 ]] 
[9371]=function(z,z,z,z,z)return function(z,z)return function()return"%";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9405 ]] 
[9405]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
    if z then
        Y[4][Y[6]]=_();
        Y[4][Y[6]].Visible=n[4][n[6]].enabled and not y();
        Q(Y[4][Y[6]]);
    elseif Y[4][Y[6]]then
        Y[4][Y[6]]:Destroy();
        Y[4][Y[6]]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9426 ]] Strings: [bounty_hunter]
[9426]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)local J=z.fromEntity and K:GetPlayerFromCharacter(z.fromEntity);
    if J then
        if _(J)then
            if not(Y(J,"bounty_hunter"))then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    local _=K:GetPlayerFromCharacter(z.entityInstance);
    if not(_)then
        return;
    end;
    local K,Y=n(J,_,z.entityInstance),y[J];
    if Y then
    else
        Y={};
        y[J]=Y;
    end;
    local z,n=table.insert,{victim=_};
    n.at=os.clock();
    z(Y,n);
    if#Y>4 then
        table.remove(Y,1);
    end;
    if K then
        Q(J,_,K.reward);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9445 ]] 
[9445]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9466 ]] Strings: [Sound, ProximityPrompt, LayerCollector, ParticleEmitter, Light]
[9466]=function(z,z,z,z,z)return function(z,z)return function(z)for K,K in z:GetTags()do
    z:RemoveTag(K);
end;
for K,K in z:GetDescendants()do
    for _,_ in K:GetTags()do
        K:RemoveTag(_);
    end;
    if K:IsA("Sound")then
        K:Destroy();
    elseif K:IsA("ProximityPrompt")then
        K:Destroy();
    elseif K:IsA("LayerCollector")then
        K:Destroy();
    elseif K:IsA("ParticleEmitter")then
        K:Destroy();
    elseif K:IsA("Light")then
        K:Destroy();
    end;
end;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9467 ]] 
[9467]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function(z,_)local Y=_.peakY-_.groundY;
    _.peakY=nil;
    local n=K.targetGravity(z);
    if Y<=0.5 then
        return;
    elseif n<=0 then
        return;
    end;
    local y,Q=math.sqrt(2*n*Y),K.worldGravity();
    Y=math.abs(n-Q)<1 and K.jumpSpeedFor(z.Humanoid,Q);
    if Y then
        if y<Y*0.6 then
            return;
        elseif y>Y*1.8 then
            return;
        end;
    end;
    if y<15 then
        return;
    elseif y>120 then
        return;
    end;
    _.jumpVel=_.jumpVel and(_.jumpVel+y)*0.5 or y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9492 ]] Strings: [number]
[9492]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if K.conn then
        return;
    end;
    local Y=_.ClientSyncEvents;
    local n=Y and Y.SwordSwing;
    local y=_.SyncEventPriority;
    if n and y then
        if not(type(y.HIGHEST)=="number")then
            return;
        end;
    else
        return;
    end;
    local _,Q=pcall(function()local J=n:setPriority(y.HIGHEST);
    return J:connect(z[3]);
end);
if not(_)then
    return;
end;
K.conn=Q;
if type(y.LOWEST)~="number"then
    return;
end;
Y,Q=pcall(function()local _=n:setPriority(y.LOWEST);
return _:connect(z[4]);
end);
if Y then
    K.lateConn=Q;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9495 ]] 
[9495]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K.on then
        if z then
            if not(_())then
                return false;
            end;
        else
            return false;
        end;
    else
        return false;
    end;
    local K,_=pcall(Y,z);
    return K and _==false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9503 ]] 
[9503]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K[4][K[6]]then
        if _[z]then
            return;
        elseif Y[z]then
            return;
        end;
    else
        return;
    end;
    _[z]=true;
    table.insert(n,z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9523 ]] 
[9523]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
    _.recolor();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9524 ]] Strings: [InventorySelectHotbarSlot]
[9524]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if K.handHeld then
        if K.handHeld()then
            return false;
        end;
    end;
    if z and K.inventory.hotbarSlot~=z then
        _.Store:dispatch({type="InventorySelectHotbarSlot",slot=z});
        if Y.Knitless then
            local z=false;
            local K,_=n.InventoryChanged.Event:Once(function()z=true;
        end),os.clock()+1;
        while true do
            task.wait();
            local Y=z or os.clock()>_;
            if Y then
                break;
            end;
        end;
        K:Disconnect();
    else
        n.InventoryChanged.Event:Wait();
    end;
    return true;
end;
return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9537 ]] 
[9537]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K[4][K[6]]and K[4][K[6]].enabled and _[4][_[6]]or Y.accent;
    return Color3.fromHSV(z.hue,z.sat,z.value);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9539 ]] 
[9539]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)local Q=K[_[4][_[6]]];
    if Q then
        if z-Q<=0.15000000000000002+y then
            return Y(z,n);
        end;
    end;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9542 ]] 
[9542]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z,Y)K(z,Y);
    pcall(_,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9555 ]] Strings: [Switch delay, table]
[9555]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)Y=K.PistonwareMigrateDefaults(z,Y,{["Switch delay"]={{0.1,0.05},0.08}});
    if type(Y)=="table"then
        if Y.throw_below==nil then
            if Y.health~=nil then
                Y.throw_below=Y.health;
                Y.health=nil;
            end;
        end;
    end;
    return _(z,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9558 ]] Strings: [flag-kit, BasePart, PlacedByUserId, FlagTeam]
[9558]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=K.Team and K.Team.Name;
    for Q,Q in _:GetTagged("flag-kit")do
        if Q.Name~=z then
            continue;
        elseif not(Q:IsA("BasePart"))then
            continue;
        end;
        if Q:GetAttribute("PlacedByUserId")==K.UserId then
            return true;
        end;
        if y then
            if Q:GetAttribute("FlagTeam")==y then
                if(Q.Position-n).Magnitude<=Y[4][Y[6]]then
                    return true;
                end;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9579 ]] 
[9579]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z and not _;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9584 ]] Strings: [Circle]
[9584]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    return function()if K[4][K[6]]then
        if K[4][K[6]].enabled then
            if _[4][_[6]]then
                if _[4][_[6]].enabled then
                    if Y[4][Y[6]]then
                        if not(Y[4][Y[6]].enabled)then
                            n();
                            return;
                        end;
                    else
                        n();
                        return;
                    end;
                else
                    n();
                    return;
                end;
            else
                n();
                return;
            end;
        else
            n();
            return;
        end;
    else
        n();
        return;
    end;
    if y[4][y[6]]then
        return;
    end;
    local z,K=pcall(Drawing.new,"Circle");
    if z then
        if not(K)then
            return;
        end;
    else
        return;
    end;
    K.Filled=Q[4][Q[6]]and Q[4][Q[6]].enabled or false;
    K.Color=J[4][J[6]]and Color3.fromHSV(J[4][J[6]].hue,J[4][J[6]].sat,J[4][J[6]].value)or Color3.new(1,1,1);
    K.Radius=f[4][f[6]].value;
    K.NumSides=100;
    K.Thickness=q[4][q[6]]and q[4][q[6]].value or 1;
    K.Transparency=1-(t[4][t[6]]and t[4][t[6]].value or 0.5);
    K.Position=T();
    local z=not L();
    K.Visible=z;
    y[4][y[6]]=K;
    l[4][l[6]]=X.RenderStepped:Connect(function()if y[4][y[6]]then
        local K=L();
        local _=not K;
        if _~=z then
            z=_;
            y[4][y[6]].Visible=_;
        end;
        if not(K)then
            y[4][y[6]].Position=T();
        end;
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9591 ]] Strings: [oasis_buff_charge, number]
[9591]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)if K.StatusEffectUtil then
        if z then
            if not(z.Character)then
                return 0;
            end;
        else
            return 0;
        end;
    else
        return 0;
    end;
    local _,Y=pcall(function()local n,y=K.StatusEffectUtil,z.Character;
    return n:getStacks(y,"oasis_buff_charge");
end);
return _ and type(Y)=="number"and Y or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9592 ]] 
[9592]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(_)if not(K[4][K[6]].enabled)then
        return;
    end;
    task.defer(function()if not(K[4][K[6]].enabled)then
        return;
    end;
    local K=workspace;
    if not(_:IsDescendantOf(K))then
        return;
    end;
    if z[2][_]then
        if z[3][_.Name]then
            if z[4][_.Name]then
                return;
            end;
        else
            return;
        end;
        z[5](_);
    end;
    z[6][4][z[6][6]](_);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9635 ]] Strings: [AutoKit, Turned on , )..]
[9635]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function()if K.applying then
        return;
    elseif not(K.loaded)then
        return;
    end;
    local z=_.matchState;
    if z~=1 then
        if z~=nil then
            if z~=0 then
                Y();
            end;
        end;
        return;
    end;
    z=n();
    if next(z)==nil then
        return;
    end;
    local K={};
    for _,Y in y.owned,nil,nil do
        if not(z[Y.kit])then
            table.insert(K,_);
        end;
    end;
    for _,Y in K,nil,nil do
        _=y.owned[Y];
        y.handled[_.kit]=nil;
        Q(Y);
    end;
    K={};
    for _ in z,nil,nil do
        if not(y.handled[_])then
            local z=J(_);
            local Y=z and(f(z));
            if Y~=nil then
                y.handled[_]=true;
            end;
            if Y then
                if not(Y.enabled)then
                    if not(y.owned[z])then
                        if q(z,Y,_)then
                            table.insert(K,Y.label or z);
                        end;
                    end;
                end;
            end;
        end;
    end;
    if#K>0 then
        table.sort(K);
        t("AutoKit","Turned on "..table.concat(K,", ")..".",4);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9643 ]] 
[9643]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.hand and K.hand.tool;
    local K=z~=nil and _(z.Name);
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9648 ]] Strings: [GuiObject]
[9648]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if z:IsA("GuiObject")then
        K[4][K[6]][z]=true;
        _();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9659 ]] 
[9659]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n,y,Q,J,f)local q,t,T=K(n,y,Q);
    n=_[4][_[6]];
    return n:color(z,{label=f,hue=q,sat=t,value=T,opacity=0.45,sub=J,about=Y});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9662 ]] 
[9662]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    return function()local z=K.Highlight;
    if not(z)then
        return;
    end;
    local _=K.color();
    if z.FillColor~=_ then
        z.FillColor=_;
        z.OutlineColor=_;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9675 ]] Strings: [pistonware/autoqueuedodge.txt]
[9675]=function(z,z,z,z,z)return function(z,z)return function()if isfile("pistonware/autoqueuedodge.txt")then
    delfile("pistonware/autoqueuedodge.txt");
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9691 ]] Strings: [CanReplace]
[9691]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K(z*3);
    z=Y~=nil and Y:GetAttribute("CanReplace")~=true and not table.find(_,Y.Name);
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9692 ]] Strings: [PlacedByUserId]
[9692]=function(z,z,z,z,z,z,z)return function(z,z,K)return function(K,_)task.delay(0,function()if _:GetAttribute("PlacedByUserId")==z[1].UserId then
    table.insert(K,_);
end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9694 ]] Strings: [Frame]
[9694]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n)local y=z.AbsoluteSize;
    z=math.floor(math.min(y.Y*0.24-K*2,(y.X*0.94-K*2-_*(n-1))/n));
    z=math.max(z,6);
    Y.Size=UDim2.fromOffset(z*n+_*(n-1)+K*2,z+K*2);
    for K,K in Y:GetChildren()do
        if K:IsA("Frame")then
            K.Size=UDim2.fromOffset(z,z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9697 ]] 
[9697]=function(z,z,z,z,z,z,z)return function(z)return function(K)task.defer(function()z[1](K);
    task.wait();
    z[1](K);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9705 ]] Strings: [InventorySelectHotbarSlot]
[9705]=function(z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K.handHeld then
        if K.handHeld()then
            return false;
        end;
    end;
    if z and K.inventory.hotbarSlot~=z then
        _.Store:dispatch({type="InventorySelectHotbarSlot",slot=z});
        local _=os.clock()+0.15;
        while os.clock()<_ do
            local _=K.inventory;
            if _ then
                if _.hotbarSlot==z then
                    break;
                end;
            else
                break;
            end;
            task.wait();
        end;
        return true;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9725 ]] Strings: [ImageRectOffset]
[9725]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local Y=K.PlayerGui.TouchGui.TouchControlFrame.JumpButton;
    _[4][_[6]]:clean(Y:GetPropertyChangedSignal("ImageRectOffset"):Connect(function()z[3][4][z[3][6]]=Y.ImageRectOffset.X==146 and 1 or 0;
end));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9728 ]] 
[9728]=function(z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)K.PistonwareHideName=z;
    K.PistonwareHideThumb=Y;
    pcall(function()shared.PistonwareHideName=z;
    shared.PistonwareHideThumb=Y;
end);
_();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9729 ]] 
[9729]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)task.defer(K,z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9737 ]] 
[9737]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()K.loaded=false;
    K.generation=K.generation+1;
    local z=next;
    for _,_ in z,K.tasks,nil do
        pcall(task.cancel,_);
    end;
    table.clear(K.tasks);
    z=next;
    for _,_ in z,K.Connections,nil do
        if _.Disconnect then
            pcall(function()_:Disconnect();
        end);
        continue;
    end;
    if _.disconnect then
        pcall(function()_:disconnect();
    end);
end;
end;
table.clear(K.Connections);
z=next;
for _,_ in z,K.unloadfuncs,nil do
    pcall(_);
end;
K.resetAll();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9750 ]] Strings: [Accessory]
[9750]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z,_,Y,n)for y,Q in z:GetChildren()do
        if Q:IsA("Accessory")then
            if not(_[Q.Name])then
                if K.amount(Q)>0 then
                    if K.wanted(Q.Name)then
                        y=K.Backoff[Q.Name];
                        if Y then
                            return Q;
                        elseif y then
                            if n>=y.Until then
                                return Q;
                            end;
                        else
                            return Q;
                        end;
                    end;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9781 ]] 
[9781]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function(z)if K(z)then
        if _[4][_[6]]then
            task.cancel(_[4][_[6]]);
            _[4][_[6]]=nil;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9785 ]] Strings: [^%s+, ):gsub(]
[9785]=function(z,z,z,z,z)return function()return function(z)return(tostring(z):lower():gsub("^%s+",""):gsub("%s+$",""));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9816 ]] 
[9816]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=K[z];
    if _ then
        if os.clock()-_.time<0.2 then
            if _.root==z.RootPart then
                return _;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9839 ]] Strings: [Auto]
[9839]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z=="Auto";
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9864 ]] Strings: [BillboardGui, Frame, UIStroke, Border, UIListLayout]
[9864]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(_,Y)K();
    local n;
    local y=pcall(function()n=Instance.new("BillboardGui");
    n.Name=Y;
    local Y=n;
    Y.StudsOffsetWorldSpace=Vector3.new(0,3,0);
    Y=n;
    Y.Size=UDim2.fromOffset(36,36);
    n.AlwaysOnTop=true;
    n.ClipsDescendants=false;
    Y=n;
    Y.Adornee=z[2](_);
    Y=Instance.new("Frame");
    Y.Size=UDim2.fromScale(1,1);
    Y.BackgroundColor3=Color3.fromHSV(z[3][4][z[3][6]].hue,z[3][4][z[3][6]].sat,z[3][4][z[3][6]].value);
    Y.BackgroundTransparency=1-(z[4][4][z[4][6]].enabled and z[3][4][z[3][6]].opacity or 0);
    Y.BorderSizePixel=0;
    Y.Parent=n;
    local _=Instance.new("UIStroke");
    _.Name="Border";
    _.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
    _.Color=Color3.fromRGB(240,122,31);
    _.Thickness=1;
    _.Transparency=0.55;
    _.Enabled=z[4][4][z[4][6]].enabled;
    _.Parent=Y;
    local Q=Instance.new("UIListLayout");
    Q.FillDirection=Enum.FillDirection.Horizontal;
    Q.Padding=UDim.new(0,4);
    Q.VerticalAlignment=Enum.VerticalAlignment.Center;
    Q.HorizontalAlignment=Enum.HorizontalAlignment.Center;
    local J=false;
    Q:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()if J then
        return;
    end;
    J=true;
    task.defer(function()J=false;
    K();
    if not(n.Parent)then
        return;
    end;
    pcall(function()local K=n;
    K.Size=UDim2.fromOffset(math.max(Q.AbsoluteContentSize.X+4,36),36);
end);
end);
end);
Q.Parent=Y;
_=Instance.new("UICorner");
_.CornerRadius=UDim.new(0,6);
_.Parent=Y;
n.Parent=z[5];
end);
if y then
    return n;
end;
if n then
    pcall(function()n:Destroy();
end);
end;
return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9909 ]] 
[9909]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z,Y)if Y==K then
        _[4][_[6]]=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9912 ]] Strings: [Model, trainingRoomDummy, TrainingRoomDummy]
[9912]=function(z,z,z,z,z,z)return function(z)return function(z)return z:IsA("Model")and(z:HasTag("trainingRoomDummy")or z:GetAttribute("TrainingRoomDummy")~=nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9913 ]] 
[9913]=function(z,z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9919 ]] 
[9919]=function(z,K,K,K,K,K)return function(K,K)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    return function()local K=pairs;
    for Q,J in K(_)do
        J:Disconnect();
        _[Q]=nil;
    end;
    K=Y();
    if not K then
        return;
    end;
    local _,Y=ipairs,z[127](K:GetChildren());
    for K,K in _(z:Hc(Y))do
        n(K,y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9920 ]] 
[9920]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)K[z]=nil;
    local K=_[z];
    if not(K)then
        return;
    end;
    _[z]=nil;
    if Y[K]~=z then
        return;
    end;
    z=#Y;
    local n=Y[z];
    Y[z]=nil;
    if K~=z then
        if n~=nil then
            Y[K]=n;
            _[n]=K;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9935 ]] Strings: [table]
[9935]=function(z,z,z,z,z,z)return function(z,z,K)return function(K)local _;
    pcall(function()_=z[1].ProjectileMeta[K];
end);
local z=type(_)=="table"and _ or nil;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9940 ]] 
[9940]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z)local _=K.BlockController:getStore();
    return _:getBlockAt(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9948 ]] Strings: [standalone]
[9948]=function(z,z,z,z,z)return function(z,z,z,z,K)return function()local K={};
    K.held=function()local _=K.token~=nil and z[1].ItemOwner=="standalone"and z[1].ItemOwnerToken==K.token;
    return _;
end;
K.take=function()if K.held()then
    return true;
end;
local _,Y,n=pcall(z[1].claimItem,"standalone");
K.token=_ and Y and n or nil;
return K.token~=nil;
end;
K.renew=function()if not(K.held())then
    return false;
end;
local _,Y,n=pcall(z[1].claimItem,"standalone");
if _ then
    if Y then
        K.token=n;
    end;
end;
return K.held();
end;
K.release=function()local _=K.token;
K.token=nil;
if _~=nil then
    pcall(z[1].releaseItem,"standalone",_);
end;
end;
return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9952 ]] 
[9952]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=K[z];
    if n then
        n:Disconnect();
        K[z]=nil;
    end;
    _(z,Y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9954 ]] Strings: [studs, stud]
[9954]=function(z,z,z,z,z)return function(z,z)return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9960 ]] 
[9960]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)if z then
        if not(z.ammoItemTypes)then
            return nil;
        end;
    else
        return nil;
    end;
    local _=K.inventory.inventory;
    for K,Y in _.items,nil,nil do
        if Y then
            if table.find(z.ammoItemTypes,Y.itemType)then
                K=Y.count or Y.quantity or Y.amount;
                if K==nil then
                    return Y.itemType;
                elseif K>0 then
                    return Y.itemType;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9980 ]] 
[9980]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    return function(z,_)local Y=K(_,z);
    return not Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9986 ]] 
[9986]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z)if z.KeyCode==Enum.KeyCode.Space then
        if not(K:GetFocusedTextBox())then
            _[4][_[6]]=false;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9987 ]] Strings: [InventorySelectHotbarSlot]
[9987]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.inventory;
    if not(Y)then
        return;
    end;
    if K.handHeld then
        if K.handHeld()then
            return;
        end;
    end;
    local n;
    for y,Q in Y.hotbar or{},nil,nil do
        if Q.item and Q.item.itemType==z.itemType then
            n=y-1;
            break;
        end;
    end;
    if n then
        if Y.hotbarSlot==n then
            return;
        end;
    else
        return;
    end;
    _.Store:dispatch({type="InventorySelectHotbarSlot",slot=n});
    Y=os.clock()+0.15;
    while os.clock()<Y do
        z=K.inventory;
        if z then
            if z.hotbarSlot==n then
                break;
            end;
        else
            break;
        end;
        task.wait();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 9998 ]] 
[9998]=function(z,z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()if K.TouchEnabled then
        local z=_.ViewportSize;
        return z/2;
    end;
    return K:GetMouseLocation();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10005 ]] 
[10005]=function(z,z,z,z,z,z)return function(z,K)return function(K)local _,Y=pcall(function()local n=z[1].AbilityController.enabledAbilities;
    return n~=nil and n[K]~=nil;
end);
return _ and Y or false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10011 ]] 
[10011]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.audio_ui_volume=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10013 ]] 
[10013]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function()if K.TouchEnabled then
        local z=_.ViewportSize;
        return z/2;
    end;
    local z=K.GetMouseLocation;
    return z(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10014 ]] Strings: [stud, studs]
[10014]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10015 ]] 
[10015]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10022 ]] 
[10022]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function(z)local _,Y=z.Humanoid and z.Humanoid.HipHeight or 2,K.BlockController;
    local K=z.RootPart.Position-Vector3.new(0,_/2,0);
    return Y:getBlockPosition(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10024 ]] Strings: [IronCount, DiamondCount, EmeraldCount]
[10024]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[6];
    local Q=z[9];
    return function(J)if K[4][K[6]].enabled then
        if not(_[4][_[6]].enabled)then
            return;
        end;
    else
        return;
    end;
    local K,_=Y(J);
    if not K then
        local Y=n[J]or 0;
        if _ then
            if Y<3 then
                n[J]=Y+1;
                task.delay(1,function()if J.Parent then
                    z[5][4][z[5][6]](J);
                end;
            end);
        end;
    end;
    return;
end;
n[J]=nil;
local _,Y=y[K];
if _ then
    Y=_;
else
    Y={Nuggets={}};
    y[K]=Y;
    Y.AttrConn=K.AttributeChanged:Connect(function(_)if _=="IronCount"then
        z[7](K);
    elseif _=="DiamondCount"then
        z[7](K);
    elseif _=="EmeraldCount"then
        z[7](K);
    end;
end);
Y.Conn=K.AncestryChanged:Connect(function(_,_)if _ then
    return;
end;
if Y.Conn then
    Y.Conn:Disconnect();
end;
if Y.AttrConn then
    Y.AttrConn:Disconnect();
end;
y[K]=nil;
task.defer(z[8],K);
end);
end;
Y.Nuggets[J]=true;
Q(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10065 ]] Strings: [string, jade_hammer_jump, _jump]
[10065]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function(z)if type(z)~="string"then
        return nil;
    end;
    local _=K(z)and"jade_hammer_jump"or z.."_jump";
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10066 ]] Strings: [PLAYER_IN_TRANSIT, grapple]
[10066]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)if z.hookFunction=="PLAYER_IN_TRANSIT"then
        if K("grapple")then
            local z=_.character.RootPart.CFrame.LookVector;
            n[4][n[6]]=Y("grapple");
            y[4][y[6]]=os.clock()+2.5;
            J[4][J[6]]=Q(z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10069 ]] 
[10069]=function(z,z,z,z,z,z,z)return function()return function(z,K)if z then
    if K==nil then
        return;
    end;
else
    return;
end;
if z.value~=nil then
    if z.value==K then
        return;
    end;
end;
if z.set then
    z:set(K);
elseif z.value~=nil then
    z.value=K;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10102 ]] Strings: [DisguiseDisplayName]
[10102]=function(z,z,z,z,z,z,z)return function(z,z,K,K)return function(K,_)if K.Name==_ then
    return true;
elseif K.DisplayName==_ then
    return true;
elseif K:GetAttribute("DisguiseDisplayName")==_ then
    return true;
end;
local Y;
pcall(function()Y=z[1].StreamerModeController:getDisplayName(K);
end);
local z=Y==_;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10112 ]] Strings: [bed]
[10112]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y=pcall(function()return z.Position;
end);
if n then
    if not(y)then
        return;
    end;
else
    return;
end;
for z,n in K,nil,nil do
    if n.Name=="bed"then
        if(y-z.Position).Magnitude<=45 then
            if _(n,y)then
                Y(n);
            end;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10126 ]] 
[10126]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.streamer_mode=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10133 ]] 
[10133]=function(z,z,z,z,z,z,z)return function(z,z,z)return function(z,K,_)if _==0 then
    return 0,math.huge,math.huge;
end;
local Y=_>0 and 1 or-1;
return Y,((z+Y*0.5)*3-K)/_,3/math.abs(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10134 ]] Strings: [Speed]
[10134]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if not(K[4][K[6]].isCurrent(z))then
        return;
    end;
    _.start("Speed");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10138 ]] 
[10138]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()for z,z in K,nil,nil do
        z.ParticleEmitter.Texture=_[4][_[6]].value;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10170 ]] Strings: [Map]
[10170]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()K.origin=nil;
    K.direction=nil;
    K.block=nil;
    if not _ then
        return;
    end;
    local z=_.ViewportSize;
    local f=_:ViewportPointToRay(z.X/2,z.Y/2);
    K.origin,K.direction=f.Origin,f.Direction.Unit;
    z=workspace:FindFirstChild("Map");
    if not z then
        return;
    end;
    if z~=Y[4][Y[6]]then
        Y[4][Y[6]]=z;
        n.FilterDescendantsInstances={z};
    end;
    z=y.isAlive and y.character.RootPart;
    local _=Q[4][Q[6]].value+(z and(f.Origin-z.Position).Magnitude or 0);
    z=workspace:Raycast(f.Origin,f.Direction*_,n);
    K.block=z and J(z.Position-z.Normal*0.05)or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10227 ]] Strings: [PlayerKitImage, ImageLabel, ImageButton]
[10227]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K();
    if not(z)then
        return;
    end;
    for K,K in z:GetDescendants()do
        if K.Name=="PlayerKitImage"then
            if K:IsA("ImageLabel")then
                if not(K.Visible)then
                    K.Visible=true;
                end;
            elseif K:IsA("ImageButton")then
                if not(K.Visible)then
                    K.Visible=true;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10228 ]] Strings: [table, number]
[10228]=function(z,z,z,z,z)return function(z)return function(z)if type(z)~="table"then
    return nil;
elseif type(z.r)~="number"then
    return nil;
elseif type(z.g)~="number"then
    return nil;
elseif type(z.b)~="number"then
    return nil;
end;
return Color3.new(z.r,z.g,z.b);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10232 ]] Strings: [bounty-hunter-util, table, string]
[10232]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[4];
    local Y=z[5];
    return function(n)if K[4][K[6]]==nil then
        local y,Q=pcall(function()local J=z[2](z[3].TS.games.bedwars.kit.kits.bountyhunter["bounty-hunter-util"]);
        return J.BountyHunterUtil;
    end);
    local z=y and type(Q)=="table"and Q.UPGRADE_REWARD;
    K[4][K[6]]=type(z)=="table"and z or _;
end;
local z=K[4][K[6]][n];
n=type(z)=="table"and tonumber(z.amount);
if n then
    if type(z.itemType)~="string"then
        return nil;
    end;
else
    return nil;
end;
local K=z.itemType;
return Y(K,n);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10251 ]] Strings: [Team, NoBreak]
[10251]=function(z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    return function(_)local Y="Team"..(K:GetAttribute("Team")or-1).."NoBreak";
    if _:GetAttribute(Y)then
        return true;
    end;
    local Y,n=pcall(function()local y,Q=z[2].BlockController,{blockPosition=z[2].BlockController:getBlockPosition(_.Position)};
    return y:isBlockBreakable(Q,K);
end);
return Y and n==false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10310 ]] Strings: [range,  studs of a personal chest., Get within , ,dead=, ,open=]
[10310]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if z=="range"then
        local _=tostring(math.floor(K[4][K[6]].value)).." studs of a personal chest.";
        return"Get within ".._;
    end;
    return({nochest="There is no personal chest on this map.",dead="Not while you are dead.",open="Close the open chest first.",busy="ChestSteal is using a chest, try again.",rate="Storing too fast, try again in a moment.",empty="Nothing to store.",unavailable="Your personal chest is not available.",remote="Could not reach your personal chest.",observe="Your personal chest did not open.",error="Storing failed."})[z];
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10334 ]] 
[10334]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K[4][K[6]];
    K[4][K[6]]=nil;
    if z then
        pcall(function()z:SetStateEnabled(Enum.HumanoidStateType.Landed,true);
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10341 ]] 
[10341]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return"hz";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10409 ]] 
[10409]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(_)if K[_]then
        return;
    end;
    K[_]=true;
    task.delay(0.1,function()K[_]=nil;
    z[2](_);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10413 ]] Strings: [stud, studs]
[10413]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10418 ]] 
[10418]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z)for Y,Y in K,nil,nil do
        if _(z.Color,Y.Color)then
            return Y;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10434 ]] Strings: [,function(z)return, ..z:lower()..z:upper()..]
[10434]=function(z,z,z,z,z,z,z)return function(z)return function(z)return(z:gsub("%a",function(z)return"["..z:lower()..z:upper().."]";
end));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10435 ]] Strings: [MatchDraftPlayerCard, GuiObject]
[10435]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[3];
    return function(Y)if K[Y]then
        return;
    end;
    K[Y]=true;
    local function K(n)if n.Name=="MatchDraftPlayerCard"then
        if n:IsA("GuiObject")then
            task.delay(0.2,z[2],n);
        end;
    end;
end;
_[4][_[6]]:clean(Y.DescendantAdded:Connect(K));
for z,z in Y:GetDescendants()do
    K(z);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10440 ]] Strings: [Animator]
[10440]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z)local Y=z.Humanoid:WaitForChild("Animator",1);
    if Y then
        if K[4][K[6]].enabled then
            if not(_.modules.Fly and _.modules.Fly.enabled)then
                task.wait(0.5);
                K[4][K[6]]:flip(nil,true);
                K[4][K[6]]:flip(nil,true);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10445 ]] Strings: [stud, studs]
[10445]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10447 ]] Strings: [studs, stud]
[10447]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10456 ]] 
[10456]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)local _=workspace.CurrentCamera;
    if _ then
        if(_.CFrame.Position-z).Magnitude<=4 then
            return true;
        end;
    end;
    _=K.Character;
    local K=_ and _.PrimaryPart;
    return K~=nil and(K.Position+Vector3.new(0,2,0)-z).Magnitude<=4;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10468 ]] 
[10468]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z,_,Y)local n,y=os.clock(),#K;
    for Q=y,1,-1 do
        if n-K[Q].At>1 then
            table.remove(K,Q);
        end;
    end;
    table.insert(K,{Origin=z,At=n,Own=_,Cheater=Y});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10480 ]] 
[10480]=function(z,z,z,z,z)return function(z,z,z)return function(K)local _,Y=pcall(function()local n=z[1](K);
    local K=n and z[2].ItemMeta[n.Name];
    return K~=nil and K.sword~=nil;
end);
return _ and Y or false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10486 ]] 
[10486]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)K.mobile_sword_hold=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10493 ]] Strings: [wooden_, wood_, stone_, iron_, diamond_]
[10493]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[2];
    local _=z[5];
    local Y=z[7];
    return function()local n;
    local y,Q={},{"wooden_","wood_","stone_","iron_","diamond_","emerald_"};
    local function J(f)local q=f;
        for f,f in Q,nil,nil do
            if q:sub(1,#f)==f then
                q=q:sub(#f+1);
                break;
            end;
        end;
        return(q:gsub("_left$",""):gsub("_right$",""):gsub("_%d+$",""));
    end;
    local function Q(f,q)if#f~=#q then
        return#f<#q;
    end;
    return f<q;
end;
local function f(q)return(q:gsub("_"," "):gsub("%a+",function(q)return q:sub(1,1):upper()..q:sub(2);
end));
end;
local q={miner_pickaxe=true,spirit_dagger=true,spirit_dagger_left=true};
local function t(T)if q[T]then
    return false;
end;
local q=z[1].ItemMeta and z[1].ItemMeta[T];
if not(q)then
    return true;
end;
return q.armor==nil and q.block==nil;
end;
local q;
local T,L,X,l={axe=true,infernal_shield=true},{feather_bow="triple_shot",flower_bow="flower_bee",flower_crossbow="flower_bee",flower_headhunter="flower_bee",ice_sword="ice_queen",life_bow="nazar",life_crossbow="nazar",life_headhunter="nazar",light_sword="lumen"},{frost_crystal="frost_hammer_kit",frosty_hammer="frost_hammer_kit",noctium_blade="void_knight"},{tinker_weapon="chainsaw"};
local function a(Z)local m,M=z[1].BedwarsKitMeta,X[Z];
    local X=M and m and m[M];
    M=X and type(X.name)=="string"and X.name;
    if M then
        return M:gsub("%s*%b()","").." "..f(Z);
    end;
    M,X=nil;
    for S,u in m or{},nil,nil do
        if type(S)=="string"then
            if type(u)=="table"then
                if type(u.name)=="string"then
                    if Z==S or Z:sub(1,#S+1)==S.."_"then
                        if M then
                            if#S>#M then
                                local I=u.name;
                                M,X=S,I;
                            else
                            end;
                        else
                            local I=u.name;
                            M,X=S,I;
                        end;
                    else
                    end;
                else
                end;
            else
            end;
        else
        end;
    end;
    if not M then
        local S=L[Z];
        local L=S and m and m[S];
        S=L and type(L.name)=="string"and L.name;
        if S then
            L=Z:match("^[^_]+_(.+)$");
            return S:gsub("%s*%b()","")..(L and" "..f(L)or"");
        end;
    end;
    if not M then
        if not(T[Z])then
            local T=q(Z);
            local L=T and m and m[T];
            T=L and type(L.name)=="string"and L.name;
            if T then
                T=T:gsub("%s*%b()","");
                L=f(Z);
                return L==T and T or T.." "..L;
            end;
        end;
    end;
    if not M then
        return f(Z);
    end;
    X=X:gsub("%s*%b()","");
    m=Z==M and Z or Z:sub(#M+2);
    M=f(l[Z]or m);
    if M==X then
        return X;
    end;
    return X.." "..M;
end;
local T,L,X,l,Z={},{},{},{};
local function m()Z={};
    local M=z[1].BedwarsKitMeta or{};
    for S,u in M,nil,nil do
        if type(S)=="string"and type(u)=="table"and type(u.kitItems)=="table"then
            local M=u.kitItems;
            for u,I in M,nil,nil do
                u=type(I)=="table"and I.itemType;
                if type(u)=="string"then
                    if Z[u]==nil then
                        Z[u]=S;
                    end;
                end;
            end;
        end;
    end;
end;
q=function(q)if not(Z)then
    m();
end;
local m=l[q]or{};
for M,M in m,nil,nil do
    q=Z[M];
    if q then
        return q;
    end;
end;
return nil;
end;
local q={};
local function Z(m)local M=q[m];
    if M==nil then
        M=a(m);
        q[m]=M;
    else
    end;
    return M;
end;
local function q()local a,m=z[1].ItemSkinType,z[1].getItemSkinMeta;
    if a then
        if not(m)then
            return false;
        end;
    else
        return false;
    end;
    for M,S in a,nil,nil do
        local a,u=pcall(m,S);
        M=a and u and u.itemType;
        if M then
            if u.skinTag then
                if t(M)then
                    local t,a=J(M),tostring(u.skinTag);
                    T[t]=T[t]or{};
                    T[t][a]=T[t][a]or{};
                    T[t][a][M]=S;
                    l[t]=l[t]or{};
                    if not(table.find(l[t],M))then
                        table.insert(l[t],M);
                    end;
                    L[t]=L[t]or{};
                    L[t][f(a)]=a;
                end;
            end;
        end;
    end;
    for f in T,nil,nil do
        table.insert(X,f);
        table.sort(l[f]);
    end;
    table.sort(X,function(f,t)return Q(Z(f),Z(t));
end);
return#X>0;
end;
local function f(t)if not(n.enabled)then
    return nil;
end;
local l=J(t);
local a=y[l];
if not(a)then
    return nil;
end;
local m=L[l];
local M=m and m[a.value];
if not(M)then
    return nil;
end;
m=T[l];
m=m and m[M];
return m and m[t];
end;
local t,T,l={},setmetatable,{__mode="k"};
local a=T({},l);
local function m(M,S)if S then
    local u=M:GetAttribute("ItemSkin");
    if a[M]==nil then
        a[M]=(u==nil or u=="")and t or u;
    end;
    if u~=S then
        M:SetAttribute("ItemSkin",S);
    end;
elseif a[M]~=nil then
    local S=a[M];
    M:SetAttribute("ItemSkin",S~=t and S or nil);
    a[M]=nil;
end;
end;
local function M(S,u)if typeof(S)~="Instance"then
    return;
end;
pcall(m,S,u);
end;
local function m()for S,u in a,nil,nil do
    pcall(function()S:SetAttribute("ItemSkin",u~=t and u or nil);
end);
a[S]=nil;
end;
end;
local t,a,S,u,I=K:WaitForChild("Items"),{},{},setmetatable,{__mode="k"};
local O=u({},I);
local function I(d,e)for s,P in d:GetChildren()do
    if P:IsA("Attachment")then
        if P.Name==e then
            return P;
        end;
    end;
    if not(P:IsA("Accoutrement"))then
        if not(P:IsA("Tool"))then
            s=I(P,e);
            if s then
                return s;
            end;
        end;
    end;
end;
return nil;
end;
local function d(e,s)if not(e)then
    return;
end;
for P,P in e:GetDescendants()do
    if P:IsA("Weld")then
        if P.Name=="AccessoryAttachment"then
            if P.Part0==s then
                P:Destroy();
            elseif P.Part1==s then
                P:Destroy();
            end;
        end;
    end;
end;
for P,v in s:GetChildren()do
    if v:IsA("Attachment")then
        P=I(e,v.Name);
        if P then
            local I=Instance.new("Weld");
            I.Name="AccessoryAttachment";
            I.Part0=P.Parent;
            I.Part1=v.Parent;
            I.C0=P.CFrame;
            I.C1=v.CFrame;
            I.Parent=P.Parent;
            break;
        end;
    end;
end;
end;
local function I(e)for s,P in e:GetDescendants()do
    if P:IsA("WeldConstraint")then
        local v,U=P.Part0,P.Part1;
        if v then
            if U then
                local w,W;
                if U==e then
                    w,W=U,v;
                else
                    w,W=v,U;
                end;
                s=Instance.new("Weld");
                s.Name=P.Name;
                s.Part0=w;
                s.Part1=W;
                s.C0=w.CFrame:ToObjectSpace(W.CFrame);
                s.Parent=w;
            end;
        end;
        P:Destroy();
    end;
end;
end;
local function e(s,P,v,U,w)if s then
    if s.Parent then
        if not(P)then
            return;
        end;
    else
        return;
    end;
else
    return;
end;
if O[s]==U then
    if s:FindFirstChild("Handle")then
        return;
    end;
end;
if a[s]then
    local W=s:FindFirstChild("Handle");
    if W then
        W:Destroy();
    end;
else
    local W=s:FindFirstChild("Handle");
    if not(W)then
        return;
    end;
    a[s]={handle=W,container=v};
    W.Parent=nil;
end;
local W=P:Clone();
W.Name="Handle";
I(W);
if w then
    if w~=1 then
        P=Instance.new("Model");
        W.Parent=P;
        P.PrimaryPart=W;
        pcall(P.ScaleTo,P,w);
        W.Parent=nil;
        P:Destroy();
    end;
end;
for P,P in W:GetDescendants()do
    if P:IsA("BasePart")then
        P.CanCollide=false;
        if w then
            pcall(z[1].QueryUtil.setQueryIgnored,z[1].QueryUtil,P,true);
        end;
    end;
end;
W.CanCollide=false;
if w then
    pcall(z[1].QueryUtil.setQueryIgnored,z[1].QueryUtil,W,true);
end;
W.Parent=s;
d(v,W);
O[s]=U;
end;
local function s(P)local v=a[P];
    O[P]=nil;
    if not(v)then
        return;
    end;
    a[P]=nil;
    if not(P.Parent)then
        return;
    end;
    local U=P:FindFirstChild("Handle");
    if U then
        U:Destroy();
    end;
    v.handle.Parent=P;
    d(v.container,v.handle);
end;
local function d()local P={};
    for v in a,nil,nil do
        table.insert(P,v);
    end;
    for v,v in P,nil,nil do
        pcall(s,v);
    end;
end;
local function P(v)if v then
    if not(v.Parent)then
        return;
    end;
else
    return;
end;
local U=f(v.Name);
if not(U)then
    s(v);
    return;
end;
local s=t:FindFirstChild(U);
local w=s and(s:FindFirstChild("Handle"));
if not(w)then
    return;
end;
e(v,w,v.Parent,U);
end;
local function s(v)return(v:IsA("Accessory")or v:IsA("Tool"))and y[J(v.Name)]~=nil;
end;
local function v()local U=z[3].Character;
    if not(U)then
        return;
    end;
    for w,w in U:GetChildren()do
        if a[w]then
            task.spawn(P,w);
        elseif s(w)then
            task.spawn(P,w);
        end;
    end;
end;
local function U()for w,W in S,nil,nil do
    if typeof(W)=="RBXScriptConnection"then
        W:Disconnect();
    end;
    S[w]=nil;
end;
end;
local function w(W)U();
    if not(W)then
        return;
    end;
    S.added=W.ChildAdded:Connect(function(F)if s(F)then
        task.defer(P,F);
    end;
end);
S.removed=W.ChildRemoved:Connect(function(S)a[S]=nil;
O[S]=nil;
end);
end;
local S={};
local function s(P)if P then
    if not(P.Parent)then
        return;
    end;
else
    return;
end;
local W=f(P.Name);
if not(W)then
    return;
end;
if P:GetAttribute("ItemSkin")~=W then
    local F=t:FindFirstChild(W);
    local t=F and(F:FindFirstChild("Handle"));
    if t then
        F=z[1].ItemMeta and z[1].ItemMeta[P.Name];
        local D=F and F.firstPerson;
        e(P,t,P.Parent,W,D and D.scale or 1);
    end;
    return;
end;
W=P:FindFirstChild("Handle");
if W then
    I(W);
end;
end;
local function t()for I,e in S,nil,nil do
    if typeof(e)=="RBXScriptConnection"then
        e:Disconnect();
    end;
    S[I]=nil;
end;
end;
local function I()local e=workspace:FindFirstChild("Camera");
    local P=e and(e:FindFirstChild("Viewmodel"));
    if P then
        if S.added then
            if S.model==P then
                return;
            end;
        end;
    else
        return;
    end;
    t();
    S.model=P;
    S.added=P.ChildAdded:Connect(function(e)if e:IsA("Accessory")then
        task.defer(s,e);
    end;
end);
S.removed=P.ChildRemoved:Connect(function(S)a[S]=nil;
O[S]=nil;
end);
for a,a in P:GetChildren()do
    if a:IsA("Accessory")then
        task.spawn(s,a);
    end;
end;
end;
local a;
local function S(O)local e=O and O.Inventory;
    local s=e and e.observedInventory;
    local P=s and s.inventory;
    local W=P and P.hand;
    local F=W and W.itemType and f(W.itemType);
    if F then
        if W.itemSkin==F then
            return O;
        end;
    else
        return O;
    end;
    local D=table.clone(W);
    D.itemSkin=F;
    F=table.clone(P);
    F.hand=D;
    P=table.clone(s);
    P.inventory=F;
    W=table.clone(e);
    W.observedInventory=P;
    P=table.clone(O);
    P.Inventory=W;
    return P;
end;
local function O()if a then
    return;
end;
local e=z[1].InventoryViewmodelController;
local s=e and e.handleStore;
if type(s)~="function"then
    return;
end;
a={controller=e,own=rawget(e,"handleStore")};
e.handleStore=function(e,P,...)local W,F=pcall(S,P);
return s(e,W and F or P,...);
end;
end;
local function S()local e=a;
    a=nil;
    if e then
        e.controller.handleStore=e.own;
    end;
end;
local function a()local e=z[4].inventory and z[4].inventory.inventory;
    local s=e and e.hand;
    return s and s.itemType and J(s.itemType)or nil;
end;
local function J()local e=a();
    local s=e and y[e];
    return s~=nil and s.value~="None";
end;
local function e()pcall(function()z[1].InventoryViewmodelController:handleStore(z[1].Store:getState());
end);
end;
local s;
local P,W,F={},{};
local function D()local j=K:FindFirstChild("Assets");
    local K=j and(j:FindFirstChild("Misc"));
    return K and(K:FindFirstChild("Kaida"));
end;
local function K()local j=D();
    local D=j and(j:FindFirstChild("Summoner_DragonClaw"));
    if not(D)then
        return false;
    end;
    P.Default=D;
    j=z[1].BedwarsKitSkinMeta or{};
    for D,c in j,nil,nil do
        if type(c)=="table"then
            if type(c.kaida)=="table"then
                local j,i=c.kaida.dragon_claw,type(c.name)=="string"and c.name or D;
                if typeof(j)=="Instance"then
                    if P[i]==nil then
                        P[i]=j;
                    end;
                end;
            end;
        end;
    end;
    for D in P,nil,nil do
        table.insert(W,D);
    end;
    table.sort(W);
    return#W>1;
end;
local function D()local j=z[3].Character;
    local c=j and(j:GetAttribute("KitSkin"));
    if type(c)=="string"then
        if c~=""then
            return c;
        end;
    end;
    j=z[1].BedwarsKitSkin;
    return j and j.DEFAULT;
end;
local function j()local c=F;
    F=nil;
    if not(c)then
        return;
    end;
    if c.hadTable then
        c.entry.kaida.dragon_claw=c.was;
    else
        c.entry.kaida=nil;
    end;
end;
local function c()local i=n.enabled and s and P[s.value];
    j();
    if not(i)then
        return;
    end;
    local P,o=z[1].BedwarsKitSkinMeta,D();
    local D=o and P and P[o];
    if type(D)~="table"then
        return;
    end;
    o=type(D.kaida)=="table";
    F={entry=D,hadTable=o,was=o and D.kaida.dragon_claw or nil};
    if not o then
        D.kaida={};
    end;
    D.kaida.dragon_claw=i;
end;
local function P()local F=z[4].inventory and z[4].inventory.inventory;
    if not(F)then
        return;
    end;
    for D,D in F.items or{},nil,nil do
        if D.itemType then
            M(D.tool,f(D.itemType));
        end;
    end;
    local D=F.hand;
    if D then
        if D.itemType then
            M(D.tool,f(D.itemType));
        end;
    end;
    if n.enabled then
        pcall(I);
    end;
    pcall(v);
    pcall(c);
end;
u=q();
n=_.categories.Render:module("SkinChanger",{toggled=function(_)if _ then
    O();
    n:clean(S);
    n:clean(z[6].InventoryChanged.Event:Connect(P));
    local function _(f)w(f);
        P();
    end;
    n:clean(z[3].CharacterAdded:Connect(_));
    w(z[3].Character);
    n:clean(U);
    n:clean(t);
else
    S();
    U();
    t();
    m();
    d();
    j();
end;
P();
if J()then
    e();
end;
end,about="Puts the item skins you pick on the items you hold.\10One choice per item type, plus the Kaida claw. Sounds included."});
q,T=K(),{};
if u then
    for z,z in X,nil,nil do
        table.insert(T,{label=Z(z),group=z});
    end;
end;
if q then
    table.insert(T,{label="Kaida Claw",claw=true});
end;
table.sort(T,function(z,K)return Q(z.label,K.label);
end);
for z,z in T,nil,nil do
    if z.claw then
        table.insert(W,1,"None");
        s=n:dropdown(z.label,{choices=W,default="None",visible=not Y.skip("SkinChanger/Kaida Claw"),changed=function()c();
    end});
else
    l={};
    for K in L[z.group],nil,nil do
        table.insert(l,K);
    end;
    table.sort(l);
    table.insert(l,1,"None");
    y[z.group]=n:dropdown(z.label,{choices=l,default="None",changed=function()if n.enabled then
        P();
        if a()==z.group then
            e();
        end;
    end;
end});
end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10518 ]] Strings: [trapper_trap, PlacedByUserId, SnapTrapState]
[10518]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z={};
    for n,n in K:GetTagged("trapper_trap")do
        if n:GetAttribute("PlacedByUserId")==_.UserId then
            if not(Y[n:GetAttribute("SnapTrapState")])then
                table.insert(z,n);
            end;
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10529 ]] Strings: [Switch back delay]
[10529]=function(z,K,K,K,K)return function(K)local _=K[1];
    local Y=K[2];
    return function(K,n)local y=Y.PistonwareMigrateDefaults;
    local Y=z[127](y(K,n,{["Switch back delay"]={{0.3,0.05},0.08}}));
    return _(K,z:Hc(Y));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10572 ]] Strings: [BasePart, Decal]
[10572]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)for _,_ in z:GetDescendants()do
        if _:IsA("BasePart")or _:IsA("Decal")then
            if K[_]==nil then
                K[_]=_.LocalTransparencyModifier;
            end;
        end;
    end;
    for z in K,nil,nil do
        if z.Parent then
            z.LocalTransparencyModifier=1;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10595 ]] Strings: [summoner, PlayingAsKits, string, )do if K==]
[10595]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if K.hasKit("summoner")then
        return true;
    end;
    local z=_:GetAttribute("PlayingAsKits");
    if type(z)=="string"then
        for K,K in string.split(z,",")do
            if K=="summoner"then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10605 ]] Strings: [Team]
[10605]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z,f)table.clear(K);
    local q,t=_:GetAttribute("Team"),Y.List;
    for _,Y in t,nil,nil do
        if not(n(Y,q))then
            continue;
        end;
        _=y(Y);
        if _ then
            if _>=100 then
                continue;
            end;
        else
            continue;
        end;
        if f<(Q[Y.Character]or 0)then
            continue;
        end;
        if(Y.RootPart.Position-z).Magnitude<=J[4][J[6]].value then
            table.insert(K,Y.Character);
        end;
    end;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10606 ]] 
[10606]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)K(_[4][_[6]].enabled and z);
    Y();
    n();
    y[4][y[6]]();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10642 ]] 
[10642]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()K:Disconnect();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10649 ]] 
[10649]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y)local Q,J=y-z,K.BlockController:getBlockPosition(z);
    if _(J,nil,1)then
        return false;
    end;
    local K,f,q=J.X,J.Y,J.Z;
    local J,t,T=Y(K,z.X,Q.X);
    local L,X,l=Y(f,z.Y,Q.Y);
    local a,Z,m=Y(q,z.Z,Q.Z);
    for z=1,40,1 do
        if t>1 then
            if X>1 then
                if Z>1 then
                    break;
                end;
            end;
        end;
        if t<=X and t<=Z then
            K+=J;
            t=t+T;
        else
            if X<=Z then
                f+=L;
                X=X+l;
            else
                q+=a;
                Z=Z+m;
            end;
        end;
        y=Vector3.new(K,f,q);
        if n(y)then
            z=_(y,nil,2);
            return not z;
        end;
        if _(y,nil,1)then
            return false;
        end;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10670 ]] Strings: [Head, face, Decal]
[10670]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
        K[4][K[6]]=nil;
    end;
    local z=pairs;
    for K,y in z(_)do
        if K.Parent then
            K.Transparency=y;
        end;
    end;
    z=Y();
    if z then
        local K=ipairs;
        for Y,y in K(n)do
            Y=z:FindFirstChild(y);
            if Y then
                Y.Transparency=0;
            end;
        end;
        K=z:FindFirstChild("Head");
        if K then
            local z=K:FindFirstChild("face");
            if z then
                if z:IsA("Decal")then
                    z.Transparency=0;
                end;
            end;
        end;
    end;
    table.clear(_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10700 ]] Strings: [Switch Projectile, Switch Back]
[10700]=function(z,K,K,K,K)return function(K,_)local _=K[1];
    local Y=K[2];
    return function(K,n)local y=Y.PistonwareMigrateDefaults;
    local Y=z[127](y(K,n,{["Switch Projectile"]={{0.03,0.05},0.08},["Switch Back"]={{0.03,0.05},0.08}}));
    return _(K,z:Hc(Y));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10710 ]] 
[10710]=function(z,z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10713 ]] 
[10713]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K:GetPivot();
    return z.Position;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10717 ]] 
[10717]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()local z=K.ProjectileMeta and K.ProjectileMeta.fireball;
    return z and tonumber(z.launchVelocity)or 68;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10738 ]] 
[10738]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()table.clear(K);
    table.clear(_);
    table.clear(Y);
    table.clear(n);
    y[4][y[6]],Q[4][Q[6]]=nil,nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10741 ]] 
[10741]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10750 ]] Strings: [string, ^summoner_claw]
[10750]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K.inventory and K.inventory.inventory;
    for K,K in z and z.items or{},nil,nil do
        if K then
            if type(K.itemType)=="string"then
                if K.itemType:find("^summoner_claw")then
                    if K.tool then
                        return K;
                    end;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10764 ]] Strings: [mage_spell_base, MageElementIndex, number, mage_spell_]
[10764]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.ItemMeta and K.ItemMeta.mage_spellbook;
    local K=z and z.multiProjectileSource;
    if not(K)then
        return"mage_spell_base",nil;
    end;
    z=_:GetAttribute("MageElementIndex");
    if type(z)=="number"then
        local _=Y[z+1];
        local z=_ and"mage_spell_".._;
        if z then
            if K[z]then
                return z,K[z];
            end;
        end;
    end;
    return"mage_spell_base",K.mage_spell_base;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10769 ]] 
[10769]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z)if not(z.Archivable)then
        return nil;
    end;
    local _,Y=pcall(function()return z:Clone();
end);
local z=_ and Y and K(Y)or nil;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10771 ]] 
[10771]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=z and z.Character;
    z=_ and K[_];
    if z then
        z:Disconnect();
        K[_]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10777 ]] 
[10777]=function(z,z,z,z,z)return function(z)return function(z,K,_)if not z then
    return"";
end;
local Y=K and K[z];
if Y~=nil then
    return Y;
end;
K,Y=pcall(function()return z[_];
end);
return K and Y or"";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10790 ]] 
[10790]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if not(K[4][K[6]].enabled)then
        return;
    end;
    if z then
        _.load();
    else
        _.unload();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10794 ]] Strings: [MeshPart, OriginalSize, SpecialMesh, OriginalScale]
[10794]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z,_)K(z);
    if z:IsA("MeshPart")then
        local K=z:GetAttribute("OriginalSize");
        if K then
            z.Size=Vector3.new(K.X+_,K.Y+_,K.Z+_);
        end;
    elseif z:IsA("SpecialMesh")then
        local K=z:GetAttribute("OriginalScale");
        if K then
            z.Scale=Vector3.new(K.X+_,K.Y+_,K.Z+_);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10813 ]] 
[10813]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()K(0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10820 ]] 
[10820]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)K.__isBlacklistHeld=_(z.Value);
    local function n(y)K.__isBlacklistHeld=_(y);
    end;
    local K=z.Changed:Connect(n);
    table.insert(Y,K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10827 ]] 
[10827]=function(z,z,z,z,z,z)return function(z)return function()return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10828 ]] 
[10828]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if not(K.isAlive)then
        return nil;
    end;
    local z=K.character.RootPart.Position;
    for K,K in _.shop,nil,nil do
        if K.Shop then
            if K.Id then
                local _,Y=pcall(function()return K.RootPart:GetPivot().Position;
            end);
            if _ then
                if(Y-z).Magnitude<=7.5 then
                    return K.Id;
                end;
            end;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10829 ]] 
[10829]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.global_chat_system_messages=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10830 ]] Strings: [studs/s]
[10830]=function(z,z,z,z,z)return function(z,z)return function()return"studs/s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10850 ]] Strings: [stud, studs]
[10850]=function(z,z,z,z,z)return function(z,z,z)return function(z)return z<=0 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10857 ]] 
[10857]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=false;
    for Y,n in K,nil,nil do
        Y=tonumber(z:GetAttribute(n.Attribute));
        if Y then
            if Y>0 then
                return n,true;
            end;
            _=true;
        else
        end;
    end;
    return nil,_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10870 ]] Strings: [@flamework]
[10870]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()if not K[4][K[6]]then
        pcall(function()K[4][K[6]]=z[2](z[3].rbxts_include.node_modules["@flamework"].core.out).Flamework;
    end);
end;
local z=K[4][K[6]];
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10872 ]] Strings: [number]
[10872]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K.Knit and K.Knit.Controllers and K.Knit.Controllers.OasisVesselController;
    local K=z and z.vesselMode;
    return type(K)=="number"and K or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10874 ]] 
[10874]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()K.GetNetworkPing=_.GetNetworkPing;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10882 ]] 
[10882]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=Vector3.new(z.X,0,z.Z);
    if _.Magnitude<0.001 then
        z=K.isAlive and K.character.RootPart.CFrame.LookVector;
        _=z and Vector3.new(z.X,0,z.Z)or Vector3.new(0,0,-1);
    else
    end;
    return _.Unit;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10889 ]] Strings: [table]
[10889]=function(z,z,z,z,z,z,z)return function(z,K,K)return function(K,_)local Y=_.module;
    local n=Y.save;
    local function y(Q,...)local J=n(Q,...);
        if z[1].owned[K]==_ then
            if type(J)=="table"then
                z[2]:savedOn(J,false);
            end;
        end;
        return J;
    end;
    _.under=n;
    _.ownSave=y;
    Y.save=y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10892 ]] Strings: [%dms]
[10892]=function(z,K,K,K,K,K,K)return function(K,K,_,_)local _=K[1];
    return function()local K,Y=string.format,z[127](_());
    return K("%dms",z:Hc(Y));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10900 ]] 
[10900]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if K[_]==Y then
        K[_]=nil;
    end;
    n[4][n[6]][_]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10902 ]] 
[10902]=function(z,z,z,z,z)return function()return function(z,K,_)for Y,n in z,nil,nil do
    if n.object==K then
        if n.tag==_ then
            table.remove(z,Y);
            break;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10917 ]] Strings: [stud, studs]
[10917]=function(z,z,z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10922 ]] 
[10922]=function(z,z,z,z,z,z)return function(z,K)return function(K)local _,Y=pcall(function()local n=z[1].AbilityController;
    return n:canUseAbility(K,{disableBlockedAbilityAlert=true});
end);
return _ and Y==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10927 ]] 
[10927]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value.."x"or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10931 ]] 
[10931]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)if K[4][K[6]]then
        if z~=_[4][_[6]]then
            return false;
        end;
    end;
    return Y(z,n);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10932 ]] Strings: [BasePart]
[10932]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(_)for Y,Y in K,nil,nil do
        if _:GetAttribute(Y)~=nil then
            return true;
        end;
    end;
    local K,Y=pcall(function()local n=_:IsA("BasePart")and _.Position or _:GetPivot().Position;
    local y=z[2](n);
    return y==_;
end);
return K and Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10943 ]] 
[10943]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(_,Y)if K[_]then
        return;
    end;
    local n={};
    K[_]=n;
    n[1]=_.MouseButton1Down:Connect(function()z[2][4][z[2][6]]=true;
    z[3](Y);
end);
n[2]=_.MouseButton1Up:Connect(function()z[2][4][z[2][6]]=false;
end);
n[3]=_.MouseLeave:Connect(function()z[2][4][z[2][6]]=false;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10956 ]] 
[10956]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()if K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=true;
    task.spawn(function()while true do
        local _=#z[2];
        if not(_>0)then
            break;
        end;
        if not(z[3][4][z[3][6]].enabled)then
            for _,_ in z[2],nil,nil do
                if z[4][_.UserId]==false then
                    z[4][_.UserId]=nil;
                end;
            end;
            table.clear(z[2]);
            break;
        end;
        z[5](table.remove(z[2],1));
        task.wait(0.35);
    end;
    K[4][K[6]]=false;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10959 ]] Strings: [string, ;if _~=, then K=Instance.new(]
[10959]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z,J,f)if f then
        if K[J]then
            local K=_(J,f);
            local _=K and K:Clone()or n(f);
            return Y(z,_,true);
        end;
    end;
    local K,_=pcall(y.getIcon,{itemType=J},true);
    _=K and type(_)=="string"and _ or"";
    if _~=""then
        K=Instance.new("ImageLabel");
        K.Size=UDim2.fromOffset(32,32);
        K.BackgroundTransparency=1;
        K.Image=_;
        K.Parent=z.Frame;
        return K;
    end;
    f=Q(J);
    J=f and f:Clone()or nil;
    return Y(z,J,false);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10963 ]] Strings: [HandInvItem]
[10963]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(Y)if not Y then
        return;
    end;
    local n=Y:FindFirstChild("HandInvItem");
    if n then
        K(n);
    else
        _(function()n=Y:WaitForChild("HandInvItem",3);
        if n then
            if z[3][4][z[3][6]].enabled then
                if Y==z[4].Character then
                    K(n);
                end;
            end;
        end;
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10970 ]] 
[10970]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_)local Y,n=K.used(K.si,z),K.used(K.ph,z);
    if Y+_<=K.si.cap then
        if n+1<=K.ph.cap then
            return true;
        end;
    end;
    if shared.PistonwareDeveloper then
        if z>=K.heldLogAt then
            K.heldLogAt=z+2;
            print(string.format("[pistonware projaura] auto: held by the pacer (SetInvItem %d + %d of %d, ProjectileHit %d + 1 of %d, last %d s)",Y,_,K.si.cap,n,K.ph.cap,K.WINDOW));
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10975 ]] 
[10975]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function()if not(K.desc)then
        K.desc=workspace.DescendantAdded:Connect(_);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 10989 ]] 
[10989]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_)local Y=_-K.WINDOW;
    z.seenHead=K.trim(z.seen,z.seenHead,Y);
    z.ownHead=K.trim(z.own,z.ownHead,Y);
    return math.max(#z.seen-z.seenHead+1,#z.own-z.ownHead+1);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11001 ]] 
[11001]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11009 ]] 
[11009]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()K.Parent=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11020 ]] 
[11020]=function(z,z,z,z,z,z,z,z)return function(z,z)return function(z)return z.updateInterval and math.clamp(z.updateInterval*0.5,0,0.06)or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11024 ]] Strings: [stud, studs]
[11024]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11035 ]] Strings: [On near, vesta, RootPart]
[11035]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function(z)if z then
        K[4][K[6]]=0;
        _[4][_[6]]:clean(Y.EntityDamageEvent.Event:Connect(n));
        while true do
            if y[4][y[6]].value=="On near"then
                if Q.isAlive then
                    if J.hasKit("vesta")then
                        if Q.EntityPosition({Range=f[4][f[6]].value,Part="RootPart",Players=q[4][q[6]].players.enabled,NPCs=q[4][q[6]].npcs.enabled,Wallcheck=q[4][q[6]].walls.enabled or nil,Milo=t(q[4][q[6]])})then
                            T();
                        end;
                    end;
                end;
            end;
            task.wait(0.1);
            local z=_[4][_[6]].enabled;
            if not z then
                break;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11040 ]] 
[11040]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()K:Refresh();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11042 ]] 
[11042]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.BedwarsKitMeta[_(z)]or K.BedwarsKitMeta.none;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11050 ]] 
[11050]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K then
        K.Visible=z and _[4][_[6]].enabled and not Y();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11058 ]] 
[11058]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()K();
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11068 ]] Strings: [RootPart]
[11068]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)local Q,J=_[4][_[6]],{Origin=z,Range=Y[4][Y[6]].value,Part="RootPart",Players=n[4][n[6]].players.enabled,NPCs=n[4][n[6]].npcs.enabled,Wallcheck=n[4][n[6]].walls.enabled or nil,Milo=y(n[4][n[6]])};
    return K(Q,J);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11094 ]] 
[11094]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()K:Release(_[4][_[6]]);
    if Y.AutoWinScaffoldBridge==K then
        Y.AutoWinScaffoldBridge=nil;
    end;
    if Y.PistonwareScaffoldPulse==n then
        Y.PistonwareScaffoldPulse=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11096 ]] Strings: [TextLabel]
[11096]=function(z,z,z,z,z)return function(z)return function(K,_)local function Y(n)if not(n:IsA("TextLabel"))then
    return;
end;
if z[1][n]==nil then
    z[1][n]=n.Text;
end;
local y=z[2](z[1][n],_);
if n.Text~=y then
    n.Text=y;
end;
end;
Y(K);
for z,z in K:GetDescendants()do
    Y(z);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11130 ]] Strings: [ice_queen]
[11130]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.isAlive and _.hasKit("ice_queen")and Y.AbilityController:canUseAbility("ice_queen",{disableBlockedAbilityAlert=true});
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11144 ]] 
[11144]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if not K[4][K[6]]then
        return;
    end;
    if os.clock()>_[4][_[6]]then
        K[4][K[6]]=nil;
        return;
    elseif K[4][K[6]].Parent==nil then
        K[4][K[6]]=nil;
        return;
    end;
    local z=Y.FortunaController;
    if z then
        z.target=K[4][K[6]];
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11164 ]] 
[11164]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z)local _=K.inventory and K.inventory.hotbar or{};
    for K,Y in _,nil,nil do
        if Y.item then
            if Y.item.tool==z then
                return K-1;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11181 ]] 
[11181]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)K[4][K[6]]=z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11192 ]] Strings: [pistonware/regionlock.txt, table, %s+]
[11192]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[3];
    local Y=z[4];
    local n=z[5];
    local y=z[6];
    local Q=z[7];
    local J=z[8];
    local f=z[9];
    return function()while true do
        task.wait(0.5);
        local q=K.loaded==true or K.loaded==nil;
        if q then
            break;
        end;
    end;
    if K.loaded==nil then
        return;
    end;
    local q;
    pcall(function()if isfile("pistonware/regionlock.txt")then
        q=z[2]:JSONDecode(readfile("pistonware/regionlock.txt"));
    end;
end);
if type(q)=="table"then
    if type(q.regions)=="table"then
        local z,t={},q.regions;
        for T,L in t,nil,nil do
            T=tostring(L):gsub("%s+",""):upper();
            z[_[T]or T]=true;
        end;
        for _,t in Y,nil,nil do
            if z[_]==true~=t.enabled then
                t:flip();
            end;
        end;
    end;
    if tonumber(q.timeout)then
        n[4][n[6]]:set(tonumber(q.timeout));
    end;
    if q.requeue==true~=y[4][y[6]].enabled then
        y[4][y[6]]:flip();
    end;
    if q.enabled==true~=Q[4][Q[6]].enabled then
        Q[4][Q[6]]:flip();
    end;
end;
J[4][J[6]]=true;
while true do
    f();
    task.wait(1);
    local z=K.loaded;
    if z==nil then
        break;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11198 ]] 
[11198]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.audio_cosmetics_volume=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11201 ]] 
[11201]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(Y,n,y,Q)K();
    for K,K in _,nil,nil do
        pcall(function()K.Frame.BackgroundColor3=Color3.fromHSV(Y,n,y);
        K.Frame.BackgroundTransparency=1-(z[3][4][z[3][6]].enabled and Q or 0);
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11210 ]] Strings: [BasePart]
[11210]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_,Y)local n,y,Q=os.clock(),#K;
    for J=y,1,-1 do
        local y=K[J];
        J=y.model;
        if y.claimed then
        else
            if J.Parent then
                if n-y.at<=1 then
                    if J.Name==z then
                        local z=J:FindFirstChildWhichIsA("BasePart",true);
                        if z then
                            if(z.Position-_).Magnitude<=25+520*(n-y.at)then
                                if Y then
                                    if y.at<=Y-0.01 then
                                        Q=y;
                                        break;
                                    end;
                                else
                                    Q=y;
                                    break;
                                end;
                                Q=Q or y;
                            else
                            end;
                        else
                        end;
                    else
                    end;
                else
                end;
            else
            end;
        end;
    end;
    if Q then
        Q.claimed=true;
        return Q.model,Q.spawn,Q.at;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11237 ]] Strings: [string]
[11237]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K();
    if Y then
        if type(z)~="string"then
            return z;
        end;
    else
        return z;
    end;
    local K=_(z,Y)or z;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11240 ]] 
[11240]=function(z,z,z,z,z,z)return function(z)return function(K)pcall(function()z[1][4][z[1][6]].row.Visible=K;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11244 ]] 
[11244]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=K.inventory;
    if not(_)then
        return nil;
    end;
    for K,Y in _.hotbar or{},nil,nil do
        if Y.item then
            if Y.item.itemType==z then
                return K-1;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11251 ]] Strings: [Humanoid, Animator, %d+]
[11251]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function()local z,Y=K(),_.isAlive and _.character.Character;
    if z then
        if not(Y)then
            return{};
        end;
    else
        return{};
    end;
    local K=Y:FindFirstChildOfClass("Humanoid");
    local _=K and(K:FindFirstChildOfClass("Animator"))or K;
    if not _ then
        return{};
    end;
    local Y,n,y={},pcall(function()return _:GetPlayingAnimationTracks();
end);
if not(n)then
    return Y;
end;
for _,_ in y,nil,nil do
    K=_.Animation;
    if K then
        if tostring(K.AnimationId):match("%d+")==z then
            Y[#Y+1]=_;
        end;
    end;
end;
return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11274 ]] Strings: [StatusEffect_dizzy, dizzy-status, werewolf-fear-status]
[11274]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[4];
    return function(n)if not(K[4][K[6]].enabled)then
        return;
    end;
    if n=="StatusEffect_dizzy"then
        if _()then
            pcall(function()z[3]:UnbindFromRenderStep("dizzy-status");
        end);
    end;
elseif Y[4][Y[6]]then
    if Y[4][Y[6]].enabled then
        pcall(function()z[3]:UnbindFromRenderStep("werewolf-fear-status");
    end);
end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11282 ]] Strings: [number]
[11282]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K.SwordsConstants;
    local K=z and z.swordSwingBufferMultiplier;
    return type(K)=="number"and K or 0.4;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11286 ]] 
[11286]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=ipairs;
    for _,_ in z(K)do
        pcall(function()_:Disconnect();
    end);
end;
table.clear(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11300 ]] 
[11300]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)K.mobile_interact_button=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11304 ]] 
[11304]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K.Knit and K.Knit.Controllers and K.Knit.Controllers.ScepterController;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11312 ]] 
[11312]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11323 ]] Strings: [ObservedChestFolder]
[11323]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z,_,Y,n)local y=_ and(_:FindFirstChild("ObservedChestFolder"));
    if y then
        if y.Value==Y then
            return true;
        end;
    end;
    _=K.opened[Y];
    Y=_ and _[z];
    z=Y~=nil and n-Y<=K.recent;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11324 ]] 
[11324]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].enabled;
    return not z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11330 ]] Strings: [stars]
[11330]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function(z)if z then
        local z=K("stars",_[4][_[6]]);
        while true do
            if Y.isAlive then
                local K=Y.character.RootPart.Position;
                for Y,Y in z,nil,nil do
                    if not(_[4][_[6]].enabled)then
                        break;
                    end;
                    if tick()>(n[Y]or 0)then
                        if Y.PrimaryPart then
                            if(K-Y.PrimaryPart.Position).Magnitude<=y[4][y[6]]:Get(Q[4][Q[6]])then
                                if J[4][J[6]]:Get(f[4][f[6]])>0 then
                                    task.wait(J[4][J[6]]:Get(f[4][f[6]]));
                                end;
                                if(K-Y.PrimaryPart.Position).Magnitude<=y[4][y[6]]:Get(Q[4][Q[6]])then
                                    q.GameAnimationUtil:playAnimation(t.Character,q.AnimationType.PUNCH);
                                    q.ViewmodelController:playAnimation(q.AnimationType.FP_USE_ITEM);
                                    q.StarCollectorController:collectEntity(t,Y,Y.Name);
                                    n[Y]=tick()+1;
                                end;
                            end;
                        end;
                    end;
                end;
            end;
            task.wait(0.1);
            local z=_[4][_[6]].enabled;
            if not z then
                break;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11338 ]] 
[11338]=function(z,z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11355 ]] 
[11355]=function(z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function()K.Parent=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11361 ]] Strings: [stud, studs]
[11361]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11376 ]] Strings: [Seat, SeatWeld, Occupant, BodyVelocity]
[11376]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    return function()local z=shared.pingbypassroot;
    if z then
        if K[4][K[6]]then
            if _[4][_[6]].enabled then
                local K=Y();
                if z.Transparency==1~=K then
                    z.Transparency=K and 1 or 0.7;
                end;
            end;
        end;
    end;
    z=n.isAlive and n.character.HumanoidRootPart;
    if y(shared.pingbypassroot)and z then
        local K=n.character.Humanoid.Sit;
        if K~=Q[4][Q[6]]then
            if K then
                local _,Y,n=next,workspace:GetDescendants();
                for y,l in _,Y,n do
                    if not(l:IsA("Seat"))then
                        continue;
                    end;
                    y=l:FindFirstChild("SeatWeld");
                    if y then
                        if y.Part1==shared.pingbypassroot then
                            y.Part1=J[4][J[6]];
                            if f.Connections then
                                if f.Debug then
                                    pcall(function()local _,Y,n=next,getconnections(l:GetPropertyChangedSignal("Occupant"));
                                    for y,J in _,Y,n do
                                        y=debug.getupvalue(debug.getupvalue(J.Function,1),3);
                                        debug.setupvalue(y,4,{GetPropertyChangedSignal=function(_,_)return q.Event;
                                    end});
                                    y();
                                end;
                            end);
                        end;
                    end;
                end;
            end;
        end;
    else
        q:Fire(false);
    end;
    Q[4][Q[6]]=K;
end;
if t[4][t[6]]==nil then
    t[4][t[6]]=Instance.new("BodyVelocity");
    t[4][t[6]].MaxForce=Vector3.new(0,9000000000,0);
    t[4][t[6]].Velocity=Vector3.zero;
    t[4][t[6]].Parent=shared.pingbypassroot;
end;
local _=z.AssemblyLinearVelocity;
local Y=(K or T.HangGliderController.hangGliderActive)and _.Magnitude or 23+L[4][L[6]]();
_=(_.Unit==_.Unit and _.Unit or Vector3.zero)*20;
t[4][t[6]].Velocity=Vector3.new(0,math.abs(z.Velocity.Y)<=0.01 and 0 or z.Velocity.Y,0);
if z.Velocity.Magnitude<=0.01 then
    shared.pingbypassroot.Velocity=Vector3.zero;
else
    shared.pingbypassroot.Velocity=Vector3.new(math.clamp(_.X,-Y,Y),z.Velocity.Y,math.clamp(_.Z,-Y,Y));
end;
X.NoMove=nil;
else
    X.NoMove=true;
    if z then
        z.Velocity=Vector3.zero;
        z.AssemblyLinearVelocity=Vector3.zero;
        z.AssemblyAngularVelocity=Vector3.zero;
    end;
    shared.pingbypassroot.Velocity=Vector3.zero;
    shared.pingbypassroot.AssemblyLinearVelocity=Vector3.zero;
end;
shared.pingbypassroot.AssemblyAngularVelocity=Vector3.zero;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11396 ]] 
[11396]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=_[4][_[6]];
    return K,z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11403 ]] 
[11403]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)local Q=K[z];
    if Q then
    else
        Q={};
        K[z]=Q;
    end;
    if Q[n]==nil then
        local K,J=pcall(_,z,n);
        if not(K)then
            return;
        end;
        Q[n]={Value=J};
    end;
    pcall(Y,z,n,y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11420 ]] 
[11420]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_)if z then
        if z~=_ then
            if z.Parent then
                return z;
            end;
        end;
    end;
    z=K();
    local K=z and z.tool;
    if K then
        if K~=_ then
            if K.Parent then
                return K;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11421 ]] Strings: [RootPart]
[11421]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()local z,q=_[4][_[6]],{Range=Y[4][Y[6]]and Y[4][Y[6]].enabled and n[4][n[6]].value or math.min(n[4][n[6]].value,y()),Part="RootPart",Wallcheck=Q[4][Q[6]].walls.enabled,Milo=J(Q[4][Q[6]]),Players=Q[4][Q[6]].players.enabled,NPCs=Q[4][Q[6]].npcs.enabled,Sort=f.Distance};
    return K(z,q);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11424 ]] 
[11424]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z,_,Y)local n=Y or K.generation;
    if not(K.isCurrent(n))then
        return;
    end;
    local Y=z:Connect(function(...)if not(K.isCurrent(n))then
        return;
    end;
    return _(...);
end);
table.insert(K.Connections,Y);
return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11439 ]] 
[11439]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11459 ]] Strings: [table, ^%s*(.-)%s*$]
[11459]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function(z)if type(z)~="table"then
        return;
    elseif z.item_types~=nil then
        return;
    elseif z.highlight_all_items~=nil then
        return;
    elseif z.allowed_items==nil then
        if z.resource_colors==nil then
            return;
        end;
    end;
    local T,L=z.allowed_items,z.resource_colors;
    local X=L==false or type(L)=="table"and L.__on==false;
    local l,a=not X,{};
    for Z,Z in K,nil,nil do
        a[Z.Id]=_(z[Y:optionKey(n[4][n[6]],Z.Key)])or Z.Color;
    end;
    L=_(z.color);
    if L then
        if z.color.rainbow~=true then
            if math.round(L.R*255)==243 then
                if math.round(L.G*255)==93 then
                    if math.round(L.B*255)==18 then
                        y[4][y[6]]:set(Q(255,255,255));
                    end;
                end;
            end;
        end;
    end;
    L=type(T)=="table"and(T.items==nil and T or T.active);
    if type(L)=="table"and#L>0 then
        local Y,n=J.ItemMeta or{},{};
        for Q,Q in f.items()do
            T=Q.Name:lower();
            n[T]=n[T]or Q.Id;
        end;
        local Q=_(z.color)or Color3.fromHSV(y[4][y[6]].hue,y[4][y[6]].sat,y[4][y[6]].value);
        q[4][q[6]]:clear();
        local z=Q;
        for _,y in L,nil,nil do
            _=tostring(y):lower():match("^%s*(.-)%s*$");
            y=_:gsub(" ","_");
            local J=Y[_]and _ or Y[y]and y or n[_];
            if J then
                y=nil;
                y,Q=q[4][q[6]],l and a[J]or z;
                y:add(J,Q);
            end;
        end;
        if t[4][t[6]].enabled then
            t[4][t[6]]:flip();
        end;
        return;
    end;
    q[4][q[6]]:clear();
    if not(X)then
        for z,z in K,nil,nil do
            q[4][q[6]]:add(z.Id,a[z.Id]);
        end;
    end;
    if not(t[4][t[6]].enabled)then
        t[4][t[6]]:flip();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11465 ]] Strings: [On bind]
[11465]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z=="On bind";
        end;
    end;
    _.Request=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11466 ]] 
[11466]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()return K.VoidAxeController;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11472 ]] 
[11472]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
    if _[4][_[6]]then
        if _[4][_[6]].row then
            _[4][_[6]].row.Visible=z;
        end;
    end;
    if Y[4][Y[6]]then
        if Y[4][Y[6]].row then
            Y[4][Y[6]].row.Visible=z;
        end;
    end;
    local K=n.FastHitsCharge;
    if K then
        if K.row then
            K.row.Visible=z;
        end;
    end;
    if y[4][y[6]]then
        if y[4][y[6]].row then
            y[4][y[6]].row.Visible=z;
        end;
    end;
    if Q[4][Q[6]]then
        if Q[4][Q[6]].row then
            Q[4][Q[6]].row.Visible=z;
        end;
    end;
    if J[4][J[6]]then
        if J[4][J[6]].row then
            J[4][J[6]].row.Visible=z;
        end;
    end;
    if f[4][f[6]]then
        if f[4][f[6]].row then
            f[4][f[6]].row.Visible=z;
        end;
    end;
    if q[4][q[6]]then
        if q[4][q[6]].row then
            q[4][q[6]].row.Visible=z;
        end;
    end;
    if t[4][t[6]]then
        if t[4][t[6]].row then
            t[4][t[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11487 ]] 
[11487]=function(z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z,J)local f,q=K[4][K[6]]:Get(_[4][_[6]])+1;
    for K,_ in J,nil,nil do
        if table.find(Y[4][Y[6]].active,_.Name)then
            K=(z-_.Position).Magnitude;
            if K<=f then
                if n.Wallcheck(z,_.Position,{y,Q.Character,_})then
                else
                    f,q=K,_;
                end;
            else
            end;
        else
        end;
    end;
    return q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11500 ]] Strings: [studs, stud]
[11500]=function(z,z,z,z,z,z)return function()return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11534 ]] Strings: [table, BedAlarm, An intruder is near your bed!]
[11534]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z,J,f)if K[4][K[6]].enabled then
        if os.clock()<_[4][_[6]]then
            return;
        end;
    else
        return;
    end;
    _[4][_[6]]=os.clock()+Y;
    local K={teamId=f,bedPosition=z.Position};
    n(K.bedPosition);
    if J then
        z=pcall(J.notifyTeamOfIntruder,J,K);
        if pcall(J.triggerBedAlarmModel,J,K)then
            if type(J.bedAlarmTriggerMaidMap)=="table"then
                y[4][y[6]]={Controller=J,TeamId=f,Maid=J.bedAlarmTriggerMaidMap[f]};
            end;
        end;
        if not z then
            Q("BedAlarm","An intruder is near your bed!",Y);
        end;
    else
        Q("BedAlarm","An intruder is near your bed!",Y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11550 ]] 
[11550]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()while true do
        pcall(K);
        task.wait(0.25);
        local z=_[4][_[6]].enabled;
        if not z then
            break;
        end;
    end;
    Y[4][Y[6]]=false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11555 ]] 
[11555]=function(z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if z then
        if K.Modules[_..Y[4][Y[6]]].enabled then
            n.load();
        end;
    else
        n.unload();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11558 ]] Strings: [Health, MaxHealth]
[11558]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if K.getBlockHits then
        local _,Y=pcall(K.getBlockHits,z,z.Position);
        if _ then
            if Y then
                return Y;
            end;
        end;
    end;
    return z:GetAttribute("Health")or z:GetAttribute("MaxHealth")or math.huge;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11561 ]] 
[11561]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.Grim or _()<K.GrimEnd;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11620 ]] 
[11620]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)K[4][K[6]][z]=nil;
    if _[z]then
        Y();
        pcall(function()_[z]:Destroy();
    end);
    _[z]=nil;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11628 ]] 
[11628]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[3];
    return function()if not K[4][K[6]]then
        return;
    end;
    pcall(function()z[2].OnIncomingMessage=_[4][_[6]];
end);
_[4][_[6]],K[4][K[6]]=nil,false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11636 ]] 
[11636]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()if K[4][K[6]]then
        if os.clock()>=K[4][K[6]].expires then
            K[4][K[6]]=nil;
        end;
    end;
    local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11655 ]] Strings: [jade-balance]
[11655]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[4];
    return function()if not K[4][K[6]]then
        K[4][K[6]]=true;
        pcall(function()_[4][_[6]]=z[2](z[3].TS.balance["jade-balance"]).JadeBalance;
    end);
end;
local z=_[4][_[6]];
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11661 ]] Strings: [card_throw, CARD_THROW]
[11661]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function()local z=K.AbilityController and K.AbilityController.enabledAbilities;
    if z then
        if z.card_throw then
            return"card_throw";
        end;
        if z.CARD_THROW then
            return"CARD_THROW";
        end;
    end;
    return"card_throw";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11701 ]] 
[11701]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)if not(K.active[z])then
        return;
    end;
    K.active[z]=nil;
    K.owners=math.max(K.owners-1,0);
    if K.owners==0 then
        K.stop();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11720 ]] Strings: [steam_engineer_overclock, STEAM_ENGINEER_OVERCLOCK]
[11720]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if not(K.isAlive)then
        return;
    end;
    local z,K=_.AbilityController and _.AbilityController.enabledAbilities,"steam_engineer_overclock";
    if z then
        if z.steam_engineer_overclock==nil then
            if z.STEAM_ENGINEER_OVERCLOCK==nil then
                return;
            end;
            K="STEAM_ENGINEER_OVERCLOCK";
        else
        end;
    else
    end;
    if Y.ready(K)then
        _.AbilityController:useAbility(K);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11736 ]] 
[11736]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function(...)if not(Attacking)then
        K.ViewmodelController:playAnimation(select(2,...));
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11755 ]] Strings: [_OreGenerator, BasePart]
[11755]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y,n,y=K[4][K[6]].active;
    for K,Q in Y,nil,nil do
        for Y,Y in _(Q.."_OreGenerator")do
            K=Y:IsA("BasePart")and Y or Y.PrimaryPart;
            if K then
                Y=(z-K.Position).Magnitude;
                if n then
                    if Y<n then
                        n,y=Y,K;
                    else
                    end;
                else
                    n,y=Y,K;
                end;
            else
            end;
        end;
    end;
    return y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11778 ]] 
[11778]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=K.wrapped[z];
    if y then
        if _[z]==y then
            return;
        end;
    end;
    if not(n)then
        return;
    end;
    K.originals[z]=n;
    y=Y(n);
    K.wrapped[z]=y;
    _[z]=y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11783 ]] 
[11783]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.enable_on_screen_effects=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11791 ]] 
[11791]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)local Q=K(z);
    if not(Q)then
        return false;
    end;
    if os.clock()-_[4][_[6]]<Y()then
        return false;
    end;
    if n(Q)then
        return y(z);
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11809 ]] 
[11809]=function(z,z,z,z,z,z)return function(z)return function(z,K,_)local Y=os.clock();
    if Y-(z.gradeTime or-math.huge)<0.1 then
        return;
    elseif K<=0.05 then
        return;
    end;
    z.gradeTime=Y;
    z.pending=z.pending or{};
    if#z.pending>=16 then
        table.remove(z.pending,1);
    end;
    table.insert(z.pending,{arrival=Y+K,horizon=K,position=_});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11813 ]] Strings: [number]
[11813]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K.InfiniteFlyLandingAt;
    return type(z)=="number"and os.clock()-z<3;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11819 ]] Strings: [public, private]
[11819]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.profile_visibility=z and"public"or"private";
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11838 ]] Strings: [BasePart, Model]
[11838]=function(z,z,z,z,z,z,z,z)return function()return function(z)if z:IsA("BasePart")then
    return z;
end;
return z:IsA("Model")and z.PrimaryPart or z:FindFirstChildWhichIsA("BasePart");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11846 ]] 
[11846]=function(z,z,z,z,z,z,z)return function()return function(z,K,_)while z[K]and z[K]<=_ do
    K+=1;
end;
if K>128 then
    _=#z;
    table.move(z,K,_,1);
    for Y=_-K+2,_,1 do
        z[Y]=nil;
    end;
    K=1;
else
end;
return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11858 ]] 
[11858]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=K[z];
    if _ then
        if _.Tag then
            _.Tag:Destroy();
        end;
        K[z]=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11861 ]] Strings: [GuiObject]
[11861]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if not(z:IsA("GuiObject"))then
        return;
    end;
    if K(z)then
        pcall(_,z);
    elseif Y(z)then
        pcall(n,z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11862 ]] Strings: [Custom, Legit, Consistent, Extreme (36)]
[11862]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=K[4][K[6]]and K[4][K[6]].value;
    if z=="Custom"then
        local K=_.Custom;
        return math.clamp(math.round(K and K.value or 35),33,36);
    end;
    return z=="Legit"and 33 or z=="Consistent"and 34 or z=="Extreme (36)"and 36 or 35;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11901 ]] 
[11901]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()K();
    _.__isBlacklistHeld=false;
    Y(n,y.Character);
    local z;
    local function K(J)if not(table.find(Q,z))then
        return;
    end;
    local f=#Q;
    for q=f,1,-1 do
        local f=Q[q];
        if f~=z then
            pcall(function()f:Disconnect();
        end);
        table.remove(Q,q);
    end;
end;
_.__isBlacklistHeld=false;
Y(n,J);
end;
z=y.CharacterAdded:Connect(K);
table.insert(Q,z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11907 ]] Strings: [stud, studs]
[11907]=function(z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11911 ]] 
[11911]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[5];
    return function(n)if n then
        local n,y,Q=K[4][K[6]],_.MatchEndEvent,function()task.spawn(z[3]);
    end;
    n:clean(y.Event:Connect(Q));
    Q,n,y=K[4][K[6]],_.EntityDeathEvent,function(K)if K.finalKill then
        if K.entityInstance==z[4].Character then
            task.spawn(z[3]);
        end;
    end;
end;
Q:clean(n.Event:Connect(y));
else
    table.clear(Y);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11920 ]] Strings: [table]
[11920]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function(z)if K[4][K[6]]then
        if not(K[4][K[6]].enabled)then
            return;
        end;
    else
        return;
    end;
    if z then
        if z.entityInstance~=_.Character then
            return;
        end;
    else
        return;
    end;
    if not(Y[z.damageType])then
        return;
    end;
    if not(n(z.fromEntity))then
        return;
    end;
    local K=z.knockbackMultiplier;
    if type(K)=="table"then
        if K.disabled then
            return;
        end;
        local _=tonumber(K.horizontal);
        if _ then
            if _<0.75 then
                return;
            end;
        end;
    end;
    local _,Y=os.clock(),y[4][y[6]]and y[4][y[6]].value or 0;
    if _-Q[4][Q[6]]<Y then
        return;
    end;
    local Y,n,y,L=z.damageType==37,J[4][J[6]]and J[4][J[6]].enabled,f[4][f[6]]and f[4][f[6]].value or 2,q[4][q[6]]and q[4][q[6]].value or 1;
    if Y then
        if n then
            K,z=y/2,L/2;
            y,L=K,z;
        else
        end;
    else
    end;
    if _>=t[4][t[6]]then
        t[4][t[6]],T[4][T[6]],Q[4][Q[6]]=_+L,y,_;
    elseif y>=T[4][T[6]]then
        t[4][t[6]],T[4][T[6]],Q[4][Q[6]]=_+L,y,_;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11925 ]] Strings: [PublicHandInvItem, HandInvItem]
[11925]=function(z,z,z,z,z,z,z)return function(z,z,z)return function(z)if not(z)then
    return nil;
end;
local K=z:FindFirstChild("PublicHandInvItem")or z:FindFirstChild("HandInvItem");
return K and K.Value or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11938 ]] 
[11938]=function(z,z,z,z,z,z)return function()return function(z)return"hz";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11951 ]] 
[11951]=function(z,z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)local J=z and not K;
    if _[4][_[6]]then
        if _[4][_[6]].row then
            _[4][_[6]].row.Visible=J;
        end;
    end;
    if Y[4][Y[6]]then
        if Y[4][Y[6]].row then
            Y[4][Y[6]].row.Visible=J;
        end;
    end;
    if n[4][n[6]]then
        if n[4][n[6]].row then
            n[4][n[6]].row.Visible=J;
        end;
    end;
    if y[4][y[6]]then
        if y[4][y[6]].row then
            y[4][y[6]].row.Visible=J;
        end;
    end;
    if Q[4][Q[6]]then
        if Q[4][Q[6]].row then
            Q[4][Q[6]].row.Visible=J;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11955 ]] Strings: [stud, studs]
[11955]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11972 ]] 
[11972]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11987 ]] Strings: [second, seconds]
[11987]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z==1 and"second"or"seconds";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11989 ]] 
[11989]=function(z,z,z,z,z)return function(z,z)return function()return"%";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 11999 ]] 
[11999]=function(z,z,z,z,z,z,z)return function(z)return function(z,K)return math.abs(z.R-K.R)<0.02 and math.abs(z.G-K.G)<0.02 and math.abs(z.B-K.B)<0.02;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12009 ]] 
[12009]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local _=K.inventory.hotbar or{};
    for K,Y in _,nil,nil do
        if Y.item then
            if Y.item.tool==z then
                return K-1;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12039 ]] 
[12039]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function()local z=K.XT;
    if z then
        return z;
    end;
    local _=K.XP;
    z={M=nil,L=0,MM=0,ML=0,LL=0,At=0,Sig=_.SIG,N=0,Odd=0,Gap={},GapI=0,GapN=0,Ret={},RetI=0,RetN=0,Rate=table.clone(_.RATE0),Ghost=0,Extra=0.2,Hold=0,Cdf={},CdfKey=nil,CdfAge=0,Dist={},Nd={},Known={},SD={},SX={},SG={},SF={},Placed=false,PlanFor=nil,PlanF=nil,PlanAt=nil,F=17};
    K.XT=z;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12041 ]] Strings: [Switch delay]
[12041]=function(z,K,K,K,K,K)return function(K,K,_,_)local _=K[1];
    local Y=K[2];
    return function(K,n)local y=Y.PistonwareMigrateDefaults;
    local Y=z[127](y(K,n,{["Switch delay"]={0.05,0.08}}));
    return _(K,z:Hc(Y));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12045 ]] 
[12045]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_)local Y=K[z];
    local K,n=Y and Y[1],Y and Y[#Y];
    if K and n and n.time-K.time>=0.5 then
        z=n.position-K.position;
        z=Vector3.new(z.X,0,z.Z);
        local y=0;
        for Q=2,#Y,1 do
            local J=Y[Q].position-Y[Q-1].position;
            y+=Vector3.new(J.X,0,J.Z).Magnitude;
        end;
        local Y=y>0 and math.min(z.Magnitude/y,1)or 0;
        return z/(n.time-K.time)*Y^2;
    end;
    return _.AssemblyLinearVelocity;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12049 ]] 
[12049]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_)local Y,n,y=K.PRED,K.Trips,_-z;
    if y>0 then
        if not(y<2)then
            return;
        end;
    else
        return;
    end;
    n.Head=n.Head%Y.PING_RING+1;
    n.T[n.Head],n.At[n.Head]=y,_;
    n.Count=math.min(n.Count+1,Y.PING_RING);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12054 ]] 
[12054]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_,Y)if z then
        if z~=""then
            K(z,Y);
        end;
    end;
    if _ then
        if _~=""then
            if _~=z then
                K(_,Y);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12078 ]] Strings: [spirit_bridge, Hotbar, standalone, HandInvItem]
[12078]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[8];
    return function(J,f,q)local t=K.holding("spirit_bridge",J);
    local T=_[4][_[6]].value=="Hotbar";
    local _=T and not t and Y(J.tool)or nil;
    if T and not t then
        if _==nil then
            return false;
        end;
    end;
    local Y,L,X=pcall(n.claimItem,"standalone");
    if Y then
        if not(L)then
            return false;
        end;
    else
        return false;
    end;
    local l=y.hand and y.hand.tool;
    local a=y.inventory and y.inventory.hotbarSlot;
    Y,L=pcall(function()if not(t)then
        if T then
            z[6](_);
            z[7](J.tool,0);
            if Q[4][Q[6]].value>0 then
                task.wait(Q[4][Q[6]].value);
            end;
        else
            z[7](J.tool,Q[4][Q[6]].value);
        end;
    end;
    local _=z[9].Character and z[9].Character:FindFirstChild("HandInvItem");
    if _ then
        if not(_.Value==J.tool)then
            return false;
        end;
    else
        return false;
    end;
    q=f and z[10](f)or q;
    local _,y,f=z[11].ItemMeta.spirit_bridge,K.fire,q;
    return y(J,"spirit_bridge","spirit_bridge",f,_ and _.projectileSource);
end);
if not t and l and l.Parent and l~=J.tool then
    task.delay(Q[4][Q[6]].value,function()local K=n.ItemOwner=="standalone"and(X==nil or n.ItemOwnerToken==X);
    if K then
        if T then
            pcall(z[6],a);
        end;
        pcall(function()z[7](l,0);
    end);
end;
pcall(n.releaseItem,"standalone",X);
end);
else
    pcall(n.releaseItem,"standalone",X);
end;
return Y and L==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12089 ]] 
[12089]=function(z,z,z,z,z,z,z,z)return function()return function()return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12096 ]] 
[12096]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K[4][K[6]]and K[4][K[6]].active;
    if not(z)then
        return nil;
    end;
    local K=#z;
    if _[4][_[6]]~=K then
        table.clear(Y);
        for n,y in z,nil,nil do
            Y[n]=y:lower();
        end;
        _[4][_[6]]=K;
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12125 ]] 
[12125]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()K();
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12133 ]] 
[12133]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y,Q,Q,Q)if Q==K then
        _(z,y);
    end;
    Y(z,n,y);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12142 ]] 
[12142]=function(z,z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)K[4][K[6]].row.Visible=z;
    _[4][_[6]].row.Visible=z;
    Y[4][Y[6]].row.Visible=z;
    if n[4][n[6]].enabled then
        n[4][n[6]]:flip(nil,true);
        n[4][n[6]]:flip(nil,true);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12155 ]] 
[12155]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)if K.isAlive then
        if not(z.fromEntity==_.Character)then
            return;
        end;
    else
        return;
    end;
    if Y.Store:getState().Kit.activeContract then
        return;
    end;
    if n[4][n[6]].value>0 then
        task.wait(n[4][n[6]].value);
        if y[4][y[6]].enabled then
            if not(K.isAlive)then
                return;
            end;
        else
            return;
        end;
        if Y.Store:getState().Kit.activeContract then
            return;
        end;
    end;
    z=Y.Store:getState().Kit.availableContracts;
    if z then
        if#z==0 then
            return;
        end;
    else
        return;
    end;
    for K,K in Q()do
        for _,_ in z,nil,nil do
            if _.target then
                if _.target==K.Player then
                    pcall(J,_);
                    return;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12159 ]] 
[12159]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()for z,z in K.PConns,nil,nil do
        pcall(function()z:Disconnect();
    end);
end;
table.clear(K.PConns);
if K.PDamageConn then
    pcall(function()K.PDamageConn:Disconnect();
end);
K.PDamageConn=nil;
end;
K.PWired=false;
K.PCatchUp=false;
table.clear(K.PSendT);
table.clear(K.PSendC);
table.clear(K.PSendDone);
table.clear(K.PSendG);
table.clear(K.PSendL);
table.clear(K.PWatched);
table.clear(K.PCand);
table.clear(K.PCandAt);
table.clear(K.PHitAt);
K.PSendI=0;
K.PStamp=nil;
K.PLast=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12179 ]] Strings: [stud, studs]
[12179]=function(z,z,z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12190 ]] 
[12190]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12193 ]] 
[12193]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=z.CFrame.LookVector*Vector3.new(1,0,1)*z.AssemblyMass*(K[4][K[6]].value-1);
    return _*70;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12208 ]] Strings: [trapper_throw]
[12208]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()K.AbilityController.cooldownController:setOnCooldown("trapper_throw",0.35);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12215 ]] 
[12215]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()local z=K[4][K[6]];
    for _,_ in ipairs(z)do
        _:Disconnect();
    end;
    K[4][K[6]]={};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12217 ]] 
[12217]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K.Synchronized then
        local n=_[4][_[6]]and _[4][_[6]].value or K.Gap;
        return z+n;
    end;
    if Y.PLast~=z then
        local _=K.Gap;
        return z+_;
    end;
    local z,K=Y.PAnchor,Y.PPace or Y.PTarget;
    return z+K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12221 ]] Strings: [table, iron, diamond, emerald]
[12221]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)if type(z)~="table"then
        return nil;
    end;
    local _,Y={},{"iron","diamond","emerald"};
    for n,y in Y,nil,nil do
        n=tonumber(z[y]);
        if n then
            if n>0 then
                table.insert(_,K(y,n));
            end;
        end;
    end;
    return#_>0 and table.concat(_,", ")or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12226 ]] Strings: [string]
[12226]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)local _=K.ItemMeta and K.ItemMeta[z];
    return _ and type(_.displayName)=="string"and _.displayName or z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12238 ]] 
[12238]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12246 ]] Strings: [Map, EnvironmentSpecularScale, GlobalShadows, Brightness, FogEnd]
[12246]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[10];
    local q=z[11];
    local t=z[12];
    local T=z[13];
    local L=z[14];
    local X=z[16];
    local l=z[17];
    local a=z[18];
    return function()K();
    _[4][_[6]]+=1;
    local K=_[4][_[6]];
    Y[4][Y[6]]=workspace:FindFirstChild("Map");
    if n[4][n[6]].enabled then
        y(Q,"EnvironmentSpecularScale",0);
    end;
    if J[4][J[6]].enabled then
        y(Q,"GlobalShadows",false);
        y(Q,"Brightness",1);
        y(Q,"FogEnd",100000);
        y(Q,"EnvironmentDiffuseScale",0);
        y(Q,"EnvironmentSpecularScale",0);
        f[4][f[6]]=Q:GetPropertyChangedSignal("GlobalShadows"):Connect(function()if _[4][_[6]]==K then
            if z[8][4][z[8][6]].enabled then
                if Q.GlobalShadows then
                    pcall(z[9],Q,"GlobalShadows",false);
                end;
            end;
        end;
    end);
    for Y,Y in Q:GetChildren()do
        if Y:IsA("PostEffect")then
            y(Y,"Enabled",false);
        elseif Y:IsA("Atmosphere")then
            y(Y,"Density",0);
            y(Y,"Glare",0);
            y(Y,"Haze",0);
        end;
    end;
    local Y=workspace:FindFirstChildOfClass("Terrain");
    if Y then
        y(Y,"WaterWaveSize",0);
        y(Y,"WaterWaveSpeed",0);
        y(Y,"WaterReflectance",0);
        y(Y,"Decoration",false);
        local n=Y:FindFirstChildOfClass("Clouds");
        if n then
            y(n,"Cover",0);
            y(n,"Density",0);
        end;
    end;
end;
if q[4][q[6]].enabled then
    local Y,n=pcall(function()local Q=type(settings)=="function"and settings()or settings;
    return Q and Q.Rendering or nil;
end);
if Y and typeof(n)=="Instance"then
    t[4][t[6]]=n;
    y(n,"QualityLevel",Enum.QualityLevel.Level01);
    y(n,"EditQualityLevel",Enum.QualityLevel.Level01);
    pcall(function()y(n,"MeshPartDetailLevel",Enum.MeshPartDetailLevel.Level04);
end);
elseif not T[4][T[6]]then
    T[4][T[6]]=true;
    L("FpsBoostPlus","Your executor does not let scripts change the render quality.",5,"warning");
end;
end;
task.spawn(function()local Y,n={workspace},(os.clock());
while#Y>0 do
    if _[4][_[6]]~=K then
        return;
    elseif not(z[8][4][z[8][6]].enabled)then
        return;
    end;
    local y=table.remove(Y);
    for Q,Q in y:GetChildren()do
        z[15](Q);
        if not(Q:IsA("FaceInstance"))then
            table.insert(Y,Q);
        end;
    end;
    if os.clock()-n>=0.002 then
        task.wait();
        n=os.clock();
    else
    end;
end;
end);
if X[4][X[6]].enabled or l[4][l[6]].enabled then
    a[4][a[6]]=workspace.DescendantAdded:Connect(function(Y)if _[4][_[6]]==K then
        if z[8][4][z[8][6]].enabled then
            z[15](Y);
        end;
    end;
end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12286 ]] 
[12286]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    return function()K.ProjectileController:createLocalProjectile(_,Y,n,y,Q,J,f,nil,nil,q);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12288 ]] 
[12288]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12295 ]] Strings: [bed, PlacedByUserId, BedShieldEndTime]
[12295]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function(z,T,L,X)if(z.Position-T).Magnitude>=(L or K[4][K[6]].value)then
        return false;
    end;
    if _:HasTag(z,"bed")then
        if Y(z)then
            return false;
        end;
    end;
    if not(n.BlockController:isBlockBreakable({blockPosition=z.Position/3},y))then
        return false;
    end;
    if Q(n.BlockController:getBlockPosition(z.Position),z)then
        return false;
    end;
    if not(J[4][J[6]].enabled)then
        if z:GetAttribute("PlacedByUserId")==y.UserId then
            return false;
        end;
    end;
    if(z:GetAttribute("BedShieldEndTime")or 0)>workspace:GetServerTimeNow()then
        return false;
    end;
    if f[4][f[6]].enabled then
        if q[4][q[6]].enabled then
        elseif X then
        else
            T=t.selectedHand and t.selectedHand()or t.hand;
            L=T and T.tool;
            z=L and n.ItemMeta[L.Name];
            if z then
                if not(z.breakBlock)then
                    return false;
                end;
            else
                return false;
            end;
        end;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12296 ]] 
[12296]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)local Q=z.Character and K(z.Character);
    if Q then
        if not(z.RootPart)then
            return 0;
        end;
    else
        return 0;
    end;
    local K=(z.RootPart.Position-n).Magnitude/math.max(y or 100,1);
    y,z=workspace:GetServerTimeNow()+_:GetNetworkPing()+K,math.max;
    n=Q+Y.PistonwareDamageWindow()-y;
    return z(n,0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12303 ]] Strings: [ScreenGui, BasePart, VignetteApp, ImageLabel]
[12303]=function(z,z,z,z,z,z,z)return function(z,K)return function(K)if not(K:IsA("ScreenGui"))then
    if not(K:IsA("BasePart"))then
        return;
    end;
end;
task.defer(function()if z[1][4][z[1][6]].enabled then
    if z[2][4][z[2][6]].enabled then
        if z[3].Hidden[K]then
            return;
        elseif not(K.Parent)then
            return;
        end;
    else
        return;
    end;
else
    return;
end;
if K:IsA("ScreenGui")then
    local _=K:FindFirstChild("VignetteApp");
    local Y=_ and _:IsA("ImageLabel")and _.ImageColor3;
    if Y then
        if K.Enabled then
            if z[3].Tints[math.round(Y.R*255)*65536+math.round(Y.G*255)*256+math.round(Y.B*255)]then
                z[3].Hidden[K]=true;
                K.Enabled=false;
            end;
        end;
    end;
    return;
end;
for _,_ in K:GetChildren()do
    if _:IsA("ParticleEmitter")then
        if z[3].Emitters[_.Name]then
            z[3].Hidden[K]=K.Parent;
            K.Parent=nil;
            return;
        end;
    end;
end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12308 ]] 
[12308]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)K:clean(z.ChildAdded:Connect(_));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12326 ]] 
[12326]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=K.PStep;
    local Y=z-_-K.PSpun;
    K.PStep=z;
    K.PSpun=0;
    if _==0 then
        return;
    elseif Y<=0 then
        return;
    elseif Y>0.1 then
        return;
    end;
    if K.PFrame==0 then
        K.PFrame=Y;
        return;
    end;
    K.PDev=K.PDev+(math.abs(Y-K.PFrame)-K.PDev)*0.1;
    K.PFrame=K.PFrame+(Y-K.PFrame)*0.1;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12337 ]] Strings: [Team]
[12337]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[3];
    local Y=z[4];
    local n=z[5];
    return function(y,Q)if not(Q)then
        local function J()z[2][4][z[2][6]](y,true);
        end;
        K:clean(y:GetAttributeChangedSignal("Team"):Connect(J));
    end;
    if y:GetAttribute("Team")==_:GetAttribute("Team")then
        if not(table.find(Y,y.Name))then
            table.insert(Y,y.Name);
            n[4][n[6]]:setChoices(Y);
        end;
    else
        Q=table.find(Y,y.Name);
        if Q then
            table.remove(Y,Q);
            n[4][n[6]]:setChoices(Y);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12340 ]] 
[12340]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local _=K.inventory.hotbar or{};
    for K,Y in _,nil,nil do
        if Y.item then
            if Y.item.tool==z then
                return K-1;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12355 ]] 
[12355]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
    end;
    K[4][K[6]]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12366 ]] 
[12366]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)local _=z.RootPart;
    if not(_)then
        return K;
    end;
    z=_.CFrame.LookVector;
    z=Vector3.new(z.X,0,z.Z);
    if z.Magnitude<0.001 then
        return K;
    end;
    local K=_.Size;
    return{look=z.Unit,sx=math.clamp(K.X,0.5,4),sz=math.clamp(K.Z,0.5,4)};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12379 ]] 
[12379]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=K.inventory;
    if _ then
        if not(z)then
            return nil;
        end;
    else
        return nil;
    end;
    local K=(_.hotbar or{})[z+1];
    return K and K.item or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12412 ]] 
[12412]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12423 ]] 
[12423]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K[4][K[6]]and tostring(K[4][K[6]].value)or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12427 ]] Strings: [Nugget]
[12427]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=z.Name;
    local y=K[n];
    if y and y.enabled then
        task.defer(Y,z);
    elseif n=="Nugget"then
        if _[4][_[6]].enabled then
            task.defer(Y,z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12429 ]] Strings: [Model]
[12429]=function(z,z,z,z,z,z,z,z)return function(z,z)return function(z)if z then
    if not(z.Parent)then
        return nil;
    end;
else
    return nil;
end;
return z:IsA("Model")and z or z:FindFirstAncestorWhichIsA("Model");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12438 ]] 
[12438]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(...)local z=K(...);
    if _[4][_[6]].enabled then
        if os.clock()<Y[4][Y[6]]then
            local K=n[4][n[6]]>0 and n[4][n[6]]or(y[4][y[6]]and y[4][y[6]].value or 2);
            z+=8*(K-1);
        else
        end;
    else
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12452 ]] Strings: [function, table, string]
[12452]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.BuilderUtil;
    if Y then
        if not(type(Y.getFortificationCost)=="function")then
            return true,true;
        end;
    else
        return true,true;
    end;
    local K,n=pcall(Y.getFortificationCost,z);
    if not(K)then
        return true,true;
    end;
    if n==nil then
        return false,false;
    end;
    if type(n)~="table"then
        return true,true;
    end;
    for Y,y in n,nil,nil do
        K,Y=y.currency,y.amount or 0;
        if type(K)=="string"then
            if Y>0 then
                z=_(K);
                if z then
                    if(z.amount or 0)<Y then
                        return true,false;
                    end;
                else
                    return true,false;
                end;
            end;
        end;
    end;
    return true,true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12456 ]] Strings: [number]
[12456]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y,Q=K.DRAW_LEAD_FULL,K.DRAW_LEAD_END,_.GetNetworkPing;
    local _=Q and(Q(Y));
    local Y,Q=type(_)=="number"and _==_ and math.clamp((_-K.PING_LEAD_FROM)*K.PING_LEAD,0,K.PING_LEAD_MAX)or 0,K.DRAW_LEAD*math.clamp((y-z)/(y-n),0,1);
    return Q+Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12471 ]] Strings: [string]
[12471]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)if type(z)~="string"then
        return z;
    end;
    return K(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12480 ]] 
[12480]=function(z,z,z,z,z)return function(z,z,z)return function()
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12481 ]] Strings: [CAT_POUNCE]
[12481]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()local z=K.AbilityController;
    return z:canUseAbility("CAT_POUNCE",{disableBlockedAbilityAlert=true});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12498 ]] Strings: [LastDamageTakenTime]
[12498]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.PCand[z],K.PCandAt[z]=z:GetAttribute("LastDamageTakenTime"),_();
    K.preciseConfirm(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12503 ]] Strings: [PlayerKitImage, ImageLabel, ImageButton]
[12503]=function(z,z,z,z,z)return function(z,z)return function(z)if z.Name=="PlayerKitImage"then
    if z:IsA("ImageLabel")then
        if z.Visible then
            z.Visible=false;
        end;
    elseif z:IsA("ImageButton")then
        if z.Visible then
            z.Visible=false;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12512 ]] 
[12512]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K[4][K[6]];
    K[4][K[6]]=nil;
    if z then
        pcall(function()z:Stop();
        z:Destroy();
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12515 ]] 
[12515]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(y,Q,J)if K[4][K[6]]>=3 then
        return false;
    end;
    local K=_(J);
    if K~=Y(y.Character)then
        return false;
    end;
    y=J-n.character.RootPart.Position;
    if math.abs(y.X)<3 then
        if math.abs(y.Z)<3 then
            return false;
        end;
    end;
    J,y=pcall(function()if not(z[5].BlockController:isServerAllowedPlacement(Q,K,0))then
        return false;
    end;
    local _=z[5].Knit.Controllers.MapController;
    return not(_:isInDenyRegion(K)or _:isOutOfBounds(K));
end);
return J and y==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12520 ]] 
[12520]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if K.owners<=0 then
        return;
    end;
    if _.matchState~=1 or Y:GetNetworkPing()>K.config.maxPing then
        table.clear(K.states);
        return;
    end;
    local z=os.clock();
    K.readPearls(z);
    K.readCage(z);
    local _=n.List;
    for Y,Y in _,nil,nil do
        K.sampleEntity(Y,z);
    end;
    _=K.states;
    for Y,n in _,nil,nil do
        if z-n.seen>2 then
            K.states[Y]=nil;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12522 ]] 
[12522]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z then
        while true do
            if K.isAlive then
                local z,n=K.character.RootPart,K.character.Head;
                local K=z.Position;
                local y=n and n.Position-K or Vector3.new(0,2,0);
                if _(K,y)then
                    n=nil;
                    for Q=1,8,1 do
                        if not(_(K+Vector3.new(0,3*Q,0),y))then
                            n=3*Q;
                            break;
                        end;
                    end;
                    if n then
                        z.CFrame=z.CFrame+Vector3.new(0,n,0);
                        z.AssemblyLinearVelocity=Vector3.zero;
                    end;
                end;
            end;
            task.wait();
            local z=Y[4][Y[6]].enabled;
            if not z then
                break;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12530 ]] Strings: [pistonware/autoqueuedodge.txt, Gold]
[12530]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    local a=z[15];
    local Z=z[16];
    local m=z[17];
    return function()local function z(M,S)if M==nil then
        return S;
    end;
    return M.enabled;
end;
local function M(S,u)return S and S.value or u;
end;
pcall(writefile,"pistonware/autoqueuedodge.txt",K:JSONEncode({enabled=true,rankVeto=z(_[4][_[6]],true),vetoCount=M(Y[4][Y[6]],2),outnumbered=z(n[4][n[6]],true),advanced=z(y[4][y[6]],false),rankAdvantage=z(Q[4][Q[6]],true),advantageCount=M(J[4][J[6]],3),weakDevices=z(f[4][f[6]],true),gamepadCount=M(q[4][q[6]],2),mobileCount=M(t[4][t[6]],3),mixedDevices=z(T[4][T[6]],true),lowRank=z(L[4][L[6]],true),lowRankTier=M(X[4][X[6]],"Gold"),extraPlayer=z(l[4][l[6]],true),maxWait=M(a[4][a[6]],30),notify=z(Z[4][Z[6]],true),requeue=z(m[4][m[6]],false)}));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12533 ]] Strings: [Viewmodel]
[12533]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)local _=workspace.CurrentCamera;
    local Y=_ and(_:FindFirstChild("Viewmodel"));
    if Y then
        if z:IsDescendantOf(Y)then
            return true;
        end;
    end;
    _=K.hand and K.hand.tool;
    return _~=nil and _.Parent~=nil and(z==_ or z:IsDescendantOf(_));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12538 ]] Strings: [Part]
[12538]=function(z,z,z,z,z)return function(z)return function(z)local K=Instance.new("Part");
    K.Anchored=true;
    K.CanCollide=false;
    K.CanQuery=false;
    K.CanTouch=false;
    K.CastShadow=false;
    K.Transparency=1;
    K.Size=Vector3.new(0.05,0.05,0.05);
    K.CFrame=CFrame.new(z);
    K.Parent=workspace;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12548 ]] 
[12548]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_)local Y,n=K(z.Ingredients),{};
    for K,y in _,nil,nil do
        z=Y[K]or 0;
        if y>z then
            return nil;
        end;
        Y[K]=z-y;
    end;
    for z,K in Y,nil,nil do
        for _=1,K,1 do
            table.insert(n,z);
        end;
    end;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12551 ]] 
[12551]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)K.accumulator=K.accumulator+z;
    if K.accumulator<K.interval then
        return;
    end;
    K.accumulator=0;
    if next(_)==nil then
        return;
    end;
    z=K.current():ToHex();
    if z==K.last then
        return;
    end;
    K.last=z;
    z=Y.Events and Y.Events.EntityUpdated;
    if not z then
        return;
    end;
    local K=Y.List;
    for Y,n in K,nil,nil do
        Y=n.Player;
        local K=Y and _[Y.UserId];
        if K then
            if K.Tag then
                pcall(z.Fire,z,n);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12614 ]] Strings: [ScaledGui, ClickGui, Visible, PlayerGui, MatchDraftApp]
[12614]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[9];
    local f=z[10];
    local q=z[11];
    return function(t)if not(t)then
        table.clear(K);
        table.clear(_);
        table.clear(Y);
        table.clear(n);
        return;
    end;
    if y.threadFix then
        setthreadidentity(8);
    end;
    t=y.gui:FindFirstChild("ScaledGui");
    local K=t and(t:FindFirstChild("ClickGui"));
    if K then
        local _=false;
        Q[4][Q[6]]:clean(K:GetPropertyChangedSignal("Visible"):Connect(function()if _ then
            return;
        end;
        _=true;
        task.defer(function()_=false;
        if y.threadFix then
            setthreadidentity(8);
        end;
        if not(Q[4][Q[6]].enabled)then
            return;
        end;
        local _=not K.Visible;
        for K in z[7],nil,nil do
            if K.Parent then
                K.Visible=_;
            end;
        end;
        for K in z[8],nil,nil do
            if K.Parent then
                K.Visible=_;
            end;
        end;
    end);
end));
end;
t=J(f:WaitForChild("PlayerGui"));
local function z(K)if K.Name=="MatchDraftApp"then
    q(K);
end;
end;
Q[4][Q[6]]:clean(t.ChildAdded:Connect(z));
z=t:FindFirstChild("MatchDraftApp");
if z then
    q(z);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12617 ]] Strings: [GuiButton]
[12617]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K(z);
    if not(Y)then
        return;
    end;
    if z:IsA("GuiButton")then
        _(z,Y);
    end;
    for K,K in z:GetDescendants()do
        if K:IsA("GuiButton")then
            _(K,Y);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12630 ]] 
[12630]=function(z,K,K,K,K)return function(K,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    return function(K)if K then
        _[4][_[6]]={};
        Y[4][Y[6]]={};
        local K,f=ipairs,z[127](n:GetPlayers());
        for q,q in K(z:Hc(f))do
            y(q);
        end;
        local function z(K)y(K);
        end;
        Q[4][Q[6]]:clean(n.PlayerAdded:Connect(z));
    else
        local z=_[4][_[6]];
        for K,y in z,nil,nil do
            if K then
                if K:IsDescendantOf(n)then
                    J(K,true);
                end;
            end;
        end;
        _[4][_[6]]={};
        Y[4][Y[6]]={};
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12634 ]] 
[12634]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12636 ]] 
[12636]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)local f,q,t=z.Position,os.clock()+3,K[4][K[6]].enabled;
    while true do
        if _[4][_[6]].enabled then
            if not(Y.isAlive)then
                break;
            end;
        else
            break;
        end;
        if(f-Y.character.RootPart.Position).Magnitude>30 then
            break;
        end;
        if not(n(z))then
            if y[4][y[6]].enabled then
                break;
            end;
        end;
        if t then
            Q.BlockBreakController.blockBreaker:setCooldown(0);
        end;
        Q.breakBlock(z,false,nil,nil,nil,nil,false);
        task.wait(t and 0 or 0.25);
        local K=z.Parent==nil or not J(f);
        if K or os.clock()>q then
            break;
        end;
    end;
    if t then
        Q.BlockBreakController.blockBreaker:setCooldown(0.3);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12641 ]] 
[12641]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y,Q)local J,f=z.X*y.X+z.Z*y.Z-K[4][K[6]],-(z.X*Q.X+z.Z*Q.Z)-_[4][_[6]];
    z=math.abs(J)<=Y[4][Y[6]]and math.abs(f)<=n[4][n[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12650 ]] 
[12650]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]].row then
        K[4][K[6]].row.Visible=z;
    end;
    _();
    for _,_ in Y,nil,nil do
        pcall(function()_.Frame.BackgroundTransparency=1-(z and K[4][K[6]].opacity or 0);
        _.Frame.Border.Enabled=z;
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12657 ]] Strings: [TextLabel, function, Bold]
[12657]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=Instance.new("TextLabel");
    n.AnchorPoint=Vector2.new(0.5,0.5);
    n.BackgroundTransparency=1;
    n.BorderSizePixel=0;
    n.Size=UDim2.fromOffset(40,24);
    n.Text=z;
    n.TextColor3=Color3.new(1,1,1);
    n.TextStrokeColor3=Color3.new();
    n.TextStrokeTransparency=0.4;
    n.TextSize=Y;
    n.Visible=false;
    z=K.libraries and K.libraries.fonts;
    if z then
        if type(z.track)=="function"then
            pcall(z.track,n,"Bold");
        end;
    end;
    n.Parent=_[4][_[6]];
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12659 ]] Strings: [studs, stud]
[12659]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12661 ]] 
[12661]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=table.find(z,Y);
    if n then
        table.remove(z,n);
    end;
    z=K[Y];
    if z then
        z:Disconnect();
        K[Y]=nil;
    end;
    _[Y]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12668 ]] 
[12668]=function(z,z,z,z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12671 ]] 
[12671]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function()if not(K.loaded)then
        if K.enabled()then
            K.generation=K.generation+1;
            K.loaded=true;
            K.spawn(_[4][_[6]]);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12673 ]] Strings: [table]
[12673]=function(z,z,z,z,z,z,z)return function(z)return function(K,_)local Y,n=pcall(function()local y=z[1].BedwarsShopController:getShopComponent(_);
    return y and(y:getShopItems());
end);
if Y then
    if not(type(n)=="table")then
        return nil;
    end;
else
    return nil;
end;
for z,z in n,nil,nil do
    if z.itemType==K then
        return z;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12679 ]] Strings: [Team, bed, BasePart, NoBreak]
[12679]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=K:GetAttribute("Team");
    if z==nil then
        return nil;
    end;
    for K,Y in _:GetTagged("bed")do
        if Y:IsA("BasePart")then
            K=workspace;
            if Y:IsDescendantOf(K)then
                if Y:GetAttribute("Team"..tostring(z).."NoBreak")~=nil then
                    return Y;
                elseif tostring(Y:GetAttribute("TeamId"))==tostring(z)then
                    return Y;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12689 ]] Strings: [Map]
[12689]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K.FindFirstChild(workspace,"Map");
    if z~=_[4][_[6]]then
        _[4][_[6]]=z;
        Y.FilterDescendantsInstances=z and{z}or{};
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12699 ]] Strings: [stud, studs]
[12699]=function(z,z,z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12709 ]] 
[12709]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)for _,_ in K,nil,nil do
        _.Tag.TextSize=18*z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12713 ]] Strings: [none]
[12713]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)if K.ItemOwner==z then
        K.ItemOwner="none";
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12727 ]] 
[12727]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_,Y,n,y)local Q,J,f,q=Y.gravitationalAcceleration or 196.2,Y.launchVelocity,_.Velocity,y or Vector3.zero;
    Y=_.Position+q;
    y,_=(Y-z).Magnitude,K.targetGravity(n);
    local t=K.solveAim(z,J,Q,n,q,f,_,0);
    return t or Y+f*(y/J);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12741 ]] 
[12741]=function(z,K,K,K,K,K,K)return function(K,_,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    local J=K[6];
    local f=K[7];
    local q=K[8];
    return function(t)if not(t)then
        return;
    end;
    local t,T,L=_.TouchEnabled and Y.ViewportSize/2 or _:GetMouseLocation(),{},y.Character;
    z:nc(T,0,L,Y,Q);
    n.FilterDescendantsInstances=T;
    L=Y:ViewportPointToRay(t.X,t.Y);
    t=workspace:Raycast(L.Origin,L.Direction*2000,n);
    if t then
        J[4][J[6]]=t.Position;
        if f[4][f[6]]then
            f[4][f[6]]:SetPointTarget(J[4][J[6]]);
            J[4][J[6]]=nil;
        end;
    end;
    if not(q[4][q[6]].enabled)then
        q[4][q[6]]:flip();
    end;
    task.defer(function()if K[9][4][K[9][6]].enabled then
        K[9][4][K[9][6]]:flip();
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12756 ]] 
[12756]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z=K.Modules[_..Y[4][Y[6]]];
    local K=n[4][n[6]].enabled and z and z.enabled;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12759 ]] Strings: [BasePart]
[12759]=function(z,z,z,z,z)return function(z)return function(z)if z:IsA("BasePart")then
    return z.Position;
end;
local K=z.PrimaryPart or z:FindFirstChildWhichIsA("BasePart",true);
return K and K.Position or z:GetPivot().Position;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12794 ]] 
[12794]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12807 ]] 
[12807]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z,_)local Y=K(_,z);
    return not Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12815 ]] Strings: [Model]
[12815]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if z.Name==K then
        if z:IsA("Model")then
            if not(_[z])then
                _[z]={};
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12822 ]] 
[12822]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]]then
        if not(K[4][K[6]].enabled)then
            return false;
        end;
    end;
    local z=Y.Name;
    return _(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12843 ]] Strings: [InventorySelectHotbarSlot]
[12843]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K.handHeld then
        if K.handHeld()then
            return;
        end;
    end;
    if z and K.inventory.hotbarSlot~=z then
        _.Store:dispatch({type="InventorySelectHotbarSlot",slot=z});
        local _=os.clock()+0.15;
        while os.clock()<_ do
            local _=K.inventory;
            if _ then
                if _.hotbarSlot==z then
                    break;
                end;
            else
                break;
            end;
            task.wait();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12850 ]] 
[12850]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()while true do
        local z=K.BlockCpsController;
        local K=z and tonumber(z.lastPlaceTimestamp)or 0;
        z=K+_[4][_[6]]+0.01-workspace:GetServerTimeNow();
        if z<=0 then
            return;
        end;
        task.wait(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12892 ]] 
[12892]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()if not(K.isAlive)then
        return nil;
    end;
    local z=K.character.RootPart;
    if not(z)then
        return nil;
    end;
    local K=z.Position;
    for Q,J in _,nil,nil do
        Q,z=pcall(J,K);
        if Q then
            if z then
                if z.RootPart then
                    J=Y.SorcererBalance;
                    local _=J and J.getSorcererTierData(J.getSorcererTier(n));
                    local Y,n=math.max(_ and _.projectileVelocity or 70,1),z.RootPart.Position;
                    _=n+z.RootPart.AssemblyLinearVelocity*((n-K).Magnitude/Y)-K;
                    if _.Magnitude>0.001 then
                        y.Targets[z]=tick()+1;
                        return _.Unit;
                    end;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12893 ]] Strings: [id=(%d+)]
[12893]=function(z,K,K,K,K,K)return function(K,K)local _=K[1];
    local Y=K[2];
    return function(K,n)local y=K and(K:match("id=(%d+)"));
    if y then
        K=z[127](tonumber(y));
        return _:GetPlayerByUserId(z:Hc(K));
    end;
    if n and n~=""then
        for z,z in _:GetPlayers()do
            if Y(z,n)then
                return z;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12896 ]] Strings: [Humanoid, Animator, Animate, Animation, rbxassetid://129444129354806]
[12896]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[2];
    return function()local _,Y,n,y,Q;
    local function J()if n then
        pcall(function()n:Stop(0);
        n:Destroy();
    end);
    n=nil;
end;
if y then
    y:Destroy();
    y=nil;
end;
if Q then
    if Q.Parent then
        Q.Enabled=true;
    end;
end;
Q=nil;
end;
local function f(q)J();
    local t=q:WaitForChild("Humanoid",10);
    local T=t and(t:WaitForChild("Animator",10));
    if T then
        if _.enabled then
            if not(z[1].Character==q)then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    Q=q:FindFirstChild("Animate");
    if Q then
        Q.Enabled=false;
    end;
    y=Instance.new("Animation");
    y.AnimationId="rbxassetid://129444129354806";
    n=T:LoadAnimation(y);
    q=n;
    q.Priority=Enum.AnimationPriority.Action4;
    n.Looped=true;
    n:Play(0,1,1);
    _:clean(t.Died:Connect(J));
end;
_=K.categories.Utility:module("GourmetRace",{toggled=function(K)if not(K)then
    J();
    if Y then
        Y:Destroy();
        Y=nil;
    end;
    return;
end;
local n,y=pcall(function()assert(isfile("pistonware/assets/GourmetRace.mp3"),"missing");
return z[3]("pistonware/assets/GourmetRace.mp3");
end);
if not(n)then
    z[4]("GourmetRace","Put the mp3 at pistonware/assets/GourmetRace.mp3",6,"warning");
    task.defer(function()if _.enabled then
        _:flip(nil,true);
    end;
end);
return;
end;
Y=Instance.new("Sound");
Y.SoundId=y;
Y.Volume=1;
K=Y;
K.Parent=workspace;
Y:Play();
if z[1].Character then
    task.spawn(f,z[1].Character);
end;
local function K(Y)task.spawn(f,Y);
end;
_:clean(z[1].CharacterAdded:Connect(K));
end,about="Developer test: plays Gourmet Race and a dance on your character."});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12907 ]] Strings: [backstop, ,z.mode or, made at %.3f]
[12907]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y,Q,J)z.landedAt=y;
    local f=y-z.born;
    if f>1.5 or J=="backstop"then
        if shared.PistonwareDeveloper==true then
            K(string.format("a %s tracer (%s) ended (%s) after %.2f s",z.mode or"new",z.shot and tostring(z.shot.id)or string.format("made at %.3f",z.born),tostring(J),f));
        end;
    end;
    J,f,y=z.p,z.v,z.T;
    if J then
        if f then
            if y then
                if Q then
                    if not(Q>0)then
                        return;
                    end;
                else
                    return;
                end;
            else
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    Q=math.min(Q,0.1);
    local K=f*Q+z.accel*(0.5*Q*Q);
    local q=K.Magnitude;
    if q<0.01 then
        return;
    end;
    local t,T={},_.Character;
    if T then
        t[#t+1]=T;
    end;
    T=workspace.CurrentCamera;
    if T then
        t[#t+1]=T;
    end;
    Y.FilterDescendantsInstances=t;
    T=workspace:Raycast(J,K,Y);
    if T then
        t=Q*math.clamp((T.Position-J).Magnitude/q,0,1);
        n(z,T.Position,f+z.accel*t,y+t);
        return true;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12924 ]] 
[12924]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(_)local Y=K(_);
    if not Y then
        return false;
    end;
    local K,_=pcall(function()local n=z[2].AbilityController;
    return n:canUseAbility(Y,{disableBlockedAbilityAlert=true});
end);
return K and _ or false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12935 ]] Strings: [Generator, ItemDrop]
[12935]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[8];
    return function(f)if f then
        for f,f in K:GetTagged("Generator")do
            _(f);
        end;
        Y[4][Y[6]]:clean(K:GetInstanceAddedSignal("Generator"):Connect(_));
        Y[4][Y[6]]:clean(K:GetInstanceRemovedSignal("Generator"):Connect(n));
        Y[4][Y[6]]:clean(K:GetInstanceAddedSignal("ItemDrop"):Connect(y));
        local function K()pcall(z[7]);
        end;
        Y[4][Y[6]]:clean(Q.RenderStepped:Connect(K));
    else
        for z in J,nil,nil do
            n(z);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12953 ]] Strings: [MapCFrames, CFrameValue, bound_1, corner_1, bound_2]
[12953]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)local _=K:FindFirstChild("MapCFrames");
    if not _ then
        return nil;
    end;
    local function K(Y,n)local y=_:FindFirstChild(Y)or _:FindFirstChild(n);
        return y and y:IsA("CFrameValue")and y.Value.Position or nil;
    end;
    local _,Y=K("bound_1","corner_1"),K("bound_2","corner_2");
    if _ then
        if not(Y)then
            return nil;
        end;
    else
        return nil;
    end;
    local function K(n,y)local Q,J=math.round(n/3),math.round(y/3);
        if Q>J then
            Q,J=J,Q;
        else
        end;
        return Q*3-1.5,J*3+1.5;
    end;
    local n,y=K(_.X,Y.X);
    local Q,J=K(_.Y,Y.Y);
    local f,q=K(_.Z,Y.Z);
    if y-n<=12 then
        return nil;
    elseif q-f<=12 then
        return nil;
    elseif J-Q<=32 then
        return nil;
    end;
    return{low=Vector3.new(n,Q,f),high=Vector3.new(y,J,q),sides=z.X>=n and z.X<=y and z.Z>=f and z.Z<=q};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12959 ]] 
[12959]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value.."s"or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12983 ]] Strings: [trapper, TrapperCount_, throw, place]
[12983]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)local f=K.hasKit("trapper")and _()~=nil;
    for K,_ in Y,nil,nil do
        if n(_)then
            if y(_,z)<8 then
                if f then
                    if Q("TrapperCount_".._)>0 then
                        return _,"throw";
                    end;
                end;
                K=J(_);
                if K then
                    local z=K.amount;
                    if z then
                        if z>0 then
                            return _,"place";
                        end;
                    end;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12987 ]] 
[12987]=function(z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()K(nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 12989 ]] 
[12989]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function(z)if z then
        K();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13000 ]] Strings: [table, Team]
[13000]=function(z,z,z,z,z,z)return function(z,K)local K=z[2];
    return function()local _,Y=pcall(function()local n=z[1].TeamController;
    return n:getPlayerTeam(K);
end);
if _ then
    if type(Y)=="table"then
        if Y.id~=nil then
            return Y.id;
        end;
    end;
end;
return K:GetAttribute("Team");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13003 ]] Strings: [light_sword]
[13003]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K("light_sword");
    local K=_.isAlive and z and z.tool and Y.holding("light_sword",z)and z or nil;
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13015 ]] 
[13015]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13016 ]] Strings: [stud, studs]
[13016]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13017 ]] 
[13017]=function(z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13019 ]] Strings: [default-ping-location, EnumItem, Button, DPad, Thumbstick]
[13019]=function(z,z,z,z,z)return function(z)local K=z[2];
    return function()local _;
    local function Y()local n,y,Q=z[1]:GetBoundActionInfo("default-ping-location"),{},{};
        for J,f in n.inputTypes or{},nil,nil do
            if typeof(f)=="EnumItem"then
                if f.EnumType==Enum.KeyCode then
                    J=f.Name;
                    if not(J:sub(1,6)=="Button")then
                        if not(J:sub(1,4)=="DPad")then
                            if not(J:sub(1,10)=="Thumbstick")then
                                table.insert(y,f);
                                table.insert(Q,J);
                            end;
                        end;
                    end;
                end;
            end;
        end;
        local J=n.priorityLevel;
        n=J and#y>0 and table.concat(Q,",").."@"..J or"";
        if n==_ then
            return;
        end;
        z[1]:UnbindAction("ping-location-sink");
        if n~=""then
            z[1]:BindActionAtPriority("ping-location-sink",function()return Enum.ContextActionResult.Sink;
        end,false,J+1,table.unpack(y));
    end;
    _=n;
end;
K[4][K[6]]:clean(function()pcall(function()z[1]:UnbindAction("ping-location-sink");
end);
end);
local z,_,n=K[4][K[6]],task,function()while true do
    local y=K[4][K[6]];
    if not y.enabled then
        break;
    end;
    pcall(Y);
    task.wait(1);
end;
end;
z:clean(_.spawn(n));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13029 ]] Strings: [Instance]
[13029]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()local z=os.clock();
    if not(K(z))then
        return;
    end;
    local K=_.List;
    for _,J in K,nil,nil do
        local K,f=J.RootPart,J.Humanoid;
        if K then
            if typeof(f)=="Instance"then
                local f,q=K.AssemblyLinearVelocity,K.Position.Y;
                _=Y.isAirborne(J,f);
                n(J,K,z,_);
                local K=y[J];
                if K then
                else
                    K={air=_,takeoffs={},landedAt=z,groundY=q};
                    y[J]=K;
                end;
                if _ then
                    if not(K.air)then
                        if f.Y>8 then
                            local Y,n,y=K.takeoffs,table.insert,{at=z};
                            y.dwell=z-K.landedAt;
                            n(Y,y);
                            if#Y>3 then
                                table.remove(Y,1);
                            end;
                            K.peakY=q;
                        end;
                    end;
                else
                    if K.air then
                        if K.peakY then
                            Q(J,K);
                        end;
                        K.landedAt=z;
                    end;
                    K.groundY=q;
                end;
                if _ then
                    if K.peakY then
                        if q>K.peakY then
                            K.peakY=q;
                        end;
                        if f.Y<0 then
                            Q(J,K);
                        end;
                    end;
                end;
                K.air=_;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13039 ]] Strings: [Model]
[13039]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        local Y=K[4][K[6]];
        if z:IsDescendantOf(Y)then
            return false;
        end;
    end;
    local K=z:FindFirstAncestorWhichIsA("Model");
    z=K~=nil and K~=workspace and K~=_.Character;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13040 ]] 
[13040]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()K.generation=_.loadGeneration;
    local z=K.names;
    for Y,Y in z,nil,nil do
        local z=_.modules[Y];
        if z and z.enabled then
            if not(K.paused[Y])then
                K.paused[Y]=true;
                K.keep(Y,z);
                pcall(function()z:flip(nil,true);
            end);
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13044 ]] 
[13044]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K[4][K[6]].enabled and _.Gen==z;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13062 ]] 
[13062]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y,n={},{};
    for y,y in z,nil,nil do
        K(Y,n,y);
    end;
    z=_.DrillTabletController and _.DrillTabletController.drillList or{};
    for _,_ in z,nil,nil do
        K(Y,n,_);
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13063 ]] 
[13063]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()for z in K,nil,nil do
        pcall(_,z);
    end;
    table.clear(K);
    Y[4][Y[6]]=nil;
    if n[4][n[6]]then
        n[4][n[6]]=false;
        if not(y.InfiniteFlyActive)then
            y.Clutching=nil;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13070 ]] Strings: [dizzy-status, Humanoid]
[13070]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if not(K())then
        return;
    end;
    local Y,n=0,false;
    _:BindToRenderStep("dizzy-status",Enum.RenderPriority.Character.Value+1,function(y)if n then
        if not(K())then
            _:UnbindFromRenderStep("dizzy-status");
            return;
        end;
    end;
    local K=Y;
    Y=K+y*math.random()*2;
    K=z[3].Character;
    y=K and(K:FindFirstChildOfClass("Humanoid"));
    if y then
        if y.MoveDirection.Magnitude==0 then
            return;
        end;
    else
        return;
    end;
    y:Move(CFrame.Angles(0,math.sin(Y*2*3.141592653589793/1.2)*0.5235987755982988,0)*y.MoveDirection);
end);
local K=false;
pcall(function()local Y=z[4]();
local z=Y and Y.dizzyMaid;
if z then
    z:GiveTask(function()_:UnbindFromRenderStep("dizzy-status");
end);
K=true;
end;
end);
n=not K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13074 ]] 
[13074]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()for z,z in K,nil,nil do
        for _,_ in z,nil,nil do
            pcall(function()_:Disconnect();
        end);
    end;
end;
table.clear(K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13081 ]] 
[13081]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()if not(K.Knitless)then
        pcall(_.hook);
    end;
    if not(_.Hook)then
        _.watch();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13094 ]] 
[13094]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)K.friendSpectating=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13104 ]] 
[13104]=function(z,z,z,z,z)return function(z)return function(z)z.startPart:Destroy();
    z.endPart:Destroy();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13122 ]] 
[13122]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z,_,Y)Y=Y or(K(z,_));
    if not(Y)then
        return false;
    end;
    z.CFrame=CFrame.new(Y.Position+Vector3.new(0,3.5,0))*(z.CFrame-z.CFrame.Position);
    z.AssemblyLinearVelocity=Vector3.zero;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13145 ]] Strings: [Instance]
[13145]=function(z,z,z,z,z,z,z)return function(z,z)return function(z,K)if typeof(z)~="Instance"then
    return nil;
end;
if z.UseJumpPower then
    return z.JumpPower>0 and z.JumpPower or nil;
end;
local _=z.JumpHeight;
if _ then
    if _>0 then
        if not(K>0)then
            return nil;
        end;
    else
        return nil;
    end;
else
    return nil;
end;
return math.sqrt(2*K*_);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13158 ]] 
[13158]=function(z,z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13161 ]] Strings: [stud, studs]
[13161]=function(z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13170 ]] Strings: [fisherman_bobber, ProjectileShooter]
[13170]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=workspace;
    for _,_ in z:GetChildren()do
        if _.Name=="fisherman_bobber"then
            if _:GetAttribute("ProjectileShooter")==K.UserId then
                return _;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13183 ]] Strings: [table, Instance, Player]
[13183]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)local _=type(z)=="table"and z.hunter;
    if typeof(_)~="Instance"then
        return;
    elseif not(_:IsA("Player"))then
        return;
    end;
    local Y=K[_];
    if Y then
        Y.previous=nil;
    end;
    K[_]={target=z.target,reward=z.reward,previous=Y,changed=os.clock()};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13189 ]] 
[13189]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13191 ]] 
[13191]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z then
        K.AudioManager:playAudio(K.SoundList.BEDWARS_PURCHASE_ITEM);
    end;
    _[4][_[6]],Y[4][Y[6]]=tick()+(z and 0.5 or 2),false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13193 ]] Strings: [ Generator]
[13193]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y)local Q=K(z,y.Part.Position);
    if not(Q)then
        return;
    end;
    y.Ore=Q;
    if not(_(Q))then
        return;
    end;
    y.Name=Q:sub(1,1):upper()..Q:sub(2).." Generator";
    y.Tag=Y();
    y.Tag.TextColor3=n[Q]or Color3.new(1,1,1);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13204 ]] 
[13204]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z=1;
    while true do
        if z<=0 then
            return;
        else
            K[4][K[6]]=K[4][K[6]]-K[4][K[6]]%2+1;
            _[4][_[6]]=(123205*_[4][_[6]]+65290633)%268435456;
            _[4][_[6]],z=(388037*_[4][_[6]]+23088209)%268435456,0;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13261 ]] 
[13261]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K[4][K[6]]~=nil and K[4][K[6]].enabled;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13271 ]] Strings: [BedShieldEndTime]
[13271]=function(z,z,z,z,z,z,z)return function(z)return function(z)return(z:GetAttribute("BedShieldEndTime")or 0)>workspace:GetServerTimeNow();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13284 ]] Strings: [PlayerGui, TabListScreenGui]
[13284]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()local z=K:FindFirstChild("PlayerGui");
    return z and(z:FindFirstChild("TabListScreenGui"));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13297 ]] Strings: [telepearl]
[13297]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if z.Name=="telepearl"then
        table.insert(K.pearls,z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13305 ]] 
[13305]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value.."%"or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13309 ]] Strings: [Speed]
[13309]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()K.release("Speed");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13327 ]] 
[13327]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    return function()local z=K[4][K[6]]~=nil and K[4][K[6]].enabled;
    local K,T=z and _[4][_[6]]~=nil and _[4][_[6]].enabled,{Y[4][Y[6]],n[4][n[6]],y[4][y[6]],Q[4][Q[6]],_[4][_[6]]};
    for _,_ in T,nil,nil do
        if _.row then
            _.row.Visible=z;
        end;
    end;
    T={J[4][J[6]],f[4][f[6]],q[4][q[6]],t[4][t[6]]};
    for z,z in T,nil,nil do
        if z.row then
            z.row.Visible=K;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13363 ]] Strings: [Falcon, ^Falcon%-]
[13363]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)if not(z)then
        return false;
    end;
    local _=K[z];
    if _~=nil then
        return _;
    end;
    _=false;
    if z.Player then
    else
        local Y=z.Character and z.Character.Name;
        _=Y~=nil and(Y=="Falcon"or Y:match("^Falcon%-")~=nil);
    end;
    K[z]=_;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13374 ]] 
[13374]=function(z,z,z,z,z)return function(z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13379 ]] Strings: [Health, MaxHealth, number]
[13379]=function(z,z,z,z,z,z,z)return function()return function(z)local K=z.Character;
    local _,Y=K and(K:GetAttribute("Health")),K and(K:GetAttribute("MaxHealth"));
    if type(_)~="number"or type(Y)~="number"then
        _,Y=z.Health,z.MaxHealth or 100;
    else
    end;
    if type(_)~="number"then
        return nil;
    elseif type(Y)~="number"then
        return nil;
    elseif _<=0 then
        return nil;
    elseif Y<=0 then
        return nil;
    end;
    return _/Y*100;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13382 ]] 
[13382]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K.BlockPlacementController.disabled;
    return not z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13393 ]] 
[13393]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function(z)for _,_ in K,nil,nil do
        if _.Tag then
            _.Tag.TextSize=14*z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13395 ]] Strings: [AntiFall]
[13395]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()K.release("AntiFall");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13406 ]] Strings: [sword, number]
[13406]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.hand;
    local Y=z and z.tool;
    if Y then
        if z.toolType=="sword"then
            local n=_(Y.Name);
            local _=n and n.sword;
            if _ then
                if type(_.damage)=="number"then
                    if _.damage>0 then
                        return z;
                    end;
                end;
            end;
        end;
    end;
    Y=K.tools;
    return Y.sword;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13466 ]] Strings: [string]
[13466]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=K.hand and K.hand.tool;
    if not(n)then
        return false;
    end;
    if Y then
        if Y.tool then
            return n==Y.tool;
        end;
    end;
    if type(z)~="string"then
        return false;
    end;
    Y=K.inventory and K.inventory.inventory;
    local K=Y and Y.hand;
    if K then
        if K.itemType==z then
            return true;
        end;
    end;
    if n.Name==z then
        return true;
    end;
    K=_.ItemMeta and _.ItemMeta[z];
    z=K and K.displayName;
    return type(z)=="string"and n.Name==z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13473 ]] Strings: [RootPart, Closest]
[13473]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    return function()local z,L={Range=K[4][K[6]].value,Part="RootPart",Players=true,NPCs=false,Wallcheck=_[4][_[6]].enabled or nil,Milo=Y(n[4][n[6]]),Sort=y[Q[4][Q[6]].value],Cache=true,Output=J},f[4][f[6]].targetPriority;
    local K=L and L.value or"Closest";
    if K~="Closest"or q.active then
        z.Sort=t(z.Sort,K);
    end;
    L=T.AllPosition;
    return L(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13475 ]] Strings: [Health]
[13475]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K();
    if not(Y)then
        return true;
    end;
    local K=Y.Character;
    Y=K and K.PrimaryPart;
    if not Y then
        return true;
    end;
    local n=K:GetAttribute("Health");
    if n then
        if n<=0 then
            return true;
        end;
    else
        return true;
    end;
    if not(_.isAlive)then
        return false;
    end;
    n=(Y.Position-_.character.RootPart.Position).Magnitude;
    return n>z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13490 ]] 
[13490]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    return function()if K.desc then
        K.desc:Disconnect();
        K.desc=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13493 ]] Strings: [stud, studs]
[13493]=function(z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13495 ]] Strings: [HumanoidRootPart]
[13495]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if not(K(z))then
        return;
    end;
    if _.EntityThreads[z]then
        return;
    elseif _.getEntity(z)then
        return;
    end;
    local K=z:FindFirstChild("HumanoidRootPart");
    if not K then
        return;
    end;
    if z.PrimaryPart~=K then
        pcall(function()z.PrimaryPart=K;
    end);
end;
_.addEntity(z,nil,function()return true;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13498 ]] Strings: [number]
[13498]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=type(z)=="number"and z or z and z.UserId;
    z=Y and K[Y];
    if not z then
        return;
    end;
    local n,y=_.libraries and _.libraries.tags and _.libraries.tags.customtags,z.Name or z.Player and z.Player.Name;
    if n then
        if y then
            if n[y]==z.Tag then
                n[y]=z.PreviousTag;
            end;
        end;
    end;
    K[Y]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13527 ]] 
[13527]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    return function()K:Stop(0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13550 ]] Strings: [Level, PlacedByUserId]
[13550]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(Y,n)table.insert(Y,n);
    K[n]=n:GetAttribute("Level")or 0;
    _[n]=n:GetAttributeChangedSignal("Level"):Connect(function()local _,Y=n:GetAttribute("Level")or 0,K[n]or 0;
    K[n]=_;
    if _<=Y then
        return;
    end;
    Y=z[3]:GetPlayerByUserId(n:GetAttribute("PlacedByUserId")or 0);
    if Y then
        z[4](Y,_);
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13551 ]] 
[13551]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13576 ]] Strings: [string, (rbxthumb://type=Avatar%w*&id=)%d+]
[13576]=function(z,z,z,z,z,z)return function()return function(z,K)if type(z)~="string"then
    return nil;
end;
local _,Y=z:gsub("(rbxthumb://type=Avatar%w*&id=)%d+","%1"..K);
if Y>0 then
    if _~=z then
        return _;
    end;
end;
return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13579 ]] 
[13579]=function(z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function()K[4][K[6]]=K[4][K[6]]or _.StatusEffectUtil;
    local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13587 ]] Strings: [StreamerModeDisguise]
[13587]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z:GetAttribute("StreamerModeDisguise")==true then
        K[4][K[6]][z]=true;
        _(z,false);
    else
        local n;
        n=z:GetAttributeChangedSignal("StreamerModeDisguise"):Connect(function()if z:GetAttribute("StreamerModeDisguise")==true then
            K[4][K[6]][z]=true;
            _(z,false);
            n:Disconnect();
        end;
    end);
    Y[4][Y[6]]:clean(n);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13597 ]] 
[13597]=function(z,z,z,z,z)return function(z,z,z)return function()return not Attacking;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13600 ]] Strings: [CanDashNext, dash]
[13600]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function()local z=K.Character;
    local K=z~=nil and(z:GetAttribute("CanDashNext")or 0)<workspace:GetServerTimeNow()and _.AbilityController:canUseAbility("dash",{disableBlockedAbilityAlert=true});
    return K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13604 ]] Strings: [SemiBold]
[13604]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()K.libraries.fonts.track(_,"SemiBold");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13605 ]] 
[13605]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.SpiritBridgeController;
    local K=z and z.activeBridgeWalkerMap;
    if not(K)then
        return nil;
    end;
    local z,Y=pcall(K.get,K,_);
    return z and Y or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13614 ]] 
[13614]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y={z,K};
    for K,K in _:GetPlayers()do
        if K.Character then
            table.insert(y,K.Character);
        end;
    end;
    Y.FilterDescendantsInstances=y;
    z=workspace:Raycast(n.Position,Vector3.new(0,-400,0),Y);
    return z==nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13617 ]] 
[13617]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    return function()K.ProjectileController:createLocalProjectile(_,Y,n,y,Q,J,f,nil,nil,q.tool);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13636 ]] 
[13636]=function(z,K,K,K,K,K)return function(K,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    return function(K,Q)local J,f,q,t=#_+1,{},Y(n(K)),y(Q or"");
    z:nc(f,0,q,t,#K,K:lower());
    _[J]=f;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13637 ]] 
[13637]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function()if not(K.inventory)then
        return{};
    end;
    if not(_[4][_[6]].enabled)then
        local z=K.inventory.inventory and K.inventory.inventory.items or{};
        return z;
    end;
    local z,_={},K.inventory.hotbar or{};
    for K,K in _,nil,nil do
        if K.item then
            table.insert(z,K.item);
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13645 ]] Strings: [table, number]
[13645]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()local z=K.accent;
    if type(z)~="table"or type(z.hue)~="number"then
        return Color3.new(1,1,1);
    end;
    return Color3.fromHSV(z.hue,tonumber(z.sat)or 1,tonumber(z.value)or 1);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13653 ]] 
[13653]=function(z,z,z,z,z,z)return function(z)return function()return workspace.Blockcast;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13656 ]] 
[13656]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)if z then
        while true do
            if K.isAlive then
                local z=K.character.RootPart;
                if z.Velocity.Y<-_[4][_[6]].value then
                    Y();
                end;
            end;
            task.wait(0.1);
            local z=n[4][n[6]].enabled;
            if not z then
                break;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13714 ]] Strings: [Text]
[13714]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()local z,J=pcall(K,_);
    if z then
        if J==nil then
            return;
        elseif J==""then
            return;
        end;
    else
        return;
    end;
    if Y.last==J then
        return;
    end;
    n[_]=J;
    local z=y(J);
    if Y.original==J then
        if Y.last==z then
            Y.reverts=(Y.reverts or 0)+1;
            if Y.reverts>=2 then
                if Y.suppressed then
                    if Y.reverts>2 then
                        return;
                    end;
                else
                    Y.suppressed=true;
                    if Q(_)then
                        pcall(function()Y.conn=_:GetPropertyChangedSignal("Text"):Connect(Y.mark);
                    end);
                else
                    return;
                end;
            end;
        elseif Y.reverts>2 then
            return;
        end;
    else
        Y.reverts=0;
    end;
else
    Y.reverts=0;
end;
Y.last=z;
if z~=J then
    Y.original=J;
    pcall(function()_.Text=z;
end);
else
    Y.original=nil;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13716 ]] Strings: [table]
[13716]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)local Q=type(z)=="table"and z.entityInstance;
    if not(Q)then
        return;
    end;
    local J,f=workspace:GetServerTimeNow()-K:GetNetworkPing(),_[Q];
    if f then
        z=J-f;
        if z>=Y then
            if z<=n then
                y[4][y[6]]=y[4][y[6]]and math.min(y[4][y[6]],z)or z;
            end;
        end;
    end;
    _[Q]=J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13726 ]] Strings: [projectileaimbot, silentaim]
[13726]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[5];
    return function()local y=K[4][K[6]]and K[4][K[6]].enabled and _[4][_[6]]and _[4][_[6]].enabled;
    Y("projectileaimbot",y and function(K)return z[4](K);
end or nil);
Y("silentaim",y and n[4][n[6]]and n[4][n[6]].enabled and function(K)local _=z[6][4][z[6][6]];
return _(K);
end or nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13730 ]] 
[13730]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=_.CurrentCamera;
    return K(z);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13736 ]] 
[13736]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].enabled then
        _(Y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13748 ]] Strings: [table, function, string]
[13748]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)local Y,n=type(z.ammoItemTypes)=="table"and z.ammoItemTypes or nil;
    if Y then
        local y=K.inventory and K.inventory.hotbar or{};
        for K,K in Y,nil,nil do
            for Q,Q in y,nil,nil do
                if type(Q)=="table"then
                    if Q.item then
                        if Q.item.itemType==K then
                            n=K;
                            break;
                        end;
                    end;
                end;
            end;
            if n then
                break;
            end;
        end;
        if n then
        else
            for K,K in Y,nil,nil do
                if _(K)then
                    n=K;
                    break;
                end;
            end;
        end;
    else
    end;
    Y=z.projectileType;
    if type(Y)=="function"then
        local z,K=pcall(Y,n);
        Y=z and K or nil;
    else
    end;
    return type(Y)=="string"and Y or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13751 ]] 
[13751]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z)if z~=K[4][K[6]].enabled then
        return;
    end;
    _[4][_[6]]+=1;
    local Q=_[4][_[6]];
    if z then
        local z=Y();
        if not(z)then
            task.defer(function()if K[4][K[6]].enabled then
                if _[4][_[6]]==Q then
                    K[4][K[6]]:flip();
                end;
            end;
        end);
        return;
    end;
    if K[4][K[6]].enabled then
        if _[4][_[6]]~=Q then
            return;
        end;
    else
        return;
    end;
    if n[4][n[6]]then
        z:SetPointTarget(n[4][n[6]]);
        n[4][n[6]]=nil;
    end;
    z:Start();
elseif y[4][y[6]]then
    y[4][y[6]]:Stop();
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13769 ]] 
[13769]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K,K)return function()task.spawn(function()for K=1,6,1 do
    task.wait(2);
    if z[1].loaded==nil then
        return;
    end;
    z[2]();
end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13774 ]] 
[13774]=function(z,z,z,z,z)return function(z)return function()return"%";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13781 ]] Strings: [crop-meta]
[13781]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(_)if K[_]==nil then
        local Y,n=pcall(function()local y=z[2](z[3].TS.crop["crop-meta"]).getCropConfig(_);
        return y and y.stages and#y.stages;
    end);
    K[_]=Y and n or false;
end;
local z=K[_]or nil;
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13800 ]] 
[13800]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    return function(z)local _=z.RootPart;
    if _ then
        if not(_.Parent)then
            return nil;
        end;
    else
        return nil;
    end;
    local Y=workspace:Raycast(_.Position,Vector3.new(0,-((z.HipHeight or 3)+4),0),K.mapRayParams());
    return Y and Y.Position or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13805 ]] 
[13805]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Destroy();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13819 ]] Strings: [;if not(z)then if Q==, then if _.Name==]
[13819]=function(z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()local z,Q=K[4][K[6]]and K[4][K[6]].enabled,_[4][_[6]]and _[4][_[6]].value or"";
    if not(z)then
        if Q==""then
            return;
        end;
    end;
    local K=Y();
    if not(K)then
        return;
    end;
    for _,_ in K:GetDescendants()do
        if z then
            n(_);
        end;
        if Q~=""then
            if _.Name=="PlayerLevel"then
                y(_,Q);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13827 ]] 
[13827]=function(z,z,z,z,z,z,z)return function(z,z)return function(z,K)local _,Y,n=z-Vector3.new(3,3,3),z+Vector3.new(3,3,3),z+(K-z).Unit*100;
    return Vector3.new(math.clamp(n.X,_.X,Y.X),math.clamp(n.Y,_.Y,Y.Y),math.clamp(n.Z,_.Z,Y.Z));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13852 ]] 
[13852]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=K[z];
    K[z]=nil;
    if not _ then
        return;
    end;
    if _.Arrow then
        pcall(function()_.Arrow:Destroy();
    end);
end;
if _.Label then
    pcall(function()_.Label:Destroy();
end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13865 ]] Strings: [BedwarsItemShopApp, TeamUpgradeApp]
[13865]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function()if K()then
        return true;
    end;
    local K,_=pcall(function()local Y=z[2].AppController:isAppOpen("BedwarsItemShopApp")or z[2].AppController:isAppOpen("TeamUpgradeApp");
    return Y;
end);
return K and _==true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13887 ]] 
[13887]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y=K[z];
    if n then
        y=n;
    else
        y={};
        for n,n in _:GetTagged(z)do
            y[n]=true;
        end;
        local function n(Q)y[Q]=true;
        end;
        Y:clean(_:GetInstanceAddedSignal(z):Connect(n));
        local function n(Q)y[Q]=nil;
        end;
        Y:clean(_:GetInstanceRemovedSignal(z):Connect(n));
        K[z]=y;
    end;
    return y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13922 ]] 
[13922]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=pairs;
    for _,Y in z(K)do
        local z=Y.original;
        Y.original=nil;
        Y.last=nil;
        if z then
            pcall(function()_.Text=z;
        end);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13926 ]] 
[13926]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()if K.threadFix then
        setthreadidentity(8);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13931 ]] Strings: [ViewportFrame, Camera]
[13931]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z,_,Y)local n=Instance.new("ViewportFrame");
    n.Size=UDim2.fromOffset(32,32);
    n.BackgroundTransparency=1;
    n.Ambient=Color3.new(1,1,1);
    n.LightColor=Color3.new(1,1,1);
    n.Parent=z.Frame;
    if _ then
        _:PivotTo(CFrame.Angles(-0.13962634015954636,-0.6632251157578453,0));
        z=Vector3.new(-1.5,1.35,3.5);
        if Y then
            local Y,y=K(_);
            _:PivotTo(_:GetPivot()-Y);
            z=z.Unit*math.max(y.X,y.Y,y.Z,1)*1.35;
        else
        end;
        _.Parent=n;
        local K=Instance.new("Camera");
        K.CFrame=CFrame.lookAt(z,Vector3.new(0,0.05,0));
        K.Parent=n;
        n.CurrentCamera=K;
        n.LightDirection=Vector3.new(-0.6,-1,-0.4);
    end;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13936 ]] Strings: [stud, studs]
[13936]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13937 ]] 
[13937]=function(z,z,z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function(z)local _=K.swingAt;
    K.swingAt=z;
    if not(_)then
        return;
    end;
    local Y=z-_;
    if Y>1 then
        table.clear(K.swingGaps);
        K.swingNext=1;
    elseif Y>0.01 then
        K.swingGaps[K.swingNext]=Y;
        K.swingNext=K.swingNext%4+1;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13953 ]] 
[13953]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function()K.ViewmodelController:playAnimation(_,{fadeTime=0.12});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13983 ]] Strings: [table]
[13983]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        if type(z)=="table"then
            if z.player==_ then
                if z.bridgeId==K[4][K[6]].bridge.id then
                    K[4][K[6]]=nil;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13984 ]] Strings: [table, hidden_metal, Instance, Player, removal]
[13984]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if type(z)~="table"then
        return;
    elseif z.entityType~="hidden_metal"then
        return;
    end;
    local Y=z.collector;
    if typeof(Y)=="Instance"then
        if Y:IsA("Player")then
            if K(Y)then
                _(Y,"removal");
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13995 ]] 
[13995]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z,_=next,0;
    for Y,Y in z,K,nil do
        _+=Y;
    end;
    z=#K>0 and _/(60*#K)<=1.2 or#K<=0;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13996 ]] Strings: [BountyHunterLevel, BountyHunterExp]
[13996]=function(z,K,K,K,K,K)return function(K,K)local _=K[1];
    local Y=K[2];
    local n=K[3];
    return function(y)if y==_ then
        return;
    elseif Y[y]then
        return;
    end;
    n[y]={level=tonumber(y:GetAttribute("BountyHunterLevel"))or 0,exp=tonumber(y:GetAttribute("BountyHunterExp"))or 0};
    local _={};
    local function n()K[4](y);
    end;
    local Q,J=y:GetAttributeChangedSignal("BountyHunterLevel"):Connect(n),function()K[4](y);
end;
z:nc(_,0,Q,y:GetAttributeChangedSignal("BountyHunterExp"):Connect(J));
Y[y]=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 13997 ]] 
[13997]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K.CameraPerspectiveController;
    return z:getCameraPerspective();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14011 ]] 
[14011]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K.Knit and K.Knit.Controllers and K.Knit.Controllers.VoidDragonController;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14012 ]] Strings: [throw]
[14012]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q,J,f,q)for t,T in K(z,Q,J,f)do
        t=T.cell;
        if J=="throw"then
            if _(f,t,q)then
                return t,false,T.point;
            end;
        elseif Y(f,t)then
            if n(Q,t)then
                return t,false,T.point;
            end;
            if y(z,Q,t)then
                return t,true,T.point;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14029 ]] 
[14029]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q)while true do
        local J=#z>0 and K(Q)>0 and _[4][_[6]].enabled;
        if not J then
            break;
        end;
        J=table.remove(z,math.random(1,#z));
        if J.Parent then
            if not(Y[J.UserId])then
                Y[J.UserId]=true;
                n(J);
                task.wait(y[4][y[6]].value);
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14032 ]] Strings: [stud, studs]
[14032]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14033 ]] 
[14033]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z,Y={},next;
    for n in Y,K,nil do
        table.insert(z,n);
    end;
    Y=ipairs;
    for K,K in Y(z)do
        _(K);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14043 ]] Strings: [table]
[14043]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z,Y,n={},{},K[4][K[6]]and K[4][K[6]].active;
    local K=type(n)=="table"and n or{};
    for n,y in K,nil,nil do
        n=_.resolve(y);
        if n then
            if not(Y[n])then
                Y[n]=true;
                table.insert(z,n);
            end;
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14046 ]] 
[14046]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function()local z=K();
    return z and z.inDragonForm or false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14063 ]] 
[14063]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function()K.Parent=_.gui;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14067 ]] 
[14067]=function(z,z,z,z,z,z,z,z)return function()return function(z,K,_,Y,n,y)local Q,J,f=z.samplePos or{},z.sampleTime or{},z.hitAt;
    table.clear(z);
    z.hitAt=f;
    z.root=K;
    z.time=n;
    z.position=_;
    z.assembly=Y;
    z.velocity=Y;
    z.stable=Y;
    Q[1]=_;
    J[1]=n;
    z.samplePos=Q;
    z.sampleTime=J;
    z.sampleHead=1;
    z.sampleCount=1;
    z.damageTime=y;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14085 ]] Strings: [table, Instance]
[14085]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)local _=type(z)=="table"and z.attacker;
    if typeof(_)=="Instance"then
        K[_]=os.clock();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14122 ]] Strings: [HandInvItem]
[14122]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function(z,Q,J)if not(z)then
        return;
    end;
    if K.handHeld then
        if K.handHeld(z)then
            return;
        end;
    end;
    local f,q,t,T=_.FH,_.FhShot,_.fhSettle(),0;
    if J then
        if _.fhSelect(z,Q)then
            local L=os.clock();
            q.back,_.FhHoldUntil=L,L+t;
            _.fhSpend(L);
            T=L;
        else
        end;
    else
    end;
    Q=math.min(_.fhReply(),f.REPLY_MAX);
    local L,X=os.clock()+math.max(0.6,2*Q+0.3),0;
    repeat J=Y.Character and Y.Character:FindFirstChild("HandInvItem");
    if J then
        if z.Parent then
            if not(n.isAlive)then
                return;
            end;
        else
            return;
        end;
    else
        return;
    end;
    if K.handHeld then
        if K.handHeld(z)then
            return;
        end;
    end;
    local K=os.clock();
    if J.Value==z then
        X+=1;
        if X>=2 then
            if K-T>=Q then
                return;
            end;
        end;
    else
        X=0;
        if T==0 or K-T>=math.max(f.REASSERT,Q+t)then
            if y(z,0)then
                if T==0 then
                    q.back=K;
                else
                    q.again=q.again+1;
                end;
                _.FhHoldUntil=K+t;
                _.fhSpend(K);
                T=K;
            else
            end;
        else
        end;
    end;
    task.wait(0.05);
until os.clock()>L;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14124 ]] 
[14124]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]].enabled then
        _(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14145 ]] 
[14145]=function(z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.getEntity(z);
    if Y then
        if not(Y.Targetable)then
            return false;
        end;
    else
        return false;
    end;
    if Y.Player then
        z=_[4][_[6]].players;
        return z.enabled;
    end;
    Y=_[4][_[6]].npcs;
    return Y.enabled;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14159 ]] 
[14159]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if not(z)then
        return;
    end;
    for _,_ in z:GetDescendants()do
        K(_);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14164 ]] 
[14164]=function(z,z,z,z,z,z,z)return function(z,K,K)return function()local K,_=pcall(function()local Y=z[1].Store:getState();
    return Y and Y.Kit and Y.Kit.bountyHunterTarget;
end);
if not(K)then
    return nil;
end;
return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14189 ]] 
[14189]=function(z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14250 ]] Strings: [error, warn, autobank.pass, busy, observe]
[14250]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n,y={Stored={},Refused={}},K.claim(8);
    if y then
        local Q,J=pcall(K.pass,z,Y,y,n);
        if n.Opened then
            if not(n.Closed)then
                pcall(K.close,n);
            end;
        end;
        K.release(y);
        if not(Q)then
            n.Reason="error";
            if not(K.Warned)then
                K.Warned=true;
                _("warn","autobank.pass",tostring(J));
            end;
        end;
    else
        n.Reason="busy";
    end;
    K.Busy=false;
    if not(K.live(z))then
        return;
    end;
    if n.Reason=="observe"then
        K.NextPass=math.max(K.NextPass,os.clock()+5);
    end;
    K.report(Y,n);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14252 ]] Strings: [bed]
[14252]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=z;
    while _ and _~=workspace do
        if K:HasTag(_,"bed")then
            return _;
        end;
        _=_.Parent;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14257 ]] 
[14257]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K.threadFix then
        setthreadidentity(8);
    end;
    for z,z in _,nil,nil do
        z.Adornee=nil;
    end;
    for z,z in Y,nil,nil do
        z.Parent=nil;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14268 ]] Strings: [number]
[14268]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()local z=K.RealGravity;
    if type(z)=="number"then
        if z>0 then
            return z;
        end;
    end;
    return workspace.Gravity>0 and workspace.Gravity or 196.2;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14272 ]] 
[14272]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)return z~=nil and z.ammoItemTypes==nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14275 ]] 
[14275]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    return function()if K.SwordController:getSwordSwingDisabled()then
        return false;
    end;
    local z=_();
    local _=z.tool and K.ItemMeta[z.tool.Name];
    return _ and _.sword~=nil and _.sword.chargedAttack==nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14290 ]] 
[14290]=function(z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14296 ]] Strings: [Monster, trainingRoomDummy, Team, Drone]
[14296]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)if z=="Monster"or z=="trainingRoomDummy"then
        local n,y=Y.GetAttribute(Y,"Team"),K.GetAttribute(K,"Team");
        return n~=y;
    end;
    if z=="Drone"then
        local z=tonumber(Y.GetAttribute(Y,"PlayerUserId"));
        if z then
            if z==K.UserId then
                return false;
            end;
        else
            return false;
        end;
        local Y=_.GetPlayerByUserId(_,z);
        z=Y and Y.Team==K.Team;
        return not z;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14298 ]] 
[14298]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    return function()local z=K.Knit;
    local K=z and z.Controllers;
    return K and K.SwordChargeController;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14305 ]] 
[14305]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()while true do
        local z=K[4][K[6]];
        if not z.enabled then
            break;
        end;
        if _.isAlive then
            if Y[4][Y[6]]then
                if Y[4][Y[6]].players then
                    if Y[4][Y[6]].npcs then
                        if n.KillauraFireProjectile then
                            if y()then
                                z=Q();
                                if z then
                                    n.KillauraFireProjectile(z);
                                end;
                            end;
                        end;
                    end;
                end;
            end;
        end;
        task.wait(0.1);
    end;
    J[4][J[6]]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14345 ]] 
[14345]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    local a=z[15];
    return function()local z=next;
    for Z,Z in z,K,nil do
        Z:Disconnect();
    end;
    z=next;
    for Z,Z in z,_,nil do
        Z:Disconnect();
    end;
    z=next;
    for Z,Z in z,Y,nil do
        Z:Disconnect();
    end;
    z=next;
    for Z,Z in z,n,nil do
        for z,z in Z,nil,nil do
            z:Disconnect();
        end;
    end;
    table.clear(K);
    table.clear(_);
    table.clear(y);
    table.clear(Q);
    table.clear(n);
    table.clear(J);
    table.clear(f);
    table.clear(q);
    table.clear(t);
    table.clear(T);
    table.clear(Y);
    table.clear(L);
    table.clear(X);
    table.clear(l);
    table.clear(a);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14380 ]] 
[14380]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function()K();
    if _[4][_[6]]then
        pcall(function()_[4][_[6]]:Disconnect();
    end);
    _[4][_[6]]=nil;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14381 ]] 
[14381]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].enabled then
        _(Y);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14387 ]] Strings: [Map]
[14387]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=K:FindFirstChild("Map");
    if not(z)then
        return nil;
    end;
    if z~=_[4][_[6]]then
        _[4][_[6]]=z;
        Y.FilterDescendantsInstances={z};
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14393 ]] 
[14393]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14397 ]] Strings: [longjump]
[14397]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function()K.IsLongJumping=false;
    K.LongJumpFireballThrown=false;
    if _[4][_[6]]~=nil then
        if K.releaseItem then
            pcall(K.releaseItem,"longjump",_[4][_[6]]);
        end;
    end;
    _[4][_[6]]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14399 ]] Strings: [RootPart]
[14399]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()if not(K.isAlive)then
        return nil;
    end;
    local z=_(Y[4][Y[6]],{Part="RootPart",Range=n[4][n[6]].value*2.5,Players=y[4][y[6]].players.enabled,NPCs=y[4][y[6]].npcs.enabled,Milo=Q(y[4][y[6]])});
    if J(z)then
        return nil;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14435 ]] 
[14435]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        if K[4][K[6]].Parent then
            if os.clock()>_[4][_[6]]then
                K[4][K[6]]=nil;
            end;
        else
            K[4][K[6]]=nil;
        end;
    end;
    local z=K[4][K[6]];
    return z~=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14436 ]] Strings: [Falcon, ^Falcon%-]
[14436]=function(z,z,z,z,z,z)return function(z)return function(z)if z then
    if z.Player then
        return false;
    end;
else
    return false;
end;
local K=z.Character and z.Character.Name;
return K~=nil and(K=="Falcon"or K:match("^Falcon%-")~=nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14452 ]] Strings: [SpeedBoost, PublicArmorInvItem_, ArmorInvItem_, speed_boots]
[14452]=function(z,z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z,_)local Y,n=K.config,tonumber(z:GetAttribute("SpeedBoost"));
    local K=n and n>0 and Y.walkSpeed*(n+Y.potionHeadroom)or Y.speedLimit;
    for y=0,2,1 do
        n=z:FindFirstChild("PublicArmorInvItem_"..y)or z:FindFirstChild("ArmorInvItem_"..y);
        y=n and n.Value;
        if y and y.Name=="speed_boots"then
            K*=2;
            break;
        end;
    end;
    return K*(_ and Y.fireballSpeed or 1);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14453 ]] 
[14453]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14458 ]] 
[14458]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()local z=0;
    while true do
        if z<=0 then
            K[4][K[6]]=true;
            local K=_[4][_[6]][nil];
            Y[4][Y[6]](38019435,4);
            n[4][n[6]]=16095081;
            y[4][y[6]]();
            z=1;
        else
            return;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14462 ]] Strings: [Frame, AutoBank, Box, UICorner]
[14462]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z=Instance.new("Frame");
    z.Name="AutoBank";
    z.Size=UDim2.new(1,0,0,32);
    z.Position=UDim2.fromOffset(0,-240);
    z.BackgroundTransparency=1;
    z.Visible=false;
    z.Parent=K.gui;
    _[4][_[6]]:clean(z);
    local K=Instance.new("Frame");
    K.Name="Box";
    K.AnchorPoint=Vector2.new(0.5,1);
    K.AutomaticSize=Enum.AutomaticSize.X;
    K.BackgroundColor3=Color3.fromRGB(10,10,10):Lerp(Color3.fromRGB(240,122,31),0.1);
    K.BackgroundTransparency=0.3;
    K.BorderSizePixel=0;
    K.Position=UDim2.new(0.5,0,1,0);
    K.Size=UDim2.fromOffset(0,44);
    K.Parent=z;
    local _=Instance.new("UICorner");
    _.CornerRadius=UDim.new(0,8);
    _.Parent=K;
    _=Instance.new("UIStroke");
    _.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;
    _.Color=Color3.fromRGB(240,122,31);
    _.Thickness=1;
    _.Transparency=0.55;
    _.Parent=K;
    _=Instance.new("UIPadding");
    _.PaddingLeft=UDim.new(0,8);
    _.PaddingRight=UDim.new(0,8);
    _.PaddingTop=UDim.new(0,6);
    _.PaddingBottom=UDim.new(0,6);
    _.Parent=K;
    _=Instance.new("UISizeConstraint");
    _.Parent=K;
    local y=Instance.new("UIListLayout");
    y.FillDirection=Enum.FillDirection.Horizontal;
    y.HorizontalAlignment=Enum.HorizontalAlignment.Center;
    y.VerticalAlignment=Enum.VerticalAlignment.Center;
    y.Padding=UDim.new(0,8);
    y.SortOrder=Enum.SortOrder.LayoutOrder;
    y.Parent=K;
    local Q=Instance.new("ImageLabel");
    Q.Name="Title";
    local J,f=pcall(Y.getIcon,{itemType="personal_chest"},true);
    Q.Image=J and type(f)=="string"and f~=""and f or"rbxassetid://132426219930361";
    Q.BackgroundTransparency=1;
    Q.LayoutOrder=0;
    Q.ScaleType=Enum.ScaleType.Fit;
    Q.Size=UDim2.fromOffset(28,28);
    Q.Parent=K;
    n.UI=z;
    n.Box=K;
    n.Cap=_;
    n.Sort=y;
    n.CounterKey=nil;
    table.clear(n.Counters);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14464 ]] 
[14464]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        _[4][_[6]]=K[4][K[6]]:random();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14474 ]] 
[14474]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.graphics_reflections=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14478 ]] Strings: [AntiFall, ,6,, ,8,]
[14478]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    return function(z)K();
    if not(z)then
        return;
    end;
    if not _ then
        if Y.loaded then
            if not(Y.applying)then
                n("AntiFall","Flag is not supported on this executor.",6,"alert");
            end;
        end;
        return;
    end;
    if not(y())then
        if Y.loaded then
            if not(Y.applying)then
                n("AntiFall","Flag: the snowball rider seat is missing, the place may have updated.",8,"alert");
            end;
        end;
        return;
    end;
    Q[4][Q[6]]=0;
    q[4][q[6]]=J.PreSimulation:Connect(f);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14480 ]] Strings: [stud, studs]
[14480]=function(z,z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14501 ]] 
[14501]=function(z,z,z,z,z,z,z,z)return function(z,z)return function(z,K)for _,_ in z.Holds,nil,nil do
    if K<_ then
        return true;
    end;
end;
return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14521 ]] Strings: [studs, stud]
[14521]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14533 ]] Strings: [function]
[14533]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.Function;
    if type(z)=="function"then
        if _(z)then
            K:Disconnect();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14538 ]] 
[14538]=function(z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function()local z=K();
    _.LastHitStep=z;
    Y.noteStep(z);
    if n[4][n[6]].enabled then
        if not y[4][y[6]]then
            return;
        end;
    else
        return;
    end;
    Q();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14573 ]] Strings: [block]
[14573]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _=z.toolType=="block"and not(z.tool and K.trapReserved and K.trapReserved(z.tool.Name));
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14577 ]] Strings: [stud, studs]
[14577]=function(z,z,z,z,z)return function(z,z)return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14598 ]] Strings: [Silent]
[14598]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()if K[4][K[6]]then
        if K[4][K[6]].enabled then
            if not(_.Knitless)then
                if not Y then
                    return"Silent";
                end;
            end;
        end;
    end;
    local z=n[4][n[6]]and n[4][n[6]].value or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14602 ]] 
[14602]=function(z,z,z,z,z,z,z)return function()return function(z,K,_)for Y,Y in z,nil,nil do
    if(Y-K).Magnitude<=_ then
        return true;
    end;
end;
return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14603 ]] Strings: [%d+]
[14603]=function(z,z,z,z,z,z,z)return function(z,z,z)return function(K)local _,Y=pcall(function()local n=z[1].GameAnimationUtil;
    return n:getAssetId(K);
end);
return _ and Y and tostring(Y):match("%d+")or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14606 ]] 
[14606]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=K.inventory and K.inventory.inventory;
    local K=z and z.items or{};
    for z,z in K,nil,nil do
        if z then
            if _(z.itemType)then
                return z;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14611 ]] 
[14611]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z)local _=K.inventory.hotbar or{};
    for K,Y in _,nil,nil do
        if Y.item then
            if Y.item.tool==z then
                return K-1;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14612 ]] 
[14612]=function(z,z,z,z,z,z,z)return function(z)return function(K)pcall(function()z[1][4][z[1][6]].row.Visible=K;
    z[2][4][z[2][6]].row.Visible=K;
    z[3][4][z[3][6]].row.Visible=K;
    z[4][4][z[4][6]].row.Visible=K;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14646 ]] 
[14646]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14651 ]] Strings: [number, hotbar, ));if z then if not(z:IsA(]
[14651]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if type(K.AutoBankTop)=="number"then
        local z=K.AutoBankTop;
        return z-8;
    end;
    local z=_.PlayerGui:FindFirstChild("hotbar");
    z=z and(z:FindFirstChild("1"));
    if z then
        if not(z:IsA("GuiObject"))then
            return nil;
        end;
    else
        return nil;
    end;
    local K=z.AbsolutePosition.Y+Y:GetGuiInset().Y-z.AbsoluteSize.Y*0.885;
    return K-6;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14656 ]] 
[14656]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()table.clear(K.watched);
    table.clear(K.windows);
    table.clear(K.opened);
    table.clear(K.observing);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14666 ]] Strings: [bed]
[14666]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z,f,q)local t,T,L,X=K.CFrame.Position,f*3,_:HasTag(z,"bed"),math.cos(math.rad(Y[4][Y[6]].value));
    for K,_ in n,nil,nil do
        if L then
            if _==Vector3.zero then
                continue;
            elseif y(T+_.Unit*3)then
                continue;
            end;
        end;
        K=T+_-t;
        if K.Magnitude>0.001 then
            if K.Unit:Dot(q)>=X then
                _=Q.QueryUtil:raycast(t,K.Unit*(K.Magnitude+3),J);
                local K=_ and(_.Instance==z or _.Instance:IsDescendantOf(z));
                if K then
                    if Q.BlockController:getBlockPosition(_.Position-_.Normal*0.1)==f then
                        return _.Position;
                    end;
                end;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14671 ]] 
[14671]=function(z,z,z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=os.clock()+0.3;
    repeat local Q=K(n);
    if Q then
        if Q.Name==z then
            return true;
        end;
    end;
    for K,Q in _()do
        K=Y(Q);
        if Q.Name==z then
            if K then
                if(K-n).Magnitude<=2 then
                    return true;
                end;
            end;
        end;
    end;
    task.wait();
until os.clock()>y;
return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14673 ]] 
[14673]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    return function()local z=K.Knit;
    local K=z and z.Controllers;
    return K and K.DizzyToadController;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14688 ]] 
[14688]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=true;
    task.defer(_[4][_[6]]);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14694 ]] 
[14694]=function(z,z,z,z,z,z,z)return function(z,z,K,K)return function()local K,_=pcall(function()local Y=z[1].AbilityController.enabledAbilities;
    return Y~=nil and Y.summoner_finish_charging~=nil;
end);
return K and _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14717 ]] 
[14717]=function(z,z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if z then
        local z=false;
        if K.Knitless then
        else
            local K,n=pcall(_.patch);
            z=K and n==true;
        end;
        if z then
            Y[4][Y[6]]:clean(_.unpatch);
        else
            _.watch();
        end;
    else
        _.unpatch();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14730 ]] 
[14730]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=K();
    if not(y)then
        return nil;
    end;
    local K,Q,J,f=z.CFrame+Vector3.new(0,200,0),Vector3.new(3,3,3),Vector3.new(0,-1000,0),n and n.MoveDirection or Vector3.zero;
    if f.Magnitude>0.01 then
        for z=1,4,1 do
            n=_:Blockcast(K+f.Unit*(4*z/4),Q,J,y);
            if n then
                return n;
            end;
        end;
    end;
    for z,z in Y,nil,nil do
        for Y=1,4,1 do
            f=_:Blockcast(K+z*(4*Y/4),Q,J,y);
            if f then
                return f;
            end;
        end;
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14768 ]] Strings: [RootPart]
[14768]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()local z,f=_[4][_[6]],{Range=Y[4][Y[6]]:Get(n[4][n[6]]),Part="RootPart",Wallcheck=y[4][y[6]].walls.enabled,Milo=Q(y[4][y[6]]),Players=y[4][y[6]].players.enabled,NPCs=y[4][y[6]].npcs.enabled,Sort=J.Distance};
    return K(z,f);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14788 ]] Strings: [AntiFall]
[14788]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if not(K[4][K[6]].isCurrent(z))then
        return;
    end;
    _.start("AntiFall");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14803 ]] 
[14803]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)local _,Y=ipairs,(z:lower());
    for n,n in _(K)do
        if Y:find(n[4],1,true)then
            z=z:gsub(n[1],n[2]);
            Y=(z:lower());
        else
        end;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14818 ]] 
[14818]=function(z,z,z,z,z,z)return function()return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14832 ]] 
[14832]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.mobile_block_break_button=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14843 ]] 
[14843]=function(z,z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[9];
    local t=z[10];
    local T=z[11];
    local L=z[12];
    local X=z[13];
    local l=z[14];
    return function(z)if z then
        K[4][K[6]]=nil;
        while true do
            local z=_.isAlive and Y()or nil;
            if not(n())then
                if z and y(z.itemType)and Q()then
                    if J[4][J[6]].value>0 then
                        task.wait(J[4][J[6]].value);
                    end;
                    local Y=Q();
                    if f[4][f[6]].enabled then
                        if _.isAlive then
                            if Y then
                                if q(z)then
                                    if t[4][t[6]].enabled then
                                        T(z,Y);
                                    else
                                        L(z);
                                        X(z);
                                    end;
                                end;
                            end;
                        end;
                    end;
                elseif K[4][K[6]]then
                    if not(Q())then
                        l[4][l[6]]();
                    end;
                end;
            end;
            task.wait(0.1);
            z=f[4][f[6]].enabled;
            if not z then
                break;
            end;
        end;
    else
        task.spawn(function()local z=os.clock()+7;
        while true do
            local K=n();
            if not(K and os.clock()<z)then
                break;
            end;
            task.wait(0.05);
        end;
        l[4][l[6]]();
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14848 ]] 
[14848]=function(z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14856 ]] 
[14856]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14861 ]] 
[14861]=function(z,K,K,K,K,K,K,K)return function(K)local _=K[1];
    local Y=K[2];
    local n=K[3];
    return function()local K,y,Q,J,f,q,t,T,L,X,l,a,Z,m,M=3;
    while true do
        if K<=5 then
            local S,u;
            if K<=2 then
                if K<=0 then
                    local I,O=L-1,1+0;
                    local d={a-O,nil,O,I+0,y};
                    K,y=1,d;
                elseif K<=1 then
                    local I,O,d=y[1],y[3],y[4];
                    local e,s=I+O,O<=0;
                    I,O=e>=d,e<=d;
                    d=s and I or not s and O;
                    y[1]=e;
                    if d then
                        K,Q=4,e;
                    else
                        K=9;
                    end;
                else
                    local I=z[58](J+X[m],255);
                    X[m],X[I]=X[I],X[m];
                    local O;
                    J,K,O=z[81](X[z[58](X[m]+X[I],255)],16),7,z[58](m+1,255);
                    m,M=O,I+X[O];
                end;
            elseif K<=3 then
                local I,O=_[4][_[6]],Y[4][Y[6]];
                local _,Y,d,e=z[83](I)-O;
                Y,S,u,d,e=n[4][n[6]],0,0,z[78](_),_-_%4;
                local n,s=e-1,4+0;
                local P,v=0-s;
                v,K={n+0,P,y,s,nil},6;
                y,f,q,t,T,L,X,l,a=v,0,0,I,O,_,Y,d,e;
            elseif K<=4 then
                S=z[58](f+1,255);
                u=z[58](q+X[S],255);
                X[S],X[u]=X[u],X[S];
                local _=X[z[58](X[S]+X[u],255)];
                z[1](l,Q,(z[103](z[22](t,T+Q),_)));
                K,f,q=1,S,u;
            else
                local _=y[3];
                K,y=0,_;
            end;
        elseif K<=8 then
            if K<=6 then
                local _,Y,n=y[2],y[4],y[1];
                local L,a=_+Y,Y<=0;
                Y,_=L>=n,L<=n;
                n=a and Y or not a and _;
                y[2]=L;
                if n then
                    K,Z=11,L;
                else
                    K=5;
                end;
            elseif K<=7 then
                local _=z[58](M,255);
                X[m],X[_]=X[_],X[m];
                local Y=z[40](Q,f,q,J,(z[81](X[z[58](X[m]+X[_],255)],24)));
                z[92](l,Z,(z[103](z[72](t,T+Z),Y)));
                K,Q,J,f,q=6,m,_,m,_;
            else
                local _=z[58](q,255);
                local Y=z[58](J+X[_],255);
                X[_],X[Y]=X[Y],X[_];
                local n;
                q,K,J,n=z[81](X[z[58](X[_]+X[Y],255)],8),2,Y,z[58](_+1,255);
                m=n;
            end;
        elseif K<=9 then
            local _=y[5];
            K,y=10,_;
        elseif K<=10 then
            return l;
        else
            local _,Y=0,z[58](f+1,255);
            local n=z[58](q+X[Y],255);
            X[Y],X[n]=X[n],X[Y];
            K,Q,J,f,q=8,_,n,z[81](X[z[58](X[Y]+X[n],255)],0),Y+1;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14910 ]] Strings: [Floor]
[14910]=function(z,z,z,z,z,z,z)return function(z)return function(z)return z and(z:FindFirstChild("Floor",true));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14911 ]] 
[14911]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K[4][K[6]]and K[4][K[6]].value or nil;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14928 ]] 
[14928]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)if K[4][K[6]]~=z then
        K[4][K[6]]=z;
        Y[4][Y[6]]=_[z];
    end;
    z=Y[4][Y[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14930 ]] Strings: [HumanoidRootPart, CageClip, Success!]
[14930]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n=z:FindFirstChild("HumanoidRootPart");
    if not(n)then
        return false;
    end;
    local y,Q=K(n);
    if not(y)then
        return false;
    end;
    z=_(n,Q);
    if n.Position.Y-z<0.2 then
        return false;
    end;
    n.CFrame=CFrame.new(n.Position.X,z,n.Position.Z);
    Y("CageClip","Success!",3);
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14936 ]] 
[14936]=function(z,K,K,K,K,K)return function(K,_)local _=K[1];
    local Y=K[2];
    return function()local K,n,y=math.min,_[4][_[6]].value,z[127](Y.BlockBreaker:getRange());
    return K(n,z:Hc(y));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14943 ]] 
[14943]=function(z,z,z,z,z)return function()return function(z,K,_,Y)if K<=1.0E-6 then
    return math.abs(z)>1.0E-6 and _/z or nil;
end;
local n=z*z-2*K*_;
if n<0 then
    return nil;
end;
_=math.sqrt(n);
return(z+(Y and _ or-_))/K;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14962 ]] 
[14962]=function(z,z,z,z,z,z,z)return function(z,z,z,z)local K=z[1];
    local _=z[2];
    return function(z,Y)if K(z)<290-Y then
        return true;
    end;
    _[4][_[6]]=z;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 14981 ]] 
[14981]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)for n,y in K:GetTagged(z)do
        n=_(y);
        if n then
            if(n.Position-Y).Magnitude<=4 then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15005 ]] Strings: [harpoon, standalone]
[15005]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    local q=z[11];
    local t=z[12];
    return function()if os.clock()<K[4][K[6]]then
        return;
    end;
    local T=_("harpoon");
    if not(T and T.tool)then
        return;
    end;
    local _=Y.holding("harpoon",T);
    if n[4][n[6]].enabled then
        if not _ then
            return;
        end;
    end;
    local n=y(Q[4][Q[6]].value);
    if not n then
        return;
    end;
    local L,X,l=pcall(J.claimItem,"standalone");
    if L then
        if not(X)then
            return;
        end;
    else
        return;
    end;
    local function X()local a=J.ItemOwner=="standalone"and(l==nil or J.ItemOwnerToken==l);
        return a;
    end;
    local a=f.hand and f.hand.tool;
    pcall(function()if not(_)then
        z[9](T.tool,0.08);
    end;
    local f,Z=y(Q[4][Q[6]].value)or n,z[10].ItemMeta and z[10].ItemMeta.harpoon;
    local n=Z and Z.projectileSource;
    K[4][K[6]]=os.clock()+(n and n.fireDelaySec or 8);
    Y.fire(T,"harpoon","harpoon_projectile",f,n);
end);
if q[4][q[6]].enabled then
    if a then
        if a.Parent then
            if a~=T.tool then
                if not _ then
                    L=t[4][t[6]]and t[4][t[6]].value or 0;
                    task.delay(L,function()if X()then
                        pcall(function()z[9](a,0);
                    end);
                    pcall(J.releaseItem,"standalone",l);
                end;
            end);
            return;
        end;
    end;
end;
end;
end;
if X()then
    pcall(J.releaseItem,"standalone",l);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15016 ]] 
[15016]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)local _=K.trapReserved~=nil and K.trapReserved(z);
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15017 ]] 
[15017]=function(z,z,z,z,z,z)return function(z,z)return function(z,K)if K then
    if#z~=#K then
        return false;
    end;
else
    return false;
end;
for _,Y in z,nil,nil do
    if K[_]~=Y then
        return false;
    end;
end;
return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15019 ]] 
[15019]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Destroy();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15022 ]] Strings: [table]
[15022]=function(z,z,z,z,z)return function()return function()local z=shared.PistonwareDodgeHold;
    return type(z)=="table"and z.jobId==game.JobId and z or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15030 ]] Strings: [number]
[15030]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function()local z=K();
    local K=z and z.HAMMER_RADIUS;
    return type(K)=="number"and K or 16;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15080 ]] 
[15080]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function()local z=K.isAlive and K.character;
    local K=z and z.RootPart;
    if K then
        z=K.Position.Y;
        if z>_[4][_[6]]then
            _[4][_[6]]=z;
        end;
        local K,_=os.clock(),Y[n[4][n[6]]];
        if _ and K-_<y then
            if z>Q[n[4][n[6]]]then
                Q[n[4][n[6]]]=z;
            end;
        else
            n[4][n[6]]=n[4][n[6]]%J+1;
            Y[n[4][n[6]]],Q[n[4][n[6]]]=K,z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15083 ]] Strings: [TextLabel, TextButton, TextBox]
[15083]=function(z,z,z,z,z)return function(z)return function(z)return z:IsA("TextLabel")or z:IsA("TextButton")or z:IsA("TextBox");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15086 ]] Strings: [bee_net]
[15086]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K.hand and K.hand.tool;
    return z~=nil and z.Name=="bee_net";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15091 ]] 
[15091]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)if K[4][K[6]]then
        if K[4][K[6]].row then
            K[4][K[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15130 ]] Strings: [)or Y:GetAttribute(, ))or z:GetAttribute(]
[15130]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z,_)local Y=K.BlockController:getStore():getBlockData(_);
    return Y and(Y:GetAttribute("1")or Y:GetAttribute("Health"))or z:GetAttribute("Health")or 0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15137 ]] 
[15137]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K()then
        return;
    end;
    local z=_[4][_[6]];
    _[4][_[6]]=nil;
    if z then
        if z.Parent then
            Y(z,0);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15150 ]] Strings: [Instance, Player, Humanoid]
[15150]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)if z then
        if typeof(z)~="Instance"then
            return nil;
        end;
    else
        return nil;
    end;
    if z:IsA("Player")then
        return z;
    end;
    local _=z;
    while _ and not _:FindFirstChild("Humanoid")do
        _=_.Parent;
    end;
    if _ then
        return K:GetPlayerFromCharacter(_);
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15151 ]] Strings: [[%^%$%(%)%%%.%[%]%*%+%-%?], %%%0]
[15151]=function(z,z,z,z,z,z)return function(z)return function(z)return(z:gsub("[%^%$%(%)%%%.%[%]%*%+%-%?]","%%%0"));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15156 ]] 
[15156]=function(z,z,z,z,z,z,z)return function(z,z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15162 ]] Strings: [Team]
[15162]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)if z==K then
        return false;
    end;
    local _=z:GetAttribute("Team");
    z=_~=nil and tostring(_)~=tostring(K:GetAttribute("Team"));
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15179 ]] Strings: [connection, damageConnection, pearlConnection]
[15179]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z={"connection","damageConnection","pearlConnection"};
    for _,_ in z,nil,nil do
        local z=K[_];
        if z then
            pcall(function()z:Disconnect();
        end);
        K[_]=nil;
    end;
end;
K.accumulator=0;
K.owners=0;
K.cage=nil;
table.clear(K.active);
table.clear(K.states);
table.clear(K.pearls);
table.clear(K.pearled);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15183 ]] Strings: [cactus_fire]
[15183]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    return function()local z=K.AbilityController;
    return z:canUseAbility("cactus_fire",{disableBlockedAbilityAlert=true});
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15245 ]] Strings: [Head]
[15245]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)if not(K[4][K[6]].walls.enabled)then
        return true;
    end;
    local K=_.Character;
    local _,y=K and(K:FindFirstChild("Head")),K and K.PrimaryPart;
    K=_ and _.Position or y and y.Position+Vector3.new(0,1.5,0);
    if not K then
        return false;
    end;
    local _,Q,J={z.Character},z.RootPart,z.Character and z.Character:FindFirstChild("Head");
    if Q and not Y.Wallcheck(K,Q.Position,_)then
    elseif J then
        if Y.Wallcheck(K,J.Position,_)then
            return false;
        end;
    else
        return false;
    end;
    y=Y.Wallcheck(K,n+Vector3.new(0,1,0),_);
    return not y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15262 ]] Strings: [stud, studs]
[15262]=function(z,z,z,z,z,z)return function()return function(z)return z==1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15268 ]] 
[15268]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()if K==true then
        if _.Parent then
            _.Enabled=true;
        end;
    else
        _.Parent=K;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15282 ]] 
[15282]=function(z,z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        K[4][K[6]].remove();
    end;
    if _[4][_[6]]then
        _[4][_[6]].remove();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15285 ]] 
[15285]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.FH;
    local n=_:GetNetworkPing()+Y.REPLY_SEED;
    local _=K.FhReplyEst or n;
    if not(z)then
        if _>n then
            K.FhReplyEst=_+(n-_)*Y.FALL;
        end;
        return;
    end;
    z=math.min(z,_*2+0.05);
    K.FhReplyEst=_+(z-_)*(z>_ and Y.RISE or Y.FALL);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15298 ]] 
[15298]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]].row then
        K[4][K[6]].row.Visible=z;
    end;
    if _[4][_[6]]then
        if _[4][_[6]].row then
            _[4][_[6]].row.Visible=z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15299 ]] Strings: [AutoBank]
[15299]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    return function(_,Y,n,y,Q)if not _ then
        return;
    end;
    local J=os.clock();
    if y then
        if Q then
            if K.Shown[y]then
                if J-K.Shown[y]<Q then
                    return;
                end;
            end;
        end;
    end;
    if y then
        K.Shown[y]=J;
    end;
    task.spawn(function()if z[2].threadFix then
        pcall(setthreadidentity,8);
    end;
    pcall(z[3],"AutoBank",_,Y or 3,n);
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15313 ]] 
[15313]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    return function(z)K.show_resources_in_hud=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15321 ]] Strings: [UIListLayout, UICorner, UIStroke]
[15321]=function(z,z,z,z,z,z)return function(z,z,z)return function(z)for K,K in z:GetChildren()do
    if not(K:IsA("UIListLayout"))then
        if not(K:IsA("UICorner"))then
            if not(K:IsA("UIStroke"))then
                K:Destroy();
            end;
        end;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15324 ]] 
[15324]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z.value;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15356 ]] Strings: [number, Health, Instance]
[15356]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)if z then
        if z.Character then
            if not(z.Character.Parent)then
                return false;
            end;
        else
            return false;
        end;
    else
        return false;
    end;
    if z.Player==K then
        return _.isAlive;
    end;
    if type(z.Health)=="number"then
        if z.Health<=0 then
            return false;
        end;
    end;
    local K=z.Character:GetAttribute("Health");
    if K then
        if K<=0 then
            return false;
        end;
    end;
    K=z.Humanoid;
    if typeof(K)=="Instance"then
        if K.Health<=0 then
            return false;
        end;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15364 ]] Strings: [bed, ore, block]
[15364]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    local f=z[8];
    return function()while true do
        task.wait(1);
        if K[4][K[6]].enabled then
            for z,z in _:GetTagged("bed")do
                if not(Y[z])then
                    n(z);
                end;
            end;
        end;
        local z=y[4][y[6]];
        y[4][y[6]]={};
        for K,_ in z,nil,nil do
            if K.Parent then
                if not(Y[K])then
                    if _=="ore"then
                        Q(K);
                    elseif _=="block"then
                        J[4][J[6]](K);
                    end;
                end;
            end;
        end;
        z=f[4][f[6]].enabled;
        if not z then
            break;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15366 ]] Strings: [stud, studs]
[15366]=function(z,z,z,z,z,z,z)return function()return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15376 ]] Strings: [GuiButton]
[15376]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(n)if K[n]then
        return;
    elseif n:IsA("GuiButton")then
        if not(tonumber(n.Name))then
            return;
        end;
    else
        return;
    end;
    K[n]=true;
    _[4][_[6]]:clean(n.MouseButton1Down:Connect(Y));
    _[4][_[6]]:clean(n.InputBegan:Connect(function(K)if K.UserInputType~=Enum.UserInputType.Touch then
        return;
    end;
    local Y;
    Y=K.Changed:Connect(function()if K.UserInputState~=Enum.UserInputState.End then
        return;
    end;
    Y:Disconnect();
    if z[4][4][z[4][6]]then
        task.cancel(z[4][4][z[4][6]]);
        z[4][4][z[4][6]]=nil;
    end;
end);
end));
_[4][_[6]]:clean(n.MouseButton1Up:Connect(function()if z[4][4][z[4][6]]then
    task.cancel(z[4][4][z[4][6]]);
    z[4][4][z[4][6]]=nil;
end;
end));
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15385 ]] Strings: [stud, studs]
[15385]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15387 ]] 
[15387]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function(z)local _=K[z];
    if not(_)then
        return;
    end;
    for Y,Y in _,nil,nil do
        Y:Disconnect();
    end;
    K[z]=nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15413 ]] Strings: [finding, Finding region, wrong, Wrong region (, ;end;if K==]
[15413]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K();
    local K=z and z.region;
    if K=="finding"then
        return"Finding region";
    end;
    if K=="wrong"then
        return"Wrong region ("..tostring(z.regionText or z.serverRegion)..")";
    end;
    if K=="unclear"then
        return"Unclear region ("..tostring(z.regionText)..")";
    end;
    if K=="unknown"then
        return"Unknown region";
    end;
    if K=="allowed"then
        return tostring(z.regionText or z.serverRegion);
    end;
    return"Next match";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15414 ]] Strings: [NoBreak, PlacedByUserId]
[15414]=function(z,z,z,z,z,z,z)return function(z)return function(z,K,_)if K then
    if K==z then
        return;
    end;
else
    return;
end;
if K:GetAttribute("NoBreak")then
    return;
elseif table.find(_,K.Name)then
    return;
end;
z=K:GetAttribute("PlacedByUserId");
if z then
    if z==0 then
        return;
    end;
else
    return;
end;
table.insert(_,K.Name);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15423 ]] 
[15423]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function()local z=2;
    while true do
        if z<=1 then
            if z<=0 then
                K[4][K[6]]=(260529*K[4][K[6]]+194224621)%268435456;
                K[4][K[6]]=(176417*K[4][K[6]]+67389619)%268435456;
                K[4][K[6]]=(538541*K[4][K[6]]+110906815)%268435456;
                K[4][K[6]],z=(395093*K[4][K[6]]+4390131)%268435456,1;
            else
                K[4][K[6]]=(41469*K[4][K[6]]+214458783)%268435456;
                K[4][K[6]]=(237881*K[4][K[6]]+105735395)%268435456;
                K[4][K[6]]=(917605*K[4][K[6]]+157379971)%268435456;
                K[4][K[6]],z=(131815*K[4][K[6]]+81533233)%268435456,3;
            end;
        elseif z<=2 then
            K[4][K[6]]=(1006123*K[4][K[6]]+127465067)%268435456;
            K[4][K[6]]=(612539*K[4][K[6]]+155055367)%268435456;
            _[4][_[6]]=(1*_[4][_[6]]+268353772)%268435456;
            K[4][K[6]],z=(294315*K[4][K[6]]+220744381)%268435456,0;
        else
            return;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15425 ]] 
[15425]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y,Q,J)if Q then
        return;
    end;
    local Q,f=K.PAnchor+(K.PPace or n),K.PCatchUp and K.PRECISE_CATCHUP or _(K.PRECISE_SLACK,n*0.0117);
    if K.PLast==J then
        if K.PTool==y then
            if K.PTarget==n then
                if z-Q<0.05 then
                    K.PAnchor=math.max(Q,z-f);
                else
                    K.PAnchor=z;
                end;
            else
                K.PAnchor=z;
            end;
        else
            K.PAnchor=z;
        end;
    else
        K.PAnchor=z;
    end;
    K.PLast=z;
    K.PTool=y;
    K.PTarget=n;
    f=K.PSendI%4+1;
    K.PSendI=f;
    K.PSendT[f],K.PSendDone[f]=z,false;
    K.PSendC[f]=Y();
    K.PSendG[f]=K.PHeld;
    K.PSendL[f]=K.PLift;
    if K.rate()==36 then
        K.xtSent(f,z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15429 ]] 
[15429]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()K[4][K[6]]+=1;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15449 ]] 
[15449]=function(z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z=pairs;
    for y,Q in z(K)do
        local z=Q.original;
        if z then
            local K=_(z);
            Y[y]=z;
            Q.reverts=0;
            Q.last=K;
            if K==z then
                Q.original=nil;
            end;
            pcall(n,y,K);
        else
            Q.last=nil;
            Q.fn();
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15455 ]] Strings: [Aggro]
[15455]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z=="Aggro";
    end;
    if _[4][_[6]]then
        _[4][_[6]].row.Visible=z=="Aggro";
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15462 ]] Strings: [PetrifyId, petrified-player]
[15462]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)local K=z and z.Parent;
    while K and K~=workspace do
        if K:GetAttribute("PetrifyId")~=nil then
            return true;
        elseif K:HasTag("petrified-player")then
            return true;
        end;
        K=K.Parent;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15485 ]] Strings: [shared-constants]
[15485]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z=K(_.TS["shared-constants"]);
    return z.PingConstants;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15497 ]] Strings: [stud, studs]
[15497]=function(z,z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15506 ]] Strings: [personal-chest, chest, ScaledGui, ClickGui, Visible]
[15506]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    local J=z[7];
    return function(z)K.Gen=K.Gen+1;
    local f=K.Gen;
    K.Request=nil;
    K.Hold=false;
    K.HoldClosedAt=nil;
    table.clear(K.Remotes);
    if z then
        K.Chests=_({"personal-chest","chest"},Y[4][Y[6]],K.addChest,K.removeChest);
        local function z(_)if _~=false then
            K.press(f);
        end;
    end;
    Y[4][Y[6]]:clean(n[4][n[6]].triggered:Connect(z));
    local z=y.gui:FindFirstChild("ScaledGui");
    local _=z and(z:FindFirstChild("ClickGui"));
    if _ then
        local z=false;
        Y[4][Y[6]]:clean(_:GetPropertyChangedSignal("Visible"):Connect(function()if z then
            return;
        end;
        z=true;
        task.defer(function()z=false;
        if y.threadFix then
            setthreadidentity(8);
        end;
        if K.UI then
            if K.live(f)then
                K.UI.Visible=(K.CounterKey or"")~=""and not _.Visible;
            end;
        end;
    end);
end));
end;
while true do
    local z,_=pcall(K.tick,f);
    local Y,n=pcall(K.drawDisplay);
    if not(z and Y)then
        if not(K.Warned)then
            K.Warned=true;
            Q("warn","autobank.loop",tostring(_ or n));
        end;
    end;
    task.wait(0.1);
    Y=K.live(f);
    if not Y then
        break;
    end;
end;
else
    if K.UI then
        K.UI:Destroy();
    end;
    K.UI=nil;
    K.Box=nil;
    K.Cap=nil;
    K.Sort=nil;
    table.clear(K.Counters);
    K.CounterKey=nil;
    K.Chests={};
    J.AutoBankTop=nil;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15509 ]] 
[15509]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y,n)local y,Q,J,f,q,t=z.Rate,K.XP.GHOST_GAP,z.Cdf,z.Dist,z.Nd,Y+2;
    for K=0,t,1 do
        f[K]=0;
        q[K]=0;
    end;
    f[0]=1;
    local K=n-1;
    for T=0,K,1 do
        n=J[T]or{};
        J[T]=n;
        T=0;
        for K=0,Y+1,1 do
            T+=f[K];
            n[K]=T;
        end;
        for K=0,t,1 do
            q[K]=0;
        end;
        for K=0,t,1 do
            T=f[K];
            if T>0 then
                q[K]=q[K]+T*y[2];
                local Y=_(K+1,t);
                q[Y]=q[Y]+T*y[3];
                Y=_(K+2,t);
                q[Y]=q[Y]+T*y[4];
                Y=_(K+Q,t);
                q[Y]=q[Y]+T*y[1];
            end;
        end;
        f,q=q,f;
    end;
    z.Dist=f;
    z.Nd=q;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15550 ]] Strings: [vitality_star, vitality, crit_star, crit, Instance]
[15550]=function(z,z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z,y)local Q=y=="vitality_star"and"vitality"or y=="crit_star"and"crit"or nil;
    y=Q and typeof(z)=="Instance"and K:GetPlayerFromCharacter(z);
    if not y then
        return;
    end;
    if Q=="vitality"then
        z=y:GetAttribute("Team");
        if z~=nil then
            _[z]=os.clock();
        end;
    end;
    if Y(y)then
        n(y,Q);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15560 ]] 
[15560]=function(z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function()if K.isAlive then
        local z=K.character.RootPart.Position;
        for K,K in _.shop,nil,nil do
            if K.Shop then
                if(K.RootPart.Position-z).Magnitude<=20 then
                    return K.Id;
                end;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15573 ]] Strings: [BoxHandleAdornment]
[15573]=function(z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)K[4][K[6]].row.Visible=z;
    _[4][_[6]].row.Visible=z;
    if Y[4][Y[6]]then
        pcall(function()Y[4][Y[6]]:Destroy();
    end);
    Y[4][Y[6]]=nil;
end;
if z then
    Y[4][Y[6]]=Instance.new("BoxHandleAdornment");
    Y[4][Y[6]].Adornee=nil;
    Y[4][Y[6]].AlwaysOnTop=true;
    Y[4][Y[6]].Size=Vector3.new(3,5,3);
    Y[4][Y[6]].CFrame=CFrame.new(0,-0.5,0);
    Y[4][Y[6]].ZIndex=0;
    Y[4][Y[6]].Parent=n.gui;
elseif Y[4][Y[6]]then
    Y[4][Y[6]]:Destroy();
    Y[4][Y[6]]=nil;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15576 ]] 
[15576]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n,y)for Q,J in K,nil,nil do
        for K=1,15,1 do
            Q=_(n+J*K);
            if Q then
                if Q==z then
                    break;
                end;
            else
                break;
            end;
            Y(z,Q,y);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15580 ]] 
[15580]=function(z,z,z,z,z,z)return function(z,z)return function(z,K,_)z[K]=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15582 ]] Strings: [ChestLock, table]
[15582]=function(z,z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=rawget(K,"ChestLock");
    if type(z)~="table"or type(z.Holds)~="table"then
        z={Serial=0,Holds={}};
        rawset(K,"ChestLock",z);
    else
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15585 ]] 
[15585]=function(z,z,z,z,z,z,z)return function(z,z)return function(z,K)return(tonumber(z.matchStartTime)or 0)>(tonumber(K.matchStartTime)or 0);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15602 ]] 
[15602]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function(z)local _,Y=K.ITEM_PRIORITY[z]or 0,K.ITEM_PRIORITY[K.ItemOwner]or 0;
    if _>=Y then
        K.ItemOwner=z;
        return true;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15609 ]] 
[15609]=function(z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function()if K[4][K[6]]then
        return;
    end;
    K[4][K[6]]=true;
    task.defer(function()K[4][K[6]]=false;
    if z[2][4][z[2][6]].enabled then
        z[3]();
    end;
end);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15612 ]] 
[15612]=function(z,z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.clan_invites=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15629 ]] 
[15629]=function(z,z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()if K[4][K[6]].enabled then
        if _.Parent then
            pcall(Y[4][Y[6]],_);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15637 ]] 
[15637]=function(z,z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function()if K[4][K[6]]then
        K[4][K[6]]:Disconnect();
        K[4][K[6]]=nil;
    end;
    local z=_[4][_[6]];
    _[4][_[6]]=nil;
    if z then
        pcall(function()z.Visible=false;
        z:Remove();
    end);
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15663 ]] 
[15663]=function(z,z,z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15675 ]] 
[15675]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)if K[4][K[6]]then
        K[4][K[6]].row.Visible=z;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15707 ]] 
[15707]=function(z,z,z,z,z,z,z)return function(z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15709 ]] Strings: [Falcon, ^Falcon%-]
[15709]=function(z,z,z,z,z)return function(z)return function(z)if z then
    if z.Player then
        return false;
    end;
else
    return false;
end;
local K=z.Character and z.Character.Name;
return K~=nil and(K=="Falcon"or K:match("^Falcon%-")~=nil);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15714 ]] 
[15714]=function(z,z,z,z,z,z,z)return function(z,z,z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=z.PrimaryPart;
    local Q=n-y.Position;
    n=Q.Magnitude;
    y.CanCollide=false;
    y.AssemblyAngularVelocity=Vector3.zero;
    if n>0.5 then
        y.AssemblyLinearVelocity=Q/n*math.min(K(z)and 37 or 30,n*3);
    else
        y.AssemblyLinearVelocity=Vector3.zero;
    end;
    if _(z,n)then
        Y(z);
    end;
    return n;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15737 ]] Strings: [fury_potion]
[15737]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    return function()local z=K();
    if z-_[4][_[6]]<0.05 then
        local K=Y[4][Y[6]];
        return K;
    end;
    _[4][_[6]]=z;
    local z,K=n.Character,y();
    if z then
        if not(K)then
            Y[4][Y[6]]=false;
            return false;
        end;
    else
        Y[4][Y[6]]=false;
        return false;
    end;
    local _,n=pcall(K.isActive,K,z,"fury_potion");
    Y[4][Y[6]]=_ and n and true or false;
    _=Y[4][Y[6]];
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15746 ]] Strings: [BasePart, part, FaceInstance, face, effect]
[15746]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    return function(z)if z:IsA("BasePart")then
        return"part";
    end;
    if z:IsA("FaceInstance")then
        return"face";
    end;
    if K[z.ClassName]then
        return"effect";
    elseif z:IsA("Light")then
        return"effect";
    end;
    if z:IsA("ImageLabel")then
        return"image";
    elseif z:IsA("ImageButton")then
        return"image";
    end;
    return nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15747 ]] 
[15747]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function()table.clear(K.PredTargets);
    K.PredSelf.Count=0;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15755 ]] 
[15755]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z)for _,_ in K,nil,nil do
        _.ParticleEmitter.Size=NumberSequence.new(z);
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15776 ]] 
[15776]=function(z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)K.ambient_lighting_brightness=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15795 ]] Strings: [table, string]
[15795]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    local _=z[2];
    return function()local z,Y={},K.ItemMeta or{};
    for K,n in Y,nil,nil do
        if type(n)=="table"then
            if n.fortifiesBlock~=nil then
                if type(K)=="string"then
                    z[K:lower()]=true;
                end;
                if type(n.displayName)=="string"then
                    z[n.displayName:lower()]=true;
                end;
            end;
        end;
    end;
    if next(z)then
        _[4][_[6]]=z;
    end;
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15798 ]] 
[15798]=function(z,z,z,z,z,z,z)return function(z,z,z)return function(z)return"s";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15805 ]] Strings: [number]
[15805]=function(z,z,z,z,z,z)return function(z,z,z,z,K,K)local K=z[1];
    return function(z,_)K.evidence[z]={count=type(_)=="number"and _ or 1,at=os.clock(),reported=false};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15827 ]] 
[15827]=function(z,z,z,z,z,z,z)return function(z)local K=z[1];
    return function()local z,_=workspace.CurrentCamera,K.Noted;
    K.Noted=nil;
    if z then
        if not(_)then
            return;
        end;
    else
        return;
    end;
    local K=z.CFrame;
    if K==_ then
        return;
    end;
    if(K.Position-_.Position).Magnitude<=8 then
        if K.LookVector:Dot(_.LookVector)>0.99999 then
            if K.UpVector:Dot(_.UpVector)>0.99999 then
                z.CFrame=_;
            end;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15850 ]] 
[15850]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z)local n,y=K.get(z,_[4][_[6]]),Y[4][Y[6]];
    return n>=y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15860 ]] 
[15860]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function(z)local _=K[z];
    if _ then
    else
        if not(z.Parent)then
            return nil;
        end;
        _=z.Position;
        K[z]=_;
    end;
    return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15866 ]] 
[15866]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=z.AssemblyLinearVelocity;
    if not(Y.Magnitude<=K.PRED.VEL_MAX)then
        return _;
    end;
    return Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15877 ]] Strings: [stud, studs]
[15877]=function(z,z,z,z,z,z)return function(z,z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15906 ]] 
[15906]=function(z,z,z,z,z)return function(z,z)local K=z[1];
    return function()if not K[4][K[6]]then
        pcall(function()K[4][K[6]]=z[2]["events-@easy-games/game-core:shared/game-core-networking@getEvents.Events"];
    end);
end;
local z=K[4][K[6]];
return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15940 ]] 
[15940]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    return function()K();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15962 ]] Strings: [table]
[15962]=function(z,z,z,z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z)local _=type(z)=="table"and z.entityInstance;
    if _ then
        K.hurt[_]=os.clock();
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15967 ]] Strings: [shared-constants]
[15967]=function(z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()local z=tonumber(K(_.TS["shared-constants"]).CpsConstants.BLOCK_PLACE_CPS);
    if z then
        if z>0 then
            Y[4][Y[6]]=1/z;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15978 ]] 
[15978]=function(z,z,z,z,z)return function(z,z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function(z)local y,Q=math.huge,K.List;
    local J;
    for f,q in Q,nil,nil do
        if q.Targetable then
            continue;
        elseif q.Player then
            if q==K.character then
                continue;
            end;
        else
            continue;
        end;
        f=(q.RootPart.Position-z).Magnitude;
        if f<=_[4][_[6]]:Get(Y[4][Y[6]])then
            if f<y then
                if n(q)<20 then
                    y,J=f,q;
                else
                end;
            else
            end;
        else
        end;
    end;
    return J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 15998 ]] Strings: [ (%d from you), ;_(, ):format(math.round(n),K),5,]
[15998]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z,Y)local n=z.detonatedOn;
    z.detonatedOn=nil;
    if not(shared.PistonwareDeveloper)then
        return;
    end;
    z=n and n.RootPart;
    if not z then
        return;
    end;
    n=(Y-z.Position).Magnitude;
    if n<=5 then
        return;
    end;
    z=K.isAlive and K.character.RootPart;
    local K=z and(" (%d from you)"):format(math.round((Y-z.Position).Magnitude))or"";
    _("ProjectileAura",("Raven went off %d studs from the target%s"):format(math.round(n),K),5,"warning");
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16012 ]] 
[16012]=function(z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function()local z=K[4][K[6]];
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16014 ]] 
[16014]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    return function(z)K.cheaters=z;
    K.active=K.master and z or false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16015 ]] 
[16015]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)K.pc_shift_lock=z;
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16017 ]] Strings: [RootPart, IceQueenStacks]
[16017]=function(z,z,z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    return function()local z,y=K.AllPosition,{Range=_[4][_[6]]:Get(Y[4][Y[6]]),Part="RootPart",Players=true,NPCs=false,Cache=true,Output=n};
    for K,_ in z(y)do
        K=_.Character:GetAttribute("IceQueenStacks");
        if K then
            if K>0 then
                return true;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16019 ]] 
[16019]=function(z,z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K[z];
    z=Y==nil or _(Y);
    return z;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16020 ]] Strings: [trainingRoomDummy]
[16020]=function(z,z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function()while true do
        if K:GetTagged("trainingRoomDummy")[1]then
            _();
        end;
        task.wait(10);
        local z=Y.loaded;
        if z==nil then
            break;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16027 ]] 
[16027]=function(z,z,z,z,z,z)return function(z,z)return function(z)if not(z.Toggle)then
    return;
end;
for K,_ in z.Bound,nil,nil do
    K=_.Slider and _.Slider.row;
    if K then
        local Y=true;
        if _.Visible then
            local n,y=pcall(_.Visible);
            Y=n and y and true or false;
        else
        end;
        K.Visible=Y and not z.Toggle.enabled;
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16073 ]] 
[16073]=function(z,z,z,z,z)return function(z,z,z,z,K)local K=z[1];
    local _=z[2];
    return function()local z=0;
    while true do
        if z<=0 then
            K[4][K[6]](_[4][_[6]]);
            z=1;
        else
            return;
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16076 ]] 
[16076]=function(z,z,z,z,z,z)return function(z)return function(z,K,_)if not(z)then
    return nil;
end;
return Color3.fromRGB(z,K,_):ToHSV();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16100 ]] Strings: [number]
[16100]=function(z,z,z,z,z,z,z,z)return function(z)return function(z)return type(z)=="number"and z==z and math.abs(z)<math.huge;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16107 ]] Strings: [stud, studs]
[16107]=function(z,z,z,z,z)return function(z)return function(z)return z<=1 and"stud"or"studs";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16127 ]] 
[16127]=function(z,z,z,z,z,z)return function()return function(z,K)return K-z.Size.Y*0.5-0.5;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16136 ]] 
[16136]=function(z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    return function(z,_)for Y,n in K.List,nil,nil do
        Y=n.Player and not n.Targetable and n.RootPart;
        if Y then
            n=Y.Position-z;
            if Vector3.new(n.X,0,n.Z).Magnitude<=_ then
                if math.abs(n.Y)<=7 then
                    return true;
                end;
            end;
        end;
    end;
    return false;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16146 ]] 
[16146]=function(z,K,K,K,K,K)return function(K,K,_)local _=K[1];
    local Y=K[2];
    local n=K[3];
    local y=K[4];
    local Q=K[5];
    return function(K)if K then
        _[4][_[6]]:clean(Y);
        local K=n();
        if not(K)then
            return;
        end;
        local Y,n=ipairs,z[127](K:GetChildren());
        for J,J in Y(z:Hc(n))do
            y(J);
        end;
        _[4][_[6]]:clean(K.ChildAdded:Connect(y));
        _[4][_[6]]:clean(K.ChildRemoved:Connect(Q));
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16160 ]] 
[16160]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)local _=K.owned[z];
    if not _ then
        return nil;
    end;
    K.owned[z]=nil;
    pcall(function()local z=_.module;
    if z.save==_.ownSave then
        z.save=_.under;
    end;
    if z.flip==_.ownToggle then
        z.flip=_.toggle;
    end;
    if z.load==_.ownLoad then
        z.load=_.load;
    end;
end);
return _;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16169 ]] 
[16169]=function(z,z,z,z,z,z)return function(z,z,z,K)local K=z[1];
    return function(z,_,Y)local n=K.cage;
    if n then
        local y,Q=n.cframe:PointToObjectSpace(Y),n.half;
        if math.abs(y.X)<=Q.X then
            if math.abs(y.Y)<=Q.Y then
                if math.abs(y.Z)<=Q.Z then
                    _.caged=true;
                    return true;
                end;
            end;
        end;
    end;
    if not(_.caged)then
        return false;
    end;
    n=K.groundGap(z,Y);
    if n then
        if n<=K.config.liftFrom then
            _.caged=nil;
            return false;
        end;
    end;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16171 ]] 
[16171]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    return function(z,_)local Y,n=K.xtState(),K.PStamp;
    Y.SD[z]=n and _>n and K.PSendDone[(z+2)%4+1]and _-n or false;
    Y.SX[z],Y.SG[z],Y.SF[z]=Y.Placed,nil,Y.F;
    Y.Placed=false;
    if K.PAnchor>_ then
        K.PAnchor=_;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16175 ]] 
[16175]=function(z,z,z,z,z,z,z,z)return function(z,z)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[6];
    local y=z[7];
    return function(Q)if Q then
        local Q=workspace;
        for J,J in Q:GetChildren()do
            K(J);
        end;
        _[4][_[6]]:clean(workspace.ChildAdded:Connect(K));
        local function K()if z[4].threadFix then
            if not(pcall(setthreadidentity,8))then
                pcall(setthreadidentity,7);
            end;
        end;
        pcall(z[5]);
    end;
    _[4][_[6]]:clean(Y.RenderStepped:Connect(K));
else
    for z in n,nil,nil do
        y(z);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16182 ]] Strings: [RootPart]
[16182]=function(z,z,z,z,z,z,z)return function(z,K,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    local n=z[4];
    local y=z[5];
    local Q=z[6];
    return function(z)local J=K(_[4][_[6]],{Part="RootPart",Range=Y[4][Y[6]].value,Players=n[4][n[6]].players.enabled,NPCs=n[4][n[6]].npcs.enabled,Wallcheck=n[4][n[6]].walls.enabled,Milo=y(n[4][n[6]]),Origin=z});
    if J then
        if z then
            if J.RootPart then
                if(J.RootPart.Position-z).Magnitude>Q[4][Q[6]].value then
                    return nil;
                end;
            end;
        end;
    end;
    return J;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16194 ]] 
[16194]=function(z,z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function(z)local _=K.FhSwapAt%K.FH.SWAP_CAP+1;
    K.FhSwaps[_]=z;
    K.FhSwapAt=_;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16204 ]] Strings: [Instance]
[16204]=function(z,z,z,z,z)return function(z)local K=z[1];
    return function(z,_)if typeof(_)~="Instance"then
        return;
    end;
    local Y=K.opened[_];
    if Y then
    else
        local n,y=setmetatable,{__mode="k"};
        Y=n({},y);
        K.opened[_]=Y;
    end;
    Y[z]=os.clock();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16216 ]] 
[16216]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)if z.tool then
        if not(z.tool.Parent)then
            return false;
        end;
    else
        return false;
    end;
    if K.hand then
        if K.hand.tool==z.tool then
            return true;
        end;
    end;
    _[4][_[6]]=_[4][_[6]]or K.hand and K.hand.tool;
    return true;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16230 ]] 
[16230]=function(z,z,z,z,z)return function(z,z,z)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.KillauraAutoShootConfig;
    local K=Y and(Y());
    if not(K)then
        return;
    end;
    _(z,K);
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16232 ]] Strings: [^summoner_claw]
[16232]=function(z,z,z,z,z)return function(z,z,K)local K=z[1];
    return function()local z=K().tool;
    return z and z.Name:find("^summoner_claw")and z or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16245 ]] Strings: [studs, stud]
[16245]=function(z,z,z,z,z,z)return function()return function(z)return z>1 and"studs"or"stud";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16279 ]] Strings: [table]
[16279]=function(z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function()local z=K.registeredActions;
    if type(z)=="table"then
        for K,K in z,nil,nil do
            _(K);
        end;
    end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16293 ]] 
[16293]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function(z)if K[z]then
        return;
    end;
    local Y=#_+1;
    _[Y]=z;
    K[z]=Y;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16296 ]] 
[16296]=function(z,z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    return function(z)local Y=K.ItemMeta[z.Name];
    z=Y and Y.block and Y.block.breakType;
    Y=z and(_(z));
    return Y and Y.tool and Y or nil;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16325 ]] Strings: [Frame, UIListLayout, ImageLabel, Icon, string]
[16325]=function(z,z,z,z,z,z)return function(z,K)local K=z[1];
    local _=z[2];
    local Y=z[3];
    return function(z,n)local y=Instance.new("Frame");
    y.Name=z;
    y.AutomaticSize=Enum.AutomaticSize.X;
    y.BackgroundTransparency=1;
    y.LayoutOrder=n;
    y.Size=UDim2.fromOffset(0,32);
    y.Parent=K.Box;
    n=Instance.new("UIListLayout");
    n.FillDirection=Enum.FillDirection.Horizontal;
    n.VerticalAlignment=Enum.VerticalAlignment.Center;
    n.Padding=UDim.new(0,3);
    n.SortOrder=Enum.SortOrder.LayoutOrder;
    n.Parent=y;
    n=Instance.new("ImageLabel");
    n.Name="Icon";
    local Q,J=pcall(_.getIcon,{itemType=z},true);
    n.Image=Q and type(J)=="string"and J or"";
    n.BackgroundTransparency=1;
    n.LayoutOrder=1;
    n.Size=UDim2.fromOffset(28,28);
    n.Parent=y;
    n=Instance.new("TextLabel");
    n.Name="Amount";
    n.AutomaticSize=Enum.AutomaticSize.X;
    n.BackgroundTransparency=1;
    n.LayoutOrder=2;
    n.Size=UDim2.fromOffset(0,28);
    n.Text="";
    n.TextColor3=Color3.new(1,1,1);
    n.TextSize=16;
    n.TextXAlignment=Enum.TextXAlignment.Left;
    if Y.libraries then
        if Y.libraries.fonts then
            Y.libraries.fonts.track(n);
        end;
    end;
    n.Parent=y;
    K.Counters[z]={Frame=y,Label=n};
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16331 ]] Strings: [.._)..]
[16331]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    return function()if not K[4][K[6]]then
        return nil;
    end;
    local z,_=K[4][K[6]].min,K[4][K[6]].max;
    return(z==_ and tostring(z)or z.."-".._).." cps";
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16332 ]] Strings: [StatusEffect_dizzy, StatusEffect_werewolf_fear]
[16332]=function(z,z,z,z,z,z)return function(z)local K=z[1];
    local _=z[2];
    return function(z)for Y,Y in K,nil,nil do
        Y:Disconnect();
    end;
    table.clear(K);
    if not z then
        return;
    end;
    local Y={"StatusEffect_dizzy","StatusEffect_werewolf_fear"};
    for n,n in Y,nil,nil do
        table.insert(K,z:GetAttributeChangedSignal(n):Connect(function()if z:GetAttribute(n)~=nil then
            _(n);
        end;
    end));
    if z:GetAttribute(n)~=nil then
        _(n);
    end;
end;
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16355 ]] 
[16355]=function(z,z,z,z,z,z)return function(z,z,K,K)local K=z[1];
    local _=z[2];
    return function()K();
    _();
end;
end;
end

------------------------------------------------------------

-- [[ FUNCTION ID: 16375 ]] 
[16375]=function(z,z,z,z,z)return function(z,K,K,K)local K=z[1];
    local _=z[2];
    return function(z)K.audio_music_volume=z;
    _();
end;
end;
end

------------------------------------------------------------

