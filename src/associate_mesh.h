integer         , pointer :: nod2D
integer         , pointer :: elem2D
integer         , pointer :: edge2D
integer         , pointer :: edge2D_in
real(kind=WP)   , pointer :: ocean_area
integer         , pointer :: nl
real(kind=WP), dimension(:,:), pointer, contiguous :: coord_nod2D, geo_coord_nod2D
integer, dimension(:,:)      , pointer, contiguous :: elem2D_nodes
integer, dimension(:,:)      , pointer, contiguous :: edges
integer, dimension(:,:)      , pointer, contiguous :: edge_tri
integer, dimension(:,:)      , pointer, contiguous :: elem_edges
real(kind=WP), dimension(:)  , pointer, contiguous :: elem_area
real(kind=WP), dimension(:,:), pointer, contiguous :: edge_dxdy, edge_cross_dxdy
real(kind=WP), dimension(:)  , pointer, contiguous :: elem_cos, metric_factor
integer,       dimension(:,:), pointer, contiguous :: elem_neighbors
integer,       dimension(:,:), pointer, contiguous :: nod_in_elem2D
real(kind=WP), dimension(:,:), pointer, contiguous :: x_corners, y_corners
integer,       dimension(:)  , pointer, contiguous :: nod_in_elem2D_num
real(kind=WP), dimension(:)  , pointer, contiguous :: depth
real(kind=WP), dimension(:,:), pointer, contiguous :: gradient_vec
real(kind=WP), dimension(:,:), pointer, contiguous :: gradient_sca
integer,       dimension(:)  , pointer, contiguous :: bc_index_nod2D
real(kind=WP), dimension(:)  , pointer, contiguous :: zbar, Z, elem_depth
integer,       dimension(:)  , pointer, contiguous :: nlevels, nlevels_nod2D, nlevels_nod2D_min
real(kind=WP), dimension(:,:), pointer, contiguous :: area, area_inv
real(kind=WP), dimension(:)  , pointer, contiguous :: mesh_resolution
real(kind=WP), dimension(:)  , pointer, contiguous :: lump2d_north, lump2d_south
type(sparse_matrix)          , pointer,            :: ssh_stiff
!!$integer,       dimension(:)  , pointer :: cavity_lev_nod2D, cavity_lev_elem2D
integer,       dimension(:)  , pointer, contiguous :: cavity_flag_n, cavity_flag_e
real(kind=WP), dimension(:)  , pointer, contiguous :: cavity_depth
integer,       dimension(:)  , pointer, contiguous :: ulevels, ulevels_nod2D, ulevels_nod2D_max

nod2D              => mesh%nod2D
elem2D             => mesh%elem2D
edge2D             => mesh%edge2D
edge2D_in          => mesh%edge2D_in
ocean_area         => mesh%ocean_area
nl                 => mesh%nl

!!$coord_nod2D        => mesh%coord_nod2D
!!$geo_coord_nod2D    => mesh%geo_coord_nod2D
!!$elem2D_nodes       => mesh%elem2D_nodes
!!$edges              => mesh%edges
!!$edge_tri           => mesh%edge_tri
!!$elem_edges         => mesh%elem_edges
!!$elem_area          => mesh%elem_area
!!$edge_dxdy          => mesh%edge_dxdy
!!$edge_cross_dxdy    => mesh%edge_cross_dxdy
!!$elem_cos           => mesh%elem_cos
!!$metric_factor      => mesh%metric_factor
!!$elem_neighbors     => mesh%elem_neighbors
!!$nod_in_elem2D      => mesh%nod_in_elem2D
!!$x_corners          => mesh%x_corners
!!$y_corners          => mesh%y_corners
!!$nod_in_elem2D_num  => mesh%nod_in_elem2D_num
!!$depth              => mesh%depth
!!$gradient_vec       => mesh%gradient_vec
!!$gradient_sca       => mesh%gradient_sca
!!$bc_index_nod2D     => mesh%bc_index_nod2D
!!$zbar               => mesh%zbar
!!$Z                  => mesh%Z
!!$elem_depth         => mesh%elem_depth
!!$nlevels            => mesh%nlevels
!!$nlevels_nod2D      => mesh%nlevels_nod2D
!!$nlevels_nod2D_min  => mesh%nlevels_nod2D_min
!!$area               => mesh%area
!!$area_inv           => mesh%area_inv
!!$mesh_resolution    => mesh%mesh_resolution
!!$ssh_stiff          => mesh%ssh_stiff
!!$cavity_flag        => mesh%cavity_flag
!!$cavity_lev_nod2D   => mesh%cavity_lev_nod2D
!!$cavity_lev_elem2D  => mesh%cavity_lev_elem2D
!!$cavity_depth       => mesh%cavity_depth
!!$ulevels            => mesh%ulevels
!!$ulevels_nod2D      => mesh%ulevels_nod2D
!!$ulevels_nod2D_max  => mesh%ulevels_nod2D_max

