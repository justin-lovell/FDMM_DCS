if __DISTILLER==nil then
__DISTILLER=nil
__DISTILLER={FACTORIES={},__nativeRequire=require,require=function(e)assert(type(e)=="string","require invalid id:"..tostring(e))if package.loaded[e]then
return package.loaded[e]end
if __DISTILLER.FACTORIES[e]then
local n=__DISTILLER.FACTORIES[e]package.loaded[e]=n(__DISTILLER.require)or true
return package.loaded[e]end
return __DISTILLER.__nativeRequire(e)end,define=function(r,e,n)assert(type(e)=="string","invalid id:"..tostring(e))assert(type(n)=="function","invalid factory:"..tostring(n))if package.loaded[e]==nil and r.FACTORIES[e]==nil then
r.FACTORIES[e]=n
else
print("[__DISTILLER::define] module "..tostring(e).." is already defined")end
end,exec=function(e,n)local e=e.FACTORIES[n]assert(e,"missing factory method for id "..tostring(n))e(__DISTILLER.require)end}end
__DISTILLER:define("FDMM_Config",function(n)env.info("---FDMM_Config Start---");fdmm.majorVersion=0
fdmm.minorVersion=3
fdmm.enums={}fdmm.consts={}fdmm.config={}fdmm.setup={}do
fdmm.enums.Alliance={NATO='NATO',WTO='WTO',}fdmm.enums.Faction={Red='Red',Blue='Blue',Neutral='Neutral',USA='USA',Russia='Russia',Georgia='Georgia',Turkey='Turkey',Ukraine='Ukraine',Unused='Unused'}fdmm.enums.ErrorCode={Success=0,Failure=1,Incomplete=2,Cancelled=3,InvalidParam=4,ShouldNotBeReached=5}fdmm.consts.UserFlag={DebugFlag='99999',}end
do
fdmm.enums.CargoRouteType={Land='land',Train='train',Air='air',Sea='sea',All='all'}fdmm.consts.CargoRouteGNPrefix={Land='CVRT_',Train='CTRT_',Air='CART_',Sea='CSRT_',}fdmm.consts.CargoRouteWPRoutePrefix={Land={Spawn='CVSP_',Linkage='CVLK_',Facility='CVFC_',},Train={Spawn='CTSP_',Linkage='CTLK_',Facility='CTFC_',},Air={Spawn='CASP_',Linkage='CALK_',Facility='CAFC_',},Sea={Spawn='CSSP_',Linkage='CSLK_',Facility='CSFC_',},}fdmm.consts.CargoRouteWPRouteSuffix={Egress='_EP',Ingress='_IP',Spawn='_SP',Linkage='_LK',Facility='_FC',}end
do
fdmm.enums.FacilityType={Airbase='airbase',ArmsPlant='armsPlant',CommandCenter='commandCenter',FARP='farp',OilField='oilField',Port='port',UnitFactory='unitFactory',All='all',}end
do
fdmm.enums.RPType={Fuel='fuel',Arms='arms',Unit='unit',}fdmm.enums.RPAmountType={Tons='tons',PercentMaxSelf='percent_ms',PercentMaxOther='percent_mo',PercentCurrSelf='percent_cs',PercentCurrOther='percent_co',}end
do
fdmm.enums.TerritoryType={Land='land',Sea='sea',All='all',}fdmm.consts.TerritoryGNPrefix={Define='TDEF_',Linkage='TLNK_',Facility='TFAC_',}fdmm.consts.TerritoryWPFacilityPrefix={Airbase='TARB_',ArmsPlant='TARM_',CommandCenter='TCMD_',FARP='TFRP_',OilField='TOIL_',Port='TPRT_',UnitFactory='TUNT_',}end
do
fdmm.enums.UnitType={Plane='Plane',Helicopter='Helicopter',Ground='Ground',Train='Train',Ship='Ship',Static='Static',}fdmm.enums.UnitPlaneType={Fighter='Fighter',Bomber='Bomber',Reconnaissance='Reconnaissance',AWACS='AWACS',Refueling='Refueling',Transport='Transport',Trainer='Trainer',Civilian='Civilian',}fdmm.enums.UnitPlaneFighterType={AirSuperiority='AirSuperiority',Interceptor='Interceptor',Strike='Strike',Multirole='Multirole',Light='Light',}fdmm.enums.UnitPlaneBomberType={Strategic='Strategic',Tactical='Tactical',Attack='Attack',Stealth='Stealth',Light='Light',ASW='ASW',}fdmm.enums.UnitPlaneReconType={Arial='Arial',Bomber='Bomber',Drone='Drone',}fdmm.enums.UnitPlaneTransportType={Strategic='Strategic',Tactical='Tactical',}fdmm.enums.UnitPlaneTrainerType={Jet='Jet',Prop='Prop',}fdmm.enums.UnitPlaneCivilianType={Aerobatic='Aerobatic',Transport='Transport',}fdmm.enums.UnitHelicopterType={Attack='Attack',Reconnaissance='Reconnaissance',Light='Light',Transport='Transport',ASW='ASW',}fdmm.enums.UnitHelicopterTransportType={Strategic='Strategic',Tactical='Tactical',Assault='Assault',}fdmm.enums.UnitGroundType={Tracked='Tracked',Wheeled='Wheeled',Towed='Towed',Infantry='Infantry',Fort='Fort',Civilian='Civilian',Animal='Animal',}fdmm.enums.UnitGroundVehicleType={HQ='HQ',MBT='MBT',SPG='SPG',ATGM='ATGM',IFV='IFV',ARV='ARV',APC='APC',SSM='SSM',MLRS='MLRS',SPH='SPH',EWR='EWR',SAM='SAM',SPAAG='SPAAG',Power='Power',Fire='Fire',Transport='Transport',Car='Car',}fdmm.enums.UnitGroundVehicleTransportType={Armored='Armored',Open='Open',Covered='Covered',Lubricant='Lubricant',Fuel='Fuel',}fdmm.enums.UnitGroundTowedType={DroneCommand='DroneCommand',SSM='SSM',SAM='SAM',AAA='AAA',}fdmm.enums.UnitGroundInfantryType={Beacon='Beacon',Mortar='Mortar',SAM='SAM',MG='MG',Rifle='Rifle',RPG='RPG',}fdmm.enums.UnitGroundInfantrySoldierType={Soldier='Soldier',Insurgent='Insurgent',Paratrooper='Paratrooper',}fdmm.enums.UnitGroundCivilianType={Trailer='Trailer',Fire='Fire',Transport='Transport',Bus='Bus',Car='Car',}fdmm.enums.UnitGroundCivilianTransportType={Open='Open',Covered='Covered',}fdmm.enums.UnitGroundCivilianBusType={Double='Double',Single='Single',}fdmm.enums.UnitGroundSSMRole={SearchRadar='SearchRadar',Launcher='Launcher',}fdmm.enums.UnitGroundMLRSRole={FireControl='FireControl',Launcher='Launcher',}fdmm.enums.UnitGroundSAMRole={HQ='HQ',Power='Power',SearchRadar='SearchRadar',SearchTrackRadar='SearchTrackRadar',TrackRadar='TrackRadar',ContWaveAcqRadar='ContWaveAcqRadar',TrackOptical='TrackOptical',RadarArray='RadarArray',DataProcessing='DataProcessing',Loader='Loader',Launcher='Launcher',MasterLauncher='MasterLauncher',SlaveLauncher='SlaveLauncher',}fdmm.enums.UnitGroundInfantrySAMRole={Comm='Comm',Launcher='Launcher',}fdmm.enums.UnitGroundAAARole={Fortified='Fortified',Emplacement='Emplacement',}fdmm.enums.UnitGroundDroneCommandRole={HQ='HQ',Repeater='Repeater',}fdmm.enums.UnitTrainType={Transport='Transport',Civilian='Civilian',}fdmm.enums.UnitTrainCarType={Locomotive='Locomotive',Wagon='Wagon',}fdmm.enums.UnitShipType={Carrier='Carrier',HeliCarrier='HeliCarrier',BattleCruiser='BattleCruiser',Cruiser='Cruiser',Destroyer='Destroyer',Frigate='Frigate',Corvette='Corvette',Submarine='Submarine',Gunboat='Gunboat',Transport='Transport',Civilian='Civilian',}fdmm.enums.UnitShipTransportType={BulkCargo='BulkCargo',ISOCargo='ISOCargo',Refueler='Refueler',}fdmm.enums.UnitStaticType={Airbase='Airbase',Barrier='Barrier',Cargo='Cargo',Effect='Effect',Factory='Factory',FARP='FARP',Fort='Fort',Marker='Marker',OilField='OilField',Railway='Railway',SeaShelf='SeaShelf',Telecom='Telecom',Warehouse='Warehouse',Civilian='Civilian',Plane='Plane',Helicopter='Helicopter',Ground='Ground',Train='Train',Ship='Ship',}end
do
function fdmm.config.runUserSetupScript()fdmm.setup={}dofile(fdmm.fullPath.."FDMM_Setup.lua")end
function fdmm.config.loadDCSDBIfAble()if not db and fdmm.setup.loadDB then
__DCS_VERSION__='2.5'local e=3
while(e>0)do
local n,r=pcall(n,'./Scripts/Database/db_scan')if n then break end
e=e-1
end
__DCS_VERSION__=nil
end
end
function fdmm.config.loadDCSJSONIfAble()if not JSON and fdmm.setup.loadJSON then
local e,n=pcall(n,'./Scripts/JSON')if e then JSON=n end
end
end
function fdmm.config.createGPCache()fdmm.config.gpCache={}local r={'AIRB_','ARMP_','CMDC_','FARP_','OILF_','PORT_','UNTF_'}for n,i in pairs(mist.DBs.groupsByName)do
local t,e=fdmm.utils.removeGroupingPrefix(n)if e~=nil then
if not fdmm.config.gpCache[e]then
fdmm.config.gpCache[e]={}end
if table.contains(r,e)then
local r=string.find(t,'_')if r~=nil then
local r=t:sub(1,r-1)if not fdmm.config.gpCache[e][r]then
fdmm.config.gpCache[e][r]={}end
fdmm.config.gpCache[e][r][n]=i
else
if not fdmm.config.gpCache[e]['_']then
fdmm.config.gpCache[e]['_']={}end
fdmm.config.gpCache[e]['_'][n]=i
end
else
fdmm.config.gpCache[e][n]=i
end
end
end
end
end
fdmm.config.runUserSetupScript()env.info("---FDMM_Config End---");end)__DISTILLER:define("FDMM_Utils",function(e)env.info("---FDMM_Utils Start---");fdmm.utils={}do
function fdmm.utils.pos2ToLoggableString(e)if e.z~=nil then e=mist.utils.makeVec2(e)end
return'~{'..mist.utils.round(e.x,-2)..','..mist.utils.round(e.y,-2)..'}'end
function fdmm.utils.pos3ToLoggableString(e)if e.z==nil then e=mist.utils.makeVec3(e)end
return'~{'..mist.utils.round(e.x,-2)..','..mist.utils.round(e.z,-2)..',a:'..mist.utils.round(e.y,-1)..'}'end
function fdmm.utils.getGroupingPrefix(e)if e then
local n=string.find(e,'_')if n~=nil then
local e=e:sub(1,n)if e==e:upper()then
return e
end
end
end
return nil
end
function fdmm.utils.removeGroupingPrefix(e)local n=fdmm.utils.getGroupingPrefix(e)if n~=nil then
return e:sub(#n+1),n
end
return e,nil
end
function fdmm.utils.getNumericSuffix(e)if e then
local r,n=e:reverse():find('# ')if n~=nil then
local e=e:sub(-n)if e==e:match(' #[%d]+')then
return e
end
end
end
return nil
end
function fdmm.utils.removeNumericSuffix(e)local n=fdmm.utils.getNumericSuffix(e)if n~=nil then
return e:sub(1,-#n-1),n
end
return e,nil
end
function fdmm.utils.getGroupingSuffix(e)if e then
local n=e:reverse():find('_')if n~=nil then
return e:sub(-n)end
end
return nil
end
function fdmm.utils.removeGroupingSuffix(n)local e=fdmm.utils.getGroupingSuffix(n)if e~=nil then
return n:sub(1,-#e-1),e
end
return n,nil
end
function fdmm.utils.getGroupingComponents(e)assert(e,'Nonnull parameter: name')local n,r
e=fdmm.utils.removeNumericSuffix(e)e,n=fdmm.utils.removeGroupingPrefix(e)e,r=fdmm.utils.removeGroupingSuffix(e)return n,e,r
end
function fdmm.utils.getGroupingComponentsWithSNC(e,t,i)local n,e,r=fdmm.utils.getGroupingComponents(e)if string.isEmpty(n)and table.contains(t or{},(e..'_'))then
n=(e..'_')e=nil
elseif string.isEmpty(r)and table.contains(i or{},('_'..e))then
r=('_'..e)e=nil
end
return n,e,r
end
function fdmm.utils.rposFromRPoint(e)return{x=e.x or e.point.x,y=e.y or e.point.y,routePoint=mist.utils.deepCopy(e)}end
function fdmm.utils.getFaction(e)assert(e,'Nonnull parameter: name')e=fdmm.utils.removeNumericSuffix(e)for r,n in pairs(fdmm.enums.Faction)do
if n:lower()==e:lower()then
return r
end
end
return fdmm.enums.Faction.Unused
end
function fdmm.utils.reversedDict(e)assert(e,'Nonnull parameter: tbl')local n={}for r,e in pairs(e)do
if(type(r)=='string'or type(r)=='number')and(type(e)=='string'or type(e)=='number')then
if not n[e]then
n[e]=r
elseif n[e]~=r then
if type(n[e])~='table'then
n[e]={n[e]}end
if not table.contains(n[e],r)then
table.insert(n[e],r)end
end
end
end
return n
end
function fdmm.utils.ensureReversedDict(e)if e and not e._rev then
e._rev=fdmm.utils.reversedDict(e)end
end
function fdmm.utils.splitTuple(e)if string.isNotEmpty(e)then
local n=string.occurrences(e,':')if n==0 then
return nil,nil,nil,nil
elseif n==1 then
return fdmm.utils.splitDoublet(e)elseif n==2 then
return fdmm.utils.splitTriplet(e)elseif n==3 then
return fdmm.utils.splitQuadlet(e)else
assert(false,'Not reachable')end
end
return nil,nil,nil,nil
end
function fdmm.utils.splitDoublet(e)assert(e,'Nonnull parameter: doubletString')return e:match("([^:]*):([^:]*)")end
function fdmm.utils.splitTriplet(e)assert(e,'Nonnull parameter: tripletString')return e:match("([^:]*):([^:]*):([^:]*)")end
function fdmm.utils.splitQuadlet(e)assert(e,'Nonnull parameter: quadletString')return e:match("([^:]*):([^:]*):([^:]*):([^:]*)")end
function fdmm.utils.isUserFlagSet(e)local e=trigger.misc.getUserFlag(e)return(type(e)=='number'and e~=0)or(type(e)=='boolean'and e~=false)or(type(e)=='string'and e:lower()~='false'and e~='0'and e:lower()~='off'and e:lower()~='no')end
function fdmm.utils.isDebugFlagSet()return fdmm.utils.isUserFlagSet(fdmm.consts.UserFlag.DebugFlag)end
function fdmm.utils.isDesertMap()return env.mission.theatre==DCSMAP.NTTR or env.mission.theatre==DCSMAP.PersianGulf
end
function fdmm.utils.isRainyMap()return env.mission.theatre==DCSMAP.Caucasus or env.mission.theatre==DCSMAP.Normandy
end
end
env.info("---FDMM_Utils End---");end)__DISTILLER:define("Additions/FDMM_LuaAdditions",function(e)env.info("---FDMM_LuaAdditions Start---")do
function string.contains(n,e)return string.find(n,e,0,true)~=nil
end
function string.occurrences(e,n)return select(2,e:gsub(n,''))end
function string.hasPrefix(n,e)return string.sub(n,1,#e)==e
end
function string.hasAnyPrefix(e,n)for r,n in pairs(n)do
if string.hasPrefix(e,n)then
return true
end
end
return false
end
function string.hasSuffix(n,e)return string.sub(n,-#e)==e
end
function string.hasAnySuffix(n,e)for r,e in pairs(e)do
if string.hasSuffix(n,e)then
return true
end
end
return false
end
function string.isEmpty(e)return e==nil or#e==0
end
function string.isNotEmpty(e)return e~=nil and#e>0
end
function string.notEmptyElse(e,n)if e~=nil and#e>0 then
return e
end
return n
end
function string.upperFirst(e)return e:sub(1,1):upper()..e:sub(2)end
function table.contains(e,n)for r,e in pairs(e)do
if e==n then
return true
end
end
return false
end
function table.concatedWith(n,r)local e=nil
if n or r then
e={}if n then
for r,n in pairs(n)do
e[r]=n
end
end
if r then
for n,r in pairs(r)do
e[n]=r
end
end
end
return e
end
function table.concatWith(r,e)if e then
for n,e in pairs(e)do
r[n]=e
end
end
end
function table.concatedWithi(n,r)local e=nil
if n or r then
e={}if n then
for r,n in ipairs(n)do
table.insert(e,n)end
end
if r then
for r,n in ipairs(r)do
table.insert(e,n)end
end
end
return e
end
function table.concatWithi(n,e)if e then
for r,e in ipairs(e)do
table.insert(n,e)end
end
end
function table.keysList(n)local e={}for n,r in pairs(n)do
table.insert(e,n)end
return e
end
function table.sortedKeysList(e)local e=table.keysList(e)table.sort(e)return e
end
end
env.info("---FDMM_LuaAdditions End---")end)__DISTILLER:define("FDMM_UnitTypes",function(e)env.info("---FDMM_UnitTypes Start---");e('Additions/FDMM_LuaAdditions')fdmm.unitTypes={}do
fdmm.consts.UnitType={Plane={Fighter={AirSuperiority={F14A='F-14A',F14B='F-14B',F15C='F-15C',F15E='F-15E',F16A='F-16A',F16Cb50='F-16C bl.50',F16CMb50='F-16C_50',F16Cb52d='F-16C bl.52d',J11A='J-11A',MiG29A='MiG-29A',MiG29G='MiG-29G',MiG29S='MiG-29S',Su27='Su-27',Su33='Su-33',},Interceptor={F14A='F-14A',F14B='F-14B',F4E='F-4E',MiG21b='MiG-21Bis',MiG25PD='MiG-25PD',MiG31='MiG-31',},Strike={AJS37='AJS37',F4E='F-4E',FA18A='F/A-18A',FA18C='F/A-18C',FA18Cl20='FA-18C_hornet',Su17M4='Su-17M4',Su34='Su-34',TornadoGR4='Tornado GR4',TornadoIDS='Tornado IDS',},Multirole={AJS37='AJS37',F4E='F-4E',F14A='F-14A',F14B='F-14B',F15C='F-15C',F15E='F-15E',F16A='F-16A',F16Cb50='F-16C bl.50',F16CMb50='F-16C_50',F16Cb52d='F-16C bl.52d',FA18A='F/A-18A',FA18C='F/A-18C',FA18Cl20='FA-18C_hornet',J11A='J-11A',JF17='JF-17',M2000C='M-2000C',M20005='Mirage 2000-5',MiG21b='MiG-21Bis',MiG23MLD='MiG-23MLD',MiG29A='MiG-29A',MiG29G='MiG-29G',MiG29K='MiG-29K',MiG29S='MiG-29S',Su27='Su-27',Su30='Su-30',Su33='Su-33',TornadoGR4='Tornado GR4',TornadoIDS='Tornado IDS',},Light={F5E='F-5E',F5E3='F-5E-3',F86F='F-86F Sabre',MiG15b='MiG-15bis',MiG19P='MiG-19P',},},Bomber={Strategic={B1B='B-1B',B52H='B-52H',Tu95MS='Tu-95MS',Tu160='Tu-160',},Tactical={F111F='F-111F',Tu22M3='Tu-22M3',},Attack={A10A='A-10A',A10C='A-10C',AV8BNA='AV8BNA',MiG27K='MiG-27K',Su24M='Su-24M',Su25='Su-25',Su25T='Su-25T',Su25TM='Su-25TM',},Stealth={F117A='F-117A',},Light={C101CC='C-101CC',L39ZA='L-39ZA',},ASW={S3B='S-3B',Tu142='Tu-142',},},Reconnaissance={Arial={An30M='An-30M',Tu142='Tu-142',},Bomber={MiG25RBT='MiG-25RBT',Su24MR='Su-24MR',},Drone={MQ9='MQ-9 Reaper',RQ1A='RQ-1A Predator',},},AWACS={A50='A-50',E2C='E-2C',E3A='E-3A',KJ2000='KJ-2000',},Refueling={IL78M='IL-78M',KC130='KC130',KC135='KC-135',KC135MPRS='KC135MPRS',S3BTanker='S-3B Tanker',},Transport={Strategic={C17A='C-17A',IL76MD='IL-76MD',},Tactical={An26B='An-26B',C130='C-130',},},Trainer={Jet={C101EB='C-101EB',F16AMLU='F-16A MLU',HawkT1A='Hawk',L39C='L-39C',},Prop={TF51D='TF-51D',Yak52='Yak-52',},},Civilian={Aerobatic={CEII='Christen Eagle II',},Transport={Yak40='Yak-40',},},All={},CarrierBorne={AV8BNA='AV8BNA',E2C='E-2C',F4E='F-4E',FA18A='F/A-18A',FA18C='F/A-18C',FA18Cl20='FA-18C_hornet',MiG29K='MiG-29K',S3B='S-3B',S3BTanker='S-3B Tanker',Su33='Su-33',},PlayerControllable={A10A='A-10A',A10C='A-10C',AJS37='AJS37',AV8BNA='AV8BNA',F14B='F-14B',F15C='F-15C',F16CMb50='F-16C_50',FA18Cl20='FA-18C_hornet',F5E3='F-5E-3',F86F='F-86F Sabre',JF17='JF-17',M2000C='M-2000C',MiG15b='MiG-15bis',MiG19P='MiG-19P',MiG21b='MiG-21Bis',MiG29A='MiG-29A',MiG29G='MiG-29G',MiG29S='MiG-29S',Su25='Su-25',Su25T='Su-25T',Su27='Su-27',Su33='Su-33',C101CC='C-101CC',C101EB='C-101EB',HawkT1A='Hawk',L39C='L-39C',L39ZA='L-39ZA',TF51D='TF-51D',Yak52='Yak-52',CEII='Christen Eagle II',},Unavailable={F111F='F-111F',MiG29K='MiG-29K',},NATOReporting={['AV8BNA']=':(N/A)',['A-50']=":'Mainstay'",['An-26B']=":'Curl'",['An-30M']=":'Clank'",['IL-76MD']=":'Candid'",['IL-78M']=":'Midas'",['J-11A']=":'Flanker-L'",['KJ-2000']=":'Mainring'",['MiG-15bis']=":'Fagot'",['MiG-19P']=":'Farmer-B'",['MiG-21Bis']=":'Fishbed-L/N'",['MiG-23MLD']=":'Flogger-K'",['MiG-25RBT']=":'Foxbat-B'",['MiG-25PD']=":'Foxbat-E'",['MiG-27K']=":'Flogger-J2'",['MiG-29A']=":'Fulcrum-A'",['MiG-29K']=":'Fulcrum-D'",['MiG-29S']=":'Fulcrum-C'",['MiG-31']=":'Foxhound'",['Su-17M4']=":'Fitter-K'",['Su-24M']=":'Fencer-D'",['Su-24MR']=":'Fencer-E'",['Su-25']=":'Frogfoot'",['Su-25T']=":'Frogfoot'",['Su-25TM']=":'Frogfoot'",['Su-27']=":'Flanker-B'",['Su-30']=":'Flanker-C'",['Su-33']=":'Flanker-D'",['Su-34']=":'Fullback'",['Tu-22M3']=":'Backfire-C'",['Tu-95MS']=":'Bear-H'",['Tu-142']=":'Bear-F/J'",['Tu-160']=":'Blackjack'",['Yak-40']=":'Codling'",},WTOReporting={['AV8BNA']=':(N/A)',},ReportNaming={['AJS37']='AJS 37',['AV8BNA']='AV-8B',['B-1B']='B-1B',['F-16C_50']='F-16CM bl.50',['FA-18C_hornet']='F/A-18C l.20',['F-86F Sabre']='F-86F',['KC130']='KC-130',['KC135MPRS']='KC-135 MPRS',['Hawk']='Hawk T1A',['M-2000C']='Mirage 2000C',['MiG-21Bis']='MiG-21bis',['MQ-9 Reaper']='MQ-9',['RQ-1A Predator']='RQ-1A',},ProperNaming={['A-10A']='Thunderbolt II',['A-10C']='Thunderbolt II',['AJS37']='Viggen',['AV8BNA']='Harrier II',['B-1B']='Lancer',['B-52H']='Stratofortress',['C-101CC']='Aviojet',['C-101EB']='Aviojet',['C-17A']='Globemaster III',['C-130']='Hercules',['E-2C']='Hawkeye',['E-3A']='Sentry',['F-4E']='Phantom II',['F-5E']='Tiger II',['F-5E-3']='Tiger II',['F-14A']='Tomcat',['F-14B']='Tomcat',['F-15C']='Eagle',['F-15E']='Strike Eagle',['F-16A']='Fighting Falcon',['F-16A MLU']='Fighting Falcon',['F-16C bl.50']='Fighting Falcon',['F-16C_50']='Fighting Falcon',['F-16C bl.52d']='Fighting Falcon',['F/A-18A']='Hornet',['F/A-18C']='Hornet',['FA-18C_hornet']='Hornet',['F-86F Sabre']='Sabre',['F-111F']='Aardvark',['F-117A']='Nighthawk',['KC-135']='Stratotanker',['KC135MPRS']='Stratotanker',['L-39C']='Albatros',['L-39ZA']='Albatros',['M-2000C']='Chasseur',['MQ-9 Reaper']='Reaper',['RQ-1A Predator']='Predator',['S-3B']='Viking',['S-3B Tanker']='Viking',['TF-51D']='Mustang',},Nicknaming={['A-10A']='Warthog',['A-10C']='Warthog',['F-16A']='Viper',['F-16A MLU']='Viper',['F-16C bl.50']='Viper',['F-16C_50']='Viper',['F-16C bl.52d']='Viper',},},Helicopter={Attack={AH1W='AH-1W',AH64A='AH-64A',AH64D='AH-64D',Ka50='Ka-50',Ka52='Ka-52',Mi24V='Mi-24V',Mi28N='Mi-28N',},Reconnaissance={OH58D='OH-58D',SA342L='SA342L',SA342M='SA342M',SA342Mg='SA342Minigun',SA342Ms='SA342Mistral',},Light={SA342L='SA342L',SA342M='SA342M',SA342Mg='SA342Minigun',SA342Ms='SA342Mistral',UH1H='UH-1H',},Transport={Strategic={CH47D='CH-47D',CH53E='CH-53E',Mi26='Mi-26',},Tactical={Mi8MTV2='Mi-8MT',SH3W='SH-3W',SH60B='SH-60B',UH1H='UH-1H',UH60A='UH-60A',},Assault={Mi24V='Mi-24V',SH60B='SH-60B',UH1H='UH-1H',UH60A='UH-60A',},},ASW={Ka27='Ka-27',SH3W='SH-3W',SH60B='SH-60B',},All={},CarrierBorne={AH1W='AH-1W',CH53E='CH-53E',Ka27='Ka-27',SH3W='SH-3W',SH60B='SH-60B',},PlayerControllable={Ka50='Ka-50',SA342L='SA342L',SA342M='SA342M',SA342Mg='SA342Minigun',SA342Ms='SA342Mistral',UH1H='UH-1H',Mi8MTV2='Mi-8MT',},Unavailable={Ka52='Ka-52',SH3W='SH-3W',},NATOReporting={['Ka-27']=":'Helix'",['Ka-50']=":'Hokum-A'",['Ka-52']=":'Hokum-B'",['Mi-8MT']=":'Hip'",['Mi-24V']=":'Hind-E'",['Mi-26']=":'Halo'",['Mi-28N']=":'Havoc'",},WTOReporting={},ReportNaming={['SA342L']='SA 342L',['SA342M']='SA 342M',['SA342Minigun']='SA 342 Mg',['SA342Mistral']='SA 342 Ms',},ProperNaming={['AH-1W']='SuperCobra',['AH-64A']='Apache',['AH-64D']='Apache',['CH-47D']='Chinook',['CH-53E']='Sea Stallion',['Ka-50']='Black Shark',['Ka-52']='Alligator',['OH-58D']='Kiowa',['SA342L']='Gazelle',['SA342M']='Gazelle',['SA342Minigun']='Gazelle',['SA342Mistral']='Gazelle',['SH-3W']='Sea King',['SH-60B']='Seahawk',['UH-1H']='Huey',['UH-60A']='Black Hawk',},Nicknaming={['AH-1W']='HueyCobra',['Mi-24V']='Crocodile',},},Ground={Tracked={HQ={Sborka9S80M1='Dog Ear radar',},MBT={ChallengerII='Challenger2',AMX56Leclerc='Leclerc',Leopard1A3='Leopard1A3',Leopard2A5='Leopard-2',M1A2Abrams='M-1 Abrams',M60A3Patton='M-60',MerkavaMk4='Merkava_Mk4',T55='T-55',T72B='T-72B',T80U='T-80UD',T90='T-90',ZTZ96B='ZTZ96B',},IFV={BMD1='BMD-1',BMP1='BMP-1',BMP2='BMP-2',BMP3='BMP-3',M2A2Bradley='M-2 Bradley',Marder1A3='Marder',MCV80='MCV-80',ZBD04A='ZBD04A',},ARV={BRDM2='BRDM-2',BTRRD='BTR_D',MTLBuBoman='Grad_FDDM',},APC={AAV7='AAV7',M1043HMMWVMg='M1043 HMMWV Armament',M1126StrykerICV='M1126 Stryker ICV',M113='M-113',MTLB='MTLB',},MLRS={BM21={_HasWheeledComps=true,FireControl={MTLBuBoman='Grad_FDDM',},},M270={_HasWheeledComps=true,Launcher={M270MLRSLN='MLRS',},},},SPH={M109Paladin='M-109',Gvozdika2S1='SAU Gvozdika',Msta2S19='SAU Msta',Akatsia2S3='SAU Akatsia',NonaS2S9='SAU 2-C9',SpGHDana='SpGH_Dana',},EWR={RolandEWR='Roland Radar',},SAM={M48Chaparral='M48 Chaparral',M6Linebacker='M6 Linebacker',RolandADS='Roland ADS',SA6={SearchTrackRadar={SA6KubSTR_1S91='Kub 1S91 str',},Launcher={SA6KubLN_2P25='Kub 2P25 ln',},},SA11={HQ={SA11BukCC_9S470M1='SA-11 Buk CC 9S470M1',},SearchRadar={SA11BukSR_9S18M1='SA-11 Buk SR 9S18M1',},Launcher={SA11BukLN_9A310M1='SA-11 Buk LN 9A310M1',},},SA13Strela10M3_9A35M3='Strela-10M3',SA15Tor_9A331='Tor 9A331',SA19Tunguska_2S6='2S6 Tunguska',},SPAAG={FlaKPzGepard1A2='Gepard',ZSU234Shilka='ZSU-23-4 Shilka',M163Vulcan='Vulcan',},},Wheeled={HQ={LandRover101FC='Land_Rover_101_FC',SKP11ATCMCP='SKP-11',Ural375PBU='Ural-375 PBU',ZiL131KUNG='ZIL-131 KUNG',},SPG={M1128StrykerMGS='M1128 Stryker MGS',},ATGM={M1024HMMWVTOW='M1045 HMMWV TOW',M1134StrykerATGM='M1134 Stryker ATGM',},ARV={LAV25='LAV-25',},APC={BMT2Cobra='Cobra',BTR80='BTR-80',M1025HMMWV='Hummer',TPzFuchs='TPZ',},SSM={SS1CScudBLN='Scud_B',},MLRS={BM21={_HasTrackedComps=true,Launcher={BM21Grad='Grad-URAL',},},BM27Uragan_9K57='Uragan_BM-27',BM30Smerch_9A52='Smerch',M270={_HasTrackedComps=true,FireControl={M270MLRSFDDM='MLRS FDDM',},},},EWR={P1455G6='55G6 EWR',P181L13='1L13 EWR',},SAM={M1097Avenger='M1097 Avenger',HQ7={SearchTrackRadar={HQ7SPSTR='HQ-7_STR_SP',},Launcher={HQ7SPLN='HQ-7_LN_SP',},},Patriot={_HasTowedComps=true,HQ={PatriotECS_ANMSQ104='Patriot ECS',},DataProcessing={PatriotICC='Patriot cp',},Power={PatriotEPPIII='Patriot EPP',},RadarArray={PatriotAMG_ANMRC137='Patriot AMG',},},SA3S125={_HasTowedComps=true,SearchRadar={SA3S125SR_P19='p-19 s-125 sr',},},SA8={Loader={SA8OsaLD_9T217='SA-8 Osa LD 9T217',},Launcher={SA8OsaLN_9A33='Osa 9A33 ln',},},SA9Strela1_9P31='Strela-1 9P31',SA10S300PS={_HasTowedComps=true,HQ={SA10S300PSCP_54K6='S-300PS 54K6 cp',},SearchRadar={SA10S300PSSR_64H6E='S-300PS 64H6E sr',},MasterLauncher={SA10S300PSLN_5P85C='S-300PS 5P85C ln',},SlaveLauncher={SA10S300PSLN_5P85D='S-300PS 5P85D ln',},},},SPAAG={ZU23Ural375={Soldier={ZU23Ural375='Ural-375 ZU-23',},Insurgent={ZU23Ural375_Insurgent='Ural-375 ZU-23 Insurgent',},},},Power={APA5D_Ural4320='Ural-4320 APA-5D',APA80_ZiL131='ZiL-131 APA-80',},Fire={M1142HEMTTTFFT='HEMTT TFFT',UralATsP6='Ural ATsP-6',},Transport={Armored={Ural432031A='Ural-4320-31',},Open={GAZ66='GAZ-66',Ural375='Ural-375',},Covered={GAZ3308='GAZ-3308',KamAZ43101='KAMAZ Truck',KrAZ6322='KrAZ6322',M818='M 818',Ural4320T='Ural-4320T',},Lubricant={ATMZ5='ATMZ-5',},Fuel={ATZ10='ATZ-10',M978HEMTTTanker='M978 HEMTT Tanker',},},Car={M1025HMMWV='Hummer',LandRover109S3='Land_Rover_109_S3',Tigr_233036='Tigr_233036',UAZ469='UAZ-469',},},Towed={DroneCommand={HQ={PreadtorGCS='Predator GCS',},Repeater={PredatorTS='Predator TrojanSpirit',},},SSM={CSSC2={SearchRadar={CSSC2SilkwormSR='Silkworm_SR',},Launcher={CSSC2SilkwormLN='hy_launcher',},},},SAM={Hawk={HQ={HawkPCP='Hawk pcp',},ContWaveAcqRadar={HawkCWAR_ANMPQ55='Hawk cwar',},SearchRadar={HawkSR_ANMPQ50='Hawk sr',},TrackRadar={HawkTR_ANMPQ46='Hawk tr',},Launcher={HawkLN_M192='Hawk ln',},},Patriot={_HasWheeledComps=true,Launcher={PatriotLN_M901='Patriot ln',},SearchTrackRadar={PatriotSTR_ANMPQ53='Patriot str',},},Rapier={TrackRadar={RapierFSATR='rapier_fsa_blindfire_radar',},TrackOptical={RapierFSATO='rapier_fsa_optical_tracker_unit',},Launcher={RapierFSALN='rapier_fsa_launcher',},},SA2S75={TrackRadar={SA2S75TR_SNR75='SNR_75V',},Launcher={SA2S75LN_SM90='S_75M_Volhov',},},SA3S125={_HasWheeledComps=true,TrackRadar={SA3S125TR_SNR='snr s-125 tr',},Launcher={SA3S125LN_5P73='5p73 s-125 ln',},},SA10S300PS={_HasWheeledComps=true,SearchRadar={SA10S300PSSR_5N66M='S-300PS 40B6MD sr',},TrackRadar={SA10S300PSTR_30N6='S-300PS 40B6M tr',},},},AAA={ZU23={Soldier={Fortified={ZU23Closed='ZU-23 Emplacement Closed',},Emplacement={ZU23='ZU-23 Emplacement',},},Insurgent={Fortified={ZU23Closed_Insurgent='ZU-23 Closed Insurgent',},Emplacement={ZU23_Insurgent='ZU-23 Insurgent',},},},},},Infantry={Beacon={TACANBeacon_TTS3030='TACAN_beacon',},Mortar={M2B11='2B11 mortar',},SAM={SA18={Soldier={Comm={SA18IGLAComm='SA-18 Igla comm',},Launcher={SA18IGLAMANPAD='SA-18 Igla manpad',},},Insurgent={Comm={SA18IGLAComm='SA-18 Igla comm',},Launcher={SA18IGLAMANPAD_Insurgent='Igla manpad INS',},},},SA24={Comm={SA24IGLASComm='SA-18 Igla-S comm',},Launcher={SA24IGLASMANPAD='SA-18 Igla-S manpad',},},Stinger={Comm={StingerComm='Stinger comm',IsraeliStingerComm='Stinger comm dsr',},Launcher={StingerMANPAD='Soldier stinger',},},},MG={Soldier={SoldierM249='Soldier M249',},},Rifle={Soldier={GeorgianM4='Soldier M4 GRG',SoldierM4='Soldier M4',RussianAK='Infantry AK',SoldierAK='Soldier AK',},Insurgent={InsurgentAK='Infantry AK Ins',},Paratrooper={ParatroopAKS74='Paratrooper AKS-74',},},RPG={Soldier={SoldierRPG='Soldier RPG',},Insurgent={SoldierRPG='Soldier RPG',},Paratrooper={ParatroopRPG16='Paratrooper RPG-16',},},},Fort={Barracks='house1arm',House='houseA_arm',HillsideBunker='Sandbox',PillboxBunker='Bunker',Outpost='outpost',RoadOutpost='outpost_road',WatchTower='house2arm',WarningBoard='warning_board_a',},Civilian={Trailer={MAZ6303='MAZ-6303',},Fire={M1142HEMTTTFFT='HEMTT TFFT',UralATsP6='Ural ATsP-6',},Transport={Open={ZiL4331='ZIL-4331',},Covered={GAZ3307='GAZ-3307',},},Bus={Double={IKARUS280='IKARUS Bus',},Single={LAZ695='LAZ Bus',ZIU9='Trolley bus',},},Car={VAZ2109='VAZ Car',},},Animal={Suidae='Suidae',},All={},Amphibious={AAV7='AAV7',BMP1='BMP-1',BMP2='BMP-2',BRDM2='BRDM-2',BTRRD='BTR_D',BTR80='BTR-80',LAV25='LAV-25',MTLB='MTLB',MTLBuBoman='Grad_FDDM',SA8OsaLD_9T217='SA-8 Osa LD 9T217',SA8OsaLN_9A33='Osa 9A33 ln',Gvozdika2S1='SAU Gvozdika',NonaS2S9='SAU 2-C9',},HeavyWheeled={M1142HEMTTTFFT='HEMTT TFFT',M978HEMTTTanker='M978 HEMTT Tanker',SA10S300PSCP_54K6='S-300PS 54K6 cp',SA10S300PSSR_64H6E='S-300PS 64H6E sr',SA10S300PSLN_5P85C='S-300PS 5P85C ln',SA10S300PSLN_5P85D='S-300PS 5P85D ln',SS1CScudBLN='Scud_B',TPzFuchs='TPZ',},Unavailable={SA8OsaLD_9T217='SA-8 Osa LD 9T217',Suidae='Suidae',},NATOReporting={['Dog Ear radar']="PPRU-M1 'Dog Ear' (Sborka-M1):'Dog Ear'",['T-55']=':(M1970)',['T-72B']=':(M1988)',['T-80UD']=':(M1989)',['T-90']=':(M1990)',['BMD-1']=':(M1970)',['BMP-1']=':(M1970)',['BMP-2']=':(M1981)',['BMP-3']=':(M1990/1)',['BRDM-2']=':(M1966)',['BTR_D']=':(M1979)',['Grad_FDDM']=':(M1974)',['BTR-80']=':(M1987)',['MTLB']=':(M1970)',['SAU 2-C9']='SAU-120:(M1985)',['SAU Akatsia']='SAU-152:(M1973)',['SAU Gvozdika']='SAU-122:(M1974)',['SAU Msta']='SAU-152:(M1990)',['Grad-URAL']='BM-21:(M1964)',['Uragan_BM-27']='BM-27:(M1977)',['Smerch']='BM-30:(M1983)',['Scud_B']="SS-1C 'Scud-B' (R-17/MAZ-543):'Scud-B'",['Silkworm_SR']="CSS-C-2 'Silkworm':'Silkworm'",['hy_launcher']="CSS-C-2 'Silkworm':'Silkworm'",['55G6 EWR']="P-14 'Tall Rack' (Nebo):'Tall Rack'",['1L13 EWR']="P-18 'Spoon Rest-D' (Nebo-SV):'Spoon Rest-D'",['S_75M_Volhov']="SA-2D 'Guideline m.3' (S-75M/SM-90):'Guideline m.3'",['SNR_75V']="SA-2D 'Fan Song-E' (SNR-75V):'Fan Song-E'",['5p73 s-125 ln']="SA-3 'Goa' (S-125):'Goa'",['p-19 s-125 sr']="SA-3 'Flat Face-B' (S-125/P-19):'Flat Face-B'",['snr s-125 tr']="SA-3 'Low Blow' (SNR-125):'Low Blow'",['Kub 1S91 str']="SA-6 'Straight Flush' (Kub):'Straight Flush'",['Kub 2P25 ln']="SA-6 'Gainful' (Kub):'Gainful'",['SA-8 Osa LD 9T217']="SA-8 'Gecko' (Osa):'Gecko'",['Osa 9A33 ln']="SA-8 'Gecko' (Osa):'Gecko'",['Strela-1 9P31']="SA-9 'Gaskin' (Strela-1):'Gaskin'",['S-300PS 40B6M tr']="SA-10B 'Flap Lid-A' (S-300PS):'Flap Lid-A'",['S-300PS 40B6MD sr']="SA-10B 'Clam Shell' (S-300PS):'Clam Shell'",['S-300PS 54K6 cp']="SA-10B 'Grumble-B' (S-300PS):'Grumble-B'",['S-300PS 5P85C ln']="SA-10B 'Grumble-B' (S-300PS):'Grumble-B'",['S-300PS 5P85D ln']="SA-10B 'Grumble-B' (S-300PS):'Grumble-B'",['S-300PS 64H6E sr']="SA-10B 'Big Bird' (S-300PS):'Big Bird'",['SA-11 Buk CC 9S470M1']="SA-11 'Gadfly' (Buk):'Gadfly'",['SA-11 Buk LN 9A310M1']="SA-11 'Gadfly' (Buk):'Gadfly'",['SA-11 Buk SR 9S18M1']="SA-11 'Tube Arm' (Buk):'Tube Arm'",['Strela-10M3']="SA-13 'Gopher' (Strela-10M3):'Gopher'",['Tor 9A331']="SA-15 'Gauntlet' (Tor):'Gauntlet'",['2S6 Tunguska']="SA-19 'Grison' (Tunguska):'Grison'",['Igla manpad INS']="SA-18 'Grouse' (Igla):'Grouse'",['SA-18 Igla comm']="SA-18 'Grouse' (Igla):'Grouse'",['SA-18 Igla manpad']="SA-18 'Grouse' (Igla):'Grouse'",['SA-18 Igla-S comm']="SA-24 'Grinch' (Igla-S):'Grinch'",['SA-18 Igla-S manpad']="SA-24 'Grinch' (Igla-S):'Grinch' ",['ZSU-23-4 Shilka']="ZSU-23-4 'Gun Dish' (Shilka):'Gun Dish'",},WTOReporting={['Dog Ear radar']='9S80M1 Sborka-M1:(PPRU-M1)',['T-55']=':(O.155)',['T-72B']=':(O.174M)',['T-80UD']=':(O.219AS)',['T-90']=':(O.188)',['BMD-1']=':(O.915)',['BMP-1']=':(O.765Sp2)',['BMP-2']=':(O.675)',['BMP-3']=':(O.688M)',['BRDM-2']=':(BTR-40P-2)',['BTR_D']=':(O.925)',['Grad_FDDM']=':(O.10)',['BTR-80']=':(GAZ-5903)',['MTLB']=':(O.6)',['SAU 2-C9']='2S9:(SO.120)',['SAU Akatsia']='2S3:(SO.152)',['SAU Gvozdika']='2S1:(SAU.122)',['SAU Msta']='2S19:(SP.152)',['Grad-URAL']='9K51 BM-21:',['Uragan_BM-27']='9K57 BM-27:(9P140)',['Smerch']='9K58 BM-30:',['Scud_B']='9K72 R-17 Elbrus:(9P117M)',['Silkworm_SR']='HY-1A:',['hy_launcher']='HY-1A:',['55G6 EWR']='55G6 Nebo:(P-14)',['1L13 EWR']='1L13 Nebo-SV:(P-18)',['S_75M_Volhov']='S-75M SM-90:',['SNR_75V']='S-75M SNR-75V:',['5p73 s-125 ln']='S-125 5P73:',['p-19 s-125 sr']='S-125 1RL134:(P-19)',['snr s-125 tr']='S-125 SNR-125:',['Kub 1S91 str']='2K12 Kub 1S91:',['Kub 2P25 ln']='2K12 Kub 2P25:',['SA-8 Osa LD 9T217']='9K33 Osa 9T217:',['Osa 9A33 ln']='9K33 Osa 9A33:',['Strela-1 9P31']='9K31 Strela-1 9P31:',['S-300PS 40B6M tr']='S-300PS 30N6:',['S-300PS 40B6MD sr']='S-300PS 5N66M:',['S-300PS 54K6 cp']='S-300PS 54K6:',['S-300PS 5P85C ln']='S-300PS 5P85C:',['S-300PS 5P85D ln']='S-300PS 5P85D:',['S-300PS 64H6E sr']='S-300PS 64H6E:',['SA-11 Buk CC 9S470M1']='9K37 Buk 9S470M1:',['SA-11 Buk LN 9A310M1']='9K37 Buk 9A310M1:',['SA-11 Buk SR 9S18M1']='9K37 Buk 9S18M1:',['Strela-10M3']='9K35M Strela-10M3 9A35M3:',['Tor 9A331']='9K330 Tor 9A331:',['2S6 Tunguska']='2S6 Tunguska:',['Igla manpad INS']='9K38 Igla:',['SA-18 Igla comm']='9K38 Igla:',['SA-18 Igla manpad']='9K38 Igla:',['SA-18 Igla-S comm']='9K338 Igla-S:',['SA-18 Igla-S manpad']='9K338 Igla-S:',['ZSU-23-4 Shilka']='ZSU-23-4 Shilka:',},ReportNaming={['Dog Ear radar']='%R',['Land_Rover_101_FC']='Land Rover 101 FC',['Predator TrojanSpirit']='Predator TS',['SKP-11']='SKP-11 ATC MCP',['ZIL-131 KUNG']='ZiL-131 KUNG',['Challenger2']='Challenger II',['Leclerc']='AMX-56 Leclerc',['Leopard1A3']='Leopard 1A3',['Leopard-2']='Leopard 2A5',['M-1 Abrams']='M1A2 Abrams',['M-60']='M60A3 Patton',['Merkava_Mk4']='Merkava Mk.IV',['ZTZ96B']='ZTZ-96B',['M-2 Bradley']='M2A2 Bradley',['Marder']='Marder 1A3',['MCV-80']='MCV-80 Warrior',['ZBD04A']='ZBD-04A',['M1045 HMMWV TOW']='M1045 HMMWV TOW',['M1128 Stryker MGS']='M1128 Stryker MGS',['M1134 Stryker ATGM']='M1134 Stryker ATGM',['BTR_D']='BTR-RD',['Grad_FDDM']='MT-LBu Boman',['AAV7']='AAV-7',['Cobra']='Cobra BMT-2',['BTR-80']='BTR-80',['M1043 HMMWV Armament']='M1043 HMMWV Mg',['M1126 Stryker ICV']='M1126 Stryker ICV',['M-113']='M113 APC',['MTLB']='MT-LB',['TPZ']='TPz Fuchs',['SAU 2-C9']='%R Nona-S',['SAU Akatsia']='%R Akatsia',['SAU Gvozdika']='%R Gvozdika',['SAU Msta']='%R Msta-S',['M-109']='M109 Paladin',['SpGH_Dana']='SpGH Dana',['Grad-URAL']='%R Grad',['Uragan_BM-27']='%R Uragan',['Smerch']='%R Smerch',['MLRS']='M270 MLRS LN',['MLRS FDDM']='M270 MLRS FDDM',['Scud_B']='%R LN',['Silkworm_SR']='%R SR',['hy_launcher']='%R LN',['55G6 EWR']='%R EWR',['1L13 EWR']='%R EWR',['Roland Radar']='Roland EWR',['Hawk cwar']='Hawk AN/MPQ-55 CWAR',['Hawk ln']='Hawk M192 LN',['Hawk pcp']='Hawk PCP',['Hawk sr']='Hawk AN/MPQ-50 SR',['Hawk tr']='Hawk AN/MPQ-46 TR',['HQ-7_LN_SP']='HQ-7 SP LN',['HQ-7_STR_SP']='HQ-7 SP STR',['Patriot AMG']='Patriot AN/MRC-137 AMG',['Patriot cp']='Patriot ICC',['Patriot ECS']='Patriot AN/MSQ-104 ECS',['Patriot EPP']='Patriot EPP-III',['Patriot ln']='Patriot M901 LN',['Patriot str']='Patriot AN/MPQ-53 STR',['rapier_fsa_blindfire_radar']='Rapier FSA Blindfire TR',['rapier_fsa_launcher']='Rapier FSA LN',['rapier_fsa_optical_tracker_unit']='Rapier FSA OT',['S_75M_Volhov']='%R LN',['SNR_75V']='%R TR',['5p73 s-125 ln']='%R LN',['p-19 s-125 sr']='%R SR',['snr s-125 tr']='%R TR',['Kub 1S91 str']='%R STR',['Kub 2P25 ln']='%R LN',['SA-8 Osa LD 9T217']='%R LD',['Osa 9A33 ln']='%R LN',['Strela-1 9P31']='%R',['S-300PS 40B6M tr']='%R TR',['S-300PS 40B6MD sr']='%R SR',['S-300PS 54K6 cp']='%R CP',['S-300PS 5P85C ln']='%R M/LN',['S-300PS 5P85D ln']='%R S/LN',['S-300PS 64H6E sr']='%R SR',['SA-11 Buk CC 9S470M1']='%R CC',['SA-11 Buk LN 9A310M1']='%R LN',['SA-11 Buk SR 9S18M1']='%R SR',['Strela-10M3']='%R',['Tor 9A331']='%R',['2S6 Tunguska']='%R',['Igla manpad INS']='Insurgent %R MANPAD',['SA-18 Igla comm']='%R Comm',['SA-18 Igla manpad']='%R MANPAD',['SA-18 Igla-S comm']='%R Comm',['SA-18 Igla-S manpad']='%R MANPAD',['Stinger comm']='Stinger Comm',['Stinger comm dsr']='Israeli Stinger Comm',['Soldier stinger']='Stinger MANPAD',['Gepard']='FlaKPz Gepard 1A2',['Vulcan']='M163 Vulcan',['ZSU-23-4 Shilka']='%R',['Ural-375 ZU-23']='ZU-23/Ural-375',['Ural-375 ZU-23 Insurgent']='Insurgent ZU-23/Ural-375',['ZU-23 Emplacement Closed']='ZU-23 (fortified)',['ZU-23 Closed Insurgent']='Insurgent ZU-23 (fortified)',['ZU-23 Emplacement']='ZU-23',['ZU-23 Insurgent']='Insurgent ZU-23',['TACAN_beacon']='TTS3030 TACAN Beacon',['2B11 mortar']='2B11 Mortar',['Soldier M4 GRG']='Georgian Soldier M4',['Infantry AK Ins']='Insurgent AK',['Paratrooper AKS-74']='Paratrooper AKS-74',['Paratrooper RPG-16']='Paratrooper RPG-16',['Ural-4320 APA-5D']='APA-5D/Ural-4320',['ZiL-131 APA-80']='APA-80/ZiL-131',['HEMTT TFFT']='M1142 HEMTT TFFT',['Ural-4320-31']='Ural-4320-31 armored truck',['GAZ-66']='GAZ-66 truck',['Ural-375']='Ural-375 truck',['GAZ-3308']='GAZ-3308 truck',['KAMAZ Truck']='KamAZ-43101 truck',['KrAZ6322']='KrAZ-6322 truck',['M 818']='M818 truck',['Ural-4320T']='Ural-4320T truck',['Hummer']='M1025 HMMWV',['Land_Rover_109_S3']='Land Rover 109 S3',['Tigr_233036']='GAZ-233036 Tigr',['UAZ-469']='UAZ-469 car',['Bunker']='Pillbox bunker',['Sandbox']='Hillside bunker',['house1arm']='Barracks',['house2arm']='Watch tower',['houseA_arm']='Holdout',['outpost']='Outpost',['outpost_road']='Road outpost',['warning_board_a']='Warning board',['MAZ-6303']='MAZ-6303 trailer',['IKARUS Bus']='IKARUS-280 bus',['LAZ Bus']='LAZ-695 bus',['Trolley bus']='ZIU-9 bus',['VAZ Car']='VAZ-2109 car',['ZIL-4331']='ZiL-4331 truck',},Nicknaming={['Hummer']='Humvee',['M1043 HMMWV Armament']='Humvee',['M1045 HMMWV TOW']='Humvee',},},Train={Transport={Locomotive={UnionPacificES44AH='ES44AH',RedStarCHME3T='Locomotive',},Wagon={BoxCar='Boxcartrinity',FlatCar='Coach a platform',GondolaCar='Coach cargo open',StockCar='Coach cargo',TankCarBlackLg='Tankcartrinity',TankCarBlueSh='Coach a tank blue',TankCarYellowSh='Coach a tank yellow',WellCar='Wellcarnsc',},},Civilian={Locomotive={ElectricVL80='Electric locomotive',},Wagon={PassengerCar='Coach a passenger',},},All={},ReportNaming={['ES44AH']='ES44AH locomotive',['Locomotive']='CHME3T locomotive',['Boxcartrinity']='Box car',['Coach a platform']='Flat car',['Coach cargo open']='Gondola car',['Coach cargo']='Stock car',['Tankcartrinity']='Large tank car',['Coach a tank blue']='Short tank car (blue)',['Coach a tank yellow']='Short tank car (yellow)',['Wellcarnsc']='Well car',['Electric locomotive']='VL80 locomotive',['Coach a passenger']='Passenger car',},},Ship={Carrier={Kuznetsov_AdmiralKuznetsov='KUZNECOW',Nimitz_CVN74JohnCStennis='Stennis',Nimitz_CVN70CarlVinson='VINSON',},HeliCarrier={Tarawa_LHA1Tarawa='LHA_Tarawa',},BattleCruiser={Kirov_PyotrVelikiy='PIOTR',},Cruiser={Slava_Moskva='MOSCOW',Ticonderoga='TICONDEROG',},Destroyer={Neustrashimy_Neustrashimy='NEUSTRASH',OliverHazardPerry='PERRY',Type052B='052B',Type052C='052C',},Frigate={KrivakII_Rezky='REZKY',GrishaV='ALBATROS',Type054A='054A',},Corvette={TarantulIII='MOLNIYA',},Submarine={Kilo='KILO',Tango='SOM',Type093='Type 093',},Gunboat={Speedboat='speedboat',},Transport={BulkCargo={BulkCarrier_Yakushev='Dry-cargo ship-1',},ISOCargo={ContainerShip_Ivanov='Dry-cargo ship-2',},Refueler={Tanker_Elnya='ELNYA',},},Civilian={Yacht_Zvezdny='ZWEZDNY',},All={},NATOReporting={['KUZNECOW']='Kuznetsov:',['PIOTR']='Kirov:',['MOSCOW']='Slava:',['NEUSTRASH']='Neustrashimy:',['052B']='Luyang I:',['052C']='Luyang II:',['REZKY']='Krivak II:',['ALBATROS']='Grisha V:',['054A']='Jiangkai II:',['MOLNIYA']='Tarantul III:',['KILO']='Kilo:',['SOM']='Tango:',['Type 093']='Shang:',['ELNYA']='Altay::Tanker',},WTOReporting={['KUZNECOW']='Orel:(P.1143.5)',['PIOTR']='Orlan:(P.1144.2)',['MOSCOW']='Atlant:(P.1164)',['NEUSTRASH']='Yastreb:(P.1154.0)',['052B']='Guangzhou:',['052C']='Lanzhou:',['REZKY']='Burevestnik M:(P.1135M)',['ALBATROS']='Albatros:(P.1124.4)',['054A']='Xuzhou:',['MOLNIYA']='Molniya:(P.1241.1MP)',['KILO']='Paltus:(P.877)',['SOM']='Som:(P.641B)',['Type 093']='09-III:',['ELNYA']='Altay:(P.160):Oiler',},ReportNaming={['KUZNECOW']='%R-class Carrier',['Stennis']='Nimitz-class (late) Carrier',['VINSON']='Nimitz-class (early) Carrier',['LHA_Tarawa']='Tarawa-class Assault Ship',['PIOTR']='%R-class BattleCruiser',['MOSCOW']='%R-class Cruiser',['TICONDEROG']='Ticonderoga-class Cruiser',['NEUSTRASH']='%R-class Destroyer',['PERRY']='Oliver Hazard Perry-class Destroyer',['052B']='Type 052B (%R-class) Destroyer',['052C']='Type 052C (%R-class) Destroyer',['REZKY']='%R-class Frigate',['ALBATROS']='%R-class Frigate',['054A']='Type 054A (%R-class) Frigate',['MOLNIYA']='%R-class Corvette',['KILO']='%R-class Submarine',['SOM']='%R-class Submarine',['Type 093']='Type 093 (%R-class) Submarine',['speedboat']='Speedboat',['Dry-cargo ship-1']='Bulk carrier Ship',['Dry-cargo ship-2']='Container Ship',['ELNYA']='%R-class %N',['ZWEZDNY']='Civilian Yacht',},Nicknaming={['052C']='Chinese Aegis',},},Static={Airbase={AirshowCrowd='Fortifications:Crowd1:Airshow_Crowd',AirshowCone='Fortifications:Comp_cone:Airshow_Cone',FuelStorageTank='Fortifications:toplivo-bak:Fuel tank',HangarA='Fortifications:angar_a:Hangar A',HangarB='Fortifications:angar_b:Hangar B',ReinforcedHangar='Fortifications:ukrytie:Shelter',StorageShelter='Fortifications:ukrytie_b:Shelter B',RepairWorkshop='Fortifications:tech:Repair workshop',Windsock='Fortifications:H-Windsock_RW:Windsock',},Barrier={RoadBarrier='Cargos:f_bar_cargo:f_bar_cargo',Tetrapod='Cargos:tetrapod_cargo:tetrapod_cargo',LogsLg='Cargos:trunks_long_cargo:trunks_long_cargo',LogsSh='Cargos:trunks_small_cargo:trunks_small_cargo',PipesLg='Cargos:pipes_big_cargo:pipes_big_cargo',PipesSh='Cargos:pipes_small_cargo:pipes_small_cargo',},Cargo={AmmoBox='Cargos:ammo_box_cargo:ammo_cargo',Barrels='Cargos:barrels_cargo:barrels_cargo',Container='Cargos:bw_container_cargo:container_cargo',FuelTank='Cargos:fueltank_cargo:fueltank_cargo',ISOContainerLg='Cargos:iso_container_cargo:iso_container',ISOContainerSm='Cargos:iso_container_small_cargo:iso_container_small',M117Bombs='Cargos:m117_cargo:m117_cargo',OilTank='Cargos:oiltank_cargo:oiltank_cargo',SlungCargo='Cargos:ab-212_cargo:uh1h_cargo',},Effect={BigSmoke='Effects::big_smoke',BigSmokePresets={SmallSmokeAndFire=1,MediumSmokeAndFire=2,LargeSmokeAndFire=3,HugeSmokeAndFire=4,SmallSmoke=5,MediumSmoke=6,LargeSmoke=7,HugeSmoke=8},DustSmoke='Effects::dust_smoke',DustSmokePresets={test1=1,test2=2,test3=3},SmokingLine='Effects::smoking_line',SmokingLinePresets={test1=1,test2=2,test3=3},SmokyMarker='Effects::smoky_marker',SmokyMarkerPresets={test1=1,test2=2,test3=3},},Factory={ChemicalTank='Fortifications:him_bak_a:Chemical tank A',ManufacturingPlant='Fortifications:kombinat:Tech combine',EquipmentHangar='Fortifications:ceh_ang_a:Tech hangar A',FactoryWorkshop='Fortifications:tec_a:Workshop A',},FARP={AmmoStorage='Fortifications:SetkaKP:FARP Ammo Dump Coating',CommandPost='Fortifications:kp_ug:FARP CP Blindage',FuelDepot='Fortifications:GSM Rus:FARP Fuel Depot',Tent='Fortifications:PalatkaB:FARP Tent',Heliport='Heliports:FARPS:FARP',Helipad='Heliports:FARP:SINGLE_HELIPAD',HeliportCallsigns={London=1,Dallas=2,Paris=3,Moscow=4,Berlin=5,Rome=6,Madrid=7,Warsaw=8,Dublin=9,Perth=10},},Fort={Barracks='Fortifications::house1arm',Dormitory='Fortifications:kazarma2:Barracks 2',HillsideBunker='Fortifications::Sandbox',PillboxBunker='Fortifications::Bunker',CommandCenter='Fortifications:ComCenter:.Command Center',Generators='Fortifications:GeneratorF:GeneratorF',House='Fortifications::houseA_arm',Landmine='Fortifications:landmine:Landmine',Latrine='Fortifications:WC:WC',Outpost='Fortifications::outpost',RoadOutpost='Fortifications::outpost_road',StaffBuilding='Fortifications:aviashtab:Military staff',WatchTower='Fortifications::house2arm',},Marker={RedFlag='Fortifications:H-flag_R:Red_Flag',WhiteFlag='Fortifications:H-Flag_W:White_Flag',BlackTire='Fortifications:H-tyre_B:Black_Tyre',WhiteTire='Fortifications:H-tyre_W:White_Tyre',BlackTireRedFlag='Fortifications:H-tyre_B_RF:Black_Tyre_RF',BlackTireWhiteFlag='Fortifications:H-tyre_B_WF:Black_Tyre_WF',},OilField={OilDerrick='Fortifications:neftevyshka:Oil derrick',OilPlatform='Fortifications:plavbaza:Oil platform',OilPumpStation='Fortifications:nasos:Pump station',},Railway={RailwayCrossingA='Fortifications:pereezd_big:Railway crossing A',RailwayCrossingB='Fortifications:pereezd_small:Railway crossing B',RailwayStation='Fortifications:r_vok_sd:Railway station',},SeaShelf={GasPlatform='Heliports:gas_platform:Gas platform',OilRigPlatform='Heliports:oil_platform:Oil rig',},Telecom={CommsTower='Fortifications:tele_bash_m:Comms tower M',BroadcastTower='Fortifications:tele_bash:TV tower',},Warehouse={AmmunitionDepot='Warehouses:SkladC:.Ammunition depot',Tank1='Warehouses:bak:Tank',Tank2='Warehouses:airbase_tbilisi_tank_01:Tank 2',Tank3='Warehouses:airbase_tbilisi_tank_02:Tank 3',Warehouse='Warehouses:sklad:Warehouse',},Civilian={BoilerHouse='Fortifications:kotelnaya_a:Boiler-house A',Cafe='Fortifications:stolovaya:Cafe',ContainerBrown='Fortifications:konteiner_brown:Container brown',ContainerRed1='Fortifications:konteiner_red1:Container red 1',ContainerRed2='Fortifications:konteiner_red2:Container red 2',ContainerRed3='Fortifications:konteiner_red3:Container red 3',ContainerWhite='Fortifications:konteiner_white:Container white',ElectricPowerBox='Fortifications:tr_budka:Electric power box',FarmA='Fortifications:ferma_a:Farm A',FarmB='Fortifications:ferma_b:Farm B',GarageA='Fortifications:garage_a:Garage A',GarageB='Fortifications:garage_b:Garage B',GarageSmA='Fortifications:garagh-small-a:Garage small A',GarageSmB='Fortifications:garagh-small-b:Garage small B',Restaurant='Fortifications:restoran1:Restaurant 1',Shop='Fortifications:magazin:Shop',HouseSmA='Fortifications:domik1a:Small house 1A',HouseSmB='Fortifications:domik1b:Small house 1B',HouseSmC='Fortifications:dom2c:Small house 2C',HouseFnA='Fortifications:domik1a-all:Small house 1A area',HouseFnB='Fortifications:domik1b-all:Small house 1B area',HouseFnC='Fortifications:dom2c-all:Small house 1C area',WarehouseSm1='Fortifications:s1:Small werehouse 1',WarehouseSm2='Fortifications:s2:Small werehouse 2',WarehouseSm3='Fortifications:s3:Small werehouse 3',WarehouseSm4='Fortifications:s4:Small werehouse 4',SubsidiarySt1='Fortifications:hozdomik1:Subsidiary structure 1',SubsidiarySt2='Fortifications:hozdomik2:Subsidiary structure 2',SubsidiarySt3='Fortifications:hozdomik3:Subsidiary structure 3',SubsidiaryStA='Fortifications:saray-a:Subsidiary structure A',SubsidiaryStB='Fortifications:saray-b:Subsidiary structure B',SubsidiaryStC='Fortifications:saray-c:Subsidiary structure C',SubsidiaryStD='Fortifications:saray-d:Subsidiary structure D',SubsidiaryStE='Fortifications:saray-e:Subsidiary structure E',SubsidiaryStF='Fortifications:saray-f:Subsidiary structure F',SubsidiaryStG='Fortifications:saray-g:Subsidiary structure G',Supermarket='Fortifications:uniwersam_a:Supermarket A',WaterTower='Fortifications:wodokachka_a:Water tower A',},All={},Plane={},Helicopter={},Ground={},Ship={},Train={},ReportNaming={['Airshow_Crowd']='Airshow crowd',['Airshow_Cone']='Airshow cone',['Fuel tank']='Fuel storage tank',['Hangar A']='Hangar (A)',['Hangar B']='Hangar (B)',['Shelter']='Reinforced hangar',['Shelter B']='Storage shelter',['f_bar_cargo']='Road barrier',['tetrapod_cargo']='Tetrapod',['trunks_long_cargo']='Long logs',['trunks_small_cargo']='Short logs',['pipes_big_cargo']='Long pipes',['pipes_small_cargo']='Short pipes',['ammo_cargo']='Ammo box',['barrels_cargo']='Barrels',['container_cargo']='Container',['fueltank_cargo']='Fuel tank',['iso_container']='Large ISO container',['iso_container_small']='Small ISO container',['m117_cargo']='M117 bombs',['oiltank_cargo']='Oil tank',['uh1h_cargo']='Slung cargo',['big_smoke']='Big smoke',['dust_smoke']='Dust smoke',['smoking_line']='Smoking line',['smoky_marker']='Smoky marker',['Chemical tank A']='Chemical tank',['Tech combine']='Manufacturing plant',['Tech hangar A']='Equipment hangar',['Workshop A']='Factory workshop',['FARP Ammo Dump Coating']='Ammo storage',['FARP CP Blindage']='Command Post',['FARP Fuel Depot']='Fuel depot',['FARP Tent']='Tent',['FARP']='Heliport',['SINGLE_HELIPAD']='Helipad',['Barracks 2']='Barracks dormitory',['.Command Center']='Command Center',['GeneratorF']='Generators',['WC']='Latrine',['Military staff']='Staff building',['Red_Flag']='Red flag',['White_Flag']='White flag',['Black_Tyre']='Black tire',['White_Tyre']='White tire',['Black_Tyre_RF']='Black tire/Red flag',['Black_Tyre_WF']='Black tire/White flag',['Pump station']='Oil pump station',['Railway crossing A']='Railway crossing (A)',['Railway crossing B']='Railway crossing (B)',['Oil rig']='Oil rig platform',['Comms tower M']='Communications tower',['TV tower']='Broadcasting tower',['.Ammunition depot']='Ammunition depot',['Tank']='Storage tank (1)',['Tank 2']='Storage tank (2)',['Tank 3']='Storage tank (3)',['Boiler-house A']='Boiler house',['Container brown']='Container (brown)',['Container red 1']='Container (red 1)',['Container red 2']='Container (red 2)',['Container red 3']='Container (red 3)',['Container white']='Container (white)',['Farm A']='Farm (A)',['Farm B']='Farm (B)',['Garage A']='Garage (A)',['Garage B']='Garage (B)',['Garage small A']='Small garage (A)',['Garage small B']='Small garage (B)',['Restaurant 1']='Restaurant',['Small house 1A']='Small house (A)',['Small house 1B']='Small house (B)',['Small house 2C']='Small house (C)',['Small house 1A area']='Fenced house (A)',['Small house 1B area']='Fenced house (B)',['Small house 1C area']='Fenced house (C)',['Small werehouse 1']='Small warehouse (1)',['Small werehouse 2']='Small warehouse (2)',['Small werehouse 3']='Small warehouse (3)',['Small werehouse 4']='Small warehouse (4)',['Subsidiary structure 1']='Subsidiary structure (1)',['Subsidiary structure 2']='Subsidiary structure (2)',['Subsidiary structure 3']='Subsidiary structure (3)',['Subsidiary structure A']='Subsidiary structure (A)',['Subsidiary structure B']='Subsidiary structure (B)',['Subsidiary structure C']='Subsidiary structure (C)',['Subsidiary structure D']='Subsidiary structure (D)',['Subsidiary structure E']='Subsidiary structure (E)',['Subsidiary structure F']='Subsidiary structure (F)',['Subsidiary structure G']='Subsidiary structure (G)',['Supermarket A']='Supermarket',['Water tower A']='Water tower',},},All={},CarrierBorne={},PlayerControllable={},Unavailable={},NATOReporting={},WTOReporting={},Nicknaming={},}function fdmm.unitTypes.processEntries()local i={'All','PlayerControllable','CarrierBorne','Amphibious','HeavyWheeled','Unavailable','NATOReporting','WTOReporting','ReportNaming','ProperNaming','Nicknaming'}local o={'_'}local l={'Presets','Callsigns','Liveries'}local m={['house1arm']='Fortifications',['houseA_arm']='Fortifications',['Sandbox']='Fortifications',['Bunker']='Fortifications',['outpost']='Fortifications',['outpost_road']='Fortifications',['house2arm']='Fortifications',['TACAN_beacon']='Fortifications'}local function t(s)local function a(n,e)for n,r in pairs(n)do
if not(string.hasAnyPrefix(n,o)or
table.contains(i,n)or
string.hasAnySuffix(n,l))then
if type(r)=='table'then
a(r,e)elseif type(r)=='string'then
local n=n
local a,t,i=fdmm.utils.splitTuple(r)i=i or r
if not e[n]then
e[n]=r
if string.isNotEmpty(i)then
if not e._rev then e._rev={}end
if not e._rev[i]then
e._rev[i]=n
elseif e._rev[i]~=n then
env.error("Group all list reverse discrepancy for unitType='"..i.."', groupAllList._rev[unitType]='"..e._rev[i].."' ~= fdmmUnitType='"..n.."'.")end
end
if string.isNotEmpty(t)then
if not e._revShape then e._revShape={}end
if not e._revShape[t]then
e._revShape[t]=n
elseif e._revShape[t]~=n then
env.error("Group all list shape reverse discrepancy for shapeName='"..t.."', groupAllList._revShape[shapeName]='"..e._revShape[t].."' ~= fdmmUnitType='"..n.."'.")end
end
elseif e[n]~=r then
env.error("Group all list discrepancy for fdmmUnitType='"..n.."', groupAllList[fdmmUnitType]='"..e[n].."' ~= value='"..r.."'.")end
end
end
end
end
a(s,s.All)end
local function a(e,r,i)for n,e in pairs(e)do
if not string.hasAnyPrefix(n,o)then
r[n]=(m[e]or i)..'::'..e
end
end
end
local function r(e,r)for e,i in pairs(e)do
if not string.hasAnyPrefix(e,o)then
local t,t,n=fdmm.utils.splitTuple(i)n=n or i
if not r[e]then
r[e]=n
elseif r[e]~=n then
env.error("Master all list discrepancy for fdmmUnitType='"..e.."', masterAllList[fdmmUnitType]='"..r[e].."' ~= unitType='"..n.."'.")end
end
end
end
local function n(e)if not e.NATOReporting then e.NATOReporting={}end
if not e.WTOReporting then e.WTOReporting={}end
if not e.ReportNaming then e.ReportNaming={}end
if not e.ProperNaming then e.ProperNaming={}end
if not e.Nicknaming then e.Nicknaming={}end
end
local function i(n,r)local function i(e,n)for e,r in pairs(e)do
if not string.hasAnyPrefix(e,o)then
if not n[e]then
n[e]=r
elseif n[e]~=r then
env.error("Static report naming discrepancy for unitType='"..e.."', staticReportNaming[unitType]='"..n[e].."' ~= reportNaming='"..r.."'.")end
end
end
end
i(n.NATOReporting,r.NATOReporting)i(n.WTOReporting,r.WTOReporting)i(n.ReportNaming,r.ReportNaming)i(n.ProperNaming,r.ProperNaming)i(n.Nicknaming,r.Nicknaming)end
local function e(n)for e,r in pairs(n.All)do
if not string.hasAnyPrefix(e,o)then
local i,i,e=fdmm.utils.splitTuple(r)e=e or r
if not n.ReportNaming[e]then
n.ReportNaming[e]=e
end
end
end
end
t(fdmm.consts.UnitType.Plane)t(fdmm.consts.UnitType.Helicopter)t(fdmm.consts.UnitType.Ground)t(fdmm.consts.UnitType.Ship)t(fdmm.consts.UnitType.Train)a(fdmm.consts.UnitType.Plane.All,fdmm.consts.UnitType.Static.Plane,'Planes')a(fdmm.consts.UnitType.Helicopter.All,fdmm.consts.UnitType.Static.Helicopter,'Helicopters')a(fdmm.consts.UnitType.Ground.All,fdmm.consts.UnitType.Static.Ground,'Unarmed')a(fdmm.consts.UnitType.Train.All,fdmm.consts.UnitType.Static.Train,'Unarmed')a(fdmm.consts.UnitType.Ship.All,fdmm.consts.UnitType.Static.Ship,'Ships')t(fdmm.consts.UnitType.Static)r(fdmm.consts.UnitType.Plane.All,fdmm.consts.UnitType.All)r(fdmm.consts.UnitType.Helicopter.All,fdmm.consts.UnitType.All)r(fdmm.consts.UnitType.Ground.All,fdmm.consts.UnitType.All)r(fdmm.consts.UnitType.Train.All,fdmm.consts.UnitType.All)r(fdmm.consts.UnitType.Ship.All,fdmm.consts.UnitType.All)r(fdmm.consts.UnitType.Static.All,fdmm.consts.UnitType.All)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.All)table.concatWith(fdmm.consts.UnitType.CarrierBorne,fdmm.consts.UnitType.Plane.CarrierBorne)table.concatWith(fdmm.consts.UnitType.CarrierBorne,fdmm.consts.UnitType.Helicopter.CarrierBorne)table.concatWith(fdmm.consts.UnitType.PlayerControllable,fdmm.consts.UnitType.Plane.PlayerControllable)table.concatWith(fdmm.consts.UnitType.PlayerControllable,fdmm.consts.UnitType.Helicopter.PlayerControllable)table.concatWith(fdmm.consts.UnitType.Unavailable,fdmm.consts.UnitType.Plane.Unavailable)table.concatWith(fdmm.consts.UnitType.Unavailable,fdmm.consts.UnitType.Helicopter.Unavailable)table.concatWith(fdmm.consts.UnitType.Unavailable,fdmm.consts.UnitType.Ground.Unavailable)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Plane.CarrierBorne)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Plane.PlayerControllable)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Plane.Unavailable)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Helicopter.CarrierBorne)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Helicopter.PlayerControllable)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Helicopter.Unavailable)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Ground.Amphibious)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Ground.HeavyWheeled)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Ground.Unavailable)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.CarrierBorne)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.PlayerControllable)fdmm.utils.ensureReversedDict(fdmm.consts.UnitType.Unavailable)n(fdmm.consts.UnitType.Plane)n(fdmm.consts.UnitType.Helicopter)n(fdmm.consts.UnitType.Ground)n(fdmm.consts.UnitType.Ship)n(fdmm.consts.UnitType.Train)n(fdmm.consts.UnitType.Static)e(fdmm.consts.UnitType.Plane)e(fdmm.consts.UnitType.Helicopter)e(fdmm.consts.UnitType.Ground)e(fdmm.consts.UnitType.Ship)e(fdmm.consts.UnitType.Train)i(fdmm.consts.UnitType.Plane,fdmm.consts.UnitType.Static)i(fdmm.consts.UnitType.Helicopter,fdmm.consts.UnitType.Static)i(fdmm.consts.UnitType.Ground,fdmm.consts.UnitType.Static)i(fdmm.consts.UnitType.Ship,fdmm.consts.UnitType.Static)i(fdmm.consts.UnitType.Train,fdmm.consts.UnitType.Static)e(fdmm.consts.UnitType.Static)table.concatWith(fdmm.consts.UnitType.Nicknaming,fdmm.consts.UnitType.Plane.Nicknaming)table.concatWith(fdmm.consts.UnitType.Nicknaming,fdmm.consts.UnitType.Helicopter.Nicknaming)table.concatWith(fdmm.consts.UnitType.Nicknaming,fdmm.consts.UnitType.Ground.Nicknaming)table.concatWith(fdmm.consts.UnitType.Nicknaming,fdmm.consts.UnitType.Train.Nicknaming)table.concatWith(fdmm.consts.UnitType.Nicknaming,fdmm.consts.UnitType.Ship.Nicknaming)table.concatWith(fdmm.consts.UnitType.Nicknaming,fdmm.consts.UnitType.Static.Nicknaming)end
function fdmm.unitTypes.crossRefEntries()if db then
env.info("FDMM: Cross-referencing units...")local function e(t,e)for i,e in ipairs(e)do
local n=e.Name
local e=unit_aliases._rev[n]local r=fdmm.consts.UnitType.All._rev[n]if not r and e then
if type(e)=='string'then
e={e}end
for i,e in ipairs(e)do
r=fdmm.consts.UnitType.All._rev[e]if r then
env.warning("  unitTypeAlias=['"..e.."'] is now unitType=['"..n.."'].")break
end
end
end
if not r then
env.info("  Missing fdmmUnitType for unitType=['"..(n or"<null>").."'] from "..t.."["..i.."].")end
end
end
fdmm.utils.ensureReversedDict(unit_aliases)e('db.Units.Animals',db.Units.Animals.Animal)e('db.Units.Cargos',db.Units.Cargos.Cargo)e('db.Units.Cars',db.Units.Cars.Car)e('db.Units.Fortifications',db.Units.Fortifications.Fortification)e('db.Units.Helicopters',db.Units.Helicopters.Helicopter)e('db.Units.Heliports',db.Units.Heliports.Heliport)e('db.Units.LTAvehicles',db.Units.LTAvehicles.LTAvehicle)e('db.Units.Personnel',db.Units.Personnel.Personnel)e('db.Units.Planes',db.Units.Planes.Plane)e('db.Units.Ships',db.Units.Ships.Ship)e('db.Units.WWIIstructures',db.Units.WWIIstructures.WWIIstructure)e('db.Units.Warehouses',db.Units.Warehouses.Warehouse)local n=false
if dbYears and n then
local n={}for r,i in pairs(dbYears)do
table.insert(n,{Name=r})end
e('dbYears',n)end
end
end
function fdmm.unitTypes.anyAvailableToFaction(e,e)end
function fdmm.unitTypes.isAvailabeToFaction(e,e)end
function fdmm.unitTypes.anyListedUnder(n,e)fdmm.utils.ensureReversedDict(e)for r,n in pairs(n)do
if e._rev[n]then
return true
end
end
return false
end
function fdmm.unitTypes.isListedUnder(n,e)fdmm.utils.ensureReversedDict(e)if e._rev[n]then
return true
end
return false
end
function fdmm.unitTypes.getUnitTypeGroup(e)if fdmm.consts.UnitType.Plane.All._rev[e]then
return fdmm.consts.UnitType.Plane
elseif fdmm.consts.UnitType.Helicopter.All._rev[e]then
return fdmm.consts.UnitType.Helicopter
elseif fdmm.consts.UnitType.Ground.All._rev[e]then
return fdmm.consts.UnitType.Ground
elseif fdmm.consts.UnitType.Train.All._rev[e]then
return fdmm.consts.UnitType.Train
elseif fdmm.consts.UnitType.Ship.All._rev[e]then
return fdmm.consts.UnitType.Ship
elseif fdmm.consts.UnitType.Static.All._rev[e]or
fdmm.consts.UnitType.Static.All._revShape[e]then
return fdmm.consts.UnitType.Static
end
return nil
end
function fdmm.unitTypes.getUnitReportName(e,n,r)local a=e..'Reporting'local e=fdmm.consts.UnitType[a][n]if string.isEmpty(e)then
local i=r or fdmm.unitTypes.getUnitTypeGroup(n)local s=i[a][n]local r,t,o=fdmm.utils.splitTuple(s)r=r or s
e=i.ReportNaming[n]local i=i.ProperNaming[n]if string.isNotEmpty(r)and string.contains(e,'%R')then
e=e:gsub('%%R',r)end
if string.isNotEmpty(o)and string.contains(e,'%N')then
e=e:gsub('%%N',o)end
if string.isNotEmpty(i)and not string.contains(e,i)then
e=e..' '..i
end
if string.isNotEmpty(t)and not string.contains(e,t)then
e=e..' '..t
end
fdmm.consts.UnitType[a][n]=e
end
return e
end
function fdmm.unitTypes.getNATOUnitReportName(n,e)return fdmm.unitTypes.getUnitReportName(fdmm.enums.Alliance.NATO,n,e)end
function fdmm.unitTypes.getWTOUnitReportName(n,e)return fdmm.unitTypes.getUnitReportName(fdmm.enums.Alliance.WTO,n,e)end
function fdmm.unitTypes.dumpUnitReportNames()env.info("FDMM: Dumping unit report names...")local function t(n)for e,r in pairs(table.sortedKeysList(n.All))do
if not string.hasPrefix(r,'_')then
local i=n.All[r]local t,t,e=fdmm.utils.splitTuple(i)e=e or i
env.info("  ['"..r.."'] = '"..e.."':")env.info("    NATO: "..fdmm.unitTypes.getNATOUnitReportName(e,n))env.info("    WTO : "..fdmm.unitTypes.getWTOUnitReportName(e,n))end
end
end
t(fdmm.consts.UnitType.Static)end
end
env.info("---FDMM_UnitTypes End---");end)__DISTILLER:define("Additions/FDMM_MISTAdditions",function(e)env.info("---FDMM_MISTAdditions Start---")assert(mist,'MIST not initialized.')do
mist.DBs.Category={Vehicle='vehicle',Ship='ship',Plane='plane',Helicopter='helicopter',Building='building',Unknown='unknown'}function mist.utils.get2DDistSqrd(n,e)if n.z~=nil then n=mist.utils.makeVec2(n)end
if e.z~=nil then e=mist.utils.makeVec2(e)end
return mist.vec.magSqrd({x=n.x-e.x,y=n.y-e.y})end
function mist.utils.get3DDistSqrd(n,e)if n.z==nil then n=mist.utils.makeVec3(n)end
if e.z==nil then e=mist.utils.makeVec3(e)end
return mist.vec.magSqrd({x=n.x-e.x,y=n.y-e.y,z=n.z-e.z})end
mist.vec.magSqrd=function(e)return(e.x*e.x)+(e.y*e.y)+((e.z or 0)*(e.z or 0))end
end
env.info("---FDMM_MISTAdditions End---")end)__DISTILLER:define("Additions/FDMM_MOOSEAdditions",function(e)env.info("---FDMM_MOOSEAdditions Start---")assert(routines,'MOOSE not initialized.')do
function routines.utils.get2DDistSqrd(n,e)if n.z~=nil then n=routines.utils.makeVec2(n)end
if e.z~=nil then e=routines.utils.makeVec2(e)end
return routines.vec.magSqrd({x=n.x-e.x,y=n.y-e.y})end
function routines.utils.get3DDistSqrd(n,e)if n.z==nil then n=routines.utils.makeVec3(n)end
if e.z==nil then e=routines.utils.makeVec3(e)end
return routines.vec.magSqrd({x=n.x-e.x,y=n.y-e.y,z=n.z-e.z})end
routines.vec.magSqrd=function(e)return(e.x*e.x)+(e.y*e.y)+((e.z or 0)*(e.z or 0))end
function ZONE_POLYGON:NewFromPoints(n,e)local e=BASE:Inherit(self,ZONE_POLYGON_BASE:New(n,e))e:F({n,nil,e._.Polygon})_EVENTDISPATCHER:CreateEventNewZone(e)return e
end
end
env.info("---FDMM_MOOSEAdditions End---")end)__DISTILLER:define("Cargo/FDMM_ResourceUnit",function(e)env.info("---FDMM_ResourceUnit Start---")fdmm.resourceUnit={}do
FDMMResourceUnit={}FDMMResourceUnit.__index=FDMMResourceUnit
setmetatable(FDMMResourceUnit,{__call=function(e,...)return e.new(...)end,})function FDMMResourceUnit.new(n,r,i,t,o,a)local e=setmetatable({},FDMMResourceUnit)e.fuelRP=n
e.armsRP=r
e.unitRP=i
e.maxFuelRP=t
e.maxArmsRP=o
e.maxUnitRP=a
return e
end
function FDMMResourceUnit:canTransferTo(e,e,e,e)end
function FDMMResourceUnit:transferTo(e,e,e,e,e,e)end
end
do
end
env.info("---FDMM_ResourceUnit End---")end)__DISTILLER:define("Cargo/FDMM_CargoRoute",function(e)env.info("---FDMM_CargoRoute Start---")fdmm.cargoRoute={}do
FDMMCargoRoute={}FDMMCargoRoute.__index=FDMMCargoRoute
setmetatable(FDMMCargoRoute,{__call=function(e,...)return e.new(...)end,})function FDMMCargoRoute.new(n,r)local e=setmetatable({},FDMMCargoRoute)e.territoryName=n
e.routeType=r
e.spawnLocs={}e.facilityLocs={}e.dirLinks={}return e
end
function FDMMCargoRoute:addSpawnLocation(e,n,r)table.insert(self.spawnLocs,{spawnFaction=e,spawnPoint=n,egressPoints=r or{}})end
function FDMMCargoRoute:addFacilityLocation(r,e,n)table.insert(self.facilityLocs,{facilityName=r,facilityPoint=e,ingressPoints=n or{}})end
function FDMMCargoRoute:addDirectionalLink(e,n,r)table.insert(self.dirLinks,{directionName=e,navigationPoint=n,ingressPoints=r or{}})end
function FDMMCargoRoute:getOutboundRouteFromStart(e)end
function FDMMCargoRoute:getInboundRouteToFacility(e)end
function FDMMCargoRoute:getOutboundRouteFromFacility(e)end
function FDMMCargoRoute:getClosestDirectionalLinkageToOutsidePoint(e)end
end
do
function fdmm.cargoRoute.createCargoRoutes()fdmm.cargoRoutes={}for e,n in pairs(fdmm.territories.all)do
fdmm.cargoRoutes[e]={[fdmm.enums.CargoRouteType.Land]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Land),[fdmm.enums.CargoRouteType.Train]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Train),[fdmm.enums.CargoRouteType.Air]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Air),[fdmm.enums.CargoRouteType.Sea]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Sea)}end
local c={[fdmm.consts.CargoRouteGNPrefix.Land]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Land]or{},[fdmm.consts.CargoRouteGNPrefix.Train]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Train]or{},[fdmm.consts.CargoRouteGNPrefix.Air]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Air]or{},[fdmm.consts.CargoRouteGNPrefix.Sea]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Sea]or{}}function _processGroup(o,n,a)local e=fdmm.utils.removeNumericSuffix(fdmm.utils.removeGroupingPrefix(o))local r=fdmm.territories.all[e]if r~=nil then
local m=fdmm.cargoRoutes[e][a]local u=mist.getGroupRoute(o,false)local d=fdmm.utils.getFaction(string.notEmptyElse(n.units[1].unitName,n.country))local l=a:upperFirst()local c=table.concatedWith(fdmm.consts.CargoRouteGNPrefix,fdmm.consts.CargoRouteWPRoutePrefix[l])local n=nil
local e={Spawn='spawn',Linkage='linkage',Facility='facility',TBD='_'}local r,t,s=nil,nil,{}function _updateScanner(i,l)if n==e.TBD and i~=nil and i~=e.TBD then
n=i
elseif n~=nil and n~=e.TBD and i==e.TBD then
i=n
end
if n~=i or r~=l then
if n then
if n==e.Spawn then
if string.isNotEmpty(d)and t and s then
m:addSpawnLocation(d,t,s)else
env.error('Cargo '..a.." routing group '"..o.."' failed to parse spawn route '"..(r or'<nil>').."'.")end
elseif n==e.Linkage then
if string.isNotEmpty(r)and t and s then
m:addDirectionalLink(r,t,s)else
env.error('Cargo '..a.." routing group '"..o.."' failed to parse linkage route '"..(r or'<nil>').."'.")end
elseif n==e.Facility then
if string.isNotEmpty(r)and t and s then
m:addFacilityLocation(r,t,s)else
env.error('Cargo '..a.." routing group '"..o.."' failed to parse facility route '"..(r or'<nil>').."'.")end
elseif n~=e.TBD then
env.error('Cargo '..a.." routing group '"..o.."' encountered unrecognized scan mode '"..(i or'<nil>').."'.")end
r,t,s=nil,nil,{}end
n=i
r=l
end
end
for m,n in ipairs(u)do
if string.isNotEmpty(n.name)and(n.name..'_')~=fdmm.consts.CargoRouteGNPrefix[l]then
local d,i,r=fdmm.utils.getGroupingComponentsWithSNC(n.name,c,fdmm.consts.CargoRouteWPRouteSuffix)if d==fdmm.consts.CargoRouteGNPrefix[l]then
if r==fdmm.consts.CargoRouteWPRouteSuffix.Egress or
r==fdmm.consts.CargoRouteWPRouteSuffix.Ingress then
_updateScanner(e.TBD,i)table.insert(s,fdmm.utils.rposFromRPoint(n))elseif r==fdmm.consts.CargoRouteWPRouteSuffix.Spawn then
_updateScanner(e.Spawn,i)t=fdmm.utils.rposFromRPoint(n)elseif r==fdmm.consts.CargoRouteWPRouteSuffix.Linkage then
_updateScanner(e.Linkage,i)t=fdmm.utils.rposFromRPoint(n)elseif r==fdmm.consts.CargoRouteWPRouteSuffix.Facility then
_updateScanner(e.Facility,i)t=fdmm.utils.rposFromRPoint(n)elseif not(string.isEmpty(i)and string.isEmpty(r))then
env.error('Cargo '..a.." routing group '"..o.."' unknown WP '"..(n.name or'<nil>').."' at WP index "..m..'.')end
elseif d==fdmm.consts.CargoRouteWPRoutePrefix[l].Spawn then
if string.isEmpty(r)then
_updateScanner(e.Spawn,i)t=fdmm.utils.rposFromRPoint(n)elseif r==fdmm.consts.CargoRouteWPRouteSuffix.Egress then
_updateScanner(e.Spawn,i)table.insert(s,fdmm.utils.rposFromRPoint(n))elseif not(string.isEmpty(i)and string.isEmpty(r))then
env.error('Cargo '..a.." routing group '"..o.."' unknown spawn WP '"..(n.name or'<nil>').."' at WP index "..m..'.')end
elseif d==fdmm.consts.CargoRouteWPRoutePrefix[l].Linkage then
if string.isEmpty(r)then
_updateScanner(e.Linkage,i)t=fdmm.utils.rposFromRPoint(n)elseif r==fdmm.consts.CargoRouteWPRouteSuffix.Ingress then
_updateScanner(e.Linkage,i)table.insert(s,fdmm.utils.rposFromRPoint(n))elseif not(string.isEmpty(i)and string.isEmpty(r))then
env.error('Cargo '..a.." routing group '"..o.."' unknown linkage WP '"..(n.name or'<nil>').."' at WP index "..m..'.')end
elseif d==fdmm.consts.CargoRouteWPRoutePrefix[l].Facility then
if string.isEmpty(r)then
_updateScanner(e.Facility,i)t=fdmm.utils.rposFromRPoint(n)elseif r==fdmm.consts.CargoRouteWPRouteSuffix.Ingress then
_updateScanner(e.Facility,i)table.insert(s,fdmm.utils.rposFromRPoint(n))elseif not(string.isEmpty(i)and string.isEmpty(r))then
env.error('Cargo '..a.." routing group '"..o.."' unknown facility WP '"..(n.name or'<nil>').."' at WP index "..m..'.')end
else
env.error('Cargo '..a.." routing group '"..o.."' unknown routing WP '"..(n.name or'<nil>').."' at WP index "..m..'.')end
end
end
_updateScanner(nil,nil)else
env.error('Cargo '..a.." routing group '"..o.."' failed to find territory with same name.")end
end
for n,e in pairs(c[fdmm.consts.CargoRouteGNPrefix.Land])do
_processGroup(n,e,fdmm.enums.CargoRouteType.Land)end
for n,e in pairs(c[fdmm.consts.CargoRouteGNPrefix.Train])do
_processGroup(n,e,fdmm.enums.CargoRouteType.Train)end
for n,e in pairs(c[fdmm.consts.CargoRouteGNPrefix.Air])do
_processGroup(n,e,fdmm.enums.CargoRouteType.Air)end
for e,n in pairs(c[fdmm.consts.CargoRouteGNPrefix.Sea])do
_processGroup(e,n,fdmm.enums.CargoRouteType.Sea)end
end
end
env.info("---FDMM_CargoRoute End---")end)__DISTILLER:define("Territory/FDMM_Territory",function(e)env.info("---FDMM_Territory Start---")fdmm.territory={}do
FDMMTerritory={}FDMMTerritory.__index=FDMMTerritory
setmetatable(FDMMTerritory,{__call=function(e,...)return e.newFromGroup(...)end,})function FDMMTerritory.newFromGroup(n,r)local e=setmetatable({},FDMMTerritory)e.name=fdmm.utils.removeGroupingPrefix(n)if r.category==mist.DBs.Category.Ship then
e.type=fdmm.enums.TerritoryType.Sea
else
e.type=fdmm.enums.TerritoryType.Land
end
e.polygonPoints={}local i=mist.getGroupPoints(n)for r,n in ipairs(i)do
if r>1 and r<#i then
table.insert(e.polygonPoints,n)elseif r==1 then
e.centerPoint=n
else
e.capturePoint=n
end
end
local n=mist.utils.get2DDist(e.polygonPoints[1],e.polygonPoints[#e.polygonPoints])if n<=25*25 then
table.remove(e.polygonPoints,#e.polygonPoints)end
e.polygonZone=ZONE_POLYGON:NewFromPoints(e.name,e.polygonPoints)e.linkedTerritories={}e.linkedTerritoryDistances={}e.facilities={}return e
end
function FDMMTerritory:addTerritoryLink(e)if self.name~=e.name then
self.linkedTerritories[e.name]=e
e.linkedTerritories[self.name]=self
local n=mist.utils.get2DDist(self.centerPoint,e.centerPoint)self.linkedTerritoryDistances[e.name]=n
e.linkedTerritoryDistances[self.name]=n
else
env.error("Cannot link territory '"..self.name.."' with itself.")end
end
function FDMMTerritory:addFacility(e)self.facilities[e.name]=e
end
function FDMMTerritory:buildFacilities()for n,e in pairs(self.facilities)do
e:buildFacility()end
end
function FDMMTerritory:smokeBoundaries(n)n=n or SMOKECOLOR.Blue
local o=10000./25.
local r=nil
for e,a in ipairs(self.polygonPoints)do
if e>1 then
local e=mist.utils.makeVec3(a)local e=mist.vec.sub(e,r)local t=mist.vec.mag(e)local a=mist.vec.scalarMult(e,1./t)local e=1
local i=t/e
while i>o do
e=e+1
i=t/e
end
while e>=0 do
local i=mist.vec.scalarMult(a,e*i)local r=mist.vec.add(r,i);COORDINATE:NewFromVec2(mist.utils.makeVec2(r)):Smoke(n)e=e-1
end
end
r=mist.utils.makeVec3(a)end
end
end
do
function fdmm.territory.createTerritories()fdmm.territories={[fdmm.enums.TerritoryType.Land]={},[fdmm.enums.TerritoryType.Sea]={},[fdmm.enums.TerritoryType.All]={}}local n={[fdmm.consts.TerritoryGNPrefix.Define]=fdmm.config.gpCache[fdmm.consts.TerritoryGNPrefix.Define]or{},[fdmm.consts.TerritoryGNPrefix.Linkage]=fdmm.config.gpCache[fdmm.consts.TerritoryGNPrefix.Linkage]or{}}for n,e in pairs(n[fdmm.consts.TerritoryGNPrefix.Define])do
local e=FDMMTerritory.newFromGroup(n,e)fdmm.territories[e.type][e.name]=e
fdmm.territories.all[e.name]=e
end
for e,n in pairs(n[fdmm.consts.TerritoryGNPrefix.Linkage])do
local r=fdmm.utils.removeGroupingPrefix(e)local n=fdmm.territories.all[r]if n~=nil then
for i,r in ipairs(mist.getGroupRoute(e,false))do
if string.isEmpty(r.name)then
local r=fdmm.territory.closestTerritoryToPoint(fdmm.utils.rposFromRPoint(r),n.type)if r~=nil then
n:addTerritoryLink(r)else
env.error("Territory linkage group '"..e.."' failed to find a closest territory at WP index "..i..'.')end
end
end
else
env.error("Territory linkage group '"..e.."' failed to find territory named '"..r.."'.")end
end
end
function fdmm.territory.createFacilities()fdmm.facilities={[fdmm.enums.FacilityType.Airbase]={},[fdmm.enums.FacilityType.ArmsPlant]={},[fdmm.enums.FacilityType.CommandCenter]={},[fdmm.enums.FacilityType.FARP]={},[fdmm.enums.FacilityType.OilField]={},[fdmm.enums.FacilityType.Port]={},[fdmm.enums.FacilityType.UnitFactory]={},[fdmm.enums.FacilityType.All]={}}local e={[fdmm.consts.TerritoryGNPrefix.Facility]=fdmm.config.gpCache[fdmm.consts.TerritoryGNPrefix.Facility]or{}}local t=table.concatedWith(fdmm.consts.TerritoryGNPrefix,fdmm.consts.TerritoryWPFacilityPrefix)for a,e in pairs(e[fdmm.consts.TerritoryGNPrefix.Facility])do
local r=fdmm.utils.removeGroupingPrefix(a)local i=fdmm.territories.all[r]if i~=nil then
for s,n in ipairs(mist.getGroupRoute(a,false))do
if string.isNotEmpty(n.name)and(n.name..'_')~=fdmm.consts.TerritoryGNPrefix.Facility then
local t,e,o=fdmm.utils.getGroupingComponentsWithSNC(n.name,t,nil)if t==fdmm.consts.TerritoryWPFacilityPrefix.Airbase and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMAirbase.new(e,fdmm.utils.rposFromRPoint(n),r)fdmm.facilities.airbase[e.name]=e
fdmm.facilities.all[e.name]=e
i:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.ArmsPlant and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMArmsPlant.new(e,fdmm.utils.rposFromRPoint(n),r)fdmm.facilities.armsPlant[e.name]=e
fdmm.facilities.all[e.name]=e
i:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.CommandCenter and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMCommandCenter.new(e,fdmm.utils.rposFromRPoint(n),r)fdmm.facilities.commandCenter[e.name]=e
fdmm.facilities.all[e.name]=e
i:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.FARP and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMFARP.new(e,fdmm.utils.rposFromRPoint(n),r)fdmm.facilities.farp[e.name]=e
fdmm.facilities.all[e.name]=e
i:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.OilField and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMOilField.new(e,fdmm.utils.rposFromRPoint(n),r)fdmm.facilities.oilField[e.name]=e
fdmm.facilities.all[e.name]=e
i:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.Port and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMPort.new(e,fdmm.utils.rposFromRPoint(n),r)fdmm.facilities.port[e.name]=e
fdmm.facilities.all[e.name]=e
i:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.UnitFactory and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMUnitFactory.new(e,fdmm.utils.rposFromRPoint(n),r)fdmm.facilities.unitFactory[e.name]=e
fdmm.facilities.all[e.name]=e
i:addFacility(e)elseif not(string.isEmpty(e)and string.isEmpty(o))then
env.error("Territory group '"..a.."' unknown facility WP '"..(n.name or'<nil>').."' at WP index "..s..'.')end
end
end
else
env.error("Territory facility group '"..a.."' failed to find territory named '"..r.."'.")end
end
end
function fdmm.territory.buildFacilities()for n,e in pairs(fdmm.territories.all)do
e:buildFacilities()end
end
function fdmm.territory.closestTerritoryToPoint(e,r)local t=mist.utils.makeVec2(e)local e=nil
local n=0
local r=r or fdmm.enums.TerritoryType.All
local r=fdmm.territories[r]for r,i in pairs(r)do
local r=mist.utils.get2DDistSqrd(t,i.centerPoint)if e==nil or r<n then
e=i
n=r
end
end
return e
end
function fdmm.territory.dumpTerritories()env.info("FDMM: Dumping territories...")function _envInfoTerritory(n,e)env.info("    '"..n.."':")env.info("      ".."centerPoint: "..fdmm.utils.pos2ToLoggableString(e.centerPoint))env.info("      ".."capturePoint: "..fdmm.utils.pos2ToLoggableString(e.capturePoint))for e,n in pairs(e.linkedTerritories)do
env.info("      ".."Linked /w: '"..e.."'.")end
end
env.info("  Sea Territories:")for n,e in pairs(fdmm.territories.sea)do
_envInfoTerritory(n,e)end
env.info("  Land Territories:")for e,n in pairs(fdmm.territories.land)do
_envInfoTerritory(e,n)end
end
end
env.info("---FDMM_Territory End---")end)__DISTILLER:define("Territory/FDMM_Facility",function(e)env.info("---FDMM_Facility Start---")fdmm.facility={}do
FDMMFacility={}FDMMFacility.__index=FDMMFacility
setmetatable(FDMMFacility,{__call=function(e,...)return e.new(...)end})function FDMMFacility.new(n,r,i)local e=setmetatable({},FDMMFacility)e.name=n
e.centerPoint=r
e.territoryName=i
return e
end
function FDMMFacility:buildFacility()end
function FDMMFacility:getFacilityType()return nil
end
end
do
end
env.info("---FDMM_Facility End---")end)__DISTILLER:define("Territory/FDMM_Airbase",function(e)env.info("---FDMM_Airbase Start---")e('Territory/FDMM_Facility')fdmm.airbase={}do
FDMMAirbase={}FDMMAirbase.__index=FDMMAirbase
setmetatable(FDMMAirbase,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMAirbase.new(e,n,r)local e=setmetatable(FDMMFacility.new(e,n,r),FDMMAirbase)return e
end
function FDMMAirbase:buildFacility()end
function FDMMAirbase:getFacilityType()return fdmm.enums.FacilityType.Airbase
end
end
do
end
env.info("---FDMM_Airbase End---")end)__DISTILLER:define("Territory/FDMM_ArmsPlant",function(e)env.info("---FDMM_ArmsPlant Start---")e('Territory/FDMM_Facility')fdmm.armsPlant={}do
FDMMArmsPlant={}FDMMArmsPlant.__index=FDMMArmsPlant
setmetatable(FDMMArmsPlant,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMArmsPlant.new(n,e,r)local e=setmetatable(FDMMFacility.new(n,e,r),FDMMArmsPlant)return e
end
function FDMMArmsPlant:buildFacility()end
function FDMMArmsPlant:getFacilityType()return fdmm.enums.FacilityType.ArmsPlant
end
end
do
end
env.info("---FDMM_ArmsPlant End---")end)__DISTILLER:define("Territory/FDMM_CommandCenter",function(e)env.info("---FDMM_CommandCenter Start---")e('Territory/FDMM_Facility')fdmm.commandCenter={}do
FDMMCommandCenter={}FDMMCommandCenter.__index=FDMMCommandCenter
setmetatable(FDMMCommandCenter,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMCommandCenter.new(r,n,e)local e=setmetatable(FDMMFacility.new(r,n,e),FDMMCommandCenter)return e
end
function FDMMCommandCenter:buildFacility()end
function FDMMCommandCenter:getFacilityType()return fdmm.enums.FacilityType.CommandCenter
end
end
do
end
env.info("---FDMM_CommandCenter End---")end)__DISTILLER:define("Territory/FDMM_FARP",function(e)env.info("---FDMM_FARP Start---")e('Territory/FDMM_Facility')fdmm.farp={}do
FDMMFARP={}FDMMFARP.__index=FDMMFARP
setmetatable(FDMMFARP,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMFARP.new(r,n,e)local e=setmetatable(FDMMFacility.new(r,n,e),FDMMFARP)return e
end
function FDMMFARP:buildFacility()end
function FDMMFARP:getFacilityType()return fdmm.enums.FacilityType.FARP
end
end
do
end
env.info("---FDMM_FARP End---")end)__DISTILLER:define("Territory/FDMM_OilField",function(e)env.info("---FDMM_OilField Start---")e('Territory/FDMM_Facility')fdmm.oilField={}do
FDMMOilField={}FDMMOilField.__index=FDMMOilField
setmetatable(FDMMOilField,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMOilField.new(e,n,r)local e=setmetatable(FDMMFacility.new(e,n,r),FDMMOilField)return e
end
function FDMMOilField:buildFacility()end
function FDMMOilField:getFacilityType()return fdmm.enums.FacilityType.OilField
end
end
do
end
env.info("---FDMM_OilField End---")end)__DISTILLER:define("Territory/FDMM_Port",function(e)env.info("---FDMM_Port Start---")e('Territory/FDMM_Facility')fdmm.port={}do
FDMMPort={}FDMMPort.__index=FDMMPort
setmetatable(FDMMPort,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMPort.new(n,r,e)local e=setmetatable(FDMMFacility.new(n,r,e),FDMMPort)return e
end
function FDMMPort:buildFacility()end
function FDMMPort:getFacilityType()return fdmm.enums.FacilityType.Port
end
end
do
end
env.info("---FDMM_Port End---")end)__DISTILLER:define("Territory/FDMM_UnitFactory",function(e)env.info("---FDMM_UnitFactory Start---")e('Territory/FDMM_Facility')fdmm.unitFactory={}do
FDMMUnitFactory={}FDMMUnitFactory.__index=FDMMUnitFactory
setmetatable(FDMMUnitFactory,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMUnitFactory.new(e,n,r)local e=setmetatable(FDMMFacility.new(e,n,r),FDMMUnitFactory)return e
end
function FDMMUnitFactory:buildFacility()end
function FDMMUnitFactory:getFacilityType()return fdmm.enums.FacilityType.UnitFactory
end
end
do
end
env.info("---FDMM_UnitFactory End---")end)__DISTILLER:define("FDMM_MissionStart.lua_distilled",function(e)env.info("---FDMM_MissionStart Start---")env.setErrorMessageBoxEnabled(false)fdmm={}fdmm_path=fdmm_path or'/Scripts/FDMM/'fdmm.fullPath=lfs.normpath(lfs.writedir()..fdmm_path)fdmm.MapKind={Both='Both',Setup='Setup',Runable='Runable'}fdmm.mapKind=fdmm.MapKind.Both
e('FDMM_Config')e('FDMM_Utils')e('FDMM_UnitTypes')e('Additions/FDMM_LuaAdditions')e('Additions/FDMM_MISTAdditions')e('Additions/FDMM_MOOSEAdditions')e('Cargo/FDMM_ResourceUnit')e('Cargo/FDMM_CargoRoute')e('Territory/FDMM_Territory')e('Territory/FDMM_Airbase')e('Territory/FDMM_ArmsPlant')e('Territory/FDMM_CommandCenter')e('Territory/FDMM_FARP')e('Territory/FDMM_OilField')e('Territory/FDMM_Port')e('Territory/FDMM_UnitFactory')do
trigger.action.outText("FDMM Starting...",10)fdmm.config.loadDCSDBIfAble()fdmm.config.loadDCSJSONIfAble()fdmm.unitTypes.processEntries()fdmm.unitTypes.crossRefEntries()fdmm.config.createGPCache()fdmm.territory.createTerritories()fdmm.territory.createFacilities()fdmm.cargoRoute.createCargoRoutes()fdmm.territory.buildFacilities()fdmm.unitTypes.dumpUnitReportNames()trigger.action.outText("FDMM Started",10)end
env.info("---FDMM_MissionStart End---")end)__DISTILLER:exec("FDMM_MissionStart.lua_distilled")