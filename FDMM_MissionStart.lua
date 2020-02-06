if __DISTILLER==nil then
__DISTILLER=nil
__DISTILLER={FACTORIES={},__nativeRequire=require,require=function(e)assert(type(e)=="string","require invalid id:"..tostring(e))if package.loaded[e]then
return package.loaded[e]end
if __DISTILLER.FACTORIES[e]then
local n=__DISTILLER.FACTORIES[e]package.loaded[e]=n(__DISTILLER.require)or true
return package.loaded[e]end
return __DISTILLER.__nativeRequire(e)end,define=function(i,e,n)assert(type(e)=="string","invalid id:"..tostring(e))assert(type(n)=="function","invalid factory:"..tostring(n))if package.loaded[e]==nil and i.FACTORIES[e]==nil then
i.FACTORIES[e]=n
else
print("[__DISTILLER::define] module "..tostring(e).." is already defined")end
end,exec=function(e,n)local e=e.FACTORIES[n]assert(e,"missing factory method for id "..tostring(n))e(__DISTILLER.require)end}end
__DISTILLER:define("FDMM_Config",function(e)env.info("---FDMM_Config Start---");fdmm.majorVersion=0
fdmm.minorVersion=2
fdmm.build=1
fdmm.enums={}fdmm.consts={}fdmm.config={}do
fdmm.enums.Faction={Red='Red',Blue='Blue',Neutral='Neutral',USA='USA',Russia='Russia',Georgia='Georgia',Turkey='Turkey',Ukraine='Ukraine',Unused='Unused'}fdmm.enums.ErrorCodes={Success=0,Failure=1,Incomplete=2,Cancelled=3,InvalidParam=4,ShouldNotBeReached=5}fdmm.consts.UserFlags={DebugFlag='99999'}end
do
fdmm.enums.CargoRouteType={Land='land',Train='train',Air='air',Sea='sea',All='all'}fdmm.consts.CargoRouteGNPrefix={Land='CVRT_',Train='CTRT_',Air='CART_',Sea='CSRT_'}fdmm.consts.CargoRouteWPRoutePrefix={Land={Spawn='CVSP_',Linkage='CVLK_',Facility='CVFC_'},Train={Spawn='CTSP_',Linkage='CTLK_',Facility='CTFC_'},Air={Spawn='CASP_',Linkage='CALK_',Facility='CAFC_'},Sea={Spawn='CSSP_',Linkage='CSLK_',Facility='CSFC_'}}fdmm.consts.CargoRouteWPRouteSuffix={Egress='_EP',Ingress='_IP',Spawn='_SP',Linkage='_LK',Facility='_FC'}end
do
fdmm.enums.FacilityType={Airbase='airbase',ArmsPlant='armsPlant',CommandCenter='commandCenter',FARP='farp',OilField='oilField',Port='port',UnitFactory='unitFactory',All='all'}end
do
fdmm.enums.RPType={Fuel='fuel',Arms='arms',Unit='unit'}fdmm.enums.RPAmountType={Tons='tons',PercentMaxSelf='percent_ms',PercentMaxOther='percent_mo',PercentCurrSelf='percent_cs',PercentCurrOther='percent_co'}end
do
fdmm.enums.TerritoryType={Land='land',Sea='sea',All='all'}fdmm.consts.TerritoryGNPrefix={Define='TDEF_',Linkage='TLNK_',Facility='TFAC_'}fdmm.consts.TerritoryWPFacilityPrefix={Airbase='TARB_',ArmsPlant='TARM_',CommandCenter='TCMD_',FARP='TFRP_',OilField='TOIL_',Port='TPRT_',UnitFactory='TUNT_'}end
do
function fdmm.config.createGPCache()fdmm.config.gpCache={}local t={'AIRB_','ARMP_','CMDC_','FARP_','OILF_','PORT_','UNTF_'}for n,r in pairs(mist.DBs.groupsByName)do
local i,e=fdmm.utils.removeGroupingPrefix(n)if e~=nil then
if not fdmm.config.gpCache[e]then
fdmm.config.gpCache[e]={}end
if table.contains(t,e)then
local t=string.find(i,'_')if t~=nil then
local i=i:sub(1,t-1)if not fdmm.config.gpCache[e][i]then
fdmm.config.gpCache[e][i]={}end
fdmm.config.gpCache[e][i][n]=r
else
if not fdmm.config.gpCache[e]['_']then
fdmm.config.gpCache[e]['_']={}end
fdmm.config.gpCache[e]['_'][n]=r
end
else
fdmm.config.gpCache[e][n]=r
end
end
end
end
end
env.info("---FDMM_Config End---");end)__DISTILLER:define("FDMM_Utils",function(e)env.info("---FDMM_Utils Start---");fdmm.utils={}do
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
local i,n=e:reverse():find('# ')if n~=nil then
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
function fdmm.utils.getGroupingComponents(e)if e then
local i,n
e=fdmm.utils.removeNumericSuffix(e)e,i=fdmm.utils.removeGroupingPrefix(e)e,n=fdmm.utils.removeGroupingSuffix(e)return i,e,n
end
return nil,nil,nil
end
function fdmm.utils.getGroupingComponentsWithSNC(e,r,t)local n,e,i=fdmm.utils.getGroupingComponents(e)if string.isEmpty(n)and table.contains(r or{},(e..'_'))then
n=(e..'_')e=nil
elseif string.isEmpty(i)and table.contains(t or{},('_'..e))then
i=('_'..e)e=nil
end
return n,e,i
end
function fdmm.utils.rposFromRPoint(e)return{x=e.x or e.point.x,y=e.y or e.point.y,routePoint=mist.utils.deepCopy(e)}end
function fdmm.utils.getFaction(e)if e then
e=fdmm.utils.removeNumericSuffix(e)for i,n in pairs(fdmm.enums.Faction)do
if n:lower()==e:lower()then
return i
end
end
end
return fdmm.enums.Faction.Unused
end
function fdmm.utils.isUserFlagSet(e)local e=trigger.misc.getUserFlag(e)return(type(e)=='number'and e~=0)or(type(e)=='boolean'and e~=false)or(type(e)=='string'and e:lower()~='false'and e~='0'and e:lower()~='off'and e:lower()~='no')end
function fdmm.utils.isDebugFlagSet()return fdmm.utils.isUserFlagSet(fdmm.consts.UserFlags.DebugFlag)end
function fdmm.utils.isDesertMap()return env.mission.theatre==DCSMAP.NTTR or env.mission.theatre==DCSMAP.PersianGulf
end
end
env.info("---FDMM_Utils End---");end)__DISTILLER:define("Additions/FDMM_LuaAdditions",function(e)env.info('---FDMM_LuaAdditions Start---')do
function string.contains(n,e)return string.find(n,e)~=nil
end
function string.hasPrefix(n,e)return string.sub(n,1,#e)==e
end
function string.hasSuffix(n,e)return sring.sub(n,-#e)==e
end
function string.isEmpty(e)return e==nil or not#e
end
function string.isNotEmpty(e)return e~=nil and#e
end
function string.notEmptyElse(e,n)if e~=nil and#e then return e end
return n
end
function string.upperFirst(e)return e:sub(1,1):upper()..e:sub(2)end
function table.contains(e,n)for i,e in pairs(e)do
if e==n then
return true
end
end
return false
end
function table.concatedWith(n,i)local e=nil
if n or i then
e={}if n then
for i,n in pairs(n)do
e[i]=n
end
end
if i then
for i,n in pairs(i)do
e[i]=n
end
end
end
return e
end
function table.concatedWithi(n,i)local e=nil
if n or i then
e={}if n then
for i,n in ipairs(n)do
table.insert(e,n)end
end
if i then
for i,n in ipairs(i)do
table.insert(e,n)end
end
end
return e
end
end
env.info('---FDMM_LuaAdditions End---')end)__DISTILLER:define("FDMM_UnitTypes",function(e)env.info("---FDMM_UnitTypes Start---");e('Additions/FDMM_LuaAdditions')fdmm.unitTypes={}do
fdmm.consts.UnitType={Plane={Fighter={AirSuperiority={F14A='F-14A',F14B='F-14B',F15C='F-15C',F15E='F-15E',F16A='F-16A',F16Cb50='F-16C bl.50',F16CMb50='F-16C_50',F16Cb52d='F-16C bl.52d',J11A='J-11A',MiG29A='MiG-29A',MiG29G='MiG-29G',MiG29S='MiG-29S',Su27='Su-27',Su33='Su-33'},Interceptor={F14A='F-14A',F14B='F-14B',F4E='F-4E',MiG21b='MiG-21Bis',MiG25PD='MiG-25PD',MiG31='MiG-31'},Strike={AJS37='AJS37',F4E='F-4E',FA18A='F/A-18A',FA18C='F/A-18C',FA18Cl20='FA-18C_hornet',Su17M4='Su-17M4',Su34='Su-34',TornadoGR4='Tornado GR4',TornadoIDS='Tornado IDS'},Multirole={AJS37='AJS37',F4E='F-4E',F14A='F-14A',F14B='F-14B',F15C='F-15C',F15E='F-15E',F16A='F-16A',F16Cb50='F-16C bl.50',F16CMb50='F-16C_50',F16Cb52d='F-16C bl.52d',FA18A='F/A-18A',FA18C='F/A-18C',FA18Cl20='FA-18C_hornet',J11A='J-11A',JF17='JF-17',M2000C='M-2000C',M20005='Mirage 2000-5',MiG21b='MiG-21Bis',MiG23MLD='MiG-23MLD',MiG29A='MiG-29A',MiG29G='MiG-29G',MiG29S='MiG-29S',Su27='Su-27',Su30='Su-30',Su33='Su-33',TornadoGR4='Tornado GR4',TornadoIDS='Tornado IDS'},Light={F5E='F-5E',F5E3='F-5E-3',F86F='F-86F Sabre',MiG15b='MiG-15bis',MiG19P='MiG-19P'},},Bomber={Strategic={B1B='B1-B',B52H='B-52H',Tu95MS='Tu-95MS',Tu160='Tu-160'},Tactical={Tu22M3='Tu-22M3'},Attack={A10A='A-10A',A10C='A-10C',AV8BNA='AV8BNA',MiG27K='MiG-27K',Su24M='Su-24M',Su25='Su-25',Su25T='Su-25T',Su25TM='Su-25TM'},Stealth={F117A='F-117A'},Light={C101CC='C-101CC',L39ZA='L-39ZA'},ASW={S3B='S-3B',Tu142='Tu-142'},},Reconnaissance={Arial={An30M='An-30M',Tu142='Tu-142'},Bomber={MiG25RBT='MiG-25RBT',Su24MR='Su-24MR'},Drone={MQ9='MQ-9 Reaper',MQ1A='RQ-1A Predator'}},AWACS={A50='A-50',E2D='E-2C',E3A='E-3A',KJ2000='KJ-2000'},Refueling={IL78M='IL-78M',KC130='KC130',KC135='KC-135',KC135MPRS='KC135MPRS',S3BTanker='S-3B Tanker'},Transport={Strategic={C17A='C-17A',IL76MD='IL-76MD'},Tactical={An26B='An-26B',C130='C-130'},Civilian={Yak40='Yak-40'}},Trainer={Jet={C101EB='C-101EB',F16AMLU='F-16A MLU',HawkT1A='Hawk',L39C='L-39C'},Prop={TF51D='TF-51D',Yak52='Yak-52'}},Aerobatic={CEII='Christen Eagle II'},All={},CarrierBorne={AV8BNA='AV8BNA',E2D='E-2C',F4E='F-4E',FA18A='F/A-18A',FA18C='F/A-18C',FA18Cl20='FA-18C_hornet',S3B='S-3B',S3BTanker='S-3B Tanker',Su33='Su-33'},PlayerControllable={A10A='A-10A',A10C='A-10C',AJS37='AJS37',AV8BNA='AV8BNA',F14B='F-14B',F15C='F-15C',F16CMb50='F-16C_50',FA18Cl20='FA-18C_hornet',F5E3='F-5E-3',F86F='F-86F Sabre',JF17='JF-17',M2000C='M-2000C',MiG15b='MiG-15bis',MiG19P='MiG-19P',MiG21b='MiG-21Bis',MiG29A='MiG-29A',MiG29S='MiG-29S',Su25='Su-25',Su25T='Su-25T',Su27='Su-27',Su33='Su-33',C101CC='C-101CC',C101EB='C-101EB',HawkT1A='Hawk',L39C='L-39C',L39ZA='L-39ZA',TF51D='TF-51D',Yak52='Yak-52',CEII='Christen Eagle II'},NATOReporting={['A-50']='Mainstay',['An-26B']='Curl',['An-30M']='Clank',['IL-76MD']='Candid',['IL-78M']='Midas',['J-11A']='Flanker-L',['KJ-2000']='Mainring',['MiG-15bis']='Fagot',['MiG-19P']='Farmer-B',['MiG-21Bis']='Fishbed-L/N',['MiG-23MLD']='Flogger-K',['MiG-25RBT']='Foxbat-B',['MiG-25PD']='Foxbat-E',['MiG-27K']='Flogger-J2',['MiG-29A']='Fulcrum-A',['MiG-29S']='Fulcrum-C',['MiG-31']='Foxhound',['Su-17M4']='Fitter-K',['Su-24M']='Fencer-D',['Su-24MR']='Fencer-E',['Su-25']='Frogfoot',['Su-25T']='Frogfoot',['Su-25TM']='Frogfoot',['Su-27']='Flanker',['Su-30']='Flanker-C',['Su-33']='Flanker-D',['Su-34']='Fullback',['Tu-22M3']='Backfire-C',['Tu-95MS']='Bear-H',['Tu-142']='Bear-F/J',['Tu-160']='Blackjack',['Yak-40']='Codling'},ChassisNaming={['A-10A']='Thunderbolt II',['A-10C']='Thunderbolt II',['AJS37']='Viggen',['AV8BNA']='Harrier II',['B1-B']='Lancer',['B-52H']='Stratofortress',['C-101CC']='Aviojet',['C-101EB']='Aviojet',['C-17A']='Globemaster III',['C-130']='Hercules',['E-2C']='Hawkeye',['E-3A']='Sentry',['F-4E']='Phantom II',['F-5E']='Tiger II',['F-5E-3']='Tiger II',['F-14A']='Tomcat',['F-14B']='Tomcat',['F-15C']='Eagle',['F-15E']='Strike Eagle',['F-16A']='Fighting Falcon',['F-16A MLU']='Fighting Falcon',['F-16C bl.50']='Fighting Falcon',['F-16C_50']='Fighting Falcon',['F-16C bl.52d']='Fighting Falcon',['F/A-18A']='Hornet',['F/A-18C']='Hornet',['FA-18C_hornet']='Hornet',['F-86F Sabre']='Sabre',['F-117A']='Nighthawk',['KC-135']='Stratotanker',['KC135MPRS']='Stratotanker',['L-39C']='Albatros',['L-39ZA']='Albatros',['S-3B']='Viking',['S-3B Tanker']='Viking',['TF-51D']='Mustang'},ChassisNicknaming={['A-10A']='Warthog',['A-10C']='Warthog',['F-16A']='Viper',['F-16A MLU']='Viper',['F-16C bl.50']='Viper',['F-16C_50']='Viper',['F-16C bl.52d']='Viper'}},Helicopter={Attack={AH1W='AH-1W',AH64A='AH-64A',AH64D='AH-64D',Ka50='Ka-50',Mi24V='Mi-24V',Mi28N='Mi-28N'},Reconnaissance={OH58D='OH-58D',SA342L='SA342L',SA342M='SA342M',SA342Mg='SA342Minigun',SA342Ms='SA342Mistral',},Light={SA342L='SA342L',SA342M='SA342M',SA342Mg='SA342Minigun',SA342Ms='SA342Mistral',UH1H='UH-1H'},Transport={Strategic={CH47D='CH-47D',CH53E='CH-53E',Mi26='Mi-26'},Tactical={Mi8MTV2='Mi-8MT',SH60B='SH-60B',UH1H='UH-1H',UH60A='UH-60A',},Assault={Mi24V='Mi-24V',SH60B='SH-60B',UH1H='UH-1H',UH60A='UH-60A'}},ASW={Ka27='Ka-27'},All={},CarrierBorne={CH53E='CH-53E',Ka27='Ka-27',SH60B='SH-60B'},NATOReporting={['Ka-27']='Helix',['Ka-50']='Hokum-A',['Mi-8MT']='Hip',['Mi-24V']='Hind-E',['Mi-26']='Halo',['Mi-28N']='Havoc'},ChassisNaming={['AH-1W']='Cobra',['AH-64A']='Apache',['AH-64D']='Apache',['CH-47D']='Chinook',['CH-53E']='Sea Stallion',['Ka-50']='Black Shark',['OH-58D']='Kiowa',['SA342L']='Gazelle',['SA342M']='Gazelle',['SA342Minigun']='Gazelle',['SA342Mistral']='Gazelle',['SH-60B']='Seahawk',['UH-1H']='Huey',['UH-60A']='Black Hawk'},ChassisNicknaming={['Mi-24V']='Crocodile',}},Ground={Tracked={HQ={Sborka9S80M1='Dog Ear radar'},MBT={ChallengerII='Challenger2',Leclerc='Leclerc',Leopard1A3='Leopard1A3',Leopard2='Leopard-2',M1A2Abrams='M-1 Abrams',M60A3Patton='M-60',MerkavaMk4='Merkava_Mk4',T55='T-55',T72B='T-72B',T80U='T-80UD',T90='T-90',ZTZ96B='ZTZ96B'},IFV={BMD1='BMD-1',BMP1='BMP-1',BMP2='BMP-2',BMP3='BMP-3',M2A2Bradley='M-2 Bradley',Marder='Marder',MCV80='MCV-80',ZBD04A='ZBD04A'},ARV={BRDM2='BRDM-2',BTRRD='BTR_D',MTLBU_BOMAN='Boman'},APC={AAV7='AAV7',M1043HMMWVMg='M1043 HMMWV Armament',M1126StrykerICV='M1126 Stryker ICV',M113='M-113',MTLB='MTLB'},MLRS={M270={_HasWheeledComps=true,Launcher={M270Launcher='MLRS'}},},SPH={M109Paladin='M-109',S2S1Gvozdika='SAU Gvozdika',S2S19Msta='SAU Msta',S2S3Akatsia='SAU Akatsia',S2S9Nona='SAU 2-C9',SpGHDana='SpGH_Dana'},EWR={RolandEWR='Roland Radar'},SAM={M48Chaparral='M48 Chaparral',M6Linebacker='M6 Linebacker',RolandADS='Roland ADS',SA6={SearchTrackRadar={SA6KubSTR_1S91='Kub 1S91 str'},Launcher={SA6KubLN_2P25='Kub 2P25 ln'}},SA11={HQ={SA11BukCC_9S470M1='SA-11 Buk CC 9S470M1'},SearchRadar={SA11BukSR_9S18M1='SA-11 Buk SR 9S18M1'},Launcher={SA11BukLN_9A310M1='SA-11 Buk LN 9A310M1'}},SA13Strela10M3_9A35M3='Strela-10M3',SA15Tor_9A331='Tor 9A331',SA19Tunguska_2S6='2S6 Tunguska'},AAA={SPAAAGepard='Gepard',ZSU234Shilka='ZSU-23-4 Shilka',M163Vulcan='Vulcan'}},Wheeled={HQ={SKP11ATCMCP='SKP-11',Ural375PBU='Ural-375 PBU',ZIL131KUNG='ZIL-131 KUNG'},SPG={M1128StrykerMGS='M1128 Stryker MGS'},ATGM={M1024HMMWVTOW='M1045 HMMWV TOW',M1134StrykerATGM='M1134 Stryker ATGM'},ARV={LAV25='LAV-25'},APC={BMT2Cobra='Cobra',BTR80='BTR-80',M1025HMMWV='Hummer',TPzFuchs='TPZ'},SSM={ScudBLauncher='Scud_B'},MLRS={BM21Grad='Grad-URAL',BM279K57Uragan='Uragan_BM-27',BM309A52Smerch='Smerch',M270={_HasTrackedComps=true,HQ={M270FDDM='MLRS FDDM'}}},EWR={P1455G6='55G6 EWR',P181L13='1L13 EWR'},SAM={AvengerM1097='M1097 Avenger',HQ7={SearchTrackRadar={HQ7STR='HQ-7_STR_SP'},Launcher={HQ7LN='HQ-7_LN_SP'}},Patriot={_HasStationaryComps=true,HQ={PatriotECS_ANMSQ104='Patriot ECS'},DataProcessing={PatriotICC='Patriot cp'},Power={PatriotEPPIII='Patriot EPP'},Antenna={PatriotAMG_ANMRC137='Patriot AMG'}},SA3S125={_HasStationaryComps=true,SearchRadar={SA3S125SR_P19='p-19 s-125 sr'}},SA8Osa_9A33='Osa 9A33 ln',SA9Strela1_9P31='Strela-1 9P31',SA10S300PS={_HasStationaryComps=true,HQ={SA10S300PSCP_54K6='S-300PS 54K6 cp'},SearchRadar={SA10S300PSSR_64H6E='S-300PS 64H6E sr'},MasterLauncher={SA10S300PSLN_5P85C='S-300PS 5P85C ln'},SlaveLauncher={SA10S300PSLN_5P85D='S-300PS 5P85D ln'}}},AAA={Soldier={ZU23Ural375='Ural-375 ZU-23'},Insurgent={ZU23Ural375_Insurgent='Ural-375 ZU-23 Insurgent'}},Power={APA5D_Ural4320='Ural-4320 APA-5D',APA80_ZIL131='ZiL-131 APA-80'},Police={Tigr_233036='Tigr_233036'},Fire={TFFTHEMTT='HEMTT TFFT',UralATsP6='Ural ATsP-6'},Transport={Armored={Ural432031A='Ural-4320-31'},Open={GAZ66='GAZ-66',Ural375='Ural-375'},Covered={GAZ3308='GAZ-3308',KAMAZ43101='KAMAZ Truck',KrAZ6322='KrAZ6322',LandRover101FC='Land_Rover_101_FC',M818='M 818',Ural4320T='Ural-4320T'},Lubricant={ATMZ5='ATMZ-5'},Fuel={ATZ10='ATZ-10',M978HEMTT='M978 HEMTT Tanker'}},Car={M1025HMMWV='Hummer',LandRover109S3='Land_Rover_109_S3',UAZ469='UAZ-469'}},Stationary={DroneCommand={HQ={PreadtorGCS='Predator GCS'},Dish={PredatorTS='Predator TrojanSpirit'}},SSM={SSN2={SearchRadar={SSN2SilkwormSR='Silkworm_SR'},Launcher={SSN2SilkwormLN='hy_launcher'}}},SAM={Hawk={HQ={HawkPCP='Hawk pcp'},ContWaveAcqRadar={HawkCWAR='Hawk cwar'},SearchRadar={HawkSR='Hawk sr'},TrackRadar={HawkTR='Hawk tr'},Launcher={HawkLN_M192='Hawk ln'}},Patriot={_HasWheeledComps=true,Launcher={Patriot_LNM901='Patriot ln'},SearchTrackRadar={PatriotSTR_ANMPQ53='Patriot str'}},Rapier={TrackRadar={RapierFSATR='rapier_fsa_blindfire_radar'},TrackOptical={RapierFSATO='rapier_fsa_optical_tracker_unit'},Launcher={RapierFSALN='rapier_fsa_launcher'}},SA2S75={TrackRadar={SA2S75TR_SNR75='SNR_75V'},Launcher={SA2S75LN_SM90='S_75M_Volhov'}},SA3S125={_HasWheeledComps=true,TrackRadar={SA3S125TR_SNR='snr s-125 tr'},Launcher={SA3S125L_N5P73='5p73 s-125 ln'}},SA10S300PS={_HasWheeledComps=true,SearchRadar={SA10S300PSSR_5N66M='S-300PS 40B6MD sr'},TrackRadar={SA10S300PSTR_30N6='S-300PS 40B6M tr'}}},AAA={Soldier={Fortified={ZU23Closed='ZU-23 Emplacement Closed'},Emplacement={ZU23='ZU-23 Emplacement'}},Insurgent={Fortified={ZU23Closed_Insurgent='ZU-23 Closed Insurgent'},Emplacement={ZU23_Insurgent='ZU-23 Insurgent'}}}},Infantry={Mortar={M2B11='2B11 mortar'},SAM={SA18={Soldier={Comms={SA18IGLAComms='SA-18 Igla comm'},Launcher={IGLAMANPADS='SA-18 Igla manpad'}},Insurgent={Comms={SA18IGLAComms='SA-18 Igla comm'},Launcher={SA18IGLAMANPADS_Insurgent='Igla manpad INS'}}},SA24={Comms={IGLASComms='SA-18 Igla-S comm'},Launcher={IGLASMANPADS='SA-18 Igla-S manpad'}},Stinger={Comms={StingerComms='Stinger comm',},Launcher={StingerMANPADS='Soldier stinger'}}},MG={SoldierM249='Soldier M249'},Rifle={Soldier={GeorgianM4='Soldier M4 GRG',SoldierM4='Soldier M4',RussianAK='Infantry AK',SoldierAK='Soldier AK'},Insurgent={InsurgentAK='Infantry AK Ins'},Paratrooper={ParatroopAKS74='Paratrooper AKS-74'}},RPG={Soldier={SoldierRPG='Soldier RPG'},Insurgent={SoldierRPG='Soldier RPG'},Paratrooper={ParatroopRPG16='Paratrooper RPG-16'}}},Civilian={Trailer={MAZ6303='MAZ-6303'},Truck={Fire={UralATsP6='Ural ATsP-6'},Transport={Open={ZIL4331='ZIL-4331'},Covered={GAZ3307='GAZ-3307'}}},Bus={Double={IKARUS280='IKARUS Bus'},Single={LAZ695='LAZ Bus',ZIU9='Trolley bus'}},Car={VAZ2109='VAZ Car'},},All={},Amphibious={AAV7='AAV7',BMP1='BMP-1',BMP2='BMP-2',BRDM2='BRDM-2',BTRRD='BTR_D',LAV25='LAV-25',MTLB='MTLB',MTLBU_BOMAN='Boman',SA8Osa_9A33='Osa 9A33 ln',S2S1Gvozdika='SAU Gvozdika',S2S9Nona='SAU 2-C9'},HeavyWheeled={TFFTHEMTT='HEMTT TFFT',M978HEMTT='M978 HEMTT Tanker',SA10S300PSCP_54K6='S-300PS 54K6 cp',SA10S300PSSR_64H6E='S-300PS 64H6E sr',SA10S300PSLN_5P85C='S-300PS 5P85C ln',SA10S300PSLN_5P85D='S-300PS 5P85D ln',ScudBLauncher='Scud_B',TPzFuchs='TPZ'},NATOReporting={['Dog Ear radar']='Dog Ear',['S_75M_Volhov']='Guideline',['SNR_75V']='Fan Song',['5p73 s-125 ln']='Goa',['snr s-125 tr']='Low Blow',['p-19 s-125 sr']='Flat Face B',['Kub 2P25 ln']='Gainful',['Kub 1S91 str']='Straight Flush',['Strela-1 9P31']='Gaskin',['S-300PS 54K6 cp']='Grumble',['S-300PS 64H6E sr']='Big Bird',['S-300PS 5P85C ln']='Grumble',['S-300PS 5P85D ln']='Grumble',['S-300PS 40B6MD sr']='Clam Shell',['S-300PS 40B6M tr']='Flap Lid A',['SA-11 Buk CC 9S470M1']='Gadfly',['SA-11 Buk LN 9A310M1']='Gadfly',['SA-11 Buk SR 9S18M1']='Tube Arm',['Strela-10M3']='Gopher',['Tor 9A331']='Gauntlet',['SA-18 Igla comm']='Grouse',['SA-18 Igla manpad']='Grouse',['Igla manpad INS']='Grouse',['SA-18 Igla-S comm']='Grinch',['SA-18 Igla-S manpad']='Grinch',['2S6 Tunguska']='Grison',['55G6 EWR']='Tall King',['1L13 EWR']='Spoon Rest D'},ChassisNaming={},ChassisNicknaming={['Hummer']='Humvee',['M1043 HMMWV Armament']='Humvee',['M1045 HMMWV TOW']='Humvee'}},Ship={Carrier={},HeliCarrier={},Cruiser={},Destroyer={},Frigate={},Corvette={},Submarine={},Transport={},Civilian={},All={},ChassisNaming={},ChassisNicknaming={}},Train={Transport={Locomotive={},Closed={},Open={},Flatbed={},Fuel={},},Civilian={Locomotive={},Passenger={}},All={},ChassisNaming={},ChassisNicknaming={}}}function fdmm.unitTypes.processEntries()if fdmm.utils.isDesertMap()then
fdmm.consts.UnitType.Ground.Infantry.SAM.Stinger.Comms.StingerComms=fdmm.consts.UnitType.Ground.Infantry.SAM.Stinger.Comms.StingerComms..' dsr'end
local t={'All','PlayerControllable','CarrierBorne','HeavyWheeled','NATOReporting','ChassisNaming','ChassisNicknaming'}local function i(e,r)for e,n in pairs(e)do
if not(string.hasPrefix(e,'_')or table.contains(t,e))then
if type(n)=='table'then
i(n,r)elseif type(n)=='string'then
if not r[e]then
r[e]=n
elseif r[e]~=n then
env.error("All list descrepancy for key='"..e.."', allList[key]='"..r[e].."' ~= value='"..n.."'.")end
end
end
end
end
i(fdmm.consts.UnitType.Plane,fdmm.consts.UnitType.Plane.All)i(fdmm.consts.UnitType.Helicopter,fdmm.consts.UnitType.Helicopter.All)i(fdmm.consts.UnitType.Ground,fdmm.consts.UnitType.Ground.All)i(fdmm.consts.UnitType.Ship,fdmm.consts.UnitType.Ship.All)i(fdmm.consts.UnitType.Train,fdmm.consts.UnitType.Train.All)end
function fdmm.unitTypes.isCarrierBorne(e)end
function fdmm.unitTypes.isPlayerControllable(e)end
function fdmm.unitTypes.isAmphibious(e)end
function fdmm.unitTypes.isHeavyWheeled(e)end
function fdmm.unitTypes.getNATOReporting(e)end
function fdmm.unitTypes.getChassisName(e)end
function fdmm.unitTypes.getChassisNickname(e)end
end
env.info("---FDMM_UnitTypes End---");end)__DISTILLER:define("Additions/FDMM_MISTAdditions",function(e)env.info('---FDMM_MISTAdditions Start---')assert(mist,'MIST not initialized.')do
mist.DBs.Category={Vehicle='vehicle',Ship='ship',Plane='plane',Helicopter='helicopter',Building='building',Unknown='unknown'}function mist.utils.get2DDistSqrd(n,e)if n.z~=nil then n=mist.utils.makeVec2(n)end
if e.z~=nil then e=mist.utils.makeVec2(e)end
return mist.vec.magSqrd({x=n.x-e.x,y=n.y-e.y})end
function mist.utils.get3DDistSqrd(n,e)if n.z==nil then n=mist.utils.makeVec3(n)end
if e.z==nil then e=mist.utils.makeVec3(e)end
return mist.vec.magSqrd({x=n.x-e.x,y=n.y-e.y,z=n.z-e.z})end
mist.vec.magSqrd=function(e)return(e.x*e.x)+(e.y*e.y)+((e.z or 0)*(e.z or 0))end
end
env.info('---FDMM_MISTAdditions End---')end)__DISTILLER:define("Additions/FDMM_MOOSEAdditions",function(e)env.info('---FDMM_MOOSEAdditions Start---')assert(routines,'MOOSE not initialized.')do
function routines.utils.get2DDistSqrd(e,n)if e.z~=nil then e=routines.utils.makeVec2(e)end
if n.z~=nil then n=routines.utils.makeVec2(n)end
return routines.vec.magSqrd({x=e.x-n.x,y=e.y-n.y})end
function routines.utils.get3DDistSqrd(n,e)if n.z==nil then n=routines.utils.makeVec3(n)end
if e.z==nil then e=routines.utils.makeVec3(e)end
return routines.vec.magSqrd({x=n.x-e.x,y=n.y-e.y,z=n.z-e.z})end
routines.vec.magSqrd=function(e)return(e.x*e.x)+(e.y*e.y)+((e.z or 0)*(e.z or 0))end
function ZONE_POLYGON:NewFromPoints(n,e)local e=BASE:Inherit(self,ZONE_POLYGON_BASE:New(n,e))e:F({n,nil,e._.Polygon})_EVENTDISPATCHER:CreateEventNewZone(e)return e
end
end
env.info('---FDMM_MOOSEAdditions End---')end)__DISTILLER:define("Cargo/FDMM_ResourceUnit",function(e)env.info('---FDMM_ResourceUnit Start---')fdmm.resourceUnit={}do
FDMMResourceUnit={}FDMMResourceUnit.__index=FDMMResourceUnit
setmetatable(FDMMResourceUnit,{__call=function(e,...)return e.new(...)end,})function FDMMResourceUnit.new(i,n,r,t,a,o)local e=setmetatable({},FDMMResourceUnit)e.fuelRP=i
e.armsRP=n
e.unitRP=r
e.maxFuelRP=t
e.maxArmsRP=a
e.maxUnitRP=o
return e
end
function FDMMResourceUnit:canTransferTo(e,e,e,e)end
function FDMMResourceUnit:transferTo(e,e,e,e,e,e)end
end
do
end
env.info('---FDMM_ResourceUnit End---')end)__DISTILLER:define("Cargo/FDMM_CargoRoute",function(e)env.info('---FDMM_CargoRoute Start---')fdmm.cargoRoute={}do
FDMMCargoRoute={}FDMMCargoRoute.__index=FDMMCargoRoute
setmetatable(FDMMCargoRoute,{__call=function(e,...)return e.new(...)end,})function FDMMCargoRoute.new(i,n)local e=setmetatable({},FDMMCargoRoute)e.territoryName=i
e.routeType=n
e.spawnLocs={}e.facilityLocs={}e.dirLinks={}return e
end
function FDMMCargoRoute:addSpawnLocation(e,n,i)table.insert(self.spawnLocs,{spawnFaction=e,spawnPoint=n,egressPoints=i or{}})end
function FDMMCargoRoute:addFacilityLocation(i,e,n)table.insert(self.facilityLocs,{facilityName=i,facilityPoint=e,ingressPoints=n or{}})end
function FDMMCargoRoute:addDirectionalLink(i,n,e)table.insert(self.dirLinks,{directionName=i,navigationPoint=n,ingressPoints=e or{}})end
function FDMMCargoRoute:getOutboundRouteFromStart(e)end
function FDMMCargoRoute:getInboundRouteToFacility(e)end
function FDMMCargoRoute:getOutboundRouteFromFacility(e)end
function FDMMCargoRoute:getClosestDirectionalLinkageToOutsidePoint(e)end
end
do
function fdmm.cargoRoute.createCargoRoutes()fdmm.cargoRoutes={}for e,n in pairs(fdmm.territories.all)do
fdmm.cargoRoutes[e]={[fdmm.enums.CargoRouteType.Land]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Land),[fdmm.enums.CargoRouteType.Train]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Train),[fdmm.enums.CargoRouteType.Air]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Air),[fdmm.enums.CargoRouteType.Sea]=FDMMCargoRoute.new(e,fdmm.enums.CargoRouteType.Sea)}end
local m={[fdmm.consts.CargoRouteGNPrefix.Land]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Land]or{},[fdmm.consts.CargoRouteGNPrefix.Train]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Train]or{},[fdmm.consts.CargoRouteGNPrefix.Air]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Air]or{},[fdmm.consts.CargoRouteGNPrefix.Sea]=fdmm.config.gpCache[fdmm.consts.CargoRouteGNPrefix.Sea]or{}}function _processGroup(o,n,a)local e=fdmm.utils.removeNumericSuffix(fdmm.utils.removeGroupingPrefix(o))local i=fdmm.territories.all[e]if i~=nil then
local l=fdmm.cargoRoutes[e][a]local u=mist.getGroupRoute(o,false)local m=fdmm.utils.getFaction(string.notEmptyElse(n.units[1].unitName,n.country))local d=a:upperFirst()local f=table.concatedWith(fdmm.consts.CargoRouteGNPrefix,fdmm.consts.CargoRouteWPRoutePrefix[d])local e=nil
local n={Spawn='spawn',Linkage='linkage',Facility='facility',TBD='_'}local i,t,s=nil,nil,{}function _updateScanner(r,d)if e==n.TBD and r~=nil and r~=n.TBD then
e=r
elseif e~=nil and e~=n.TBD and r==n.TBD then
r=e
end
if e~=r or i~=d then
if e then
if e==n.Spawn then
if string.isNotEmpty(m)and t and s then
l:addSpawnLocation(m,t,s)else
env.error('Cargo '..a.." routing group '"..o.."' failed to parse spawn route '"..(i or'<nil>').."'.")end
elseif e==n.Linkage then
if string.isNotEmpty(i)and t and s then
l:addDirectionalLink(i,t,s)else
env.error('Cargo '..a.." routing group '"..o.."' failed to parse linkage route '"..(i or'<nil>').."'.")end
elseif e==n.Facility then
if string.isNotEmpty(i)and t and s then
l:addFacilityLocation(i,t,s)else
env.error('Cargo '..a.." routing group '"..o.."' failed to parse facility route '"..(i or'<nil>').."'.")end
elseif e~=n.TBD then
env.error('Cargo '..a.." routing group '"..o.."' encountered unrecognized scan mode '"..(r or'<nil>').."'.")end
i,t,s=nil,nil,{}end
e=r
i=d
end
end
for l,e in ipairs(u)do
if string.isNotEmpty(e.name)and(e.name..'_')~=fdmm.consts.CargoRouteGNPrefix[d]then
local m,r,i=fdmm.utils.getGroupingComponentsWithSNC(e.name,f,fdmm.consts.CargoRouteWPRouteSuffix)if m==fdmm.consts.CargoRouteGNPrefix[d]then
if i==fdmm.consts.CargoRouteWPRouteSuffix.Egress or
i==fdmm.consts.CargoRouteWPRouteSuffix.Ingress then
_updateScanner(n.TBD,r)table.insert(s,fdmm.utils.rposFromRPoint(e))elseif i==fdmm.consts.CargoRouteWPRouteSuffix.Spawn then
_updateScanner(n.Spawn,r)t=fdmm.utils.rposFromRPoint(e)elseif i==fdmm.consts.CargoRouteWPRouteSuffix.Linkage then
_updateScanner(n.Linkage,r)t=fdmm.utils.rposFromRPoint(e)elseif i==fdmm.consts.CargoRouteWPRouteSuffix.Facility then
_updateScanner(n.Facility,r)t=fdmm.utils.rposFromRPoint(e)elseif not(string.isEmpty(r)and string.isEmpty(i))then
env.error('Cargo '..a.." routing group '"..o.."' unknown WP '"..(e.name or'<nil>').."' at WP index "..l..'.')end
elseif m==fdmm.consts.CargoRouteWPRoutePrefix[d].Spawn then
if string.isEmpty(i)then
_updateScanner(n.Spawn,r)t=fdmm.utils.rposFromRPoint(e)elseif i==fdmm.consts.CargoRouteWPRouteSuffix.Egress then
_updateScanner(n.Spawn,r)table.insert(s,fdmm.utils.rposFromRPoint(e))elseif not(string.isEmpty(r)and string.isEmpty(i))then
env.error('Cargo '..a.." routing group '"..o.."' unknown spawn WP '"..(e.name or'<nil>').."' at WP index "..l..'.')end
elseif m==fdmm.consts.CargoRouteWPRoutePrefix[d].Linkage then
if string.isEmpty(i)then
_updateScanner(n.Linkage,r)t=fdmm.utils.rposFromRPoint(e)elseif i==fdmm.consts.CargoRouteWPRouteSuffix.Ingress then
_updateScanner(n.Linkage,r)table.insert(s,fdmm.utils.rposFromRPoint(e))elseif not(string.isEmpty(r)and string.isEmpty(i))then
env.error('Cargo '..a.." routing group '"..o.."' unknown linkage WP '"..(e.name or'<nil>').."' at WP index "..l..'.')end
elseif m==fdmm.consts.CargoRouteWPRoutePrefix[d].Facility then
if string.isEmpty(i)then
_updateScanner(n.Facility,r)t=fdmm.utils.rposFromRPoint(e)elseif i==fdmm.consts.CargoRouteWPRouteSuffix.Ingress then
_updateScanner(n.Facility,r)table.insert(s,fdmm.utils.rposFromRPoint(e))elseif not(string.isEmpty(r)and string.isEmpty(i))then
env.error('Cargo '..a.." routing group '"..o.."' unknown facility WP '"..(e.name or'<nil>').."' at WP index "..l..'.')end
else
env.error('Cargo '..a.." routing group '"..o.."' unknown routing WP '"..(e.name or'<nil>').."' at WP index "..l..'.')end
end
end
_updateScanner(nil,nil)else
env.error('Cargo '..a.." routing group '"..o.."' failed to find territory with same name.")end
end
for e,n in pairs(m[fdmm.consts.CargoRouteGNPrefix.Land])do
_processGroup(e,n,fdmm.enums.CargoRouteType.Land)end
for n,e in pairs(m[fdmm.consts.CargoRouteGNPrefix.Train])do
_processGroup(n,e,fdmm.enums.CargoRouteType.Train)end
for e,n in pairs(m[fdmm.consts.CargoRouteGNPrefix.Air])do
_processGroup(e,n,fdmm.enums.CargoRouteType.Air)end
for e,n in pairs(m[fdmm.consts.CargoRouteGNPrefix.Sea])do
_processGroup(e,n,fdmm.enums.CargoRouteType.Sea)end
end
end
env.info('---FDMM_CargoRoute End---')end)__DISTILLER:define("Territory/FDMM_Territory",function(e)env.info('---FDMM_Territory Start---')fdmm.territory={}do
FDMMTerritory={}FDMMTerritory.__index=FDMMTerritory
setmetatable(FDMMTerritory,{__call=function(e,...)return e.newFromGroup(...)end,})function FDMMTerritory.newFromGroup(n,i)local e=setmetatable({},FDMMTerritory)e.name=fdmm.utils.removeGroupingPrefix(n)if i.category==mist.DBs.Category.Ship then
e.type=fdmm.enums.TerritoryType.Sea
else
e.type=fdmm.enums.TerritoryType.Land
end
e.polygonPoints={}local r=mist.getGroupPoints(n)for n,i in ipairs(r)do
if n>1 and n<#r then
table.insert(e.polygonPoints,i)elseif n==1 then
e.centerPoint=i
else
e.capturePoint=i
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
function FDMMTerritory:smokeBoundaries(r)r=r or SMOKECOLOR.Blue
local a=10000./25.
local t=nil
for e,o in ipairs(self.polygonPoints)do
if e>1 then
local e=mist.utils.makeVec3(o)local e=mist.vec.sub(e,t)local i=mist.vec.mag(e)local o=mist.vec.scalarMult(e,1./i)local e=1
local n=i/e
while n>a do
e=e+1
n=i/e
end
while e>=0 do
local n=mist.vec.scalarMult(o,e*n)local n=mist.vec.add(t,n);COORDINATE:NewFromVec2(mist.utils.makeVec2(n)):Smoke(r)e=e-1
end
end
t=mist.utils.makeVec3(o)end
end
end
do
function fdmm.territory.createTerritories()fdmm.territories={[fdmm.enums.TerritoryType.Land]={},[fdmm.enums.TerritoryType.Sea]={},[fdmm.enums.TerritoryType.All]={}}local n={[fdmm.consts.TerritoryGNPrefix.Define]=fdmm.config.gpCache[fdmm.consts.TerritoryGNPrefix.Define]or{},[fdmm.consts.TerritoryGNPrefix.Linkage]=fdmm.config.gpCache[fdmm.consts.TerritoryGNPrefix.Linkage]or{}}for e,n in pairs(n[fdmm.consts.TerritoryGNPrefix.Define])do
local e=FDMMTerritory.newFromGroup(e,n)fdmm.territories[e.type][e.name]=e
fdmm.territories.all[e.name]=e
end
for e,n in pairs(n[fdmm.consts.TerritoryGNPrefix.Linkage])do
local r=fdmm.utils.removeGroupingPrefix(e)local n=fdmm.territories.all[r]if n~=nil then
for r,i in ipairs(mist.getGroupRoute(e,false))do
if string.isEmpty(i.name)then
local i=fdmm.territory.closestTerritoryToPoint(fdmm.utils.rposFromRPoint(i),n.type)if i~=nil then
n:addTerritoryLink(i)else
env.error("Territory linkage group '"..e.."' failed to find a closest territory at WP index "..r..'.')end
end
end
else
env.error("Territory linkage group '"..e.."' failed to find territory named '"..r.."'.")end
end
end
function fdmm.territory.createFacilities()fdmm.facilities={[fdmm.enums.FacilityType.Airbase]={},[fdmm.enums.FacilityType.ArmsPlant]={},[fdmm.enums.FacilityType.CommandCenter]={},[fdmm.enums.FacilityType.FARP]={},[fdmm.enums.FacilityType.OilField]={},[fdmm.enums.FacilityType.Port]={},[fdmm.enums.FacilityType.UnitFactory]={},[fdmm.enums.FacilityType.All]={}}local n={[fdmm.consts.TerritoryGNPrefix.Facility]=fdmm.config.gpCache[fdmm.consts.TerritoryGNPrefix.Facility]or{}}local e=table.concatedWith(fdmm.consts.TerritoryGNPrefix,fdmm.consts.TerritoryWPFacilityPrefix)for o,n in pairs(n[fdmm.consts.TerritoryGNPrefix.Facility])do
local i=fdmm.utils.removeGroupingPrefix(o)local r=fdmm.territories.all[i]if r~=nil then
for a,n in ipairs(mist.getGroupRoute(o,false))do
if string.isNotEmpty(n.name)and(n.name..'_')~=fdmm.consts.TerritoryGNPrefix.Facility then
local t,e,s=fdmm.utils.getGroupingComponentsWithSNC(n.name,e,nil)if t==fdmm.consts.TerritoryWPFacilityPrefix.Airbase and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMAirbase.new(e,fdmm.utils.rposFromRPoint(n),i)fdmm.facilities.airbase[e.name]=e
fdmm.facilities.all[e.name]=e
r:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.ArmsPlant and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMArmsPlant.new(e,fdmm.utils.rposFromRPoint(n),i)fdmm.facilities.armsPlant[e.name]=e
fdmm.facilities.all[e.name]=e
r:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.CommandCenter and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMCommandCenter.new(e,fdmm.utils.rposFromRPoint(n),i)fdmm.facilities.commandCenter[e.name]=e
fdmm.facilities.all[e.name]=e
r:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.FARP and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMFARP.new(e,fdmm.utils.rposFromRPoint(n),i)fdmm.facilities.farp[e.name]=e
fdmm.facilities.all[e.name]=e
r:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.OilField and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMOilField.new(e,fdmm.utils.rposFromRPoint(n),i)fdmm.facilities.oilField[e.name]=e
fdmm.facilities.all[e.name]=e
r:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.Port and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMPort.new(e,fdmm.utils.rposFromRPoint(n),i)fdmm.facilities.port[e.name]=e
fdmm.facilities.all[e.name]=e
r:addFacility(e)elseif t==fdmm.consts.TerritoryWPFacilityPrefix.UnitFactory and string.isNotEmpty(e)then
local e=fdmm.facilities.all[e]or FDMMUnitFactory.new(e,fdmm.utils.rposFromRPoint(n),i)fdmm.facilities.unitFactory[e.name]=e
fdmm.facilities.all[e.name]=e
r:addFacility(e)elseif not(string.isEmpty(e)and string.isEmpty(s))then
env.error("Territory group '"..o.."' unknown facility WP '"..(n.name or'<nil>').."' at WP index "..a..'.')end
end
end
else
env.error("Territory facility group '"..o.."' failed to find territory named '"..i.."'.")end
end
end
function fdmm.territory.buildFacilities()for n,e in pairs(fdmm.territories.all)do
e:buildFacilities()end
end
function fdmm.territory.closestTerritoryToPoint(e,i)local n=mist.utils.makeVec2(e)local e=nil
local r=0
local i=i or fdmm.enums.TerritoryType.All
local i=fdmm.territories[i]for t,i in pairs(i)do
local n=mist.utils.get2DDistSqrd(n,i.centerPoint)if e==nil or n<r then
e=i
r=n
end
end
return e
end
function fdmm.territory.dumpTerritories()function _envInfoTerritory(n,e)env.info("    '"..n.."':")env.info('      '..'centerPoint: '..fdmm.utils.pos2ToLoggableString(e.centerPoint))env.info('      '..'capturePoint: '..fdmm.utils.pos2ToLoggableString(e.capturePoint))for e,n in pairs(e.linkedTerritories)do
env.info('      '.."Linked /w: '"..e.."'.")end
end
env.info('--FDMM Territories Dump--')env.info('  Sea Territories:')for e,n in pairs(fdmm.territories.sea)do
_envInfoTerritory(e,n)end
env.info('  Land Territories:')for n,e in pairs(fdmm.territories.land)do
_envInfoTerritory(n,e)end
end
end
env.info('---FDMM_Territory End---')end)__DISTILLER:define("Territory/FDMM_Facility",function(e)env.info('---FDMM_Facility Start---')fdmm.facility={}do
FDMMFacility={}FDMMFacility.__index=FDMMFacility
setmetatable(FDMMFacility,{__call=function(e,...)return e.new(...)end})function FDMMFacility.new(i,r,n)local e=setmetatable({},FDMMFacility)e.name=i
e.centerPoint=r
e.territoryName=n
return e
end
function FDMMFacility:buildFacility()end
function FDMMFacility:getFacilityType()return nil
end
end
do
end
env.info('---FDMM_Facility End---')end)__DISTILLER:define("Territory/FDMM_Airbase",function(e)env.info('---FDMM_Airbase Start---')e('Territory/FDMM_Facility')fdmm.airbase={}do
FDMMAirbase={}FDMMAirbase.__index=FDMMAirbase
setmetatable(FDMMAirbase,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMAirbase.new(e,n,i)local e=setmetatable(FDMMFacility.new(e,n,i),FDMMAirbase)return e
end
function FDMMAirbase:buildFacility()end
function FDMMAirbase:getFacilityType()return fdmm.enums.FacilityType.Airbase
end
end
do
end
env.info('---FDMM_Airbase End---')end)__DISTILLER:define("Territory/FDMM_ArmsPlant",function(e)env.info('---FDMM_ArmsPlant Start---')e('Territory/FDMM_Facility')fdmm.armsPlant={}do
FDMMArmsPlant={}FDMMArmsPlant.__index=FDMMArmsPlant
setmetatable(FDMMArmsPlant,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMArmsPlant.new(i,e,n)local e=setmetatable(FDMMFacility.new(i,e,n),FDMMArmsPlant)return e
end
function FDMMArmsPlant:buildFacility()end
function FDMMArmsPlant:getFacilityType()return fdmm.enums.FacilityType.ArmsPlant
end
end
do
end
env.info('---FDMM_ArmsPlant End---')end)__DISTILLER:define("Territory/FDMM_CommandCenter",function(e)env.info('---FDMM_CommandCenter Start---')e('Territory/FDMM_Facility')fdmm.commandCenter={}do
FDMMCommandCenter={}FDMMCommandCenter.__index=FDMMCommandCenter
setmetatable(FDMMCommandCenter,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMCommandCenter.new(e,i,n)local e=setmetatable(FDMMFacility.new(e,i,n),FDMMCommandCenter)return e
end
function FDMMCommandCenter:buildFacility()end
function FDMMCommandCenter:getFacilityType()return fdmm.enums.FacilityType.CommandCenter
end
end
do
end
env.info('---FDMM_CommandCenter End---')end)__DISTILLER:define("Territory/FDMM_FARP",function(e)env.info('---FDMM_FARP Start---')e('Territory/FDMM_Facility')fdmm.farp={}do
FDMMFARP={}FDMMFARP.__index=FDMMFARP
setmetatable(FDMMFARP,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMFARP.new(n,i,e)local e=setmetatable(FDMMFacility.new(n,i,e),FDMMFARP)return e
end
function FDMMFARP:buildFacility()end
function FDMMFARP:getFacilityType()return fdmm.enums.FacilityType.FARP
end
end
do
end
env.info('---FDMM_FARP End---')end)__DISTILLER:define("Territory/FDMM_OilField",function(e)env.info('---FDMM_OilField Start---')e('Territory/FDMM_Facility')fdmm.oilField={}do
FDMMOilField={}FDMMOilField.__index=FDMMOilField
setmetatable(FDMMOilField,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMOilField.new(i,n,e)local e=setmetatable(FDMMFacility.new(i,n,e),FDMMOilField)return e
end
function FDMMOilField:buildFacility()end
function FDMMOilField:getFacilityType()return fdmm.enums.FacilityType.OilField
end
end
do
end
env.info('---FDMM_OilField End---')end)__DISTILLER:define("Territory/FDMM_Port",function(e)env.info('---FDMM_Port Start---')e('Territory/FDMM_Facility')fdmm.port={}do
FDMMPort={}FDMMPort.__index=FDMMPort
setmetatable(FDMMPort,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMPort.new(e,i,n)local e=setmetatable(FDMMFacility.new(e,i,n),FDMMPort)return e
end
function FDMMPort:buildFacility()end
function FDMMPort:getFacilityType()return fdmm.enums.FacilityType.Port
end
end
do
end
env.info('---FDMM_Port End---')end)__DISTILLER:define("Territory/FDMM_UnitFactory",function(e)env.info('---FDMM_UnitFactory Start---')e('Territory/FDMM_Facility')fdmm.unitFactory={}do
FDMMUnitFactory={}FDMMUnitFactory.__index=FDMMUnitFactory
setmetatable(FDMMUnitFactory,{__index=FDMMFacility,__call=function(e,...)return e.new(...)end})function FDMMUnitFactory.new(i,n,e)local e=setmetatable(FDMMFacility.new(i,n,e),FDMMUnitFactory)return e
end
function FDMMUnitFactory:buildFacility()end
function FDMMUnitFactory:getFacilityType()return fdmm.enums.FacilityType.UnitFactory
end
end
do
end
env.info('---FDMM_UnitFactory End---')end)__DISTILLER:define("FDMM_MissionStart.lua_distilled",function(e)env.info('---FDMM_MissionStart Start---')env.setErrorMessageBoxEnabled(false)fdmm={}fdmm.ScriptType={Both='Both',Setup='Setup',Runnable='Runable'}fdmm.scriptType=fdmm.ScriptType.Both
e('FDMM_Config')e('FDMM_Utils')e('FDMM_UnitTypes')e('Additions/FDMM_LuaAdditions')e('Additions/FDMM_MISTAdditions')e('Additions/FDMM_MOOSEAdditions')e('Cargo/FDMM_ResourceUnit')e('Cargo/FDMM_CargoRoute')e('Territory/FDMM_Territory')e('Territory/FDMM_Airbase')e('Territory/FDMM_ArmsPlant')e('Territory/FDMM_CommandCenter')e('Territory/FDMM_FARP')e('Territory/FDMM_OilField')e('Territory/FDMM_Port')e('Territory/FDMM_UnitFactory')do
trigger.action.outText('FDMM Starting...',10)fdmm.unitTypes.processEntries()fdmm.config.createGPCache()fdmm.territory.createTerritories()fdmm.territory.createFacilities()fdmm.cargoRoute.createCargoRoutes()fdmm.territory.buildFacilities()trigger.action.outText('FDMM Started',10)end
env.info('---FDMM_MissionStart End---')end)__DISTILLER:exec("FDMM_MissionStart.lua_distilled")