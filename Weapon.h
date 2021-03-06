#ifndef __WEAPON_H__
#define __WEAPON_H__

#include "WeaponProperties.h"
#include <allegro5/allegro.h>
class Character;

class Weapon
{
    protected:
        double xPos, yPos;
        const double xPosOrig, yPosOrig;
        WeaponProperties properties;
        bool destroyThis; // set to true if the next time update is run this object should be deleted
        Character * watcher;
    public:
        Weapon(int xPos, int yPos, WeaponProperties weaponProperties, Character * watcher);
        virtual ~Weapon();
        virtual void Action( Character * character) = 0;  // see if an action needs to be taken by Enemy/Player based on Weapon.
        virtual void Detonate() = 0; // this is the actual impact method for weapons whose actions change on detonation
        virtual void Draw(ALLEGRO_BITMAP* buffer, int midX, int midY) = 0;
        virtual WeaponProperties &GetProperties();
        virtual int GetX() const;
        virtual int GetY() const;
        void Notify();
        void SetX(int x);
        void SetY(int y);
        virtual void Update() = 0; // this is the main method for a weapon.  It will be unique for each
        bool WillDestroy();
};

#endif
