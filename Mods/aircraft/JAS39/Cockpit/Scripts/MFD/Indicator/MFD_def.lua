dofile(LockOn_Options.common_script_path.."elements_defs.lua")
dofile(LockOn_Options.common_script_path.."Fonts/symbols_locale.lua")
dofile(LockOn_Options.common_script_path.."Fonts/fonts_cmn.lua")

local IndicationFontPath = LockOn_Options.script_path.."Resources/Fonts"
local MFD_IND_TEX_PATH        = LockOn_Options.script_path .. "Resources/"  



SetScale(FOV)

stringdefs = {0.012,0.75 * 0.012, 0, 0}
mfd_strdefs_text  = {0.007,0.007, 0, 0}
mfd_strdefs_digit = {0.006,0.006, 0, 0}
mfd_strdefs_digit_Large = {0.010,0.010, 0, 0}
mfd_strdefs_digit_S = {0.005,0.005, 0, 0}
mfd_strdefs_digit_XS = {0.0045,0.0045, 0, 0}
mfd_strdefs_digit_XXS = {0.0035,0.0035, 0, 0}
mfd_strdefs_digit_b = {0.0075,0.0075, 0, 0}
mfd_strdefs_digit_f = {0.008,0.008, 0, 0}

lcp_strdefs_digit = {0.0045,0.0045, 0, 0}
ucp_strdefs_digit = {0.0055,0.0055, 0, 0}


materials = {}
materials["DBG_GREY"]    = {5, 5, 5, 255}
materials["DBG_BLACK"]   = {0, 0, 0, 255}
materials["DBG_BLUE"]    = {0, 0, 100, 255}
materials["DBG_GREEN"]   = {0, 80, 0, 255}
materials["DBG_YELLOW"]   = {255, 194, 0, 255}
materials["DBG_RED"]     = {255, 0, 0, 255}
materials["DBG_WHITE"]   = {255, 255, 255, 255}
materials["DBG_CYAN"]    = {1, 244, 244, 255}
materials["BASE_GREEN"]  = {0,255,0, 255}
materials["TAN_COLOR"]	 = {242, 235, 179,255}
materials["DGREEN"]     = MakeMaterial(nil, materials["BASE_GREEN"])
materials["BGCOLOR"]    = MakeMaterial(nil,{242, 235, 179,255})


materials["MWHITE"]     = MakeMaterial(nil, materials["DBG_WHITE"])
materials["BBLACK"]     = MakeMaterial(nil, materials["DBG_BLACK"])
materials["TAN_BACKGROUND"]	 = MakeMaterial(nil,materials["TAN_COLOR"])

materials["DGREEN"]     = MakeMaterial(nil, materials["BASE_GREEN"])
materials["RWRGEEN"]     = MakeMaterial(nil, materials["BASE_GREEN"])
materials["RWRYELLOW"]     = MakeMaterial(nil, materials["DBG_YELLOW"])
materials["RWRRED"]     = MakeMaterial(nil, materials["DBG_RED"])
materials["RWRGREY"]     = MakeMaterial(nil, materials["DBG_GREY"])
-------FONTS-------
local IndicationTexturesPath = LockOn_Options.script_path.."Resources/fonts/"


BASE_COLOR  = {36,255,113,255}
WHITE 		= {255,255,255,255}
RED 		= {255,0,0,255}
BLACK 		= {0,0,0,255}
lcpGREEN	= {50,255,50,255}
ucpGREEN	= {50,255,50,255}
HORIZON_LINE_GREEN = {10,100,10,255}


--Brightness Control

JAS_Bright	=
{	--										   param number, value, R,   G,     B
	[1] = {"change_color_when_parameter_equal_to_number",  0, 1.00, 1.00, 1.00, 1.00},
	[2] = {"change_color_when_parameter_equal_to_number",  0, 0.95, 0.95, 0.95, 0.95},
	[3] = {"change_color_when_parameter_equal_to_number",  0, 0.90, 0.90, 0.90, 0.90},
	[4] = {"change_color_when_parameter_equal_to_number",  0, 0.85, 0.85, 0.85, 0.85},
	[5] = {"change_color_when_parameter_equal_to_number",  0, 0.80, 0.80, 0.80, 0.80},
	[6] = {"change_color_when_parameter_equal_to_number",  0, 0.75, 0.75, 0.75, 0.75},
	[7] = {"change_color_when_parameter_equal_to_number",  0, 0.70, 0.70, 0.70, 0.70},
	[8] = {"change_color_when_parameter_equal_to_number",  0, 0.65, 0.65, 0.65, 0.65},
	[9] = {"change_color_when_parameter_equal_to_number",  0, 0.60, 0.60, 0.60, 0.60},
	[10] = {"change_color_when_parameter_equal_to_number", 0, 0.55, 0.55, 0.55, 0.55},
	[11] = {"change_color_when_parameter_equal_to_number", 0, 0.50, 0.50, 0.50, 0.50},
	[12] = {"change_color_when_parameter_equal_to_number", 0, 0.45, 0.455, 0.455, 0.455},
	[13] = {"change_color_when_parameter_equal_to_number", 0, 0.40, 0.4075, 0.4075, 0.4075},
	[14] = {"change_color_when_parameter_equal_to_number", 0, 0.35, 0.357, 0.357, 0.357},
	[15] = {"change_color_when_parameter_equal_to_number", 0, 0.30, 0.3095, 0.3095, 0.3095},
	[16] = {"change_color_when_parameter_equal_to_number", 0, 0.25, 0.2595, 0.2595, 0.2595},	
	[17] = {"change_color_when_parameter_equal_to_number", 0, 0.20, 0.2075, 0.2075, 0.2075},	
	[18] = {"change_color_when_parameter_equal_to_number", 0, 0.15, 0.1575, 0.1575, 0.1575},	
	[19] = {"change_color_when_parameter_equal_to_number", 0, 0.10, 0.1075, 0.105, 0.1075},	
	[20] = {"change_color_when_parameter_equal_to_number", 0, 0.05, 0.05, 0.05, 0.05},		
}                                                          

