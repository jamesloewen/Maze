# Project: Maze
# Makefile created by Dev-C++ 4.9.9.2

CPP  = g++ 
CC   = gcc
RES  = 
OBJ  = Main.o Character.o WeaponProperties.o Weapon.o Gun.o AbstractGun.o AbstractGunDecorator.o WideShot.o ExplodingShot.o Grenade.o Bomb.o Nuke.o WallBreaker.o Player.o StandardEnemy.o Map.o Input.o Interaction.o EnemyWeapon.o Display.o Game.o Enemy.o EnemyFactory.o FloatingEnemy.o ShootingEnemy.o SurvivalGame.o $(RES)
LINKOBJ  = Main.o Character.o WeaponProperties.o Weapon.o Gun.o AbstractGun.o AbstractGunDecorator.o WideShot.o ExplodingShot.o Grenade.o Bomb.o Nuke.o WallBreaker.o Player.o StandardEnemy.o Map.o Input.o Interaction.o EnemyWeapon.o Display.o Game.o Enemy.o EnemyFactory.o FloatingEnemy.o ShootingEnemy.o SurvivalGame.o $(RES)
LIBS =  `allegro-config --cppflags --libs`

DEBUGFLAGS = -g -ggdb3
BIN  = Maze
CXXFLAGS = -O3 $(DEBUGFLAGS)
RM = rm -f

.PHONY: all all-before all-after clean clean-custom

all: all-before Maze all-after

clean: clean-custom
	${RM} $(OBJ) $(BIN)

$(BIN): $(OBJ)
	$(CPP) $(LINKOBJ) -o Maze $(LIBS)

Main.o: Main.cpp
	$(CPP) -c Main.cpp -o Main.o $(CXXFLAGS)

Character.o: Character.cpp
	$(CPP) -c Character.cpp -o Character.o $(CXXFLAGS)

WeaponProperties.o: WeaponProperties.cpp
	$(CPP) -c WeaponProperties.cpp -o WeaponProperties.o $(CXXFLAGS)

Weapon.o: Weapon.cpp
	$(CPP) -c Weapon.cpp -o Weapon.o $(CXXFLAGS)

Gun.o: Gun.cpp
	$(CPP) -c Gun.cpp -o Gun.o $(CXXFLAGS)

AbstractGun.o: AbstractGun.cpp
	$(CPP) -c AbstractGun.cpp -o AbstractGun.o $(CXXFLAGS)

AbstractGunDecorator.o: AbstractGunDecorator.cpp
	$(CPP) -c AbstractGunDecorator.cpp -o AbstractGunDecorator.o $(CXXFLAGS)

WideShot.o: WideShot.cpp
	$(CPP) -c WideShot.cpp -o WideShot.o $(CXXFLAGS)

ExplodingShot.o: ExplodingShot.cpp
	$(CPP) -c ExplodingShot.cpp -o ExplodingShot.o $(CXXFLAGS)

Grenade.o: Grenade.cpp
	$(CPP) -c Grenade.cpp -o Grenade.o $(CXXFLAGS)

Bomb.o: Bomb.cpp
	$(CPP) -c Bomb.cpp -o Bomb.o $(CXXFLAGS)

Nuke.o: Nuke.cpp
	$(CPP) -c Nuke.cpp -o Nuke.o $(CXXFLAGS)

WallBreaker.o: WallBreaker.cpp
	$(CPP) -c WallBreaker.cpp -o WallBreaker.o $(CXXFLAGS)

Player.o: Player.cpp
	$(CPP) -c Player.cpp -o Player.o $(CXXFLAGS)

StandardEnemy.o: StandardEnemy.cpp
	$(CPP) -c StandardEnemy.cpp -o StandardEnemy.o $(CXXFLAGS)

Map.o: Map.cpp
	$(CPP) -c Map.cpp -o Map.o $(CXXFLAGS)

Input.o: Input.cpp
	$(CPP) -c Input.cpp -o Input.o $(CXXFLAGS)

Interaction.o: Interaction.cpp
	$(CPP) -c Interaction.cpp -o Interaction.o $(CXXFLAGS)

EnemyWeapon.o: EnemyWeapon.cpp
	$(CPP) -c EnemyWeapon.cpp -o EnemyWeapon.o $(CXXFLAGS)

Display.o: Display.cpp
	$(CPP) -c Display.cpp -o Display.o $(CXXFLAGS)

Game.o: Game.cpp
	$(CPP) -c Game.cpp -o Game.o $(CXXFLAGS)

Enemy.o: Enemy.cpp
	$(CPP) -c Enemy.cpp -o Enemy.o $(CXXFLAGS)

EnemyFactory.o: EnemyFactory.cpp
	$(CPP) -c EnemyFactory.cpp -o EnemyFactory.o $(CXXFLAGS)

FloatingEnemy.o: FloatingEnemy.cpp
	$(CPP) -c FloatingEnemy.cpp -o FloatingEnemy.o $(CXXFLAGS)

ShootingEnemy.o: ShootingEnemy.cpp
	$(CPP) -c ShootingEnemy.cpp -o ShootingEnemy.o $(CXXFLAGS)

SurvivalGame.o: SurvivalGame.cpp
	$(CPP) -c SurvivalGame.cpp -o SurvivalGame.o $(CXXFLAGS)
