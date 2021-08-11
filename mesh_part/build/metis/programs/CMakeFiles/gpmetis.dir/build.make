# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /sw/spack-rhel6/cmake-3.17.1-kmy77w/bin/cmake

# The command to remove a file.
RM = /sw/spack-rhel6/cmake-3.17.1-kmy77w/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build

# Include any dependencies generated for this target.
include metis/programs/CMakeFiles/gpmetis.dir/depend.make

# Include the progress variables for this target.
include metis/programs/CMakeFiles/gpmetis.dir/progress.make

# Include the compile flags for this target's objects.
include metis/programs/CMakeFiles/gpmetis.dir/flags.make

metis/programs/CMakeFiles/gpmetis.dir/gpmetis.c.o: metis/programs/CMakeFiles/gpmetis.dir/flags.make
metis/programs/CMakeFiles/gpmetis.dir/gpmetis.c.o: /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/gpmetis.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object metis/programs/CMakeFiles/gpmetis.dir/gpmetis.c.o"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gpmetis.dir/gpmetis.c.o   -c /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/gpmetis.c

metis/programs/CMakeFiles/gpmetis.dir/gpmetis.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpmetis.dir/gpmetis.c.i"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/gpmetis.c > CMakeFiles/gpmetis.dir/gpmetis.c.i

metis/programs/CMakeFiles/gpmetis.dir/gpmetis.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpmetis.dir/gpmetis.c.s"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/gpmetis.c -o CMakeFiles/gpmetis.dir/gpmetis.c.s

metis/programs/CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.o: metis/programs/CMakeFiles/gpmetis.dir/flags.make
metis/programs/CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.o: /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/cmdline_gpmetis.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object metis/programs/CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.o"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.o   -c /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/cmdline_gpmetis.c

metis/programs/CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.i"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/cmdline_gpmetis.c > CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.i

metis/programs/CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.s"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/cmdline_gpmetis.c -o CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.s

metis/programs/CMakeFiles/gpmetis.dir/io.c.o: metis/programs/CMakeFiles/gpmetis.dir/flags.make
metis/programs/CMakeFiles/gpmetis.dir/io.c.o: /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object metis/programs/CMakeFiles/gpmetis.dir/io.c.o"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gpmetis.dir/io.c.o   -c /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/io.c

metis/programs/CMakeFiles/gpmetis.dir/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpmetis.dir/io.c.i"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/io.c > CMakeFiles/gpmetis.dir/io.c.i

metis/programs/CMakeFiles/gpmetis.dir/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpmetis.dir/io.c.s"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/io.c -o CMakeFiles/gpmetis.dir/io.c.s

metis/programs/CMakeFiles/gpmetis.dir/stat.c.o: metis/programs/CMakeFiles/gpmetis.dir/flags.make
metis/programs/CMakeFiles/gpmetis.dir/stat.c.o: /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/stat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object metis/programs/CMakeFiles/gpmetis.dir/stat.c.o"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/gpmetis.dir/stat.c.o   -c /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/stat.c

metis/programs/CMakeFiles/gpmetis.dir/stat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/gpmetis.dir/stat.c.i"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/stat.c > CMakeFiles/gpmetis.dir/stat.c.i

metis/programs/CMakeFiles/gpmetis.dir/stat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/gpmetis.dir/stat.c.s"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && /sw/rhel6-x64/intel/impi/2017.0.098/compilers_and_libraries/linux/mpi/bin64/mpiicc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs/stat.c -o CMakeFiles/gpmetis.dir/stat.c.s

# Object files for target gpmetis
gpmetis_OBJECTS = \
"CMakeFiles/gpmetis.dir/gpmetis.c.o" \
"CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.o" \
"CMakeFiles/gpmetis.dir/io.c.o" \
"CMakeFiles/gpmetis.dir/stat.c.o"

# External object files for target gpmetis
gpmetis_EXTERNAL_OBJECTS =

metis/programs/gpmetis: metis/programs/CMakeFiles/gpmetis.dir/gpmetis.c.o
metis/programs/gpmetis: metis/programs/CMakeFiles/gpmetis.dir/cmdline_gpmetis.c.o
metis/programs/gpmetis: metis/programs/CMakeFiles/gpmetis.dir/io.c.o
metis/programs/gpmetis: metis/programs/CMakeFiles/gpmetis.dir/stat.c.o
metis/programs/gpmetis: metis/programs/CMakeFiles/gpmetis.dir/build.make
metis/programs/gpmetis: metis/libmetis/libmetis.a
metis/programs/gpmetis: metis/programs/CMakeFiles/gpmetis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable gpmetis"
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gpmetis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
metis/programs/CMakeFiles/gpmetis.dir/build: metis/programs/gpmetis

.PHONY : metis/programs/CMakeFiles/gpmetis.dir/build

metis/programs/CMakeFiles/gpmetis.dir/clean:
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs && $(CMAKE_COMMAND) -P CMakeFiles/gpmetis.dir/cmake_clean.cmake
.PHONY : metis/programs/CMakeFiles/gpmetis.dir/clean

metis/programs/CMakeFiles/gpmetis.dir/depend:
	cd /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part /pf/a/a270124/awicm-2.0/fesom-2.0/lib/metis-5.1.0/programs /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs /pf/a/a270124/awicm-2.0/fesom-2.0/mesh_part/build/metis/programs/CMakeFiles/gpmetis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : metis/programs/CMakeFiles/gpmetis.dir/depend
