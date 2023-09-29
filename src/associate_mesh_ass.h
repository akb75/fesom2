nod2D              => mesh%nod2D
elem2D             => mesh%elem2D
edge2D             => mesh%edge2D
edge2D_in          => mesh%edge2D_in
ocean_area         => mesh%ocean_area
nl                 => mesh%nl
nn_size            => mesh%nn_size
ocean_areawithcav  => mesh%ocean_areawithcav
coord_nod2D(1:2,1:myDim_nod2D+eDim_nod2D)                  => mesh%coord_nod2D(:,:)
geo_coord_nod2D(1:2,1:myDim_nod2D+eDim_nod2D)              => mesh%geo_coord_nod2D(:,:)
elem2D_nodes(1:3, 1:myDim_elem2D+eDim_elem2D+eXDim_elem2D) => mesh%elem2D_nodes(:,:)
edges(1:2,1:myDim_edge2D+eDim_edge2D)                      => mesh%edges(:,:)
edge_tri(1:2,1:myDim_edge2D+eDim_edge2D)                   => mesh%edge_tri(:,:)
elem_edges(1:3,1:myDim_elem2D)                             => mesh%elem_edges(:,:)
elem_area(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)         => mesh%elem_area(:)
edge_dxdy(1:2,1:myDim_edge2D+eDim_edge2D)                  => mesh%edge_dxdy(:,:)
edge_cross_dxdy(1:4,1:myDim_edge2D+eDim_edge2D)            => mesh%edge_cross_dxdy(:,:)
elem_cos(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)          => mesh%elem_cos(:)
metric_factor(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)     => mesh%metric_factor(:)
elem_neighbors(1:3,1:myDim_elem2D)                         => mesh%elem_neighbors(:,:)
nod_in_elem2D      => mesh%nod_in_elem2D   ! (maxval(rmax),myDim_nod2D+eDim_nod2D)
x_corners          => mesh%x_corners   ! (myDim_nod2D, maxval(rmax))
y_corners          => mesh%y_corners   ! (myDim_nod2D, maxval(rmax))
nod_in_elem2D_num(1:myDim_nod2D+eDim_nod2D)                => mesh%nod_in_elem2D_num(:)
depth(1:myDim_nod2D+eDim_nod2D)                            => mesh%depth(:)
gradient_vec(1:6,1:myDim_elem2D)                           => mesh%gradient_vec(:,:)
gradient_sca(1:6,1:myDim_elem2D)                           => mesh%gradient_sca(:,:)
bc_index_nod2D(1:myDim_nod2D+eDim_nod2D)                   => mesh%bc_index_nod2D(:)
zbar(1:mesh%nl)                                            => mesh%zbar(:)
Z(1:mesh%nl-1)                                             => mesh%Z(:)
elem_depth         => mesh%elem_depth      ! never used, not even allocated
nlevels(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)           => mesh%nlevels(:)
nlevels_nod2D(1:myDim_nod2D+eDim_nod2D)                    => mesh%nlevels_nod2D(:)
nlevels_nod2D_min(1:myDim_nod2D+eDim_nod2D)                => mesh%nlevels_nod2D_min(:)
area(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)                   => mesh%area(:,:)
areasvol(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)               => mesh%areasvol(:,:)
area_inv(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)               => mesh%area_inv(:,:)
areasvol_inv(1:mesh%nl,1:myDim_nod2d+eDim_nod2D)           => mesh%areasvol_inv(:,:)
mesh_resolution(1:myDim_nod2d+eDim_nod2D)                  => mesh%mesh_resolution(:)
ssh_stiff                                                  => mesh%ssh_stiff
lump2d_north(1:myDim_nod2d)                                => mesh%lump2d_north(:)
lump2d_south(1:myDim_nod2d)                                => mesh%lump2d_south(:)
cavity_flag_n(1:myDim_nod2D+eDim_nod2D)                    => mesh%cavity_flag_n(:)
cavity_flag_e(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)     => mesh%cavity_flag_e(:)
!!$cavity_lev_nod2D(1:myDim_nod2D+eDim_nod2D)                 => mesh%cavity_lev_nod2D
!!$cavity_lev_elem2D(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D) => mesh%cavity_lev_elem2D
cavity_depth(1:myDim_nod2D+eDim_nod2D)                     => mesh%cavity_depth(:)
ulevels(1:myDim_elem2D+eDim_elem2D+eXDim_elem2D)           => mesh%ulevels(:)
ulevels_nod2D(1:myDim_nod2D+eDim_nod2D)                    => mesh%ulevels_nod2D(:)
ulevels_nod2D_max(1:myDim_nod2D+eDim_nod2D)                => mesh%ulevels_nod2D_max(:)
nn_num(1:myDim_nod2D)                                      => mesh%nn_num(:)
nn_pos(1:mesh%nn_size, 1:myDim_nod2D)                      => mesh%nn_pos(:,:)
hnode(1:mesh%nl-1, 1:myDim_nod2D+eDim_nod2D)               => mesh%hnode(:,:)
hnode_new(1:mesh%nl-1, 1:myDim_nod2D+eDim_nod2D)           => mesh%hnode_new(:,:)
zbar_3d_n(1:mesh%nl, 1:myDim_nod2D+eDim_nod2D)             => mesh%zbar_3d_n(:,:)
Z_3d_n(1:mesh%nl-1, 1:myDim_nod2D+eDim_nod2D)              => mesh%Z_3d_n(:,:)
helem(1:mesh%nl-1, 1:myDim_elem2D+eDim_elem2D)             => mesh%helem(:,:)
bottom_elem_thickness(1:myDim_elem2D+eDim_elem2D)          => mesh%bottom_elem_thickness(:)
bottom_node_thickness(1:myDim_nod2D+eDim_nod2D)            => mesh%bottom_node_thickness(:)
dhe(1:myDim_elem2D)                                        => mesh%dhe(:)
hbar(1:myDim_nod2D+eDim_nod2D)                             => mesh%hbar(:)
hbar_old(1:myDim_nod2D+eDim_nod2D)                         => mesh%hbar_old(:)
!zbar_n(1:mesh%nl)                                         => mesh%zbar_n
!Z_n(1:mesh%nl-1)                                          => mesh%Z_n
zbar_n_bot(1:myDim_nod2D+eDim_nod2D)                       => mesh%zbar_n_bot(:)
zbar_e_bot(1:myDim_elem2D+eDim_elem2D)                     => mesh%zbar_e_bot(:)
zbar_n_srf(1:myDim_nod2D+eDim_nod2D)                       => mesh%zbar_n_srf(:)
zbar_e_srf(1:myDim_elem2D+eDim_elem2D)                     => mesh%zbar_e_srf(:)