Green_Bright	=
{	--										   param number, value, R,   G,     B
	[1] = {"change_color_when_parameter_equal_to_number",  0, 1.00, 0.1961, 0.3922, 0.1961},
	[2] = {"change_color_when_parameter_equal_to_number",  0, 0.95, 0.1863, 0.3726, 0.1863},
	[3] = {"change_color_when_parameter_equal_to_number",  0, 0.90, 0.1765, 0.3530, 0.1765},
	[4] = {"change_color_when_parameter_equal_to_number",  0, 0.85, 0.1667, 0.3334, 0.1667},
	[5] = {"change_color_when_parameter_equal_to_number",  0, 0.80, 0.1569, 0.3138, 0.1569},
	[6] = {"change_color_when_parameter_equal_to_number",  0, 0.75, 0.1471, 0.2942, 0.1471},
	[7] = {"change_color_when_parameter_equal_to_number",  0, 0.70, 0.1373, 0.2745, 0.1373},
	[8] = {"change_color_when_parameter_equal_to_number",  0, 0.65, 0.1275, 0.2549, 0.1275},
	[9] = {"change_color_when_parameter_equal_to_number",  0, 0.60, 0.1177, 0.2353, 0.1177},
	[10] = {"change_color_when_parameter_equal_to_number", 0, 0.55, 0.1079, 0.2157, 0.1079},
	[11] = {"change_color_when_parameter_equal_to_number", 0, 0.50, 0.0980, 0.1961, 0.0980},
	[12] = {"change_color_when_parameter_equal_to_number", 0, 0.45, 0.0882, 0.1765, 0.0882},
	[13] = {"change_color_when_parameter_equal_to_number", 0, 0.40, 0.0784, 0.1569, 0.0784},
	[14] = {"change_color_when_parameter_equal_to_number", 0, 0.35, 0.0686, 0.1373, 0.0686},
	[15] = {"change_color_when_parameter_equal_to_number", 0, 0.30, 0.0588, 0.1177, 0.0588},
	[16] = {"change_color_when_parameter_equal_to_number", 0, 0.25, 0.0490, 0.0981, 0.0490},	
	[17] = {"change_color_when_parameter_equal_to_number", 0, 0.20, 0.0392, 0.0785, 0.0392},	
	[18] = {"change_color_when_parameter_equal_to_number", 0, 0.15, 0.0294, 0.0588, 0.0294},	
	[19] = {"change_color_when_parameter_equal_to_number", 0, 0.10, 0.0196, 0.0392, 0.0196},	
	[20] = {"change_color_when_parameter_equal_to_number", 0, 0.05, 0.0098, 0.0196, 0.0098},	
} 

















fontdescription = {}

CMFD_X_PIXEL =  88
CMFD_Y_PIXEL =  144

