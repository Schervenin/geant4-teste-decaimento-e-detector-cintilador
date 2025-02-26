cmake_minimum_required(VERSION 3.2 FATAL_ERROR)

project(Tutorial)

# Encontrar o Geant4
find_package(Geant4 REQUIRED ui_all vis_all)

# Incluir diretórios do Geant4
include_directories(${Geant4_INCLUDE_DIRS})
    
# Incluir diretórios do projeto
include_directories(${PROJECT_SOURCE_DIR}/include)

# Encontrar todos os arquivos fonte no diretório "src"
file(GLOB sources ${PROJECT_SOURCE_DIR}/src/*.cc)

file(GLOB MACRO_FILES "macros/*.mac")
file(COPY ${MACRO_FILES} DESTINATION ${CMAKE_BINARY_DIR}/)

# Criar o executável
add_executable(sim sim.cc ${sources})

# Linkar com as bibliotecas do Geant4
target_link_libraries(sim ${Geant4_LIBRARIES})

# Definir um alvo customizado para o projeto
add_custom_target(Tutorial DEPENDS sim)
