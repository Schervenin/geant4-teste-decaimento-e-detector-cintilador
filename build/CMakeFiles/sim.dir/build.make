# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/schervenin/geant4-teste-decaimento e detector cintilador"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/schervenin/geant4-teste-decaimento e detector cintilador/build"

# Include any dependencies generated for this target.
include CMakeFiles/sim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sim.dir/flags.make

CMakeFiles/sim.dir/sim.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/sim.cc.o: /home/schervenin/geant4-teste-decaimento\ e\ detector\ cintilador/sim.cc
CMakeFiles/sim.dir/sim.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sim.dir/sim.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/sim.cc.o -MF CMakeFiles/sim.dir/sim.cc.o.d -o CMakeFiles/sim.dir/sim.cc.o -c "/home/schervenin/geant4-teste-decaimento e detector cintilador/sim.cc"

CMakeFiles/sim.dir/sim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/schervenin/geant4-teste-decaimento e detector cintilador/sim.cc" > CMakeFiles/sim.dir/sim.cc.i

CMakeFiles/sim.dir/sim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/schervenin/geant4-teste-decaimento e detector cintilador/sim.cc" -o CMakeFiles/sim.dir/sim.cc.s

CMakeFiles/sim.dir/src/PMActionInitialization.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/PMActionInitialization.cc.o: /home/schervenin/geant4-teste-decaimento\ e\ detector\ cintilador/src/PMActionInitialization.cc
CMakeFiles/sim.dir/src/PMActionInitialization.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sim.dir/src/PMActionInitialization.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/PMActionInitialization.cc.o -MF CMakeFiles/sim.dir/src/PMActionInitialization.cc.o.d -o CMakeFiles/sim.dir/src/PMActionInitialization.cc.o -c "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMActionInitialization.cc"

CMakeFiles/sim.dir/src/PMActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/PMActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMActionInitialization.cc" > CMakeFiles/sim.dir/src/PMActionInitialization.cc.i

CMakeFiles/sim.dir/src/PMActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/PMActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMActionInitialization.cc" -o CMakeFiles/sim.dir/src/PMActionInitialization.cc.s

CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o: /home/schervenin/geant4-teste-decaimento\ e\ detector\ cintilador/src/PMDetectorConstruction.cc
CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o -MF CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o.d -o CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o -c "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMDetectorConstruction.cc"

CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMDetectorConstruction.cc" > CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.i

CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMDetectorConstruction.cc" -o CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.s

CMakeFiles/sim.dir/src/PMPhysicsList.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/PMPhysicsList.cc.o: /home/schervenin/geant4-teste-decaimento\ e\ detector\ cintilador/src/PMPhysicsList.cc
CMakeFiles/sim.dir/src/PMPhysicsList.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sim.dir/src/PMPhysicsList.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/PMPhysicsList.cc.o -MF CMakeFiles/sim.dir/src/PMPhysicsList.cc.o.d -o CMakeFiles/sim.dir/src/PMPhysicsList.cc.o -c "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMPhysicsList.cc"

CMakeFiles/sim.dir/src/PMPhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/PMPhysicsList.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMPhysicsList.cc" > CMakeFiles/sim.dir/src/PMPhysicsList.cc.i

CMakeFiles/sim.dir/src/PMPhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/PMPhysicsList.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMPhysicsList.cc" -o CMakeFiles/sim.dir/src/PMPhysicsList.cc.s

CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o: /home/schervenin/geant4-teste-decaimento\ e\ detector\ cintilador/src/PMPrimaryGenerator.cc
CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o -MF CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o.d -o CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o -c "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMPrimaryGenerator.cc"

CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMPrimaryGenerator.cc" > CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.i

CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMPrimaryGenerator.cc" -o CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.s

CMakeFiles/sim.dir/src/PMRunAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/PMRunAction.cc.o: /home/schervenin/geant4-teste-decaimento\ e\ detector\ cintilador/src/PMRunAction.cc
CMakeFiles/sim.dir/src/PMRunAction.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sim.dir/src/PMRunAction.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/PMRunAction.cc.o -MF CMakeFiles/sim.dir/src/PMRunAction.cc.o.d -o CMakeFiles/sim.dir/src/PMRunAction.cc.o -c "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMRunAction.cc"

CMakeFiles/sim.dir/src/PMRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/PMRunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMRunAction.cc" > CMakeFiles/sim.dir/src/PMRunAction.cc.i

CMakeFiles/sim.dir/src/PMRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/PMRunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMRunAction.cc" -o CMakeFiles/sim.dir/src/PMRunAction.cc.s

CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o: /home/schervenin/geant4-teste-decaimento\ e\ detector\ cintilador/src/PMSensitiveDetector.cc
CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o -MF CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o.d -o CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o -c "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMSensitiveDetector.cc"

CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMSensitiveDetector.cc" > CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.i

CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/schervenin/geant4-teste-decaimento e detector cintilador/src/PMSensitiveDetector.cc" -o CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.s

# Object files for target sim
sim_OBJECTS = \
"CMakeFiles/sim.dir/sim.cc.o" \
"CMakeFiles/sim.dir/src/PMActionInitialization.cc.o" \
"CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o" \
"CMakeFiles/sim.dir/src/PMPhysicsList.cc.o" \
"CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o" \
"CMakeFiles/sim.dir/src/PMRunAction.cc.o" \
"CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o"

# External object files for target sim
sim_EXTERNAL_OBJECTS =

sim: CMakeFiles/sim.dir/sim.cc.o
sim: CMakeFiles/sim.dir/src/PMActionInitialization.cc.o
sim: CMakeFiles/sim.dir/src/PMDetectorConstruction.cc.o
sim: CMakeFiles/sim.dir/src/PMPhysicsList.cc.o
sim: CMakeFiles/sim.dir/src/PMPrimaryGenerator.cc.o
sim: CMakeFiles/sim.dir/src/PMRunAction.cc.o
sim: CMakeFiles/sim.dir/src/PMSensitiveDetector.cc.o
sim: CMakeFiles/sim.dir/build.make
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4Tree.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4FR.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4GMocren.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4visHepRep.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4RayTracer.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4VRML.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4ToolsSG.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4OpenGL.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4vis_management.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4modeling.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4interfaces.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4mctruth.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4geomtext.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4error_propagation.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4readout.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4physicslists.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4run.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4event.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4tracking.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4parmodels.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4processes.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4digits_hits.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4track.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4particles.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4geometry.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4materials.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4graphics_reps.so
sim: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.13
sim: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.13
sim: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.13
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4analysis.so
sim: /usr/lib/x86_64-linux-gnu/libexpat.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4zlib.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4intercoms.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4global.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4clhep.so
sim: /home/schervenin/Software/Geant4/geant4-v11.3.0-install/lib/libG4ptl.so.3.0.0
sim: CMakeFiles/sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable sim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sim.dir/build: sim
.PHONY : CMakeFiles/sim.dir/build

CMakeFiles/sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sim.dir/clean

CMakeFiles/sim.dir/depend:
	cd "/home/schervenin/geant4-teste-decaimento e detector cintilador/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/schervenin/geant4-teste-decaimento e detector cintilador" "/home/schervenin/geant4-teste-decaimento e detector cintilador" "/home/schervenin/geant4-teste-decaimento e detector cintilador/build" "/home/schervenin/geant4-teste-decaimento e detector cintilador/build" "/home/schervenin/geant4-teste-decaimento e detector cintilador/build/CMakeFiles/sim.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/sim.dir/depend