local Gripen_Font = 
{
    texture = IndicationTexturesPath.."Gripen_Font_MFD",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {CMFD_X_PIXEL, CMFD_Y_PIXEL},
    chars       = {
        {32, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- space
        {48, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 0
        {49, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 1
        {50, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 2
        {51, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 3
        {52, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 4
        {53, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 5
        {54, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 6
        {55, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 7
        {56, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 8
        {57, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- 9

        {64, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Alpha -> @

        {65, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- A
        {66, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- B
        {67, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- C
        {68, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- D
        {69, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- E
        {70, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- F
        {71, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- G
        {72, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- H
        {73, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- I
        {74, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- J
        {75, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- K
        {76, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- L
        {77, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- M
        {78, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- N
        {79, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- O
        {80, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- P
        {81, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Q
        {82, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- R
        {83, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- S
        {84, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- T
        {85, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- U
        {86, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- V
        {87, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- W
        {88, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- X
        {89, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Y
        {90, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- Z
         
        {42, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- *
        {43, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- +
        {45, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- -
        {47, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- /
        {92, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- \
        {40, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- (
        {41, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- )
        {91, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- [
        {93, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ]
        {123, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- {
        {125, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- }
        {60, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- <
        {62, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- >
        {61, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- =
        {63, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ?
        {124, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- |
        {33, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- !
        {35, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- #
        {37, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- %
        {94, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ^
        {38, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- &
        {96, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, CMFD_X_PIXEL*0.5, CMFD_Y_PIXEL*0.6}, -- .
        {58, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- :
        {44, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- ,
        {126, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- cursor -> ~
        {95, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- _
        
        {39, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- '
        {34, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- "
		{127, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- delta
		
		{97, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- a
		{98, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- b
		{99, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- c
		{100, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- d
		{101, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- e
		{102, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- f
		{103, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- g
		{104, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- h
		{105, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- i
		{106, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- j
		{107, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- k
		{108, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- l
		{109, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- m
		{110, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- n
		{111, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- o
		{112, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- p
		{113, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- q
		{114, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- r
		{115, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- s
		{116, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- t
		{117, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- u
		{118, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- v
		{119, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- w
		{120, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- x
		{121, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- y
		{122, CMFD_X_PIXEL, CMFD_Y_PIXEL}, -- z, use last ascii code
       
    }
}


LCP_X_PIXEL =  144
LCP_Y_PIXEL =  144

local Gripen_LCP_FONT = 
{
    texture = IndicationTexturesPath.."Gripen_Font_LCP",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {LCP_X_PIXEL, LCP_Y_PIXEL},
    chars       = {
        {32, LCP_X_PIXEL, LCP_Y_PIXEL}, -- space
        {48, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 0
        {49, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 1
        {50, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 2
        {51, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 3
        {52, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 4
        {53, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 5
        {54, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 6
        {55, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 7
        {56, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 8
        {57, LCP_X_PIXEL, LCP_Y_PIXEL}, -- 9

        {64, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Alpha -> @

        {65, LCP_X_PIXEL, LCP_Y_PIXEL}, -- A
        {66, LCP_X_PIXEL, LCP_Y_PIXEL}, -- B
        {67, LCP_X_PIXEL, LCP_Y_PIXEL}, -- C
        {68, LCP_X_PIXEL, LCP_Y_PIXEL}, -- D
        {69, LCP_X_PIXEL, LCP_Y_PIXEL}, -- E
        {70, LCP_X_PIXEL, LCP_Y_PIXEL}, -- F
        {71, LCP_X_PIXEL, LCP_Y_PIXEL}, -- G
        {72, LCP_X_PIXEL, LCP_Y_PIXEL}, -- H
        {73, LCP_X_PIXEL, LCP_Y_PIXEL}, -- I
        {74, LCP_X_PIXEL, LCP_Y_PIXEL}, -- J
        {75, LCP_X_PIXEL, LCP_Y_PIXEL}, -- K
        {76, LCP_X_PIXEL, LCP_Y_PIXEL}, -- L
        {77, LCP_X_PIXEL, LCP_Y_PIXEL}, -- M
        {78, LCP_X_PIXEL, LCP_Y_PIXEL}, -- N
        {79, LCP_X_PIXEL, LCP_Y_PIXEL}, -- O
        {80, LCP_X_PIXEL, LCP_Y_PIXEL}, -- P
        {81, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Q
        {82, LCP_X_PIXEL, LCP_Y_PIXEL}, -- R
        {83, LCP_X_PIXEL, LCP_Y_PIXEL}, -- S
        {84, LCP_X_PIXEL, LCP_Y_PIXEL}, -- T
        {85, LCP_X_PIXEL, LCP_Y_PIXEL}, -- U
        {86, LCP_X_PIXEL, LCP_Y_PIXEL}, -- V
        {87, LCP_X_PIXEL, LCP_Y_PIXEL}, -- W
        {88, LCP_X_PIXEL, LCP_Y_PIXEL}, -- X
        {89, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Y
        {90, LCP_X_PIXEL, LCP_Y_PIXEL}, -- Z
         
        {42, LCP_X_PIXEL, LCP_Y_PIXEL}, -- *
        {43, LCP_X_PIXEL, LCP_Y_PIXEL}, -- +
        {45, LCP_X_PIXEL, LCP_Y_PIXEL}, -- -
        {61, LCP_X_PIXEL, LCP_Y_PIXEL}, -- =
        {47, LCP_X_PIXEL, LCP_Y_PIXEL}, -- /
        {92, LCP_X_PIXEL, LCP_Y_PIXEL}, -- \
        {40, LCP_X_PIXEL, LCP_Y_PIXEL}, -- (
        {41, LCP_X_PIXEL, LCP_Y_PIXEL}, -- )
        {91, LCP_X_PIXEL, LCP_Y_PIXEL}, -- [
        {93, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ]
        {123, LCP_X_PIXEL, LCP_Y_PIXEL}, -- {
        {125, LCP_X_PIXEL, LCP_Y_PIXEL}, -- }
        {60, LCP_X_PIXEL, LCP_Y_PIXEL}, -- <
        {62, LCP_X_PIXEL, LCP_Y_PIXEL}, -- >
        {63, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ?
        {124, LCP_X_PIXEL, LCP_Y_PIXEL}, -- |
        {33, LCP_X_PIXEL, LCP_Y_PIXEL}, -- !
        {35, LCP_X_PIXEL, LCP_Y_PIXEL}, -- #
        {37, LCP_X_PIXEL, LCP_Y_PIXEL}, -- %
        {94, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ^
        {38, LCP_X_PIXEL, LCP_Y_PIXEL}, -- &
        {96, LCP_X_PIXEL, LCP_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, LCP_X_PIXEL, LCP_Y_PIXEL}, -- .
        {58, LCP_X_PIXEL, LCP_Y_PIXEL}, -- :
        {44, LCP_X_PIXEL, LCP_Y_PIXEL}, -- ,
        {95, LCP_X_PIXEL, LCP_Y_PIXEL}, -- _
        
        {127, LCP_X_PIXEL, LCP_Y_PIXEL}, -- delta, use last ascii code
    }
}

UCP_X_PIXEL =  144
UCP_Y_PIXEL =  144

local Gripen_UCP_FONT = 
{
    texture = IndicationTexturesPath.."Gripen_Font_UCP",
    size        = {10, 10},
    resolution  = {1440, 1440},
    default     = {UCP_X_PIXEL, UCP_Y_PIXEL},
    chars       = {
        {32, UCP_X_PIXEL, UCP_Y_PIXEL}, -- space
        {48, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 0
        {49, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 1
        {50, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 2
        {51, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 3
        {52, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 4
        {53, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 5
        {54, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 6
        {55, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 7
        {56, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 8
        {57, UCP_X_PIXEL, UCP_Y_PIXEL}, -- 9

        {64, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Alpha -> @

        {65, UCP_X_PIXEL, UCP_Y_PIXEL}, -- A
        {66, UCP_X_PIXEL, UCP_Y_PIXEL}, -- B
        {67, UCP_X_PIXEL, UCP_Y_PIXEL}, -- C
        {68, UCP_X_PIXEL, UCP_Y_PIXEL}, -- D
        {69, UCP_X_PIXEL, UCP_Y_PIXEL}, -- E
        {70, UCP_X_PIXEL, UCP_Y_PIXEL}, -- F
        {71, UCP_X_PIXEL, UCP_Y_PIXEL}, -- G
        {72, UCP_X_PIXEL, UCP_Y_PIXEL}, -- H
        {73, UCP_X_PIXEL, UCP_Y_PIXEL}, -- I
        {74, UCP_X_PIXEL, UCP_Y_PIXEL}, -- J
        {75, UCP_X_PIXEL, UCP_Y_PIXEL}, -- K
        {76, UCP_X_PIXEL, UCP_Y_PIXEL}, -- L
        {77, UCP_X_PIXEL, UCP_Y_PIXEL}, -- M
        {78, UCP_X_PIXEL, UCP_Y_PIXEL}, -- N
        {79, UCP_X_PIXEL, UCP_Y_PIXEL}, -- O
        {80, UCP_X_PIXEL, UCP_Y_PIXEL}, -- P
        {81, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Q
        {82, UCP_X_PIXEL, UCP_Y_PIXEL}, -- R
        {83, UCP_X_PIXEL, UCP_Y_PIXEL}, -- S
        {84, UCP_X_PIXEL, UCP_Y_PIXEL}, -- T
        {85, UCP_X_PIXEL, UCP_Y_PIXEL}, -- U
        {86, UCP_X_PIXEL, UCP_Y_PIXEL}, -- V
        {87, UCP_X_PIXEL, UCP_Y_PIXEL}, -- W
        {88, UCP_X_PIXEL, UCP_Y_PIXEL}, -- X
        {89, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Y
        {90, UCP_X_PIXEL, UCP_Y_PIXEL}, -- Z
         
        {42, UCP_X_PIXEL, UCP_Y_PIXEL}, -- *
        {43, UCP_X_PIXEL, UCP_Y_PIXEL}, -- +
        {45, UCP_X_PIXEL, UCP_Y_PIXEL}, -- -
        {61, UCP_X_PIXEL, UCP_Y_PIXEL}, -- =
        {47, UCP_X_PIXEL, UCP_Y_PIXEL}, -- /
        {92, UCP_X_PIXEL, UCP_Y_PIXEL}, -- \
        {40, UCP_X_PIXEL, UCP_Y_PIXEL}, -- (
        {41, UCP_X_PIXEL, UCP_Y_PIXEL}, -- )
        {91, UCP_X_PIXEL, UCP_Y_PIXEL}, -- [
        {93, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ]
        {123, UCP_X_PIXEL, UCP_Y_PIXEL}, -- {
        {125, UCP_X_PIXEL, UCP_Y_PIXEL}, -- }
        {60, UCP_X_PIXEL, UCP_Y_PIXEL}, -- <
        {62, UCP_X_PIXEL, UCP_Y_PIXEL}, -- >
        {63, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ?
        {124, UCP_X_PIXEL, UCP_Y_PIXEL}, -- |
        {33, UCP_X_PIXEL, UCP_Y_PIXEL}, -- !
        {35, UCP_X_PIXEL, UCP_Y_PIXEL}, -- #
        {37, UCP_X_PIXEL, UCP_Y_PIXEL}, -- %
        {94, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ^
        {38, UCP_X_PIXEL, UCP_Y_PIXEL}, -- &
        {96, UCP_X_PIXEL, UCP_Y_PIXEL}, -- o -- degree, change its ascii code to 96 ', original 248 (out of index)
        {46, UCP_X_PIXEL, UCP_Y_PIXEL}, -- .
        {58, UCP_X_PIXEL, UCP_Y_PIXEL}, -- :
        {44, UCP_X_PIXEL, UCP_Y_PIXEL}, -- ,
        {95, UCP_X_PIXEL, UCP_Y_PIXEL}, -- _
        
        {127, UCP_X_PIXEL, UCP_Y_PIXEL}, -- delta, use last ascii code
    }
}








Gripen_Font_black  	= MakeFont(Gripen_Font, BLACK, "Gripen_Font_black")
Gripen_Font_white  	= MakeFont(Gripen_Font, WHITE, "Gripen_Font_white")
Gripen_Font_HL_Green  = MakeFont(Gripen_Font, HORIZON_LINE_GREEN, "Gripen_Font_Green_HL")
Gripen_fontLCP = MakeFont(Gripen_LCP_FONT, lcpGREEN , "Gripen_Font_LCP")
Gripen_fontUCP = MakeFont(Gripen_UCP_FONT, lcpGREEN , "Gripen_Font_UCP")
fonts = {}

fonts["FONT_WHITE"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"},materials["DBG_WHITE"],50,"test_font") --this is font object declaration. Mig-21 does not have fonts, therefore disabled.
fonts["FONT_BLUE"]   = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"},materials["DBG_BLUE"],50,"test_font") --this is font object declaration. Mig-21 does not have fonts, therefore disabled.
fonts["FONT_RED"]    = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"},materials["DBG_RED"],50,"test_font") --this is font object declaration. Mig-21 does not have fonts, therefore disabled.
fonts["FONT_GREEN"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"}, materials["DBG_GREEN"],50,"test_font") 
fonts["FONT_BLACK"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"}, materials["DBG_BLACK"],50,"test_font") 
fonts["FONT_WHITE"]  = MakeFont({used_DXUnicodeFontData = "FUI/Fonts/font_arial_17"}, materials["DBG_WHITE"],50,"test_font") 

fonts["FONT_gripen"]   = {fontdescription["font_39"], 10, materials["DBG_BLACK"]}
fonts["Gripen_Font_black"]  = Gripen_Font_black
fonts["Gripen_Font_WHITE"]  = Gripen_Font_white
fonts["Gripen_Font_HL_Green"]  = Gripen_Font_HL_Green
fonts["Gripen_Font_LCP"]  = Gripen_fontLCP
fonts["Gripen_Font_UCP"]  = Gripen_fontUCP
--all vertices in files who include this file will be scaled in millyradians
-- SetScale(MILLYRADIANS)
 
DEGREE_TO_MRAD = 17.4532925199433
DEGREE_TO_RAD  = 0.0174532925199433
RAD_TO_DEGREE  = 57.29577951308233
MRAD_TO_DEGREE = 0.05729577951308233
 
MFD_DEFAULT_LEVEL = 7                               
MFD_DEFAULT_NOCLIP_LEVEL  = MFD_DEFAULT_LEVEL - 1  
 
DEBUG_COLOR                 = {0,255,0,200}
MFD_DAY_COLOR               = {255,255,255,255}
MFD_DARK_COLOR               = {0,0,0,255}


MFD_ELEMENTS = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Left_MFD", MFD_DAY_COLOR)
MFD_ELEMENTS_D = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Left_MFD_D", MFD_DAY_COLOR)
MFD_ELEMENTS_DARK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Left_MFD_D", MFD_DARK_COLOR)
ADI_FRAME_B = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_frame", MFD_DAY_COLOR)
LD_LABLES = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_frame", MFD_DARK_COLOR)
ADI_FRAME_EMGY = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_EMGY_frame", MFD_DAY_COLOR)
ADI_BACKGROUND_B = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_Sphere_Normal", MFD_DAY_COLOR)
ADI_BACKGROUND_TEST = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADIBALL_background_WIDEtest", MFD_DAY_COLOR)

ADI_BACKGROUND_EMGY = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_Sphere_Emergency", MFD_DAY_COLOR)
ADI_BACKGROUND_MONITOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_Sphere_Monitor", MFD_DAY_COLOR)
MFD_ELEMENTS_PDD = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Gripen_PDD_Page", MFD_DARK_COLOR)
MFD_ELEMENTS_PDD_WHITE = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Gripen_PDD_Page_White", MFD_DAY_COLOR)
NAV_WHEEL_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Navigation_Wheel", MFD_DARK_COLOR)
NAV_WHEEL_WHITE = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Navigation_Wheel_White", MFD_DAY_COLOR)
AAR_LDP_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/AAR_LDP", MFD_DARK_COLOR)
AAR_LDP_WHITE_COLOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/AAR_LDP", MFD_DAY_COLOR)
STORES_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Loadout_Indicator", MFD_DARK_COLOR)
STORES_WHITE_COLOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/Loadout_Indicator", MFD_DAY_COLOR)
CENTER_DISPLAY_COLOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/LDP_MASK_BOOST_CD_MARKINGS", MFD_DAY_COLOR)
CENTER_DISPLAY_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/LDP_MASK_BOOST_CD_MARKINGS", MFD_DARK_COLOR)
LDP_BACKGROUND = MakeMaterial(MFD_IND_TEX_PATH.."MFD/LDP_MASK", MFD_DARK_COLOR)
ADI_MASK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_MASK", MFD_DARK_COLOR)
EMGY_HEADING_WHITE = MakeMaterial(MFD_IND_TEX_PATH.."MFD/EMGY_HEADING TAPE", MFD_DAY_COLOR)
EMGY_HEADING_BLACK = MakeMaterial(MFD_IND_TEX_PATH.."MFD/EMGY_HEADING TAPE", MFD_DARK_COLOR)
ADI_VEELOCITYVECTOR = MakeMaterial(MFD_IND_TEX_PATH.."MFD/ADI_VelocityVector", MFD_DARK_COLOR)
RMFD_BACKGRUND = MakeMaterial(MFD_IND_TEX_PATH.."MFD/RMFD", MFD_DARK_COLOR)

default_MFD_x = 512
default_MFD_y = 512

default_MFD_z_offset = 0.8
default_MFD_rot_offset = 30

local box_indices =
{
	0,1,2;0,2,3
}



function mfd_texture_box (UL_X,UL_Y,W,H, texture_size_x, texture_size_y)
local ux = UL_X / texture_size_x
local uy = UL_Y / texture_size_y
local w  = W / texture_size_x
local h  = H / texture_size_y
return {{ux	    ,uy},
		{ux + w ,uy},
		{ux + w ,uy + h},
		{ux	 	,uy + h}}
end
 
function create_mfd_tex(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.4
end

local mils_per_pixel =  sale/1024
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 2048, 2048)
	  object.indices	  = box_indices
	  return object
end

function create_mfd_VELVEC(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.4
end

local mils_per_pixel =  sale/2048
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 384, 256)
	  object.indices	  = box_indices
	  return object
end


function create_mfd_tex_3k(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.25
end

local mils_per_pixel =  sale/1500
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 3000, 3000)
	  object.indices	  = box_indices
	  return object
end

function create_mfd_tex_3300(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.25
end

local mils_per_pixel =  sale/1536
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.47 * W * mils_per_pixel
local half_y 		 = 0.49 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 3072, 1920)
	  object.indices	  = box_indices
	  return object
end

function create_hdg_textr_box(vth_hdg_material, UL_X,UL_Y,DR_X,DR_Y,scale, CENTER_X,CENTER_Y)

if scale == nil then
	scale = 1.4
end

local mils_per_pixel =  scale/4096

local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  vth_hdg_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 4096,64)
	  object.indices	  = box_indices
	  return object
end

function create_mfd_tex_sq(mfd_material, UL_X,UL_Y,DR_X,DR_Y, sale,CENTER_X,CENTER_Y)

if sale == nil then
	sale = 1.4
end

local mils_per_pixel =  sale/1024
local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel


local object = CreateElement "ceTexPoly"
	  object.material =  mfd_material
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H,2048,2048)
	  object.indices	  = box_indices
	  return object
end

function create_hdg_text_d(UL_X,UL_Y,DR_X,DR_Y, CENTER_X,CENTER_Y)
local mils_per_pixel =  2.2/1024

local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel
local object = CreateElement "ceTexPoly"
	  object.material =  MFD_RPM_DIGIT_D
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 31, 324)
	  object.indices	  = box_indices
	  return object
end


function create_hdg_text_dark(UL_X,UL_Y,DR_X,DR_Y, CENTER_X,CENTER_Y)
local mils_per_pixel =  2.2/1024

local W 	   		 = DR_X - UL_X
local H 	   		 = DR_Y - UL_Y
local cx		     = (UL_X + 0.5 * W)
local cy		     = (UL_Y + 0.5 * H)

local CENTER_X 		 = CENTER_X or cx
local CENTER_Y 		 = CENTER_Y or cy
local dcx 		 	 = mils_per_pixel * (CENTER_X - cx)
local dcy 		     = mils_per_pixel * (CENTER_Y - cy)

local half_x 		 = 0.5 * W * mils_per_pixel
local half_y 		 = 0.5 * H * mils_per_pixel
local object = CreateElement "ceTexPoly"
	  object.material =  MFD_RPM_DIGIT_DARK
 	  object.vertices =  {{-half_x - dcx, half_y + dcy},
						  { half_x - dcx, half_y + dcy},
						  { half_x - dcx,-half_y + dcy},
						  {-half_x - dcx,-half_y + dcy}}
	  object.tex_coords = mfd_texture_box(UL_X,UL_Y,W,H, 31, 324)
	  object.indices	  = box_indices
	  return object
end


function MFD_vert_gen(width, height)
    return {{(0 - width) / 2 / default_MFD_x , (0 + height) / 2 / default_MFD_y},
    {(0 + width) / 2 / default_MFD_x , (0 + height) / 2 / default_MFD_y},
    {(0 + width) / 2 / default_MFD_x , (0 - height) / 2 / default_MFD_y},
    {(0 - width) / 2 / default_MFD_x , (0 - height) / 2 / default_MFD_y},}
end

function MFD_duo_vert_gen(width, total_height, not_include_height)
    return {
        {(0 - width) / 2 / default_MFD_x , (0 + total_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 + total_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 + not_include_height) / 2 / default_MFD_y},
        {(0 - width) / 2 / default_MFD_x , (0 + not_include_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 - not_include_height) / 2 / default_MFD_y},
        {(0 - width) / 2 / default_MFD_x , (0 - not_include_height) / 2 / default_MFD_y},
        {(0 + width) / 2 / default_MFD_x , (0 - total_height) / 2 / default_MFD_y},
        {(0 - width) / 2 / default_MFD_x , (0 - total_height) / 2 / default_MFD_y},
    }
end

function tex_coord_gen(x_dis,y_dis,width,height,size_X,size_Y)
    return {{x_dis / size_X , y_dis / size_Y},
			{(x_dis + width) / size_X , y_dis / size_Y},
			{(x_dis + width) / size_X , (y_dis + height) / size_Y},
			{x_dis / size_X , (y_dis + height) / size_Y},}
end

function mirror_tex_coord_gen(x_dis,y_dis,width,height,size_X,size_Y)
    return {{(x_dis + width) / size_X , y_dis / size_Y},
			{x_dis / size_X , y_dis / size_Y},
			{x_dis / size_X , (y_dis + height) / size_Y},
			{(x_dis + width) / size_X , (y_dis + height) / size_Y},}
end

function AddElement(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false
	object.h_clip_relation  = h_clip_relations.compare
	object.level			= MFD_DEFAULT_LEVEL
    Add(object)
end

function AddElement2(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false
	-- object.h_clip_relation  = h_clip_relations.compare
	-- object.level			= MFD_DEFAULT_LEVEL
    Add(object)
end

function AddElement3(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false
	object.h_clip_relation  = h_clip_relations.NULL
	object.level			= MFD_DEFAULT_LEVEL
    Add(object)
end

function create_line(PosX, PosY, lLenght, lwidth, parent, material, vertices)
	vmaterial =  materials["MWHITE"]
	if material ~= nil then
		vmaterial =  materials[material]
	end
	vvertices = {{0, 0}, {lLenght,0}}
	if material ~= nil then
		vvertices = vertices
	end	
	line_object				 = CreateElement "ceSimpleLineObject"
	line_object.name		 = create_guid_string()
	line_object.material	 = vmaterial
	line_object.width		 = lwidth
	line_object.vertices	 =  vvertices
	line_object.init_pos     = {PosX, PosY}
	line_object.parent_element	= parent.name
	-- AddElement(line_object)
	return line_object
end

function create_rect(xpos, ypos, bw, bh, Border, parent, material)
	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {xpos, ypos}
	rec_parent.parent_element	= parent.name
	
	local  rect_top_line 		= create_line(0 ,0 , bw * 2, Border, rec_parent, material)
	rect_top_line.init_pos 		= {-bw,bh}
	AddElement(rect_top_line)

	local  rect_bottom_line = Copy(rect_top_line)
	rect_bottom_line.init_pos 	= {-bw, -bh}
	AddElement(rect_bottom_line)

	local  rect_left_line 		= create_line(Border ,0 , Border, bh , rec_parent, material)
	rect_left_line.init_pos 	= {-bw +(Border ) - 0.005, 0}
	AddElement(rect_left_line)

	local  rect_right_line = Copy(rect_left_line)
	rect_right_line.init_pos 	= { bw -(Border ) , 0}
	AddElement(rect_right_line)
	
	return rec_parent
end


function AddCircle(xpos, ypos, radius, border, fill, parent_element, color)
	if border <=0 then
		border = 1
	end
	if color == nil then
		color =  "DBG_GREEN"
	end
	for i=1, border do
		    RWR_circle_i 				= CreateElement "ceMeshPoly"
			RWR_circle_i.name 			= create_guid_string()
			RWR_circle_i.primitivetype 	= "triangles"
			RWR_circle_i.init_pos       = {xpos, ypos}
			if fill == true then
				set_circle	(RWR_circle_i, radius + 0.0020 )
			else
				set_circle	(RWR_circle_i, radius + 0.0020, radius - 0.0020, 360, 36)
			end
			RWR_circle_i.material 		= color
			RWR_circle_i.parent_element = parent_element
			-- AddElement(RWR_circle_i)
			radius = radius + 0.001
	end
	

	return RWR_circle_i
end

function AddCircle_b(xpos, ypos, radius, border, fill, parent_element, color)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {xpos, ypos}
	rec_parent.parent_element	= parent_element
	-- AddElement(rec_parent)
	
	if border <=0 then
		border = 1
	end
	if color == nil then
		color =  "DBG_GREEN"
	end
	for i=1, border do
		    RWR_circle_i 				= CreateElement "ceMeshPoly"
			RWR_circle_i.name 			= create_guid_string()
			RWR_circle_i.primitivetype 	= "triangles"
			RWR_circle_i.init_pos       = {0 , 0}
			if fill == true then
				set_circle	(RWR_circle_i, radius + 0.0020 )
			else
				set_circle	(RWR_circle_i, radius + 0.0020, radius - 0.0020, 360, 36)
			end
			RWR_circle_i.material 		= color
			RWR_circle_i.parent_element = rec_parent.name
			AddElement(RWR_circle_i)
			radius = radius + 0.001
	end
	

	return rec_parent
end

function add_text(text, posx, posy, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end

function add_text_with_brightness(text, posx, posy, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		parent.element_params  = {"LD_BRIGHTNESS"}
		parent.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end





function add_text_param(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {element_parm,"%s"}
	parent.controllers       = {{"text_using_parameter",0},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function green_text_param_with_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"LD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Green_Bright[1],Green_Bright[2],Green_Bright[3],Green_Bright[4],Green_Bright[5],Green_Bright[6],Green_Bright[7],Green_Bright[8],Green_Bright[9],Green_Bright[10],Green_Bright[11],Green_Bright[12],Green_Bright[13],Green_Bright[14],Green_Bright[15], Green_Bright[16],Green_Bright[17],Green_Bright[18],Green_Bright[19],Green_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function green_text_param_with_cd_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"CD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Green_Bright[1],Green_Bright[2],Green_Bright[3],Green_Bright[4],Green_Bright[5],Green_Bright[6],Green_Bright[7],Green_Bright[8],Green_Bright[9],Green_Bright[10],Green_Bright[11],Green_Bright[12],Green_Bright[13],Green_Bright[14],Green_Bright[15], Green_Bright[16],Green_Bright[17],Green_Bright[18],Green_Bright[19],Green_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function green_text_param_with_rd_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"RD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {Green_Bright[1],Green_Bright[2],Green_Bright[3],Green_Bright[4],Green_Bright[5],Green_Bright[6],Green_Bright[7],Green_Bright[8],Green_Bright[9],Green_Bright[10],Green_Bright[11],Green_Bright[12],Green_Bright[13],Green_Bright[14],Green_Bright[15], Green_Bright[16],Green_Bright[17],Green_Bright[18],Green_Bright[19],Green_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function white_text_param_with_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"LD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function white_text_param_with_CD_brightness(posx, posy, element_parm, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {"CD_BRIGHTNESS", element_parm,"%s"}
	parent.controllers       = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20] ,{"text_using_parameter",1},}
	AddElement(parent)
	parent.level          = MFD_DEFAULT_LEVEL  
	-------------------
	return parent
end

function add_text_with_CD_brightness(text, posx, posy, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		parent.element_params  = {"CD_BRIGHTNESS"}
		parent.controllers	 = {JAS_Bright[1],JAS_Bright[2],JAS_Bright[3],JAS_Bright[4],JAS_Bright[5],JAS_Bright[6],JAS_Bright[7],JAS_Bright[8],JAS_Bright[9],JAS_Bright[10],JAS_Bright[11],JAS_Bright[12],JAS_Bright[13],JAS_Bright[14],JAS_Bright[15], JAS_Bright[16],JAS_Bright[17],JAS_Bright[18],JAS_Bright[19],JAS_Bright[20]}
		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end


function AddRWRElement(object)
	object.use_mipfilter    = true
	object.additive_alpha   = false
	object.change_opacity	 = false

    if (object.h_clip_relation == nil) then
        object.h_clip_relation = h_clip_relations.COMPARE
    end 
    
    if (object.level == nil) or (object.level < MFD_DEFAULT_LEVEL) then
        object.level        = MFD_DEFAULT_LEVEL
    end
	
    Add(object)
end

function AddCompass(parent_element, element_params, scale, vypos)
	local lstringdefs = {0.006 ,0.002}
	local dstringdefs = {0.0042,0.0015}
	aspect = 0.9
	if vypos == nil then
		vypos =  0
	end
	mfd_tsd_compass_base 				= CreateElement "ceSimple"
	mfd_tsd_compass_base.init_pos		= {0,0}
	mfd_tsd_compass_base.name			= create_guid_string()
	mfd_tsd_compass_base.parent_element	= parent_element.name
	-- mfd_tsd_compass.element_params 	= {element_params}
	-- mfd_tsd_compass.controllers		= {{"rotate_using_parameter" ,0, math.rad(1)}, } 	
	AddElement(mfd_tsd_compass_base)	

	local xpos       = 0
	local ypos       = 0

	local TST  		 = MakeMaterial(nil,{0, 255, 0,255})
	local SHOW_MASKS = false		 
				 
	local aspect       = GetAspect()  -- GetHalfHeight()/GetHalfWidth()

	nav_total_field_of_view 				= CreateElement "ceMeshPoly"
	nav_total_field_of_view.name 			= create_guid_string()
	nav_total_field_of_view.primitivetype 	= "triangles"
	nav_total_field_of_view.vertices	    = { {-aspect , aspect }, { aspect,aspect}, { aspect,-aspect}, {-aspect,-aspect}, }
	nav_total_field_of_view.indices			= {0, 1, 2, 0, 2, 3}
	nav_total_field_of_view.init_pos		= {0, 0, 0}
	nav_total_field_of_view.material		= TST
	nav_total_field_of_view.h_clip_relation = h_clip_relations.REWRITE_LEVEL
	nav_total_field_of_view.level			= MFD_DEFAULT_LEVEL   + 1
	nav_total_field_of_view.change_opacity	= false
	nav_total_field_of_view.collimated 		= false
	nav_total_field_of_view.parent_element	= mfd_tsd_compass_base.name
	nav_total_field_of_view.isvisible		= SHOW_MASKS
	Add(nav_total_field_of_view)

	mfd_base_clip 					= CreateElement "ceMeshPoly"
	mfd_base_clip.name 				=  create_guid_string()
	mfd_base_clip.primitivetype 	= "triangles"
	mfd_base_clip.vertices	   	 	= { {-aspect , aspect }, { aspect,aspect}, { aspect ,-aspect}, {-aspect ,-aspect}, }
	mfd_base_clip.indices			= {0, 1, 2, 0, 2, 3}
	mfd_base_clip.init_pos			= {0, 0, 0}
	mfd_base_clip.material			= TST
	mfd_base_clip.h_clip_relation   = h_clip_relations.INCREASE_IF_LEVEL 
	mfd_base_clip.level  		 	= MFD_DEFAULT_LEVEL   + 1
	mfd_base_clip.change_opacity	= false
	mfd_base_clip.collimated 		= false
	mfd_base_clip.isvisible			= SHOW_MASKS
	mfd_base_clip.parent_element	= mfd_tsd_compass_base.name
	Add(mfd_base_clip)	

	mfd_tsd_compass 				= CreateElement "ceSimple"
	mfd_tsd_compass.init_pos		= {0, vypos}
	mfd_tsd_compass.name			= create_guid_string()
	mfd_tsd_compass.parent_element	= mfd_tsd_compass_base.name
	mfd_tsd_compass.element_params 	= {element_params}
	mfd_tsd_compass.h_clip_relation = h_clip_relations.INCREASE_IF_LEVEL 
	mfd_tsd_compass.level  		 	= MFD_DEFAULT_LEVEL   + 2
	mfd_tsd_compass.controllers		= {{"rotate_using_parameter" ,0, math.rad(1)}, } 	
	AddElement(mfd_tsd_compass)		
	
	AddCircleClip2(0, 0, scale/1.57, 9, mfd_tsd_compass.name, false , "DGREEN" )
	-- AddCircleClip(0, 0, scale/3.15, 9, mfd_tsd_compass.name, false, "DGREEN" )

	
	return mfd_tsd_compass
end

function AddCircleClip2(xpos, ypos, radius, border, parent_element, fill, color)
	vmaterial =  materials["MWHITE"]
	if border <=0 then
		border = 1
	end
	if color ~= nil then
		vmaterial =  materials[color]
	end
	for i=1, border do
		RWR_circle_i 				= CreateElement "ceMeshPoly"
		RWR_circle_i.name 			= create_guid_string()
		RWR_circle_i.primitivetype 	= "triangles"
		RWR_circle_i.init_pos       = {xpos, ypos}
		RWR_circle_i.element_params    = {"LD_BRIGHTNESS"}
		RWR_circle_i.controllers       = {{"opacity_using_parameter", 0}}	
		RWR_circle_i.h_clip_relation   = h_clip_relations.INCREASE_IF_LEVEL 
		RWR_circle_i.level  		 	  = MFD_DEFAULT_LEVEL  + 2
		if fill == true then
			set_circle	(RWR_circle_i, radius + 0.0020 )
		else
			set_circle	(RWR_circle_i, radius + 0.0020, radius - 0.0020, 360, 36)
		end
		RWR_circle_i.material 		= vmaterial
		if parent_element ~= nil then
			RWR_circle_i.parent_element = parent_element
		end
		AddElement(RWR_circle_i)
		radius = radius + 0.001
	end
	-- return RWR_circle_i
end



function text_param_with_opacity(posx, posy, brightnessparam, element_parm2, tformat, pparent, stringdefs, font_mat, talignment)
	if tformat == nil then
		tformat = "%.0f"
	end
	if talignment == nil then
		talignment = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end	
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end	
	
	local parent          = CreateElement "ceStringPoly"
	parent.name           = create_guid_string()
	parent.material       = vfont_mat
	parent.init_pos       = {posx, posy}
	parent.stringdefs     = stringdefs
	parent.alignment	  = talignment
	if pparent ~= nil then
		parent.parent_element = pparent.name
	end
	parent.formats           = {tformat} 
	parent.element_params    = {brightnessparam, element_parm2,"%s"}
	parent.controllers       = {{"opacity_using_parameter", 0} ,{"text_using_parameter",1},}
	parent.level          = MFD_DEFAULT_LEVEL  
	AddElement(parent)
	-------------------
	return parent
end

function add_text_with_opacity(text, posx, posy,brightnessparam, pparent, font_mat, stringdefs, valign)

	local rec_parent       		= CreateElement "ceSimple"
	rec_parent.name				= create_guid_string()
	rec_parent.init_pos       	= {posx, posy}
	if pparent ~= nil then
		rec_parent.parent_element	= pparent.name
	end
	AddElement(rec_parent)
	-------------------
	if valign == nil then
		valign = "CenterCenter"
	end
	vfont_mat = fonts["FONT_GREEN"]
	if font_mat ~= nil then
		vfont_mat = fonts[font_mat]
	end
	if stringdefs == nil then
		stringdefs = mfd_strdefs_text
	end		
	-------------------
	if text ~= nil then
		local parent          = CreateElement "ceStringPoly"
		parent.name           = create_guid_string()
		parent.material       = vfont_mat
		parent.init_pos       = {0, 0}
		parent.stringdefs     = stringdefs
		parent.alignment	  = valign
		parent.value  	      = text
		parent.parent_element = rec_parent.name
		parent.element_params    = {brightnessparam}
		parent.controllers       = {{"opacity_using_parameter", 0}}


		AddElement(parent)
		parent.level          = MFD_DEFAULT_LEVEL  
	end
	-------------------
	return rec_parent
end

