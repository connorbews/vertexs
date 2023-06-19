#ifndef MODEL_CLASS_H
#define MODEL_CLASS_H

#include <iostream>
#include "Mesh.h"
#include "glad/glad.h"

class Model : Mesh
{
    public:
        Model(const char* filename);
        ~Model();
};

#endif