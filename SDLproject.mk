##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=SDLproject
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/Olof/Documents/C_rymdskepp
ProjectPath            :=C:/Users/Olof/Documents/C_rymdskepp/SDLproject
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Olof
Date                   :=25/07/2017
CodeLitePath           :=D:/Program/CodeLite
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="SDLproject.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)SDL2\include\SDL2 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)mingw32 $(LibrarySwitch)SDL2main $(LibrarySwitch)SDL2 $(LibrarySwitch)SDL2_image $(LibrarySwitch)SDL2_ttf 
ArLibs                 :=  "mingw32" "SDL2main" "SDL2" "SDL2_image" "SDL2_ttf" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)SDL2\lib 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe
CC       := C:/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -std=c99 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=D:\Program\CodeLite
Objects0=$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IntermediateDirectory)/renderer.c$(ObjectSuffix) $(IntermediateDirectory)/player.c$(ObjectSuffix) $(IntermediateDirectory)/background.c$(ObjectSuffix) $(IntermediateDirectory)/text.c$(ObjectSuffix) $(IntermediateDirectory)/gameobject.c$(ObjectSuffix) $(IntermediateDirectory)/aliens.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	cp SDL2/bin/* ./Debug/.
	@echo Done

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/main.c$(ObjectSuffix): main.c $(IntermediateDirectory)/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Olof/Documents/C_rymdskepp/SDLproject/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/main.c$(ObjectSuffix) -MF$(IntermediateDirectory)/main.c$(DependSuffix) -MM main.c

$(IntermediateDirectory)/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/main.c$(PreprocessSuffix)main.c

$(IntermediateDirectory)/renderer.c$(ObjectSuffix): renderer.c $(IntermediateDirectory)/renderer.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Olof/Documents/C_rymdskepp/SDLproject/renderer.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/renderer.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/renderer.c$(DependSuffix): renderer.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/renderer.c$(ObjectSuffix) -MF$(IntermediateDirectory)/renderer.c$(DependSuffix) -MM renderer.c

$(IntermediateDirectory)/renderer.c$(PreprocessSuffix): renderer.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/renderer.c$(PreprocessSuffix)renderer.c

$(IntermediateDirectory)/player.c$(ObjectSuffix): player.c $(IntermediateDirectory)/player.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Olof/Documents/C_rymdskepp/SDLproject/player.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/player.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/player.c$(DependSuffix): player.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/player.c$(ObjectSuffix) -MF$(IntermediateDirectory)/player.c$(DependSuffix) -MM player.c

$(IntermediateDirectory)/player.c$(PreprocessSuffix): player.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/player.c$(PreprocessSuffix)player.c

$(IntermediateDirectory)/background.c$(ObjectSuffix): background.c $(IntermediateDirectory)/background.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Olof/Documents/C_rymdskepp/SDLproject/background.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/background.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/background.c$(DependSuffix): background.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/background.c$(ObjectSuffix) -MF$(IntermediateDirectory)/background.c$(DependSuffix) -MM background.c

$(IntermediateDirectory)/background.c$(PreprocessSuffix): background.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/background.c$(PreprocessSuffix)background.c

$(IntermediateDirectory)/text.c$(ObjectSuffix): text.c $(IntermediateDirectory)/text.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Olof/Documents/C_rymdskepp/SDLproject/text.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/text.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/text.c$(DependSuffix): text.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/text.c$(ObjectSuffix) -MF$(IntermediateDirectory)/text.c$(DependSuffix) -MM text.c

$(IntermediateDirectory)/text.c$(PreprocessSuffix): text.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/text.c$(PreprocessSuffix)text.c

$(IntermediateDirectory)/gameobject.c$(ObjectSuffix): gameobject.c $(IntermediateDirectory)/gameobject.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Olof/Documents/C_rymdskepp/SDLproject/gameobject.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/gameobject.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/gameobject.c$(DependSuffix): gameobject.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/gameobject.c$(ObjectSuffix) -MF$(IntermediateDirectory)/gameobject.c$(DependSuffix) -MM gameobject.c

$(IntermediateDirectory)/gameobject.c$(PreprocessSuffix): gameobject.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/gameobject.c$(PreprocessSuffix)gameobject.c

$(IntermediateDirectory)/aliens.c$(ObjectSuffix): aliens.c $(IntermediateDirectory)/aliens.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/Olof/Documents/C_rymdskepp/SDLproject/aliens.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/aliens.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/aliens.c$(DependSuffix): aliens.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/aliens.c$(ObjectSuffix) -MF$(IntermediateDirectory)/aliens.c$(DependSuffix) -MM aliens.c

$(IntermediateDirectory)/aliens.c$(PreprocessSuffix): aliens.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/aliens.c$(PreprocessSuffix)aliens.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


