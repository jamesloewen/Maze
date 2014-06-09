#ifndef __MAP_H__
#define __MAP_H__

#include "Globals.h"
#include <string>
#include <utility>

class Map
{
    public:
        static Map *GetInstance();
        int **GetGrid();
        bool Fog(int x, int y);
        void UpdateFog(int x, int y);
        int GetGridSize();
        void SetGrid(int **map, int size, std::pair<int,int> startPoint, std::pair<int,int> endPoint);
        static void RemoveInstance();
        void CreateAuto();
        std::pair<int, int> GetEndLoc();
        std::pair<int, int> GetStartLoc();
        void Save(std::string filename);
        void Load(std::string filename);
        
        
    private:
        Map(int size = GRID_SIZE);
        ~Map();
        bool VerifyLevel();
        static Map *instance;
        int **map;
        bool **knownMap;
        int size;
        std::pair<int, int> startLoc;
        std::pair<int, int> endLoc;
};

#endif