#ifdef __PGI
coord_nod2D             => mesh%coord_nod2D(1:2,1:myDim_nod2D+eDim_nod2D)
geo_coord_nod2D         => mesh%geo_coord_nod2D(1:2,1:myDim_nod2D+eDim_nod2D)
elem2D_nodes            => mesh%elem2D_nodes(1:3,1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
edges                   => mesh%edges(1:2,1:myDim_edge2D+eDim_edge2D)
edge_tri                => mesh%edge_tri(1:2,1:myDim_edge2D+eDim_edge2D)
elem_edges              => mesh%elem_edges(1:3,1:myDim_elem2D)
elem_area	        => mesh%elem_area(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
edge_dxdy               => mesh%edge_dxdy(1:2,1:myDim_edge2D+eDim_edge2D)
edge_cross_dxdy         => mesh%edge_cross_dxdy(1:4,1:myDim_edge2D+eDim_edge2D)
elem_cos       	        => mesh%elem_cos(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
metric_factor  	        => mesh%metric_factor(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
elem_neighbors          => mesh%elem_neighbors(1:3,1:myDim_elem2D)
nod_in_elem2D           => mesh%nod_in_elem2D   ! (maxval(rmax),myDim_nod2D+eDim_nod2D)
x_corners               => mesh%x_corners       ! (myDim_nod2D, maxval(rmax))
y_corners               => mesh%y_corners       ! (myDim_nod2D, maxval(rmax))
nod_in_elem2D_num       => mesh%nod_in_elem2D_num(1:myDim_nod2D+eDim_nod2D)
depth                   => mesh%depth(1:myDim_nod2D+eDim_nod2D)
gradient_vec            => mesh%gradient_vec(1:6,1:myDim_elem2D)
gradient_sca            => mesh%gradient_sca(1:6,1:myDim_elem2D)
bc_index_nod2D          => mesh%bc_index_nod2D(1:myDim_nod2D+eDim_nod2D)
zbar                    => mesh%zbar(1:mesh%nl)
Z                       => mesh%Z(1:mesh%nl-1)
elem_depth              => mesh%elem_depth      ! never used, not even allocated
nlevels                 => mesh%nlevels(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
nlevels_nod2D           => mesh%nlevels_nod2D(1:myDim_nod2D+eDim_nod2D)
nlevels_nod2D_min       => mesh%nlevels_nod2D_min(1:myDim_nod2D+eDim_nod2D)
area 		        => mesh%area(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)
area_inv                => mesh%area_inv(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)
mesh_resolution         => mesh%mesh_resolution(1:myDim_nod2d+eDim_nod2D)
ssh_stiff               => mesh%ssh_stiff
lump2d_north            => mesh%lump2d_north(1:myDim_nod2d)
lump2d_south            => mesh%lump2d_south(1:myDim_nod2d)
cavity_flag_n           => mesh%cavity_flag_n(1:myDim_nod2D+eDim_nod2D)
cavity_flag_e           => mesh%cavity_flag_e(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
!!$cavity_lev_nod2D     => mesh%cavity_lev_nod2D(1:myDim_nod2D+eDim_nod2D)
!!$cavity_lev_elem2D    => mesh%cavity_lev_elem2D(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
cavity_depth            => mesh%cavity_depth(1:myDim_nod2D+eDim_nod2D)
ulevels                 => mesh%ulevels(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)
ulevels_nod2D           => mesh%ulevels_nod2D(1:myDim_nod2D+eDim_nod2D)
ulevels_nod2D_max       => mesh%ulevels_nod2D_max(1:myDim_nod2D+eDim_nod2D)
#else
coord_nod2D(1:2,1:myDim_nod2D+eDim_nod2D)                  => mesh%coord_nod2D
geo_coord_nod2D(1:2,1:myDim_nod2D+eDim_nod2D)              => mesh%geo_coord_nod2D
elem2D_nodes(1:3, 1:myDim_elem2D+eDim_elem2D+eXDim_elem2D) => mesh%elem2D_nodes
edges(1:2,1:myDim_edge2D+eDim_edge2D)                      => mesh%edges
edge_tri(1:2,1:myDim_edge2D+eDim_edge2D)                   => mesh%edge_tri
elem_edges(1:3,1:myDim_elem2D)                             => mesh%elem_edges
elem_area(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)         => mesh%elem_area
edge_dxdy(1:2,1:myDim_edge2D+eDim_edge2D)                  => mesh%edge_dxdy
edge_cross_dxdy(1:4,1:myDim_edge2D+eDim_edge2D)            => mesh%edge_cross_dxdy
elem_cos(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)          => mesh%elem_cos
metric_factor(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)     => mesh%metric_factor
elem_neighbors(1:3,1:myDim_elem2D)                         => mesh%elem_neighbors
nod_in_elem2D      => mesh%nod_in_elem2D   ! (maxval(rmax),myDim_nod2D+eDim_nod2D)
x_corners          => mesh%x_corners   ! (myDim_nod2D, maxval(rmax))
y_corners          => mesh%y_corners   ! (myDim_nod2D, maxval(rmax))
nod_in_elem2D_num(1:myDim_nod2D+eDim_nod2D)                => mesh%nod_in_elem2D_num
depth(1:myDim_nod2D+eDim_nod2D)                            => mesh%depth
gradient_vec(1:6,1:myDim_elem2D)                           => mesh%gradient_vec
gradient_sca(1:6,1:myDim_elem2D)                           => mesh%gradient_sca
bc_index_nod2D(1:myDim_nod2D+eDim_nod2D)                   => mesh%bc_index_nod2D
zbar(1:mesh%nl)                                            => mesh%zbar
Z(1:mesh%nl-1)                                             => mesh%Z
elem_depth         => mesh%elem_depth      ! never used, not even allocated
nlevels(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)           => mesh%nlevels
nlevels_nod2D(1:myDim_nod2D+eDim_nod2D)                    => mesh%nlevels_nod2D
nlevels_nod2D_min(1:myDim_nod2D+eDim_nod2D)                => mesh%nlevels_nod2D_min
area(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)                   => mesh%area
area_inv(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)               => mesh%area_inv
mesh_resolution(1:myDim_nod2d+eDim_nod2D)                  => mesh%mesh_resolution
ssh_stiff                                                  => mesh%ssh_stiff
lump2d_north(1:myDim_nod2d)                                => mesh%lump2d_north
lump2d_south(1:myDim_nod2d)                                => mesh%lump2d_south
cavity_flag_n(1:myDim_nod2D+eDim_nod2D)                    => mesh%cavity_flag_n
cavity_flag_e(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)     => mesh%cavity_flag_e
!!$cavity_lev_nod2D(1:myDim_nod2D+eDim_nod2D)                 => mesh%cavity_lev_nod2D
!!$cavity_lev_elem2D(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D) => mesh%cavity_lev_elem2D
cavity_depth(1:myDim_nod2D+eDim_nod2D)                     => mesh%cavity_depth
ulevels(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)           => mesh%ulevels
ulevels_nod2D(1:myDim_nod2D+eDim_nod2D)                    => mesh%ulevels_nod2D
ulevels_nod2D_max(1:myDim_nod2D+eDim_nod2D)                => mesh%ulevels_nod2D_max
#endif
