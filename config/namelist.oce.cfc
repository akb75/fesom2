! The namelist file for the finite-volume ocean model

&oce_dyn
C_d=0.0025             ! Bottom drag, nondimensional
gamma0=0.003            ! [m/s],   backgroung viscosity= gamma0*len, it should be as small as possible (keep it < 0.01 m/s).
gamma1=0.1          ! [nodim], for computation of the flow aware viscosity
gamma2=0.285            ! [s/m],   is only used in easy backscatter option
Div_c=.5  	       ! the strength of the modified Leith viscosity, nondimensional, 0.3 -- 1.0
Leith_c=.05	       ! the strength of the Leith viscosity
visc_option=5          ! 1=Harmonic Leith parameterization;
                       ! 2=Laplacian+Leith+biharmonic background
                       ! 3=Biharmonic Leith parameterization
                       ! 4=Biharmonic flow aware
                       ! 5=Kinematic (easy) Backscatter
                       ! 6=Biharmonic flow aware (viscosity depends on velocity Laplacian)
                       ! 7=Biharmonic flow aware (viscosity depends on velocity differences)
                       ! 8=Dynamic Backscatter
easy_bs_return= 1.5     ! coefficient for returned sub-gridscale energy, to be used with visc_option=5 (easy backscatter)
A_ver= 1.e-4	       ! Vertical viscosity, m^2/s
scale_area=5.8e9       ! Visc. and diffus. are for an element with scale_area
mom_adv=2              ! 1=vector CV, p1 vel, 2=sca. CV, 3=vector inv.
free_slip=.false.      ! Switch on free slip
i_vert_visc=.true.    
w_split=.false.
w_max_cfl=1.0          ! maximum allowed CFL criteria in vertical (0.5 < w_max_cfl < 1.) ! in older FESOM it used to be w_exp_max=1.e-3
SPP=.false.                 ! Salt Plume Parameterization
Fer_GM=.true.               ! to swith on/off GM after Ferrari et al. 2010
K_GM_max     = 1000 !! 2000.0       ! max. GM thickness diffusivity (m2/s)
K_GM_min     = 2.0          ! max. GM thickness diffusivity (m2/s)
K_GM_bvref   = 2            ! def of bvref in ferreira scaling 0=srf,1=bot mld,2=mean over mld,3=weighted mean over mld
K_GM_rampmax = -1         ! Resol >K_GM_rampmax[km] GM on
K_GM_rampmin = -1         ! Resol <K_GM_rampmin[km] GM off, in between linear scaled down
K_GM_resscalorder = 1

scaling_Ferreira   =.false.  ! GM vertical scaling after Ferreira et al.(2005) (as also implemented by Qiang in FESOM 1.4)
scaling_Rossby     =.false. ! GM is smoothly switched off according to Rossby radius (from 1. in coarse areas to 0. where resolution reaches 2 points/Rossby radius)
scaling_resolution =.true.  ! GM is spatially scaled with resolution; A value of K_GM corresponds then to a resolution of 100km
scaling_FESOM14    =.false.  ! special treatment of GM in the NH (as also implemented by Qiang in FESOM 1.4; it is zero within the boundary layer)

Redi  =.true.
visc_sh_limit=5.0e-3       ! for KPP, max visc due to shear instability
mix_scheme='KPP'           ! vertical mixing scheme: KPP, PP 
Ricr   = 0.3               ! critical bulk Richardson Number
concv  = 1.6               ! constant for pure convection (eqn. 23) (Large 1.5-1.6; MOM default 1.8)
/

&oce_tra 
use_momix     = .true.     ! switch on/off  !Monin-Obukhov -> TB04 mixing
momix_lat     = -50.0      ! latitidinal treshhold for TB04, =90 --> global
momix_kv      = 0.01       ! PP/KPP, mixing coefficient within MO length
use_instabmix = .true.     ! enhance convection in case of instable stratification
instabmix_kv  = 0.1
use_windmix   = .false.     ! enhance mixing trough wind only for PP mixing (for stability)
windmix_kv    = 1.e-3
windmix_nl    = 2

smooth_bh_tra =.false.     ! use biharmonic diffusion (filter implementation) for tracers
gamma0_tra    = 0.0005     ! gammaX_tra are analogous to those in the dynamical part
gamma1_tra    = 0.0125
gamma2_tra    = 0.

diff_sh_limit=5.0e-3            ! for KPP, max diff due to shear instability
Kv0_const=.true.
double_diffusion=.false.               ! for KPP,dd switch
K_ver=1.0e-5
K_hor=3000.
surf_relax_T=0.0
surf_relax_S=1.929e-06       ! 50m/300days 6.43e-07! m/s 10./(180.*86400.)
balance_salt_water =.true.   ! balance virtual-salt or freshwater flux or not
clim_relax=0.0	                    ! 1/s, geometrical information has to be supplied
ref_sss_local=.true.
ref_sss=34.
i_vert_diff =.true.  ! true
tra_adv_hor ='MFCT'  !'MUSCL', 'UPW1'
tra_adv_ver ='QR4C'  !'QR4C', 'CDIFF', 'UPW1'
tra_adv_lim ='FCT'   !'FCT', 'NONE' (default)
tra_adv_ph  = 1. ! a parameter to be used in horizontal advection (for MUSCL it is the fraction of fourth-order contribution in the solution)
tra_adv_pv  = 1. ! a parameter to be used in horizontal advection (for QR4C  it is the fraction of fourth-order contribution in the solution)
! Implemented trassers (3d restoring):
! 301 - Fram strait.
! 302 - Bering Strait
! 303 - BSO 

num_tracers=4 !!6          !number of all tracers
tracer_ID  =0,1,6,12       !14,39  !their IDs (0 and 1 are reserved for temperature and salinity)
/

&oce_init3d                               ! initial conditions for tracers
n_ic3d   = 2                              ! number of tracers to initialize
idlist   = 1, 0                      ! their IDs (0 is temperature, 1 is salinity, etc.). The reading order is defined here!
filelist = 'phc3.0_winter.nc', 'phc3.0_winter.nc' ! list of files in ClimateDataPath to read (one file per tracer), same order as idlist
varlist  = 'salt', 'temp'          ! variables to read from specified files
t_insitu = .true.
/

&transit_param
r14c_a  = 1.0000   	! atm. 14CO2/12CO2 ratio
r39ar_a = 1.0000	! atm. 39Ar/Ar ratio, global mean
xarg_a  = 9.34e-3	! atm. Argon concn. (mole fraction), global mean
xco2_a  = 284.32e-6	! atm. CO2 concn. (mole fraction), global mean
dic_0   = 2.00          ! mixed layer DIC concn. (mol / m**3), global mean
arg_0   = 0.01          ! mixed layer Argon concn. (mol / m**3), global mean
decay14 = 3.8561e-12    ! decay constant of 14C (1 / s), 1 a = 365.0 d
decay39 = 8.1708e-11    ! decay constant of 39Ar (1 / s), 1 a = 365.0 d
/
