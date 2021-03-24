
local agm154c_name = 'AGM-154C'
local agm154c_mass = 485.0
local pylon_mass = 1.0

AGM154C_JSOW =
{
    category        = CAT_MISSILES,
    name            = agm154c_name,
    user_name       = _(agm154c_name),
    scheme          = "AGM-154C",
    class_name      = "wAmmunitionCruise",
    model           = "agm-154C",
    mass            = agm154c_mass,
    
    wsTypeOfWeapon  = {wsType_Weapon,wsType_Missile,wsType_AS_Missile,WSTYPE_PLACEHOLDER},

    Escort          = 0,
    Head_Type       = 5,
    sigma           = {10, 10, 10},
    M               = agm154c_mass,
    H_max           = 28000.0,
    H_min           = 100.0,
    Diam            = 330.0,
    Cx_pil          = 8,
    D_max           = 140000.0,
    D_min           = 10000.0,
    Head_Form       = 1,
    Life_Time       = 6400,
    Nr_max          = 10,
    v_min           = 10.0,
    v_mid           = 200.0,
    Mach_max        = 1.7,
    t_b             = 0.0,
    t_acc           = 0.0,
    t_marsh         = 600.0,
    Range_max       = 125000.0,
    H_min_t         = 0.0,
    Fi_start        = 3.14152,
    Fi_rak          = 3.14152,
    Fi_excort       = 3.14152,
    Fi_search       = 99.9,
    OmViz_max       = 99.9,
    X_back			= -2.552,
    Y_back			= -0.252,
    Z_back			= 0.0,
    Reflection		= 0.05,
    KillDistance	= 0.0,
    
    LaunchDistData =
	{
			19,		10,

					100,	150,	200,	250,	300,	350,	400,	450,	500,	550,		
			100,	0,		0,		0,		8875,	9950,	23350,	29225,	34375,	38225,	41150,	
			200,	0,		0,		7775,	15325,	20325,	29425,	35000,	38825,	42000,	44700,	
			400,	0,		0,		9150,	17125,	26625,	34575,	39800,	43375,	46325,	49100,	
			700,	0,		0,		10150,	18525,	29475,	36725,	42000,	45675,	48625,	51300,	
			1000,	0,		0,		12200,	20350,	31700,	38900,	44250,	47950,	50950,	53700,	
			2000,	0,		11700,	17000,	25550,	36100,	45750,	51250,	55200,	58450,	61500,	
			3000,	14400,	16400,	20400,	29100,	38400,	52500,	58300,	62400,	69900,	73700,	
			4000,	19900,	22500,	23400,	31000,	40200,	59100,	65000,	73300,	77700,	81800,	
			5000,	26000,	26200,	27300,	35100,	42200,	65600,	71500,	80700,	85400,	89800,	
			6000,	31300,	31600,	34100,	38300,	45800,	53000,	77500,	87500,	92200,	97000,	
			7000,	39000,	41750,	42250,	42250,	49500,	57000,	88250,	93750,	98750,	104000,	
			8000,	44750,	45000,	45500,	45500,	53250,	60750,	88750,	93500,	105000,	110500,	
			9000,	46000,	46250,	46750,	49500,	57000,	64750,	97500,	98250,	103500,	116500,	
			10000,	61000,	65750,	75500,	84500,	91250,	96250,	99000,	107500,	107500,	113250,	
			11000,	65500,	72500,	81000,	89000,	95500,	100000,	102500,	106000,	111000,	116500,	
			12000,	69500,	77500,	86000,	93500,	100000,	105000,	107000,	108500,	114000,	118500,	
			13000,	73500,	82000,	90000,	98000,	104500,	109000,	111000,	113500,	116500,	121500,	
			14000,	76500,	86500,	94000,	102000,	108500,	113000,	114500,	117000,	118500,	123000,	
			15000,	79000,	90000,	97000,	105500,	112000,	116500,	117500,	120000,	122500,	125000,	
		},

		MinLaunchDistData =
		{
			19,		10,

					100,	150,	200,	250,	300,	350,	400,	450,	500,	550,		
			100,	0,		0,		0,		5900,	4225,	3750,	4150,	15875,	19325,	22175,	
			200,	0,		0,		7725,	5700,	2800,	3950,	4000,	4175,	5275,	5975,	
			400,	0,		0,		8025,	7025,	5000,	4975,	5075,	5225,	5825,	7325,	
			700,	0,		0,		7675,	6275,	4475,	5475,	5600,	5775,	5950,	6250,	
			1000,	0,		0,		7650,	6600,	4800,	6000,	6100,	6300,	6500,	6650,	
			2000,	0,		7800,	6150,	6450,	5300,	5500,	5700,	5900,	6000,	6750,	
			3000,	8800,	5700,	7100,	7300,	7500,	6200,	6200,	6400,	38600,	42200,	
			4000,	4400,	5900,	6600,	6900,	7200,	6000,	6000,	39600,	43800,	47900,	
			5000,	4000,	5700,	5900,	6300,	6500,	5900,	6200,	44400,	48900,	53400,	
			6000,	2000,	4700,	5400,	5700,	5900,	6000,	5600,	49100,	53800,	58600,	
			7000,	250,	4500,	6000,	6250,	6750,	6750,	48000,	53500,	58500,	63500,	
			8000,	750,	2750,	6250,	7000,	7500,	7500,	7250,	7250,	63000,	68250,	
			9000,	750,	2750,	6500,	7750,	8000,	8500,	44250,	8000,	8250,	73000,	
			10000,	2750,	3500,	6500,	8500,	8750,	9000,	9750,	48000,	9000,	9250,	
			11000,	3000,	3000,	5500,	7500,	8500,	9000,	9500,	10000,	10000,	10000,	
			12000,	5500,	3000,	6500,	8000,	9000,	10000,	10500,	10500,	11000,	11000,	
			13000,	3500,	3000,	6500,	8000,	9500,	10500,	11500,	12000,	11500,	12000,	
			14000,	4000,	5000,	7000,	8500,	10000,	11000,	12000,	12500,	12500,	13500,	
			15000,	4000,	5500,	5500,	9000,	10500,	11500,	12500,	13500,	14500,	14000,	
		},
        
    shape_table_data =
    {
        {
            name     = agm154c_name,
            file     = "agm-154C",
            life     = 1,
            fire     = { 0, 1},
            username = agm154c_name,
            index    = WSTYPE_PLACEHOLDER,
        },
    },
    
    fm =	{
		mass				= 485,  
		caliber				= 0.33,  
		cx_coeff			= {1, 0.3, 0.65, 0.010, 1.6},
		L					= 4.06,
		I					= 1000,
		Ma					= 2,
		Mw					= 7,
		wind_sigma			= 0.0,
		wind_time			= 0.0,
		Sw					= 1.1,
		dCydA				= {0.07, 0.036},
		A					= 0.06,
		maxAoa				= 0.22,
		finsTau				= 1.2,
		Ma_x				= 2,
		Ma_z				= 2,
		Mw_x				= 1.4,
	
		addDeplSw			= 0.6,
		addDeplCx0			= 0.05,
		no_wings_A_mlt		= 7,
		wingsDeplProcTime	= 5,
		wingsDeplDelay		= 9999,		
	},
	
	simple_seeker =	{
		sensitivity = 0,
		delay		= 0.0,
		FOV			= 0.6,
		maxW		= 500,
		opTime		= 9999,
	},
	
	control_block =	{
		seeker_activation_dist		= 7000,
		default_cruise_height		= -1,
		obj_sensor					= 0,
		can_update_target_pos		= 0,
		turn_before_point_reach		= 1,
		turn_hor_N					= 2.2,
		turn_max_calc_angle_deg		= 90,
		turn_point_trigger_dist		= 100,
	},
	
	autopilot =	{
		delay						= 2,
		K							= 600,
		Ki							= 0.0,
		Kg							= 36,
		nw_K						= 180,
		nw_Ki						= 0.001,
		nw_Kg						= 52,
		finsLimit					= 0.8,
		useJumpByDefault			= 0,
		J_Power_K					= 7,
		J_Diff_K					= 1.2,
		J_Int_K						= 0.0,
		J_Angle_K					= 0.14,
		J_FinAngle_K				= 0.25,
		J_Angle_W					= 0.12,
		hKp_err						= 460,
		hKp_err_croll				= 0.012,
		hKd							= -0.008,
		max_roll					= 1.3,
		egm_Angle_K					= 0.18,
		egm_FinAngle_K				= 0.26,
		egm_add_power_K				= 0.2,
		wings_depl_fins_limit_K		= 0.28,
		err_new_wlos_k				= 0.84,
		err_aoaz_k					= 28,
		err_aoaz_sign_k				= 0.18,
	},
        
    warhead     = penetrating_warhead(180.0,330),
    warhead_air = penetrating_warhead(180.0,330),
}

declare_weapon(AGM154C_JSOW)

declare_loadout({
    category         = CAT_MISSILES,
    CLSID            = 'JAS_LS_6_500',
    attribute        = AGM154C_JSOW.wsTypeOfWeapon,
    Count            = 1,
    Cx_pil           = 0.000365,
    Picture          = "agm154.png",
    displayName      = _(agm154c_name),
    Weight           = AGM154C_JSOW.mass + pylon_mass,
    Elements         = {
        [1] = {
            ShapeName = "agm-154C",
            DrawArgs  = {
                [1] = {2, 1.0},
            }
        }
    },
    ejectImpulse     = 140,
})