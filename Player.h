#ifndef __PLAYER_H__
#define __PLAYER_H__

#include "Character.h"
#include <string>

class Player : public Character
{
    private:
        void InitializeWeaponProperties();
        static const int HEALTH;
        static const int RADIUS;
        int money;
    public:
        Player(double xPos, double yPos);
        void Attack ();     
        void Move ();
        void Draw (ALLEGRO_BITMAP *buffer, int midX, int midY);
        void AddMoney(int m);
        int GetMoney() const;
        void UpgradeWeapon(WeaponType type, std::string property);
        bool Visit (EnemyWeapon &enemyWeapon);
        bool Visit (Grenade &grenade);
        bool Visit (AbstractGun &gun);
};

#endif
