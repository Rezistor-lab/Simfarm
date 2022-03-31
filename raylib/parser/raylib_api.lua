return {
  structs = {
    {
      name = "Vector2",
      description = "Vector2, 2 components",
      fields = {
        {
          type = "float",
          name = "x",
          description = "Vector x component"
        },
        {
          type = "float",
          name = "y",
          description = "Vector y component"
        }
      }
    },
    {
      name = "Vector3",
      description = "Vector3, 3 components",
      fields = {
        {
          type = "float",
          name = "x",
          description = "Vector x component"
        },
        {
          type = "float",
          name = "y",
          description = "Vector y component"
        },
        {
          type = "float",
          name = "z",
          description = "Vector z component"
        }
      }
    },
    {
      name = "Vector4",
      description = "Vector4, 4 components",
      fields = {
        {
          type = "float",
          name = "x",
          description = "Vector x component"
        },
        {
          type = "float",
          name = "y",
          description = "Vector y component"
        },
        {
          type = "float",
          name = "z",
          description = "Vector z component"
        },
        {
          type = "float",
          name = "w",
          description = "Vector w component"
        }
      }
    },
    {
      name = "Matrix",
      description = "Matrix, 4x4 components, column major, OpenGL style, right handed",
      fields = {
        {
          type = "float",
          name = "m0, m4, m8, m12",
          description = "Matrix first row (4 components)"
        },
        {
          type = "float",
          name = "m1, m5, m9, m13",
          description = "Matrix second row (4 components)"
        },
        {
          type = "float",
          name = "m2, m6, m10, m14",
          description = "Matrix third row (4 components)"
        },
        {
          type = "float",
          name = "m3, m7, m11, m15",
          description = "Matrix fourth row (4 components)"
        }
      }
    },
    {
      name = "Color",
      description = "Color, 4 components, R8G8B8A8 (32bit)",
      fields = {
        {
          type = "unsigned char",
          name = "r",
          description = "Color red value"
        },
        {
          type = "unsigned char",
          name = "g",
          description = "Color green value"
        },
        {
          type = "unsigned char",
          name = "b",
          description = "Color blue value"
        },
        {
          type = "unsigned char",
          name = "a",
          description = "Color alpha value"
        }
      }
    },
    {
      name = "Rectangle",
      description = "Rectangle, 4 components",
      fields = {
        {
          type = "float",
          name = "x",
          description = "Rectangle top-left corner position x"
        },
        {
          type = "float",
          name = "y",
          description = "Rectangle top-left corner position y"
        },
        {
          type = "float",
          name = "width",
          description = "Rectangle width"
        },
        {
          type = "float",
          name = "height",
          description = "Rectangle height"
        }
      }
    },
    {
      name = "Image",
      description = "Image, pixel data stored in CPU memory (RAM)",
      fields = {
        {
          type = "void *",
          name = "data",
          description = "Image raw data"
        },
        {
          type = "int",
          name = "width",
          description = "Image base width"
        },
        {
          type = "int",
          name = "height",
          description = "Image base height"
        },
        {
          type = "int",
          name = "mipmaps",
          description = "Mipmap levels, 1 by default"
        },
        {
          type = "int",
          name = "format",
          description = "Data format (PixelFormat type)"
        }
      }
    },
    {
      name = "Texture",
      description = "Texture, tex data stored in GPU memory (VRAM)",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "OpenGL texture id"
        },
        {
          type = "int",
          name = "width",
          description = "Texture base width"
        },
        {
          type = "int",
          name = "height",
          description = "Texture base height"
        },
        {
          type = "int",
          name = "mipmaps",
          description = "Mipmap levels, 1 by default"
        },
        {
          type = "int",
          name = "format",
          description = "Data format (PixelFormat type)"
        }
      }
    },
    {
      name = "RenderTexture",
      description = "RenderTexture, fbo for texture rendering",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "OpenGL framebuffer object id"
        },
        {
          type = "Texture",
          name = "texture",
          description = "Color buffer attachment texture"
        },
        {
          type = "Texture",
          name = "depth",
          description = "Depth buffer attachment texture"
        }
      }
    },
    {
      name = "NPatchInfo",
      description = "NPatchInfo, n-patch layout info",
      fields = {
        {
          type = "Rectangle",
          name = "source",
          description = "Texture source rectangle"
        },
        {
          type = "int",
          name = "left",
          description = "Left border offset"
        },
        {
          type = "int",
          name = "top",
          description = "Top border offset"
        },
        {
          type = "int",
          name = "right",
          description = "Right border offset"
        },
        {
          type = "int",
          name = "bottom",
          description = "Bottom border offset"
        },
        {
          type = "int",
          name = "layout",
          description = "Layout of the n-patch: 3x3, 1x3 or 3x1"
        }
      }
    },
    {
      name = "GlyphInfo",
      description = "GlyphInfo, font characters glyphs info",
      fields = {
        {
          type = "int",
          name = "value",
          description = "Character value (Unicode)"
        },
        {
          type = "int",
          name = "offsetX",
          description = "Character offset X when drawing"
        },
        {
          type = "int",
          name = "offsetY",
          description = "Character offset Y when drawing"
        },
        {
          type = "int",
          name = "advanceX",
          description = "Character advance position X"
        },
        {
          type = "Image",
          name = "image",
          description = "Character image data"
        }
      }
    },
    {
      name = "Font",
      description = "Font, font texture and GlyphInfo array data",
      fields = {
        {
          type = "int",
          name = "baseSize",
          description = "Base size (default chars height)"
        },
        {
          type = "int",
          name = "glyphCount",
          description = "Number of glyph characters"
        },
        {
          type = "int",
          name = "glyphPadding",
          description = "Padding around the glyph characters"
        },
        {
          type = "Texture2D",
          name = "texture",
          description = "Texture atlas containing the glyphs"
        },
        {
          type = "Rectangle *",
          name = "recs",
          description = "Rectangles in texture for the glyphs"
        },
        {
          type = "GlyphInfo *",
          name = "glyphs",
          description = "Glyphs info data"
        }
      }
    },
    {
      name = "Camera3D",
      description = "Camera, defines position/orientation in 3d space",
      fields = {
        {
          type = "Vector3",
          name = "position",
          description = "Camera position"
        },
        {
          type = "Vector3",
          name = "target",
          description = "Camera target it looks-at"
        },
        {
          type = "Vector3",
          name = "up",
          description = "Camera up vector (rotation over its axis)"
        },
        {
          type = "float",
          name = "fovy",
          description = "Camera field-of-view apperture in Y (degrees) in perspective, used as near plane width in orthographic"
        },
        {
          type = "int",
          name = "projection",
          description = "Camera projection: CAMERA_PERSPECTIVE or CAMERA_ORTHOGRAPHIC"
        }
      }
    },
    {
      name = "Camera2D",
      description = "Camera2D, defines position/orientation in 2d space",
      fields = {
        {
          type = "Vector2",
          name = "offset",
          description = "Camera offset (displacement from target)"
        },
        {
          type = "Vector2",
          name = "target",
          description = "Camera target (rotation and zoom origin)"
        },
        {
          type = "float",
          name = "rotation",
          description = "Camera rotation in degrees"
        },
        {
          type = "float",
          name = "zoom",
          description = "Camera zoom (scaling), should be 1.0f by default"
        }
      }
    },
    {
      name = "Mesh",
      description = "Mesh, vertex data and vao/vbo",
      fields = {
        {
          type = "int",
          name = "vertexCount",
          description = "Number of vertices stored in arrays"
        },
        {
          type = "int",
          name = "triangleCount",
          description = "Number of triangles stored (indexed or not)"
        },
        {
          type = "float *",
          name = "vertices",
          description = "Vertex position (XYZ - 3 components per vertex) (shader-location = 0)"
        },
        {
          type = "float *",
          name = "texcoords",
          description = "Vertex texture coordinates (UV - 2 components per vertex) (shader-location = 1)"
        },
        {
          type = "float *",
          name = "texcoords2",
          description = "Vertex second texture coordinates (useful for lightmaps) (shader-location = 5)"
        },
        {
          type = "float *",
          name = "normals",
          description = "Vertex normals (XYZ - 3 components per vertex) (shader-location = 2)"
        },
        {
          type = "float *",
          name = "tangents",
          description = "Vertex tangents (XYZW - 4 components per vertex) (shader-location = 4)"
        },
        {
          type = "unsigned char *",
          name = "colors",
          description = "Vertex colors (RGBA - 4 components per vertex) (shader-location = 3)"
        },
        {
          type = "unsigned short *",
          name = "indices",
          description = "Vertex indices (in case vertex data comes indexed)"
        },
        {
          type = "float *",
          name = "animVertices",
          description = "Animated vertex positions (after bones transformations)"
        },
        {
          type = "float *",
          name = "animNormals",
          description = "Animated normals (after bones transformations)"
        },
        {
          type = "unsigned char *",
          name = "boneIds",
          description = "Vertex bone ids, max 255 bone ids, up to 4 bones influence by vertex (skinning)"
        },
        {
          type = "float *",
          name = "boneWeights",
          description = "Vertex bone weight, up to 4 bones influence by vertex (skinning)"
        },
        {
          type = "unsigned int",
          name = "vaoId",
          description = "OpenGL Vertex Array Object id"
        },
        {
          type = "unsigned int *",
          name = "vboId",
          description = "OpenGL Vertex Buffer Objects id (default vertex data)"
        }
      }
    },
    {
      name = "Shader",
      description = "Shader",
      fields = {
        {
          type = "unsigned int",
          name = "id",
          description = "Shader program id"
        },
        {
          type = "int *",
          name = "locs",
          description = "Shader locations array (RL_MAX_SHADER_LOCATIONS)"
        }
      }
    },
    {
      name = "MaterialMap",
      description = "MaterialMap",
      fields = {
        {
          type = "Texture2D",
          name = "texture",
          description = "Material map texture"
        },
        {
          type = "Color",
          name = "color",
          description = "Material map color"
        },
        {
          type = "float",
          name = "value",
          description = "Material map value"
        }
      }
    },
    {
      name = "Material",
      description = "Material, includes shader and maps",
      fields = {
        {
          type = "Shader",
          name = "shader",
          description = "Material shader"
        },
        {
          type = "MaterialMap *",
          name = "maps",
          description = "Material maps array (MAX_MATERIAL_MAPS)"
        },
        {
          type = "float",
          name = "params[4]",
          description = "Material generic parameters (if required)"
        }
      }
    },
    {
      name = "Transform",
      description = "Transform, vectex transformation data",
      fields = {
        {
          type = "Vector3",
          name = "translation",
          description = "Translation"
        },
        {
          type = "Quaternion",
          name = "rotation",
          description = "Rotation"
        },
        {
          type = "Vector3",
          name = "scale",
          description = "Scale"
        }
      }
    },
    {
      name = "BoneInfo",
      description = "Bone, skeletal animation bone",
      fields = {
        {
          type = "char",
          name = "name[32]",
          description = "Bone name"
        },
        {
          type = "int",
          name = "parent",
          description = "Bone parent"
        }
      }
    },
    {
      name = "Model",
      description = "Model, meshes, materials and animation data",
      fields = {
        {
          type = "Matrix",
          name = "transform",
          description = "Local transform matrix"
        },
        {
          type = "int",
          name = "meshCount",
          description = "Number of meshes"
        },
        {
          type = "int",
          name = "materialCount",
          description = "Number of materials"
        },
        {
          type = "Mesh *",
          name = "meshes",
          description = "Meshes array"
        },
        {
          type = "Material *",
          name = "materials",
          description = "Materials array"
        },
        {
          type = "int *",
          name = "meshMaterial",
          description = "Mesh material number"
        },
        {
          type = "int",
          name = "boneCount",
          description = "Number of bones"
        },
        {
          type = "BoneInfo *",
          name = "bones",
          description = "Bones information (skeleton)"
        },
        {
          type = "Transform *",
          name = "bindPose",
          description = "Bones base transformation (pose)"
        }
      }
    },
    {
      name = "ModelAnimation",
      description = "ModelAnimation",
      fields = {
        {
          type = "int",
          name = "boneCount",
          description = "Number of bones"
        },
        {
          type = "int",
          name = "frameCount",
          description = "Number of animation frames"
        },
        {
          type = "BoneInfo *",
          name = "bones",
          description = "Bones information (skeleton)"
        },
        {
          type = "Transform **",
          name = "framePoses",
          description = "Poses array by frame"
        }
      }
    },
    {
      name = "Ray",
      description = "Ray, ray for raycasting",
      fields = {
        {
          type = "Vector3",
          name = "position",
          description = "Ray position (origin)"
        },
        {
          type = "Vector3",
          name = "direction",
          description = "Ray direction"
        }
      }
    },
    {
      name = "RayCollision",
      description = "RayCollision, ray hit information",
      fields = {
        {
          type = "bool",
          name = "hit",
          description = "Did the ray hit something?"
        },
        {
          type = "float",
          name = "distance",
          description = "Distance to nearest hit"
        },
        {
          type = "Vector3",
          name = "point",
          description = "Point of nearest hit"
        },
        {
          type = "Vector3",
          name = "normal",
          description = "Surface normal of hit"
        }
      }
    },
    {
      name = "BoundingBox",
      description = "BoundingBox",
      fields = {
        {
          type = "Vector3",
          name = "min",
          description = "Minimum vertex box-corner"
        },
        {
          type = "Vector3",
          name = "max",
          description = "Maximum vertex box-corner"
        }
      }
    },
    {
      name = "Wave",
      description = "Wave, audio wave data",
      fields = {
        {
          type = "unsigned int",
          name = "frameCount",
          description = "Total number of frames (considering channels)"
        },
        {
          type = "unsigned int",
          name = "sampleRate",
          description = "Frequency (samples per second)"
        },
        {
          type = "unsigned int",
          name = "sampleSize",
          description = "Bit depth (bits per sample): 8, 16, 32 (24 not supported)"
        },
        {
          type = "unsigned int",
          name = "channels",
          description = "Number of channels (1-mono, 2-stereo, ...)"
        },
        {
          type = "void *",
          name = "data",
          description = "Buffer data pointer"
        }
      }
    },
    {
      name = "AudioStream",
      description = "AudioStream, custom audio stream",
      fields = {
        {
          type = "rAudioBuffer *",
          name = "buffer",
          description = "Pointer to internal data used by the audio system"
        },
        {
          type = "unsigned int",
          name = "sampleRate",
          description = "Frequency (samples per second)"
        },
        {
          type = "unsigned int",
          name = "sampleSize",
          description = "Bit depth (bits per sample): 8, 16, 32 (24 not supported)"
        },
        {
          type = "unsigned int",
          name = "channels",
          description = "Number of channels (1-mono, 2-stereo, ...)"
        }
      }
    },
    {
      name = "Sound",
      description = "Sound",
      fields = {
        {
          type = "AudioStream",
          name = "stream",
          description = "Audio stream"
        },
        {
          type = "unsigned int",
          name = "frameCount",
          description = "Total number of frames (considering channels)"
        }
      }
    },
    {
      name = "Music",
      description = "Music, audio stream, anything longer than ~10 seconds should be streamed",
      fields = {
        {
          type = "AudioStream",
          name = "stream",
          description = "Audio stream"
        },
        {
          type = "unsigned int",
          name = "frameCount",
          description = "Total number of frames (considering channels)"
        },
        {
          type = "bool",
          name = "looping",
          description = "Music looping enable"
        },
        {
          type = "int",
          name = "ctxType",
          description = "Type of music context (audio filetype)"
        },
        {
          type = "void *",
          name = "ctxData",
          description = "Audio context data, depends on type"
        }
      }
    },
    {
      name = "VrDeviceInfo",
      description = "VrDeviceInfo, Head-Mounted-Display device parameters",
      fields = {
        {
          type = "int",
          name = "hResolution",
          description = "Horizontal resolution in pixels"
        },
        {
          type = "int",
          name = "vResolution",
          description = "Vertical resolution in pixels"
        },
        {
          type = "float",
          name = "hScreenSize",
          description = "Horizontal size in meters"
        },
        {
          type = "float",
          name = "vScreenSize",
          description = "Vertical size in meters"
        },
        {
          type = "float",
          name = "vScreenCenter",
          description = "Screen center in meters"
        },
        {
          type = "float",
          name = "eyeToScreenDistance",
          description = "Distance between eye and display in meters"
        },
        {
          type = "float",
          name = "lensSeparationDistance",
          description = "Lens separation distance in meters"
        },
        {
          type = "float",
          name = "interpupillaryDistance",
          description = "IPD (distance between pupils) in meters"
        },
        {
          type = "float",
          name = "lensDistortionValues[4]",
          description = "Lens distortion constant parameters"
        },
        {
          type = "float",
          name = "chromaAbCorrection[4]",
          description = "Chromatic aberration correction parameters"
        }
      }
    },
    {
      name = "VrStereoConfig",
      description = "VrStereoConfig, VR stereo rendering configuration for simulator",
      fields = {
        {
          type = "Matrix",
          name = "projection[2]",
          description = "VR projection matrices (per eye)"
        },
        {
          type = "Matrix",
          name = "viewOffset[2]",
          description = "VR view offset matrices (per eye)"
        },
        {
          type = "float",
          name = "leftLensCenter[2]",
          description = "VR left lens center"
        },
        {
          type = "float",
          name = "rightLensCenter[2]",
          description = "VR right lens center"
        },
        {
          type = "float",
          name = "leftScreenCenter[2]",
          description = "VR left screen center"
        },
        {
          type = "float",
          name = "rightScreenCenter[2]",
          description = "VR right screen center"
        },
        {
          type = "float",
          name = "scale[2]",
          description = "VR distortion scale"
        },
        {
          type = "float",
          name = "scaleIn[2]",
          description = "VR distortion scale in"
        }
      }
    }
  },
  enums = {
    {
      name = "ConfigFlags",
      description = "System/Window config flags",
      values = {
        {
          name = "FLAG_VSYNC_HINT",
          value = 64,
          description = "Set to try enabling V-Sync on GPU"
        },
        {
          name = "FLAG_FULLSCREEN_MODE",
          value = 2,
          description = "Set to run program in fullscreen"
        },
        {
          name = "FLAG_WINDOW_RESIZABLE",
          value = 4,
          description = "Set to allow resizable window"
        },
        {
          name = "FLAG_WINDOW_UNDECORATED",
          value = 8,
          description = "Set to disable window decoration (frame and buttons)"
        },
        {
          name = "FLAG_WINDOW_HIDDEN",
          value = 128,
          description = "Set to hide window"
        },
        {
          name = "FLAG_WINDOW_MINIMIZED",
          value = 512,
          description = "Set to minimize window (iconify)"
        },
        {
          name = "FLAG_WINDOW_MAXIMIZED",
          value = 1024,
          description = "Set to maximize window (expanded to monitor)"
        },
        {
          name = "FLAG_WINDOW_UNFOCUSED",
          value = 2048,
          description = "Set to window non focused"
        },
        {
          name = "FLAG_WINDOW_TOPMOST",
          value = 4096,
          description = "Set to window always on top"
        },
        {
          name = "FLAG_WINDOW_ALWAYS_RUN",
          value = 256,
          description = "Set to allow windows running while minimized"
        },
        {
          name = "FLAG_WINDOW_TRANSPARENT",
          value = 16,
          description = "Set to allow transparent framebuffer"
        },
        {
          name = "FLAG_WINDOW_HIGHDPI",
          value = 8192,
          description = "Set to support HighDPI"
        },
        {
          name = "FLAG_MSAA_4X_HINT",
          value = 32,
          description = "Set to try enabling MSAA 4X"
        },
        {
          name = "FLAG_INTERLACED_HINT",
          value = 65536,
          description = "Set to try enabling interlaced video format (for V3D)"
        }
      }
    },
    {
      name = "TraceLogLevel",
      description = "Trace log level",
      values = {
        {
          name = "LOG_ALL",
          value = 0,
          description = "Display all logs"
        },
        {
          name = "LOG_TRACE",
          value = 1,
          description = "Trace logging, intended for internal use only"
        },
        {
          name = "LOG_DEBUG",
          value = 2,
          description = "Debug logging, used for internal debugging, it should be disabled on release builds"
        },
        {
          name = "LOG_INFO",
          value = 3,
          description = "Info logging, used for program execution info"
        },
        {
          name = "LOG_WARNING",
          value = 4,
          description = "Warning logging, used on recoverable failures"
        },
        {
          name = "LOG_ERROR",
          value = 5,
          description = "Error logging, used on unrecoverable failures"
        },
        {
          name = "LOG_FATAL",
          value = 6,
          description = "Fatal logging, used to abort program: exit(EXIT_FAILURE)"
        },
        {
          name = "LOG_NONE",
          value = 7,
          description = "Disable logging"
        }
      }
    },
    {
      name = "KeyboardKey",
      description = "Keyboard keys (US keyboard layout)",
      values = {
        {
          name = "KEY_NULL",
          value = 0,
          description = "Key: NULL, used for no key pressed"
        },
        {
          name = "KEY_APOSTROPHE",
          value = 39,
          description = "Key: '"
        },
        {
          name = "KEY_COMMA",
          value = 44,
          description = "Key: ,"
        },
        {
          name = "KEY_MINUS",
          value = 45,
          description = "Key: -"
        },
        {
          name = "KEY_PERIOD",
          value = 46,
          description = "Key: ."
        },
        {
          name = "KEY_SLASH",
          value = 47,
          description = "Key: /"
        },
        {
          name = "KEY_ZERO",
          value = 48,
          description = "Key: 0"
        },
        {
          name = "KEY_ONE",
          value = 49,
          description = "Key: 1"
        },
        {
          name = "KEY_TWO",
          value = 50,
          description = "Key: 2"
        },
        {
          name = "KEY_THREE",
          value = 51,
          description = "Key: 3"
        },
        {
          name = "KEY_FOUR",
          value = 52,
          description = "Key: 4"
        },
        {
          name = "KEY_FIVE",
          value = 53,
          description = "Key: 5"
        },
        {
          name = "KEY_SIX",
          value = 54,
          description = "Key: 6"
        },
        {
          name = "KEY_SEVEN",
          value = 55,
          description = "Key: 7"
        },
        {
          name = "KEY_EIGHT",
          value = 56,
          description = "Key: 8"
        },
        {
          name = "KEY_NINE",
          value = 57,
          description = "Key: 9"
        },
        {
          name = "KEY_SEMICOLON",
          value = 59,
          description = "Key: ;"
        },
        {
          name = "KEY_EQUAL",
          value = 61,
          description = "Key: ="
        },
        {
          name = "KEY_A",
          value = 65,
          description = "Key: A | a"
        },
        {
          name = "KEY_B",
          value = 66,
          description = "Key: B | b"
        },
        {
          name = "KEY_C",
          value = 67,
          description = "Key: C | c"
        },
        {
          name = "KEY_D",
          value = 68,
          description = "Key: D | d"
        },
        {
          name = "KEY_E",
          value = 69,
          description = "Key: E | e"
        },
        {
          name = "KEY_F",
          value = 70,
          description = "Key: F | f"
        },
        {
          name = "KEY_G",
          value = 71,
          description = "Key: G | g"
        },
        {
          name = "KEY_H",
          value = 72,
          description = "Key: H | h"
        },
        {
          name = "KEY_I",
          value = 73,
          description = "Key: I | i"
        },
        {
          name = "KEY_J",
          value = 74,
          description = "Key: J | j"
        },
        {
          name = "KEY_K",
          value = 75,
          description = "Key: K | k"
        },
        {
          name = "KEY_L",
          value = 76,
          description = "Key: L | l"
        },
        {
          name = "KEY_M",
          value = 77,
          description = "Key: M | m"
        },
        {
          name = "KEY_N",
          value = 78,
          description = "Key: N | n"
        },
        {
          name = "KEY_O",
          value = 79,
          description = "Key: O | o"
        },
        {
          name = "KEY_P",
          value = 80,
          description = "Key: P | p"
        },
        {
          name = "KEY_Q",
          value = 81,
          description = "Key: Q | q"
        },
        {
          name = "KEY_R",
          value = 82,
          description = "Key: R | r"
        },
        {
          name = "KEY_S",
          value = 83,
          description = "Key: S | s"
        },
        {
          name = "KEY_T",
          value = 84,
          description = "Key: T | t"
        },
        {
          name = "KEY_U",
          value = 85,
          description = "Key: U | u"
        },
        {
          name = "KEY_V",
          value = 86,
          description = "Key: V | v"
        },
        {
          name = "KEY_W",
          value = 87,
          description = "Key: W | w"
        },
        {
          name = "KEY_X",
          value = 88,
          description = "Key: X | x"
        },
        {
          name = "KEY_Y",
          value = 89,
          description = "Key: Y | y"
        },
        {
          name = "KEY_Z",
          value = 90,
          description = "Key: Z | z"
        },
        {
          name = "KEY_LEFT_BRACKET",
          value = 91,
          description = "Key: ["
        },
        {
          name = "KEY_BACKSLASH",
          value = 92,
          description = "Key: '\\'"
        },
        {
          name = "KEY_RIGHT_BRACKET",
          value = 93,
          description = "Key: ]"
        },
        {
          name = "KEY_GRAVE",
          value = 96,
          description = "Key: `"
        },
        {
          name = "KEY_SPACE",
          value = 32,
          description = "Key: Space"
        },
        {
          name = "KEY_ESCAPE",
          value = 256,
          description = "Key: Esc"
        },
        {
          name = "KEY_ENTER",
          value = 257,
          description = "Key: Enter"
        },
        {
          name = "KEY_TAB",
          value = 258,
          description = "Key: Tab"
        },
        {
          name = "KEY_BACKSPACE",
          value = 259,
          description = "Key: Backspace"
        },
        {
          name = "KEY_INSERT",
          value = 260,
          description = "Key: Ins"
        },
        {
          name = "KEY_DELETE",
          value = 261,
          description = "Key: Del"
        },
        {
          name = "KEY_RIGHT",
          value = 262,
          description = "Key: Cursor right"
        },
        {
          name = "KEY_LEFT",
          value = 263,
          description = "Key: Cursor left"
        },
        {
          name = "KEY_DOWN",
          value = 264,
          description = "Key: Cursor down"
        },
        {
          name = "KEY_UP",
          value = 265,
          description = "Key: Cursor up"
        },
        {
          name = "KEY_PAGE_UP",
          value = 266,
          description = "Key: Page up"
        },
        {
          name = "KEY_PAGE_DOWN",
          value = 267,
          description = "Key: Page down"
        },
        {
          name = "KEY_HOME",
          value = 268,
          description = "Key: Home"
        },
        {
          name = "KEY_END",
          value = 269,
          description = "Key: End"
        },
        {
          name = "KEY_CAPS_LOCK",
          value = 280,
          description = "Key: Caps lock"
        },
        {
          name = "KEY_SCROLL_LOCK",
          value = 281,
          description = "Key: Scroll down"
        },
        {
          name = "KEY_NUM_LOCK",
          value = 282,
          description = "Key: Num lock"
        },
        {
          name = "KEY_PRINT_SCREEN",
          value = 283,
          description = "Key: Print screen"
        },
        {
          name = "KEY_PAUSE",
          value = 284,
          description = "Key: Pause"
        },
        {
          name = "KEY_F1",
          value = 290,
          description = "Key: F1"
        },
        {
          name = "KEY_F2",
          value = 291,
          description = "Key: F2"
        },
        {
          name = "KEY_F3",
          value = 292,
          description = "Key: F3"
        },
        {
          name = "KEY_F4",
          value = 293,
          description = "Key: F4"
        },
        {
          name = "KEY_F5",
          value = 294,
          description = "Key: F5"
        },
        {
          name = "KEY_F6",
          value = 295,
          description = "Key: F6"
        },
        {
          name = "KEY_F7",
          value = 296,
          description = "Key: F7"
        },
        {
          name = "KEY_F8",
          value = 297,
          description = "Key: F8"
        },
        {
          name = "KEY_F9",
          value = 298,
          description = "Key: F9"
        },
        {
          name = "KEY_F10",
          value = 299,
          description = "Key: F10"
        },
        {
          name = "KEY_F11",
          value = 300,
          description = "Key: F11"
        },
        {
          name = "KEY_F12",
          value = 301,
          description = "Key: F12"
        },
        {
          name = "KEY_LEFT_SHIFT",
          value = 340,
          description = "Key: Shift left"
        },
        {
          name = "KEY_LEFT_CONTROL",
          value = 341,
          description = "Key: Control left"
        },
        {
          name = "KEY_LEFT_ALT",
          value = 342,
          description = "Key: Alt left"
        },
        {
          name = "KEY_LEFT_SUPER",
          value = 343,
          description = "Key: Super left"
        },
        {
          name = "KEY_RIGHT_SHIFT",
          value = 344,
          description = "Key: Shift right"
        },
        {
          name = "KEY_RIGHT_CONTROL",
          value = 345,
          description = "Key: Control right"
        },
        {
          name = "KEY_RIGHT_ALT",
          value = 346,
          description = "Key: Alt right"
        },
        {
          name = "KEY_RIGHT_SUPER",
          value = 347,
          description = "Key: Super right"
        },
        {
          name = "KEY_KB_MENU",
          value = 348,
          description = "Key: KB menu"
        },
        {
          name = "KEY_KP_0",
          value = 320,
          description = "Key: Keypad 0"
        },
        {
          name = "KEY_KP_1",
          value = 321,
          description = "Key: Keypad 1"
        },
        {
          name = "KEY_KP_2",
          value = 322,
          description = "Key: Keypad 2"
        },
        {
          name = "KEY_KP_3",
          value = 323,
          description = "Key: Keypad 3"
        },
        {
          name = "KEY_KP_4",
          value = 324,
          description = "Key: Keypad 4"
        },
        {
          name = "KEY_KP_5",
          value = 325,
          description = "Key: Keypad 5"
        },
        {
          name = "KEY_KP_6",
          value = 326,
          description = "Key: Keypad 6"
        },
        {
          name = "KEY_KP_7",
          value = 327,
          description = "Key: Keypad 7"
        },
        {
          name = "KEY_KP_8",
          value = 328,
          description = "Key: Keypad 8"
        },
        {
          name = "KEY_KP_9",
          value = 329,
          description = "Key: Keypad 9"
        },
        {
          name = "KEY_KP_DECIMAL",
          value = 330,
          description = "Key: Keypad ."
        },
        {
          name = "KEY_KP_DIVIDE",
          value = 331,
          description = "Key: Keypad /"
        },
        {
          name = "KEY_KP_MULTIPLY",
          value = 332,
          description = "Key: Keypad *"
        },
        {
          name = "KEY_KP_SUBTRACT",
          value = 333,
          description = "Key: Keypad -"
        },
        {
          name = "KEY_KP_ADD",
          value = 334,
          description = "Key: Keypad +"
        },
        {
          name = "KEY_KP_ENTER",
          value = 335,
          description = "Key: Keypad Enter"
        },
        {
          name = "KEY_KP_EQUAL",
          value = 336,
          description = "Key: Keypad ="
        },
        {
          name = "KEY_BACK",
          value = 4,
          description = "Key: Android back button"
        },
        {
          name = "KEY_MENU",
          value = 82,
          description = "Key: Android menu button"
        },
        {
          name = "KEY_VOLUME_UP",
          value = 24,
          description = "Key: Android volume up button"
        },
        {
          name = "KEY_VOLUME_DOWN",
          value = 25,
          description = "Key: Android volume down button"
        }
      }
    },
    {
      name = "MouseButton",
      description = "Mouse buttons",
      values = {
        {
          name = "MOUSE_BUTTON_LEFT",
          value = 0,
          description = "Mouse button left"
        },
        {
          name = "MOUSE_BUTTON_RIGHT",
          value = 1,
          description = "Mouse button right"
        },
        {
          name = "MOUSE_BUTTON_MIDDLE",
          value = 2,
          description = "Mouse button middle (pressed wheel)"
        },
        {
          name = "MOUSE_BUTTON_SIDE",
          value = 3,
          description = "Mouse button side (advanced mouse device)"
        },
        {
          name = "MOUSE_BUTTON_EXTRA",
          value = 4,
          description = "Mouse button extra (advanced mouse device)"
        },
        {
          name = "MOUSE_BUTTON_FORWARD",
          value = 5,
          description = "Mouse button fordward (advanced mouse device)"
        },
        {
          name = "MOUSE_BUTTON_BACK",
          value = 6,
          description = "Mouse button back (advanced mouse device)"
        }
      }
    },
    {
      name = "MouseCursor",
      description = "Mouse cursor",
      values = {
        {
          name = "MOUSE_CURSOR_DEFAULT",
          value = 0,
          description = "Default pointer shape"
        },
        {
          name = "MOUSE_CURSOR_ARROW",
          value = 1,
          description = "Arrow shape"
        },
        {
          name = "MOUSE_CURSOR_IBEAM",
          value = 2,
          description = "Text writing cursor shape"
        },
        {
          name = "MOUSE_CURSOR_CROSSHAIR",
          value = 3,
          description = "Cross shape"
        },
        {
          name = "MOUSE_CURSOR_POINTING_HAND",
          value = 4,
          description = "Pointing hand cursor"
        },
        {
          name = "MOUSE_CURSOR_RESIZE_EW",
          value = 5,
          description = "Horizontal resize/move arrow shape"
        },
        {
          name = "MOUSE_CURSOR_RESIZE_NS",
          value = 6,
          description = "Vertical resize/move arrow shape"
        },
        {
          name = "MOUSE_CURSOR_RESIZE_NWSE",
          value = 7,
          description = "Top-left to bottom-right diagonal resize/move arrow shape"
        },
        {
          name = "MOUSE_CURSOR_RESIZE_NESW",
          value = 8,
          description = "The top-right to bottom-left diagonal resize/move arrow shape"
        },
        {
          name = "MOUSE_CURSOR_RESIZE_ALL",
          value = 9,
          description = "The omni-directional resize/move cursor shape"
        },
        {
          name = "MOUSE_CURSOR_NOT_ALLOWED",
          value = 10,
          description = "The operation-not-allowed shape"
        }
      }
    },
    {
      name = "GamepadButton",
      description = "Gamepad buttons",
      values = {
        {
          name = "GAMEPAD_BUTTON_UNKNOWN",
          value = 0,
          description = "Unknown button, just for error checking"
        },
        {
          name = "GAMEPAD_BUTTON_LEFT_FACE_UP",
          value = 1,
          description = "Gamepad left DPAD up button"
        },
        {
          name = "GAMEPAD_BUTTON_LEFT_FACE_RIGHT",
          value = 2,
          description = "Gamepad left DPAD right button"
        },
        {
          name = "GAMEPAD_BUTTON_LEFT_FACE_DOWN",
          value = 3,
          description = "Gamepad left DPAD down button"
        },
        {
          name = "GAMEPAD_BUTTON_LEFT_FACE_LEFT",
          value = 4,
          description = "Gamepad left DPAD left button"
        },
        {
          name = "GAMEPAD_BUTTON_RIGHT_FACE_UP",
          value = 5,
          description = "Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)"
        },
        {
          name = "GAMEPAD_BUTTON_RIGHT_FACE_RIGHT",
          value = 6,
          description = "Gamepad right button right (i.e. PS3: Square, Xbox: X)"
        },
        {
          name = "GAMEPAD_BUTTON_RIGHT_FACE_DOWN",
          value = 7,
          description = "Gamepad right button down (i.e. PS3: Cross, Xbox: A)"
        },
        {
          name = "GAMEPAD_BUTTON_RIGHT_FACE_LEFT",
          value = 8,
          description = "Gamepad right button left (i.e. PS3: Circle, Xbox: B)"
        },
        {
          name = "GAMEPAD_BUTTON_LEFT_TRIGGER_1",
          value = 9,
          description = "Gamepad top/back trigger left (first), it could be a trailing button"
        },
        {
          name = "GAMEPAD_BUTTON_LEFT_TRIGGER_2",
          value = 10,
          description = "Gamepad top/back trigger left (second), it could be a trailing button"
        },
        {
          name = "GAMEPAD_BUTTON_RIGHT_TRIGGER_1",
          value = 11,
          description = "Gamepad top/back trigger right (one), it could be a trailing button"
        },
        {
          name = "GAMEPAD_BUTTON_RIGHT_TRIGGER_2",
          value = 12,
          description = "Gamepad top/back trigger right (second), it could be a trailing button"
        },
        {
          name = "GAMEPAD_BUTTON_MIDDLE_LEFT",
          value = 13,
          description = "Gamepad center buttons, left one (i.e. PS3: Select)"
        },
        {
          name = "GAMEPAD_BUTTON_MIDDLE",
          value = 14,
          description = "Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)"
        },
        {
          name = "GAMEPAD_BUTTON_MIDDLE_RIGHT",
          value = 15,
          description = "Gamepad center buttons, right one (i.e. PS3: Start)"
        },
        {
          name = "GAMEPAD_BUTTON_LEFT_THUMB",
          value = 16,
          description = "Gamepad joystick pressed button left"
        },
        {
          name = "GAMEPAD_BUTTON_RIGHT_THUMB",
          value = 17,
          description = "Gamepad joystick pressed button right"
        }
      }
    },
    {
      name = "GamepadAxis",
      description = "Gamepad axis",
      values = {
        {
          name = "GAMEPAD_AXIS_LEFT_X",
          value = 0,
          description = "Gamepad left stick X axis"
        },
        {
          name = "GAMEPAD_AXIS_LEFT_Y",
          value = 1,
          description = "Gamepad left stick Y axis"
        },
        {
          name = "GAMEPAD_AXIS_RIGHT_X",
          value = 2,
          description = "Gamepad right stick X axis"
        },
        {
          name = "GAMEPAD_AXIS_RIGHT_Y",
          value = 3,
          description = "Gamepad right stick Y axis"
        },
        {
          name = "GAMEPAD_AXIS_LEFT_TRIGGER",
          value = 4,
          description = "Gamepad back trigger left, pressure level: [1..-1]"
        },
        {
          name = "GAMEPAD_AXIS_RIGHT_TRIGGER",
          value = 5,
          description = "Gamepad back trigger right, pressure level: [1..-1]"
        }
      }
    },
    {
      name = "MaterialMapIndex",
      description = "Material map index",
      values = {
        {
          name = "MATERIAL_MAP_ALBEDO",
          value = 0,
          description = "Albedo material (same as: MATERIAL_MAP_DIFFUSE)"
        },
        {
          name = "MATERIAL_MAP_METALNESS",
          value = 1,
          description = "Metalness material (same as: MATERIAL_MAP_SPECULAR)"
        },
        {
          name = "MATERIAL_MAP_NORMAL",
          value = 2,
          description = "Normal material"
        },
        {
          name = "MATERIAL_MAP_ROUGHNESS",
          value = 3,
          description = "Roughness material"
        },
        {
          name = "MATERIAL_MAP_OCCLUSION",
          value = 4,
          description = "Ambient occlusion material"
        },
        {
          name = "MATERIAL_MAP_EMISSION",
          value = 5,
          description = "Emission material"
        },
        {
          name = "MATERIAL_MAP_HEIGHT",
          value = 6,
          description = "Heightmap material"
        },
        {
          name = "MATERIAL_MAP_CUBEMAP",
          value = 7,
          description = "Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)"
        },
        {
          name = "MATERIAL_MAP_IRRADIANCE",
          value = 8,
          description = "Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)"
        },
        {
          name = "MATERIAL_MAP_PREFILTER",
          value = 9,
          description = "Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)"
        },
        {
          name = "MATERIAL_MAP_BRDF",
          value = 10,
          description = "Brdf material"
        }
      }
    },
    {
      name = "ShaderLocationIndex",
      description = "Shader location index",
      values = {
        {
          name = "SHADER_LOC_VERTEX_POSITION",
          value = 0,
          description = "Shader location: vertex attribute: position"
        },
        {
          name = "SHADER_LOC_VERTEX_TEXCOORD01",
          value = 1,
          description = "Shader location: vertex attribute: texcoord01"
        },
        {
          name = "SHADER_LOC_VERTEX_TEXCOORD02",
          value = 2,
          description = "Shader location: vertex attribute: texcoord02"
        },
        {
          name = "SHADER_LOC_VERTEX_NORMAL",
          value = 3,
          description = "Shader location: vertex attribute: normal"
        },
        {
          name = "SHADER_LOC_VERTEX_TANGENT",
          value = 4,
          description = "Shader location: vertex attribute: tangent"
        },
        {
          name = "SHADER_LOC_VERTEX_COLOR",
          value = 5,
          description = "Shader location: vertex attribute: color"
        },
        {
          name = "SHADER_LOC_MATRIX_MVP",
          value = 6,
          description = "Shader location: matrix uniform: model-view-projection"
        },
        {
          name = "SHADER_LOC_MATRIX_VIEW",
          value = 7,
          description = "Shader location: matrix uniform: view (camera transform)"
        },
        {
          name = "SHADER_LOC_MATRIX_PROJECTION",
          value = 8,
          description = "Shader location: matrix uniform: projection"
        },
        {
          name = "SHADER_LOC_MATRIX_MODEL",
          value = 9,
          description = "Shader location: matrix uniform: model (transform)"
        },
        {
          name = "SHADER_LOC_MATRIX_NORMAL",
          value = 10,
          description = "Shader location: matrix uniform: normal"
        },
        {
          name = "SHADER_LOC_VECTOR_VIEW",
          value = 11,
          description = "Shader location: vector uniform: view"
        },
        {
          name = "SHADER_LOC_COLOR_DIFFUSE",
          value = 12,
          description = "Shader location: vector uniform: diffuse color"
        },
        {
          name = "SHADER_LOC_COLOR_SPECULAR",
          value = 13,
          description = "Shader location: vector uniform: specular color"
        },
        {
          name = "SHADER_LOC_COLOR_AMBIENT",
          value = 14,
          description = "Shader location: vector uniform: ambient color"
        },
        {
          name = "SHADER_LOC_MAP_ALBEDO",
          value = 15,
          description = "Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)"
        },
        {
          name = "SHADER_LOC_MAP_METALNESS",
          value = 16,
          description = "Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)"
        },
        {
          name = "SHADER_LOC_MAP_NORMAL",
          value = 17,
          description = "Shader location: sampler2d texture: normal"
        },
        {
          name = "SHADER_LOC_MAP_ROUGHNESS",
          value = 18,
          description = "Shader location: sampler2d texture: roughness"
        },
        {
          name = "SHADER_LOC_MAP_OCCLUSION",
          value = 19,
          description = "Shader location: sampler2d texture: occlusion"
        },
        {
          name = "SHADER_LOC_MAP_EMISSION",
          value = 20,
          description = "Shader location: sampler2d texture: emission"
        },
        {
          name = "SHADER_LOC_MAP_HEIGHT",
          value = 21,
          description = "Shader location: sampler2d texture: height"
        },
        {
          name = "SHADER_LOC_MAP_CUBEMAP",
          value = 22,
          description = "Shader location: samplerCube texture: cubemap"
        },
        {
          name = "SHADER_LOC_MAP_IRRADIANCE",
          value = 23,
          description = "Shader location: samplerCube texture: irradiance"
        },
        {
          name = "SHADER_LOC_MAP_PREFILTER",
          value = 24,
          description = "Shader location: samplerCube texture: prefilter"
        },
        {
          name = "SHADER_LOC_MAP_BRDF",
          value = 25,
          description = "Shader location: sampler2d texture: brdf"
        }
      }
    },
    {
      name = "ShaderUniformDataType",
      description = "Shader uniform data type",
      values = {
        {
          name = "SHADER_UNIFORM_FLOAT",
          value = 0,
          description = "Shader uniform type: float"
        },
        {
          name = "SHADER_UNIFORM_VEC2",
          value = 1,
          description = "Shader uniform type: vec2 (2 float)"
        },
        {
          name = "SHADER_UNIFORM_VEC3",
          value = 2,
          description = "Shader uniform type: vec3 (3 float)"
        },
        {
          name = "SHADER_UNIFORM_VEC4",
          value = 3,
          description = "Shader uniform type: vec4 (4 float)"
        },
        {
          name = "SHADER_UNIFORM_INT",
          value = 4,
          description = "Shader uniform type: int"
        },
        {
          name = "SHADER_UNIFORM_IVEC2",
          value = 5,
          description = "Shader uniform type: ivec2 (2 int)"
        },
        {
          name = "SHADER_UNIFORM_IVEC3",
          value = 6,
          description = "Shader uniform type: ivec3 (3 int)"
        },
        {
          name = "SHADER_UNIFORM_IVEC4",
          value = 7,
          description = "Shader uniform type: ivec4 (4 int)"
        },
        {
          name = "SHADER_UNIFORM_SAMPLER2D",
          value = 8,
          description = "Shader uniform type: sampler2d"
        }
      }
    },
    {
      name = "ShaderAttributeDataType",
      description = "Shader attribute data types",
      values = {
        {
          name = "SHADER_ATTRIB_FLOAT",
          value = 0,
          description = "Shader attribute type: float"
        },
        {
          name = "SHADER_ATTRIB_VEC2",
          value = 1,
          description = "Shader attribute type: vec2 (2 float)"
        },
        {
          name = "SHADER_ATTRIB_VEC3",
          value = 2,
          description = "Shader attribute type: vec3 (3 float)"
        },
        {
          name = "SHADER_ATTRIB_VEC4",
          value = 3,
          description = "Shader attribute type: vec4 (4 float)"
        }
      }
    },
    {
      name = "PixelFormat",
      description = "Pixel formats",
      values = {
        {
          name = "PIXELFORMAT_UNCOMPRESSED_GRAYSCALE",
          value = 1,
          description = "8 bit per pixel (no alpha)"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA",
          value = 2,
          description = "8*2 bpp (2 channels)"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R5G6B5",
          value = 3,
          description = "16 bpp"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R8G8B8",
          value = 4,
          description = "24 bpp"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R5G5B5A1",
          value = 5,
          description = "16 bpp (1 bit alpha)"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R4G4B4A4",
          value = 6,
          description = "16 bpp (4 bit alpha)"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R8G8B8A8",
          value = 7,
          description = "32 bpp"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R32",
          value = 8,
          description = "32 bpp (1 channel - float)"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R32G32B32",
          value = 9,
          description = "32*3 bpp (3 channels - float)"
        },
        {
          name = "PIXELFORMAT_UNCOMPRESSED_R32G32B32A32",
          value = 10,
          description = "32*4 bpp (4 channels - float)"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_DXT1_RGB",
          value = 11,
          description = "4 bpp (no alpha)"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_DXT1_RGBA",
          value = 12,
          description = "4 bpp (1 bit alpha)"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_DXT3_RGBA",
          value = 13,
          description = "8 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_DXT5_RGBA",
          value = 14,
          description = "8 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_ETC1_RGB",
          value = 15,
          description = "4 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_ETC2_RGB",
          value = 16,
          description = "4 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA",
          value = 17,
          description = "8 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_PVRT_RGB",
          value = 18,
          description = "4 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_PVRT_RGBA",
          value = 19,
          description = "4 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA",
          value = 20,
          description = "8 bpp"
        },
        {
          name = "PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA",
          value = 21,
          description = "2 bpp"
        }
      }
    },
    {
      name = "TextureFilter",
      description = "Texture parameters: filter mode",
      values = {
        {
          name = "TEXTURE_FILTER_POINT",
          value = 0,
          description = "No filter, just pixel approximation"
        },
        {
          name = "TEXTURE_FILTER_BILINEAR",
          value = 1,
          description = "Linear filtering"
        },
        {
          name = "TEXTURE_FILTER_TRILINEAR",
          value = 2,
          description = "Trilinear filtering (linear with mipmaps)"
        },
        {
          name = "TEXTURE_FILTER_ANISOTROPIC_4X",
          value = 3,
          description = "Anisotropic filtering 4x"
        },
        {
          name = "TEXTURE_FILTER_ANISOTROPIC_8X",
          value = 4,
          description = "Anisotropic filtering 8x"
        },
        {
          name = "TEXTURE_FILTER_ANISOTROPIC_16X",
          value = 5,
          description = "Anisotropic filtering 16x"
        }
      }
    },
    {
      name = "TextureWrap",
      description = "Texture parameters: wrap mode",
      values = {
        {
          name = "TEXTURE_WRAP_REPEAT",
          value = 0,
          description = "Repeats texture in tiled mode"
        },
        {
          name = "TEXTURE_WRAP_CLAMP",
          value = 1,
          description = "Clamps texture to edge pixel in tiled mode"
        },
        {
          name = "TEXTURE_WRAP_MIRROR_REPEAT",
          value = 2,
          description = "Mirrors and repeats the texture in tiled mode"
        },
        {
          name = "TEXTURE_WRAP_MIRROR_CLAMP",
          value = 3,
          description = "Mirrors and clamps to border the texture in tiled mode"
        }
      }
    },
    {
      name = "CubemapLayout",
      description = "Cubemap layouts",
      values = {
        {
          name = "CUBEMAP_LAYOUT_AUTO_DETECT",
          value = 0,
          description = "Automatically detect layout type"
        },
        {
          name = "CUBEMAP_LAYOUT_LINE_VERTICAL",
          value = 1,
          description = "Layout is defined by a vertical line with faces"
        },
        {
          name = "CUBEMAP_LAYOUT_LINE_HORIZONTAL",
          value = 2,
          description = "Layout is defined by an horizontal line with faces"
        },
        {
          name = "CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR",
          value = 3,
          description = "Layout is defined by a 3x4 cross with cubemap faces"
        },
        {
          name = "CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE",
          value = 4,
          description = "Layout is defined by a 4x3 cross with cubemap faces"
        },
        {
          name = "CUBEMAP_LAYOUT_PANORAMA",
          value = 5,
          description = "Layout is defined by a panorama image (equirectangular map)"
        }
      }
    },
    {
      name = "FontType",
      description = "Font type, defines generation method",
      values = {
        {
          name = "FONT_DEFAULT",
          value = 0,
          description = "Default font generation, anti-aliased"
        },
        {
          name = "FONT_BITMAP",
          value = 1,
          description = "Bitmap font generation, no anti-aliasing"
        },
        {
          name = "FONT_SDF",
          value = 2,
          description = "SDF font generation, requires external shader"
        }
      }
    },
    {
      name = "BlendMode",
      description = "Color blending modes (pre-defined)",
      values = {
        {
          name = "BLEND_ALPHA",
          value = 0,
          description = "Blend textures considering alpha (default)"
        },
        {
          name = "BLEND_ADDITIVE",
          value = 1,
          description = "Blend textures adding colors"
        },
        {
          name = "BLEND_MULTIPLIED",
          value = 2,
          description = "Blend textures multiplying colors"
        },
        {
          name = "BLEND_ADD_COLORS",
          value = 3,
          description = "Blend textures adding colors (alternative)"
        },
        {
          name = "BLEND_SUBTRACT_COLORS",
          value = 4,
          description = "Blend textures subtracting colors (alternative)"
        },
        {
          name = "BLEND_ALPHA_PREMUL",
          value = 5,
          description = "Blend premultiplied textures considering alpha"
        },
        {
          name = "BLEND_CUSTOM",
          value = 6,
          description = "Blend textures using custom src/dst factors (use rlSetBlendMode())"
        }
      }
    },
    {
      name = "Gesture",
      description = "Gesture",
      values = {
        {
          name = "GESTURE_NONE",
          value = 0,
          description = "No gesture"
        },
        {
          name = "GESTURE_TAP",
          value = 1,
          description = "Tap gesture"
        },
        {
          name = "GESTURE_DOUBLETAP",
          value = 2,
          description = "Double tap gesture"
        },
        {
          name = "GESTURE_HOLD",
          value = 4,
          description = "Hold gesture"
        },
        {
          name = "GESTURE_DRAG",
          value = 8,
          description = "Drag gesture"
        },
        {
          name = "GESTURE_SWIPE_RIGHT",
          value = 16,
          description = "Swipe right gesture"
        },
        {
          name = "GESTURE_SWIPE_LEFT",
          value = 32,
          description = "Swipe left gesture"
        },
        {
          name = "GESTURE_SWIPE_UP",
          value = 64,
          description = "Swipe up gesture"
        },
        {
          name = "GESTURE_SWIPE_DOWN",
          value = 128,
          description = "Swipe down gesture"
        },
        {
          name = "GESTURE_PINCH_IN",
          value = 256,
          description = "Pinch in gesture"
        },
        {
          name = "GESTURE_PINCH_OUT",
          value = 512,
          description = "Pinch out gesture"
        }
      }
    },
    {
      name = "CameraMode",
      description = "Camera system modes",
      values = {
        {
          name = "CAMERA_CUSTOM",
          value = 0,
          description = "Custom camera"
        },
        {
          name = "CAMERA_FREE",
          value = 1,
          description = "Free camera"
        },
        {
          name = "CAMERA_ORBITAL",
          value = 2,
          description = "Orbital camera"
        },
        {
          name = "CAMERA_FIRST_PERSON",
          value = 3,
          description = "First person camera"
        },
        {
          name = "CAMERA_THIRD_PERSON",
          value = 4,
          description = "Third person camera"
        }
      }
    },
    {
      name = "CameraProjection",
      description = "Camera projection",
      values = {
        {
          name = "CAMERA_PERSPECTIVE",
          value = 0,
          description = "Perspective projection"
        },
        {
          name = "CAMERA_ORTHOGRAPHIC",
          value = 1,
          description = "Orthographic projection"
        }
      }
    },
    {
      name = "NPatchLayout",
      description = "N-patch layout",
      values = {
        {
          name = "NPATCH_NINE_PATCH",
          value = 0,
          description = "Npatch layout: 3x3 tiles"
        },
        {
          name = "NPATCH_THREE_PATCH_VERTICAL",
          value = 1,
          description = "Npatch layout: 1x3 tiles"
        },
        {
          name = "NPATCH_THREE_PATCH_HORIZONTAL",
          value = 2,
          description = "Npatch layout: 3x1 tiles"
        }
      }
    }
  },
  defines = {
    {
      name = "RAYLIB_H",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RAYLIB_VERSION",
      type = "STRING",
      value = "4.1-dev",
      description = ""
    },
    {
      name = "RLAPI",
      type = "UNKNOWN",
      value = "__declspec(dllexport)",
      description = "We are building the library as a Win32 shared library (.dll)"
    },
    {
      name = "PI",
      type = "FLOAT",
      value = 3.14159265358979323846,
      description = ""
    },
    {
      name = "DEG2RAD",
      type = "UNKNOWN",
      value = "(PI/180.0f)",
      description = ""
    },
    {
      name = "RAD2DEG",
      type = "UNKNOWN",
      value = "(180.0f/PI)",
      description = ""
    },
    {
      name = "RL_MALLOC(sz)",
      type = "MACRO",
      value = "malloc(sz)",
      description = ""
    },
    {
      name = "RL_CALLOC(n,sz)",
      type = "MACRO",
      value = "calloc(n,sz)",
      description = ""
    },
    {
      name = "RL_REALLOC(ptr,sz)",
      type = "MACRO",
      value = "realloc(ptr,sz)",
      description = ""
    },
    {
      name = "RL_FREE(ptr)",
      type = "MACRO",
      value = "free(ptr)",
      description = ""
    },
    {
      name = "CLITERAL(type)",
      type = "MACRO",
      value = "type",
      description = ""
    },
    {
      name = "RL_COLOR_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_RECTANGLE_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_VECTOR2_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_VECTOR3_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_VECTOR4_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_QUATERNION_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "RL_MATRIX_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "LIGHTGRAY",
      type = "COLOR",
      value = "CLITERAL(Color){ 200, 200, 200, 255 }",
      description = "Light Gray"
    },
    {
      name = "GRAY",
      type = "COLOR",
      value = "CLITERAL(Color){ 130, 130, 130, 255 }",
      description = "Gray"
    },
    {
      name = "DARKGRAY",
      type = "COLOR",
      value = "CLITERAL(Color){ 80, 80, 80, 255 }",
      description = "Dark Gray"
    },
    {
      name = "YELLOW",
      type = "COLOR",
      value = "CLITERAL(Color){ 253, 249, 0, 255 }",
      description = "Yellow"
    },
    {
      name = "GOLD",
      type = "COLOR",
      value = "CLITERAL(Color){ 255, 203, 0, 255 }",
      description = "Gold"
    },
    {
      name = "ORANGE",
      type = "COLOR",
      value = "CLITERAL(Color){ 255, 161, 0, 255 }",
      description = "Orange"
    },
    {
      name = "PINK",
      type = "COLOR",
      value = "CLITERAL(Color){ 255, 109, 194, 255 }",
      description = "Pink"
    },
    {
      name = "RED",
      type = "COLOR",
      value = "CLITERAL(Color){ 230, 41, 55, 255 }",
      description = "Red"
    },
    {
      name = "MAROON",
      type = "COLOR",
      value = "CLITERAL(Color){ 190, 33, 55, 255 }",
      description = "Maroon"
    },
    {
      name = "GREEN",
      type = "COLOR",
      value = "CLITERAL(Color){ 0, 228, 48, 255 }",
      description = "Green"
    },
    {
      name = "LIME",
      type = "COLOR",
      value = "CLITERAL(Color){ 0, 158, 47, 255 }",
      description = "Lime"
    },
    {
      name = "DARKGREEN",
      type = "COLOR",
      value = "CLITERAL(Color){ 0, 117, 44, 255 }",
      description = "Dark Green"
    },
    {
      name = "SKYBLUE",
      type = "COLOR",
      value = "CLITERAL(Color){ 102, 191, 255, 255 }",
      description = "Sky Blue"
    },
    {
      name = "BLUE",
      type = "COLOR",
      value = "CLITERAL(Color){ 0, 121, 241, 255 }",
      description = "Blue"
    },
    {
      name = "DARKBLUE",
      type = "COLOR",
      value = "CLITERAL(Color){ 0, 82, 172, 255 }",
      description = "Dark Blue"
    },
    {
      name = "PURPLE",
      type = "COLOR",
      value = "CLITERAL(Color){ 200, 122, 255, 255 }",
      description = "Purple"
    },
    {
      name = "VIOLET",
      type = "COLOR",
      value = "CLITERAL(Color){ 135, 60, 190, 255 }",
      description = "Violet"
    },
    {
      name = "DARKPURPLE",
      type = "COLOR",
      value = "CLITERAL(Color){ 112, 31, 126, 255 }",
      description = "Dark Purple"
    },
    {
      name = "BEIGE",
      type = "COLOR",
      value = "CLITERAL(Color){ 211, 176, 131, 255 }",
      description = "Beige"
    },
    {
      name = "BROWN",
      type = "COLOR",
      value = "CLITERAL(Color){ 127, 106, 79, 255 }",
      description = "Brown"
    },
    {
      name = "DARKBROWN",
      type = "COLOR",
      value = "CLITERAL(Color){ 76, 63, 47, 255 }",
      description = "Dark Brown"
    },
    {
      name = "WHITE",
      type = "COLOR",
      value = "CLITERAL(Color){ 255, 255, 255, 255 }",
      description = "White"
    },
    {
      name = "BLACK",
      type = "COLOR",
      value = "CLITERAL(Color){ 0, 0, 0, 255 }",
      description = "Black"
    },
    {
      name = "BLANK",
      type = "COLOR",
      value = "CLITERAL(Color){ 0, 0, 0, 0 }",
      description = "Blank (Transparent)"
    },
    {
      name = "MAGENTA",
      type = "COLOR",
      value = "CLITERAL(Color){ 255, 0, 255, 255 }",
      description = "Magenta"
    },
    {
      name = "RAYWHITE",
      type = "COLOR",
      value = "CLITERAL(Color){ 245, 245, 245, 255 }",
      description = "My own White (raylib logo)"
    },
    {
      name = "RL_BOOL_TYPE",
      type = "GUARD",
      value = "",
      description = ""
    },
    {
      name = "MOUSE_LEFT_BUTTON",
      type = "UNKNOWN",
      value = "MOUSE_BUTTON_LEFT",
      description = ""
    },
    {
      name = "MOUSE_RIGHT_BUTTON",
      type = "UNKNOWN",
      value = "MOUSE_BUTTON_RIGHT",
      description = ""
    },
    {
      name = "MOUSE_MIDDLE_BUTTON",
      type = "UNKNOWN",
      value = "MOUSE_BUTTON_MIDDLE",
      description = ""
    },
    {
      name = "MATERIAL_MAP_DIFFUSE",
      type = "UNKNOWN",
      value = "MATERIAL_MAP_ALBEDO",
      description = ""
    },
    {
      name = "MATERIAL_MAP_SPECULAR",
      type = "UNKNOWN",
      value = "MATERIAL_MAP_METALNESS",
      description = ""
    },
    {
      name = "SHADER_LOC_MAP_DIFFUSE",
      type = "UNKNOWN",
      value = "SHADER_LOC_MAP_ALBEDO",
      description = ""
    },
    {
      name = "SHADER_LOC_MAP_SPECULAR",
      type = "UNKNOWN",
      value = "SHADER_LOC_MAP_METALNESS",
      description = ""
    }
  },
  functions = {
    {
      name = "InitWindow",
      description = "Initialize window and OpenGL context",
      returnType = "void",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "const char *", name = "title"}
      }
    },
    {
      name = "WindowShouldClose",
      description = "Check if KEY_ESCAPE pressed or Close icon pressed",
      returnType = "bool"
    },
    {
      name = "CloseWindow",
      description = "Close window and unload OpenGL context",
      returnType = "void"
    },
    {
      name = "IsWindowReady",
      description = "Check if window has been initialized successfully",
      returnType = "bool"
    },
    {
      name = "IsWindowFullscreen",
      description = "Check if window is currently fullscreen",
      returnType = "bool"
    },
    {
      name = "IsWindowHidden",
      description = "Check if window is currently hidden (only PLATFORM_DESKTOP)",
      returnType = "bool"
    },
    {
      name = "IsWindowMinimized",
      description = "Check if window is currently minimized (only PLATFORM_DESKTOP)",
      returnType = "bool"
    },
    {
      name = "IsWindowMaximized",
      description = "Check if window is currently maximized (only PLATFORM_DESKTOP)",
      returnType = "bool"
    },
    {
      name = "IsWindowFocused",
      description = "Check if window is currently focused (only PLATFORM_DESKTOP)",
      returnType = "bool"
    },
    {
      name = "IsWindowResized",
      description = "Check if window has been resized last frame",
      returnType = "bool"
    },
    {
      name = "IsWindowState",
      description = "Check if one specific window flag is enabled",
      returnType = "bool",
      params = {
        {type = "unsigned int", name = "flag"}
      }
    },
    {
      name = "SetWindowState",
      description = "Set window configuration state using flags (only PLATFORM_DESKTOP)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "flags"}
      }
    },
    {
      name = "ClearWindowState",
      description = "Clear window configuration state flags",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "flags"}
      }
    },
    {
      name = "ToggleFullscreen",
      description = "Toggle window state: fullscreen/windowed (only PLATFORM_DESKTOP)",
      returnType = "void"
    },
    {
      name = "MaximizeWindow",
      description = "Set window state: maximized, if resizable (only PLATFORM_DESKTOP)",
      returnType = "void"
    },
    {
      name = "MinimizeWindow",
      description = "Set window state: minimized, if resizable (only PLATFORM_DESKTOP)",
      returnType = "void"
    },
    {
      name = "RestoreWindow",
      description = "Set window state: not minimized/maximized (only PLATFORM_DESKTOP)",
      returnType = "void"
    },
    {
      name = "SetWindowIcon",
      description = "Set icon for window (only PLATFORM_DESKTOP)",
      returnType = "void",
      params = {
        {type = "Image", name = "image"}
      }
    },
    {
      name = "SetWindowTitle",
      description = "Set title for window (only PLATFORM_DESKTOP)",
      returnType = "void",
      params = {
        {type = "const char *", name = "title"}
      }
    },
    {
      name = "SetWindowPosition",
      description = "Set window position on screen (only PLATFORM_DESKTOP)",
      returnType = "void",
      params = {
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "SetWindowMonitor",
      description = "Set monitor for the current window (fullscreen mode)",
      returnType = "void",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "SetWindowMinSize",
      description = "Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)",
      returnType = "void",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "SetWindowSize",
      description = "Set window dimensions",
      returnType = "void",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "SetWindowOpacity",
      description = "Set window opacity [0.0f..1.0f] (only PLATFORM_DESKTOP)",
      returnType = "void",
      params = {
        {type = "float", name = "opacity"}
      }
    },
    {
      name = "GetWindowHandle",
      description = "Get native window handle",
      returnType = "void *"
    },
    {
      name = "GetScreenWidth",
      description = "Get current screen width",
      returnType = "int"
    },
    {
      name = "GetScreenHeight",
      description = "Get current screen height",
      returnType = "int"
    },
    {
      name = "GetRenderWidth",
      description = "Get current render width (it considers HiDPI)",
      returnType = "int"
    },
    {
      name = "GetRenderHeight",
      description = "Get current render height (it considers HiDPI)",
      returnType = "int"
    },
    {
      name = "GetMonitorCount",
      description = "Get number of connected monitors",
      returnType = "int"
    },
    {
      name = "GetCurrentMonitor",
      description = "Get current connected monitor",
      returnType = "int"
    },
    {
      name = "GetMonitorPosition",
      description = "Get specified monitor position",
      returnType = "Vector2",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "GetMonitorWidth",
      description = "Get specified monitor width (max available by monitor)",
      returnType = "int",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "GetMonitorHeight",
      description = "Get specified monitor height (max available by monitor)",
      returnType = "int",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "GetMonitorPhysicalWidth",
      description = "Get specified monitor physical width in millimetres",
      returnType = "int",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "GetMonitorPhysicalHeight",
      description = "Get specified monitor physical height in millimetres",
      returnType = "int",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "GetMonitorRefreshRate",
      description = "Get specified monitor refresh rate",
      returnType = "int",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "GetWindowPosition",
      description = "Get window position XY on monitor",
      returnType = "Vector2"
    },
    {
      name = "GetWindowScaleDPI",
      description = "Get window scale DPI factor",
      returnType = "Vector2"
    },
    {
      name = "GetMonitorName",
      description = "Get the human-readable, UTF-8 encoded name of the primary monitor",
      returnType = "const char *",
      params = {
        {type = "int", name = "monitor"}
      }
    },
    {
      name = "SetClipboardText",
      description = "Set clipboard text content",
      returnType = "void",
      params = {
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GetClipboardText",
      description = "Get clipboard text content",
      returnType = "const char *"
    },
    {
      name = "SwapScreenBuffer",
      description = "Swap back buffer with front buffer (screen drawing)",
      returnType = "void"
    },
    {
      name = "PollInputEvents",
      description = "Register all input events",
      returnType = "void"
    },
    {
      name = "WaitTime",
      description = "Wait for some milliseconds (halt program execution)",
      returnType = "void",
      params = {
        {type = "float", name = "ms"}
      }
    },
    {
      name = "ShowCursor",
      description = "Shows cursor",
      returnType = "void"
    },
    {
      name = "HideCursor",
      description = "Hides cursor",
      returnType = "void"
    },
    {
      name = "IsCursorHidden",
      description = "Check if cursor is not visible",
      returnType = "bool"
    },
    {
      name = "EnableCursor",
      description = "Enables cursor (unlock cursor)",
      returnType = "void"
    },
    {
      name = "DisableCursor",
      description = "Disables cursor (lock cursor)",
      returnType = "void"
    },
    {
      name = "IsCursorOnScreen",
      description = "Check if cursor is on the screen",
      returnType = "bool"
    },
    {
      name = "ClearBackground",
      description = "Set background color (framebuffer clear color)",
      returnType = "void",
      params = {
        {type = "Color", name = "color"}
      }
    },
    {
      name = "BeginDrawing",
      description = "Setup canvas (framebuffer) to start drawing",
      returnType = "void"
    },
    {
      name = "EndDrawing",
      description = "End canvas drawing and swap buffers (double buffering)",
      returnType = "void"
    },
    {
      name = "BeginMode2D",
      description = "Begin 2D mode with custom camera (2D)",
      returnType = "void",
      params = {
        {type = "Camera2D", name = "camera"}
      }
    },
    {
      name = "EndMode2D",
      description = "Ends 2D mode with custom camera",
      returnType = "void"
    },
    {
      name = "BeginMode3D",
      description = "Begin 3D mode with custom camera (3D)",
      returnType = "void",
      params = {
        {type = "Camera3D", name = "camera"}
      }
    },
    {
      name = "EndMode3D",
      description = "Ends 3D mode and returns to default 2D orthographic mode",
      returnType = "void"
    },
    {
      name = "BeginTextureMode",
      description = "Begin drawing to render texture",
      returnType = "void",
      params = {
        {type = "RenderTexture2D", name = "target"}
      }
    },
    {
      name = "EndTextureMode",
      description = "Ends drawing to render texture",
      returnType = "void"
    },
    {
      name = "BeginShaderMode",
      description = "Begin custom shader drawing",
      returnType = "void",
      params = {
        {type = "Shader", name = "shader"}
      }
    },
    {
      name = "EndShaderMode",
      description = "End custom shader drawing (use default shader)",
      returnType = "void"
    },
    {
      name = "BeginBlendMode",
      description = "Begin blending mode (alpha, additive, multiplied, subtract, custom)",
      returnType = "void",
      params = {
        {type = "int", name = "mode"}
      }
    },
    {
      name = "EndBlendMode",
      description = "End blending mode (reset to default: alpha blending)",
      returnType = "void"
    },
    {
      name = "BeginScissorMode",
      description = "Begin scissor mode (define screen area for following drawing)",
      returnType = "void",
      params = {
        {type = "int", name = "x"},
        {type = "int", name = "y"},
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "EndScissorMode",
      description = "End scissor mode",
      returnType = "void"
    },
    {
      name = "BeginVrStereoMode",
      description = "Begin stereo rendering (requires VR simulator)",
      returnType = "void",
      params = {
        {type = "VrStereoConfig", name = "config"}
      }
    },
    {
      name = "EndVrStereoMode",
      description = "End stereo rendering (requires VR simulator)",
      returnType = "void"
    },
    {
      name = "LoadVrStereoConfig",
      description = "Load VR stereo config for VR simulator device parameters",
      returnType = "VrStereoConfig",
      params = {
        {type = "VrDeviceInfo", name = "device"}
      }
    },
    {
      name = "UnloadVrStereoConfig",
      description = "Unload VR stereo config",
      returnType = "void",
      params = {
        {type = "VrStereoConfig", name = "config"}
      }
    },
    {
      name = "LoadShader",
      description = "Load shader from files and bind default locations",
      returnType = "Shader",
      params = {
        {type = "const char *", name = "vsFileName"},
        {type = "const char *", name = "fsFileName"}
      }
    },
    {
      name = "LoadShaderFromMemory",
      description = "Load shader from code strings and bind default locations",
      returnType = "Shader",
      params = {
        {type = "const char *", name = "vsCode"},
        {type = "const char *", name = "fsCode"}
      }
    },
    {
      name = "GetShaderLocation",
      description = "Get shader uniform location",
      returnType = "int",
      params = {
        {type = "Shader", name = "shader"},
        {type = "const char *", name = "uniformName"}
      }
    },
    {
      name = "GetShaderLocationAttrib",
      description = "Get shader attribute location",
      returnType = "int",
      params = {
        {type = "Shader", name = "shader"},
        {type = "const char *", name = "attribName"}
      }
    },
    {
      name = "SetShaderValue",
      description = "Set shader uniform value",
      returnType = "void",
      params = {
        {type = "Shader", name = "shader"},
        {type = "int", name = "locIndex"},
        {type = "const void *", name = "value"},
        {type = "int", name = "uniformType"}
      }
    },
    {
      name = "SetShaderValueV",
      description = "Set shader uniform value vector",
      returnType = "void",
      params = {
        {type = "Shader", name = "shader"},
        {type = "int", name = "locIndex"},
        {type = "const void *", name = "value"},
        {type = "int", name = "uniformType"},
        {type = "int", name = "count"}
      }
    },
    {
      name = "SetShaderValueMatrix",
      description = "Set shader uniform value (matrix 4x4)",
      returnType = "void",
      params = {
        {type = "Shader", name = "shader"},
        {type = "int", name = "locIndex"},
        {type = "Matrix", name = "mat"}
      }
    },
    {
      name = "SetShaderValueTexture",
      description = "Set shader uniform value for texture (sampler2d)",
      returnType = "void",
      params = {
        {type = "Shader", name = "shader"},
        {type = "int", name = "locIndex"},
        {type = "Texture2D", name = "texture"}
      }
    },
    {
      name = "UnloadShader",
      description = "Unload shader from GPU memory (VRAM)",
      returnType = "void",
      params = {
        {type = "Shader", name = "shader"}
      }
    },
    {
      name = "GetMouseRay",
      description = "Get a ray trace from mouse position",
      returnType = "Ray",
      params = {
        {type = "Vector2", name = "mousePosition"},
        {type = "Camera", name = "camera"}
      }
    },
    {
      name = "GetCameraMatrix",
      description = "Get camera transform matrix (view matrix)",
      returnType = "Matrix",
      params = {
        {type = "Camera", name = "camera"}
      }
    },
    {
      name = "GetCameraMatrix2D",
      description = "Get camera 2d transform matrix",
      returnType = "Matrix",
      params = {
        {type = "Camera2D", name = "camera"}
      }
    },
    {
      name = "GetWorldToScreen",
      description = "Get the screen space position for a 3d world space position",
      returnType = "Vector2",
      params = {
        {type = "Vector3", name = "position"},
        {type = "Camera", name = "camera"}
      }
    },
    {
      name = "GetWorldToScreenEx",
      description = "Get size position for a 3d world space position",
      returnType = "Vector2",
      params = {
        {type = "Vector3", name = "position"},
        {type = "Camera", name = "camera"},
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "GetWorldToScreen2D",
      description = "Get the screen space position for a 2d camera world space position",
      returnType = "Vector2",
      params = {
        {type = "Vector2", name = "position"},
        {type = "Camera2D", name = "camera"}
      }
    },
    {
      name = "GetScreenToWorld2D",
      description = "Get the world space position for a 2d camera screen space position",
      returnType = "Vector2",
      params = {
        {type = "Vector2", name = "position"},
        {type = "Camera2D", name = "camera"}
      }
    },
    {
      name = "SetTargetFPS",
      description = "Set target FPS (maximum)",
      returnType = "void",
      params = {
        {type = "int", name = "fps"}
      }
    },
    {
      name = "GetFPS",
      description = "Get current FPS",
      returnType = "int"
    },
    {
      name = "GetFrameTime",
      description = "Get time in seconds for last frame drawn (delta time)",
      returnType = "float"
    },
    {
      name = "GetTime",
      description = "Get elapsed time in seconds since InitWindow()",
      returnType = "double"
    },
    {
      name = "GetRandomValue",
      description = "Get a random value between min and max (both included)",
      returnType = "int",
      params = {
        {type = "int", name = "min"},
        {type = "int", name = "max"}
      }
    },
    {
      name = "SetRandomSeed",
      description = "Set the seed for the random number generator",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "seed"}
      }
    },
    {
      name = "TakeScreenshot",
      description = "Takes a screenshot of current screen (filename extension defines format)",
      returnType = "void",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "SetConfigFlags",
      description = "Setup init configuration flags (view FLAGS)",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "flags"}
      }
    },
    {
      name = "TraceLog",
      description = "Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)",
      returnType = "void",
      params = {
        {type = "int", name = "logLevel"},
        {type = "const char *", name = "text"},
        {type = "...", name = "args"}
      }
    },
    {
      name = "SetTraceLogLevel",
      description = "Set the current threshold (minimum) log level",
      returnType = "void",
      params = {
        {type = "int", name = "logLevel"}
      }
    },
    {
      name = "MemAlloc",
      description = "Internal memory allocator",
      returnType = "void *",
      params = {
        {type = "int", name = "size"}
      }
    },
    {
      name = "MemRealloc",
      description = "Internal memory reallocator",
      returnType = "void *",
      params = {
        {type = "void *", name = "ptr"},
        {type = "int", name = "size"}
      }
    },
    {
      name = "MemFree",
      description = "Internal memory free",
      returnType = "void",
      params = {
        {type = "void *", name = "ptr"}
      }
    },
    {
      name = "SetTraceLogCallback",
      description = "Set custom trace log",
      returnType = "void",
      params = {
        {type = "TraceLogCallback", name = "callback"}
      }
    },
    {
      name = "SetLoadFileDataCallback",
      description = "Set custom file binary data loader",
      returnType = "void",
      params = {
        {type = "LoadFileDataCallback", name = "callback"}
      }
    },
    {
      name = "SetSaveFileDataCallback",
      description = "Set custom file binary data saver",
      returnType = "void",
      params = {
        {type = "SaveFileDataCallback", name = "callback"}
      }
    },
    {
      name = "SetLoadFileTextCallback",
      description = "Set custom file text data loader",
      returnType = "void",
      params = {
        {type = "LoadFileTextCallback", name = "callback"}
      }
    },
    {
      name = "SetSaveFileTextCallback",
      description = "Set custom file text data saver",
      returnType = "void",
      params = {
        {type = "SaveFileTextCallback", name = "callback"}
      }
    },
    {
      name = "LoadFileData",
      description = "Load file data as byte array (read)",
      returnType = "unsigned char *",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "unsigned int *", name = "bytesRead"}
      }
    },
    {
      name = "UnloadFileData",
      description = "Unload file data allocated by LoadFileData()",
      returnType = "void",
      params = {
        {type = "unsigned char *", name = "data"}
      }
    },
    {
      name = "SaveFileData",
      description = "Save data to file from byte array (write), returns true on success",
      returnType = "bool",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "void *", name = "data"},
        {type = "unsigned int", name = "bytesToWrite"}
      }
    },
    {
      name = "LoadFileText",
      description = "Load text data from file (read), returns a '\\0' terminated string",
      returnType = "char *",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "UnloadFileText",
      description = "Unload file text data allocated by LoadFileText()",
      returnType = "void",
      params = {
        {type = "char *", name = "text"}
      }
    },
    {
      name = "SaveFileText",
      description = "Save text data to file (write), string must be '\\0' terminated, returns true on success",
      returnType = "bool",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "char *", name = "text"}
      }
    },
    {
      name = "FileExists",
      description = "Check if file exists",
      returnType = "bool",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "DirectoryExists",
      description = "Check if a directory path exists",
      returnType = "bool",
      params = {
        {type = "const char *", name = "dirPath"}
      }
    },
    {
      name = "IsFileExtension",
      description = "Check file extension (including point: .png, .wav)",
      returnType = "bool",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "const char *", name = "ext"}
      }
    },
    {
      name = "GetFileLength",
      description = "Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)",
      returnType = "int",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "GetFileExtension",
      description = "Get pointer to extension for a filename string (includes dot: '.png')",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "GetFileName",
      description = "Get pointer to filename for a path string",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "filePath"}
      }
    },
    {
      name = "GetFileNameWithoutExt",
      description = "Get filename string without extension (uses static string)",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "filePath"}
      }
    },
    {
      name = "GetDirectoryPath",
      description = "Get full path for a given fileName with path (uses static string)",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "filePath"}
      }
    },
    {
      name = "GetPrevDirectoryPath",
      description = "Get previous directory path for a given path (uses static string)",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "dirPath"}
      }
    },
    {
      name = "GetWorkingDirectory",
      description = "Get current working directory (uses static string)",
      returnType = "const char *"
    },
    {
      name = "GetApplicationDirectory",
      description = "Get the directory if the running application (uses static string)",
      returnType = "const char *"
    },
    {
      name = "GetDirectoryFiles",
      description = "Get filenames in a directory path (memory should be freed)",
      returnType = "char **",
      params = {
        {type = "const char *", name = "dirPath"},
        {type = "int *", name = "count"}
      }
    },
    {
      name = "ClearDirectoryFiles",
      description = "Clear directory files paths buffers (free memory)",
      returnType = "void"
    },
    {
      name = "ChangeDirectory",
      description = "Change working directory, return true on success",
      returnType = "bool",
      params = {
        {type = "const char *", name = "dir"}
      }
    },
    {
      name = "IsFileDropped",
      description = "Check if a file has been dropped into window",
      returnType = "bool"
    },
    {
      name = "GetDroppedFiles",
      description = "Get dropped files names (memory should be freed)",
      returnType = "char **",
      params = {
        {type = "int *", name = "count"}
      }
    },
    {
      name = "ClearDroppedFiles",
      description = "Clear dropped files paths buffer (free memory)",
      returnType = "void"
    },
    {
      name = "GetFileModTime",
      description = "Get file modification time (last write time)",
      returnType = "long",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "CompressData",
      description = "Compress data (DEFLATE algorithm)",
      returnType = "unsigned char *",
      params = {
        {type = "const unsigned char *", name = "data"},
        {type = "int", name = "dataLength"},
        {type = "int *", name = "compDataLength"}
      }
    },
    {
      name = "DecompressData",
      description = "Decompress data (DEFLATE algorithm)",
      returnType = "unsigned char *",
      params = {
        {type = "const unsigned char *", name = "compData"},
        {type = "int", name = "compDataLength"},
        {type = "int *", name = "dataLength"}
      }
    },
    {
      name = "EncodeDataBase64",
      description = "Encode data to Base64 string",
      returnType = "char *",
      params = {
        {type = "const unsigned char *", name = "data"},
        {type = "int", name = "dataLength"},
        {type = "int *", name = "outputLength"}
      }
    },
    {
      name = "DecodeDataBase64",
      description = "Decode Base64 string data",
      returnType = "unsigned char *",
      params = {
        {type = "const unsigned char *", name = "data"},
        {type = "int *", name = "outputLength"}
      }
    },
    {
      name = "SaveStorageValue",
      description = "Save integer value to storage file (to defined position), returns true on success",
      returnType = "bool",
      params = {
        {type = "unsigned int", name = "position"},
        {type = "int", name = "value"}
      }
    },
    {
      name = "LoadStorageValue",
      description = "Load integer value from storage file (from defined position)",
      returnType = "int",
      params = {
        {type = "unsigned int", name = "position"}
      }
    },
    {
      name = "OpenURL",
      description = "Open URL with default system browser (if available)",
      returnType = "void",
      params = {
        {type = "const char *", name = "url"}
      }
    },
    {
      name = "IsKeyPressed",
      description = "Check if a key has been pressed once",
      returnType = "bool",
      params = {
        {type = "int", name = "key"}
      }
    },
    {
      name = "IsKeyDown",
      description = "Check if a key is being pressed",
      returnType = "bool",
      params = {
        {type = "int", name = "key"}
      }
    },
    {
      name = "IsKeyReleased",
      description = "Check if a key has been released once",
      returnType = "bool",
      params = {
        {type = "int", name = "key"}
      }
    },
    {
      name = "IsKeyUp",
      description = "Check if a key is NOT being pressed",
      returnType = "bool",
      params = {
        {type = "int", name = "key"}
      }
    },
    {
      name = "SetExitKey",
      description = "Set a custom key to exit program (default is ESC)",
      returnType = "void",
      params = {
        {type = "int", name = "key"}
      }
    },
    {
      name = "GetKeyPressed",
      description = "Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty",
      returnType = "int"
    },
    {
      name = "GetCharPressed",
      description = "Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty",
      returnType = "int"
    },
    {
      name = "IsGamepadAvailable",
      description = "Check if a gamepad is available",
      returnType = "bool",
      params = {
        {type = "int", name = "gamepad"}
      }
    },
    {
      name = "GetGamepadName",
      description = "Get gamepad internal name id",
      returnType = "const char *",
      params = {
        {type = "int", name = "gamepad"}
      }
    },
    {
      name = "IsGamepadButtonPressed",
      description = "Check if a gamepad button has been pressed once",
      returnType = "bool",
      params = {
        {type = "int", name = "gamepad"},
        {type = "int", name = "button"}
      }
    },
    {
      name = "IsGamepadButtonDown",
      description = "Check if a gamepad button is being pressed",
      returnType = "bool",
      params = {
        {type = "int", name = "gamepad"},
        {type = "int", name = "button"}
      }
    },
    {
      name = "IsGamepadButtonReleased",
      description = "Check if a gamepad button has been released once",
      returnType = "bool",
      params = {
        {type = "int", name = "gamepad"},
        {type = "int", name = "button"}
      }
    },
    {
      name = "IsGamepadButtonUp",
      description = "Check if a gamepad button is NOT being pressed",
      returnType = "bool",
      params = {
        {type = "int", name = "gamepad"},
        {type = "int", name = "button"}
      }
    },
    {
      name = "GetGamepadButtonPressed",
      description = "Get the last gamepad button pressed",
      returnType = "int"
    },
    {
      name = "GetGamepadAxisCount",
      description = "Get gamepad axis count for a gamepad",
      returnType = "int",
      params = {
        {type = "int", name = "gamepad"}
      }
    },
    {
      name = "GetGamepadAxisMovement",
      description = "Get axis movement value for a gamepad axis",
      returnType = "float",
      params = {
        {type = "int", name = "gamepad"},
        {type = "int", name = "axis"}
      }
    },
    {
      name = "SetGamepadMappings",
      description = "Set internal gamepad mappings (SDL_GameControllerDB)",
      returnType = "int",
      params = {
        {type = "const char *", name = "mappings"}
      }
    },
    {
      name = "IsMouseButtonPressed",
      description = "Check if a mouse button has been pressed once",
      returnType = "bool",
      params = {
        {type = "int", name = "button"}
      }
    },
    {
      name = "IsMouseButtonDown",
      description = "Check if a mouse button is being pressed",
      returnType = "bool",
      params = {
        {type = "int", name = "button"}
      }
    },
    {
      name = "IsMouseButtonReleased",
      description = "Check if a mouse button has been released once",
      returnType = "bool",
      params = {
        {type = "int", name = "button"}
      }
    },
    {
      name = "IsMouseButtonUp",
      description = "Check if a mouse button is NOT being pressed",
      returnType = "bool",
      params = {
        {type = "int", name = "button"}
      }
    },
    {
      name = "GetMouseX",
      description = "Get mouse position X",
      returnType = "int"
    },
    {
      name = "GetMouseY",
      description = "Get mouse position Y",
      returnType = "int"
    },
    {
      name = "GetMousePosition",
      description = "Get mouse position XY",
      returnType = "Vector2"
    },
    {
      name = "GetMouseDelta",
      description = "Get mouse delta between frames",
      returnType = "Vector2"
    },
    {
      name = "SetMousePosition",
      description = "Set mouse position XY",
      returnType = "void",
      params = {
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "SetMouseOffset",
      description = "Set mouse offset",
      returnType = "void",
      params = {
        {type = "int", name = "offsetX"},
        {type = "int", name = "offsetY"}
      }
    },
    {
      name = "SetMouseScale",
      description = "Set mouse scaling",
      returnType = "void",
      params = {
        {type = "float", name = "scaleX"},
        {type = "float", name = "scaleY"}
      }
    },
    {
      name = "GetMouseWheelMove",
      description = "Get mouse wheel movement Y",
      returnType = "float"
    },
    {
      name = "SetMouseCursor",
      description = "Set mouse cursor",
      returnType = "void",
      params = {
        {type = "int", name = "cursor"}
      }
    },
    {
      name = "GetTouchX",
      description = "Get touch position X for touch point 0 (relative to screen size)",
      returnType = "int"
    },
    {
      name = "GetTouchY",
      description = "Get touch position Y for touch point 0 (relative to screen size)",
      returnType = "int"
    },
    {
      name = "GetTouchPosition",
      description = "Get touch position XY for a touch point index (relative to screen size)",
      returnType = "Vector2",
      params = {
        {type = "int", name = "index"}
      }
    },
    {
      name = "GetTouchPointId",
      description = "Get touch point identifier for given index",
      returnType = "int",
      params = {
        {type = "int", name = "index"}
      }
    },
    {
      name = "GetTouchPointCount",
      description = "Get number of touch points",
      returnType = "int"
    },
    {
      name = "SetGesturesEnabled",
      description = "Enable a set of gestures using flags",
      returnType = "void",
      params = {
        {type = "unsigned int", name = "flags"}
      }
    },
    {
      name = "IsGestureDetected",
      description = "Check if a gesture have been detected",
      returnType = "bool",
      params = {
        {type = "int", name = "gesture"}
      }
    },
    {
      name = "GetGestureDetected",
      description = "Get latest detected gesture",
      returnType = "int"
    },
    {
      name = "GetGestureHoldDuration",
      description = "Get gesture hold time in milliseconds",
      returnType = "float"
    },
    {
      name = "GetGestureDragVector",
      description = "Get gesture drag vector",
      returnType = "Vector2"
    },
    {
      name = "GetGestureDragAngle",
      description = "Get gesture drag angle",
      returnType = "float"
    },
    {
      name = "GetGesturePinchVector",
      description = "Get gesture pinch delta",
      returnType = "Vector2"
    },
    {
      name = "GetGesturePinchAngle",
      description = "Get gesture pinch angle",
      returnType = "float"
    },
    {
      name = "SetCameraMode",
      description = "Set camera mode (multiple camera modes available)",
      returnType = "void",
      params = {
        {type = "Camera", name = "camera"},
        {type = "int", name = "mode"}
      }
    },
    {
      name = "UpdateCamera",
      description = "Update camera position for selected mode",
      returnType = "void",
      params = {
        {type = "Camera *", name = "camera"}
      }
    },
    {
      name = "SetCameraPanControl",
      description = "Set camera pan key to combine with mouse movement (free camera)",
      returnType = "void",
      params = {
        {type = "int", name = "keyPan"}
      }
    },
    {
      name = "SetCameraAltControl",
      description = "Set camera alt key to combine with mouse movement (free camera)",
      returnType = "void",
      params = {
        {type = "int", name = "keyAlt"}
      }
    },
    {
      name = "SetCameraSmoothZoomControl",
      description = "Set camera smooth zoom key to combine with mouse (free camera)",
      returnType = "void",
      params = {
        {type = "int", name = "keySmoothZoom"}
      }
    },
    {
      name = "SetCameraMoveControls",
      description = "Set camera move controls (1st person and 3rd person cameras)",
      returnType = "void",
      params = {
        {type = "int", name = "keyFront"},
        {type = "int", name = "keyBack"},
        {type = "int", name = "keyRight"},
        {type = "int", name = "keyLeft"},
        {type = "int", name = "keyUp"},
        {type = "int", name = "keyDown"}
      }
    },
    {
      name = "SetShapesTexture",
      description = "Set texture and rectangle to be used on shapes drawing",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "source"}
      }
    },
    {
      name = "DrawPixel",
      description = "Draw a pixel",
      returnType = "void",
      params = {
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawPixelV",
      description = "Draw a pixel (Vector version)",
      returnType = "void",
      params = {
        {type = "Vector2", name = "position"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawLine",
      description = "Draw a line",
      returnType = "void",
      params = {
        {type = "int", name = "startPosX"},
        {type = "int", name = "startPosY"},
        {type = "int", name = "endPosX"},
        {type = "int", name = "endPosY"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawLineV",
      description = "Draw a line (Vector version)",
      returnType = "void",
      params = {
        {type = "Vector2", name = "startPos"},
        {type = "Vector2", name = "endPos"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawLineEx",
      description = "Draw a line defining thickness",
      returnType = "void",
      params = {
        {type = "Vector2", name = "startPos"},
        {type = "Vector2", name = "endPos"},
        {type = "float", name = "thick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawLineBezier",
      description = "Draw a line using cubic-bezier curves in-out",
      returnType = "void",
      params = {
        {type = "Vector2", name = "startPos"},
        {type = "Vector2", name = "endPos"},
        {type = "float", name = "thick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawLineBezierQuad",
      description = "Draw line using quadratic bezier curves with a control point",
      returnType = "void",
      params = {
        {type = "Vector2", name = "startPos"},
        {type = "Vector2", name = "endPos"},
        {type = "Vector2", name = "controlPos"},
        {type = "float", name = "thick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawLineBezierCubic",
      description = "Draw line using cubic bezier curves with 2 control points",
      returnType = "void",
      params = {
        {type = "Vector2", name = "startPos"},
        {type = "Vector2", name = "endPos"},
        {type = "Vector2", name = "startControlPos"},
        {type = "Vector2", name = "endControlPos"},
        {type = "float", name = "thick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawLineStrip",
      description = "Draw lines sequence",
      returnType = "void",
      params = {
        {type = "Vector2 *", name = "points"},
        {type = "int", name = "pointCount"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCircle",
      description = "Draw a color-filled circle",
      returnType = "void",
      params = {
        {type = "int", name = "centerX"},
        {type = "int", name = "centerY"},
        {type = "float", name = "radius"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCircleSector",
      description = "Draw a piece of a circle",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "float", name = "radius"},
        {type = "float", name = "startAngle"},
        {type = "float", name = "endAngle"},
        {type = "int", name = "segments"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCircleSectorLines",
      description = "Draw circle sector outline",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "float", name = "radius"},
        {type = "float", name = "startAngle"},
        {type = "float", name = "endAngle"},
        {type = "int", name = "segments"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCircleGradient",
      description = "Draw a gradient-filled circle",
      returnType = "void",
      params = {
        {type = "int", name = "centerX"},
        {type = "int", name = "centerY"},
        {type = "float", name = "radius"},
        {type = "Color", name = "color1"},
        {type = "Color", name = "color2"}
      }
    },
    {
      name = "DrawCircleV",
      description = "Draw a color-filled circle (Vector version)",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "float", name = "radius"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCircleLines",
      description = "Draw circle outline",
      returnType = "void",
      params = {
        {type = "int", name = "centerX"},
        {type = "int", name = "centerY"},
        {type = "float", name = "radius"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawEllipse",
      description = "Draw ellipse",
      returnType = "void",
      params = {
        {type = "int", name = "centerX"},
        {type = "int", name = "centerY"},
        {type = "float", name = "radiusH"},
        {type = "float", name = "radiusV"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawEllipseLines",
      description = "Draw ellipse outline",
      returnType = "void",
      params = {
        {type = "int", name = "centerX"},
        {type = "int", name = "centerY"},
        {type = "float", name = "radiusH"},
        {type = "float", name = "radiusV"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRing",
      description = "Draw ring",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "float", name = "innerRadius"},
        {type = "float", name = "outerRadius"},
        {type = "float", name = "startAngle"},
        {type = "float", name = "endAngle"},
        {type = "int", name = "segments"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRingLines",
      description = "Draw ring outline",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "float", name = "innerRadius"},
        {type = "float", name = "outerRadius"},
        {type = "float", name = "startAngle"},
        {type = "float", name = "endAngle"},
        {type = "int", name = "segments"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectangle",
      description = "Draw a color-filled rectangle",
      returnType = "void",
      params = {
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectangleV",
      description = "Draw a color-filled rectangle (Vector version)",
      returnType = "void",
      params = {
        {type = "Vector2", name = "position"},
        {type = "Vector2", name = "size"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectangleRec",
      description = "Draw a color-filled rectangle",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "rec"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectanglePro",
      description = "Draw a color-filled rectangle with pro parameters",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "rec"},
        {type = "Vector2", name = "origin"},
        {type = "float", name = "rotation"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectangleGradientV",
      description = "Draw a vertical-gradient-filled rectangle",
      returnType = "void",
      params = {
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "color1"},
        {type = "Color", name = "color2"}
      }
    },
    {
      name = "DrawRectangleGradientH",
      description = "Draw a horizontal-gradient-filled rectangle",
      returnType = "void",
      params = {
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "color1"},
        {type = "Color", name = "color2"}
      }
    },
    {
      name = "DrawRectangleGradientEx",
      description = "Draw a gradient-filled rectangle with custom vertex colors",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "rec"},
        {type = "Color", name = "col1"},
        {type = "Color", name = "col2"},
        {type = "Color", name = "col3"},
        {type = "Color", name = "col4"}
      }
    },
    {
      name = "DrawRectangleLines",
      description = "Draw rectangle outline",
      returnType = "void",
      params = {
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectangleLinesEx",
      description = "Draw rectangle outline with extended parameters",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "rec"},
        {type = "float", name = "lineThick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectangleRounded",
      description = "Draw rectangle with rounded edges",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "rec"},
        {type = "float", name = "roundness"},
        {type = "int", name = "segments"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRectangleRoundedLines",
      description = "Draw rectangle with rounded edges outline",
      returnType = "void",
      params = {
        {type = "Rectangle", name = "rec"},
        {type = "float", name = "roundness"},
        {type = "int", name = "segments"},
        {type = "float", name = "lineThick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawTriangle",
      description = "Draw a color-filled triangle (vertex in counter-clockwise order!)",
      returnType = "void",
      params = {
        {type = "Vector2", name = "v1"},
        {type = "Vector2", name = "v2"},
        {type = "Vector2", name = "v3"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawTriangleLines",
      description = "Draw triangle outline (vertex in counter-clockwise order!)",
      returnType = "void",
      params = {
        {type = "Vector2", name = "v1"},
        {type = "Vector2", name = "v2"},
        {type = "Vector2", name = "v3"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawTriangleFan",
      description = "Draw a triangle fan defined by points (first vertex is the center)",
      returnType = "void",
      params = {
        {type = "Vector2 *", name = "points"},
        {type = "int", name = "pointCount"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawTriangleStrip",
      description = "Draw a triangle strip defined by points",
      returnType = "void",
      params = {
        {type = "Vector2 *", name = "points"},
        {type = "int", name = "pointCount"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawPoly",
      description = "Draw a regular polygon (Vector version)",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "int", name = "sides"},
        {type = "float", name = "radius"},
        {type = "float", name = "rotation"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawPolyLines",
      description = "Draw a polygon outline of n sides",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "int", name = "sides"},
        {type = "float", name = "radius"},
        {type = "float", name = "rotation"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawPolyLinesEx",
      description = "Draw a polygon outline of n sides with extended parameters",
      returnType = "void",
      params = {
        {type = "Vector2", name = "center"},
        {type = "int", name = "sides"},
        {type = "float", name = "radius"},
        {type = "float", name = "rotation"},
        {type = "float", name = "lineThick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "CheckCollisionRecs",
      description = "Check collision between two rectangles",
      returnType = "bool",
      params = {
        {type = "Rectangle", name = "rec1"},
        {type = "Rectangle", name = "rec2"}
      }
    },
    {
      name = "CheckCollisionCircles",
      description = "Check collision between two circles",
      returnType = "bool",
      params = {
        {type = "Vector2", name = "center1"},
        {type = "float", name = "radius1"},
        {type = "Vector2", name = "center2"},
        {type = "float", name = "radius2"}
      }
    },
    {
      name = "CheckCollisionCircleRec",
      description = "Check collision between circle and rectangle",
      returnType = "bool",
      params = {
        {type = "Vector2", name = "center"},
        {type = "float", name = "radius"},
        {type = "Rectangle", name = "rec"}
      }
    },
    {
      name = "CheckCollisionPointRec",
      description = "Check if point is inside rectangle",
      returnType = "bool",
      params = {
        {type = "Vector2", name = "point"},
        {type = "Rectangle", name = "rec"}
      }
    },
    {
      name = "CheckCollisionPointCircle",
      description = "Check if point is inside circle",
      returnType = "bool",
      params = {
        {type = "Vector2", name = "point"},
        {type = "Vector2", name = "center"},
        {type = "float", name = "radius"}
      }
    },
    {
      name = "CheckCollisionPointTriangle",
      description = "Check if point is inside a triangle",
      returnType = "bool",
      params = {
        {type = "Vector2", name = "point"},
        {type = "Vector2", name = "p1"},
        {type = "Vector2", name = "p2"},
        {type = "Vector2", name = "p3"}
      }
    },
    {
      name = "CheckCollisionLines",
      description = "Check the collision between two lines defined by two points each, returns collision point by reference",
      returnType = "bool",
      params = {
        {type = "Vector2", name = "startPos1"},
        {type = "Vector2", name = "endPos1"},
        {type = "Vector2", name = "startPos2"},
        {type = "Vector2", name = "endPos2"},
        {type = "Vector2 *", name = "collisionPoint"}
      }
    },
    {
      name = "CheckCollisionPointLine",
      description = "Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]",
      returnType = "bool",
      params = {
        {type = "Vector2", name = "point"},
        {type = "Vector2", name = "p1"},
        {type = "Vector2", name = "p2"},
        {type = "int", name = "threshold"}
      }
    },
    {
      name = "GetCollisionRec",
      description = "Get collision rectangle for two rectangles collision",
      returnType = "Rectangle",
      params = {
        {type = "Rectangle", name = "rec1"},
        {type = "Rectangle", name = "rec2"}
      }
    },
    {
      name = "LoadImage",
      description = "Load image from file into CPU memory (RAM)",
      returnType = "Image",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "LoadImageRaw",
      description = "Load image from RAW file data",
      returnType = "Image",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "format"},
        {type = "int", name = "headerSize"}
      }
    },
    {
      name = "LoadImageAnim",
      description = "Load image sequence from file (frames appended to image.data)",
      returnType = "Image",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "int *", name = "frames"}
      }
    },
    {
      name = "LoadImageFromMemory",
      description = "Load image from memory buffer, fileType refers to extension: i.e. '.png'",
      returnType = "Image",
      params = {
        {type = "const char *", name = "fileType"},
        {type = "const unsigned char *", name = "fileData"},
        {type = "int", name = "dataSize"}
      }
    },
    {
      name = "LoadImageFromTexture",
      description = "Load image from GPU texture data",
      returnType = "Image",
      params = {
        {type = "Texture2D", name = "texture"}
      }
    },
    {
      name = "LoadImageFromScreen",
      description = "Load image from screen buffer and (screenshot)",
      returnType = "Image"
    },
    {
      name = "UnloadImage",
      description = "Unload image from CPU memory (RAM)",
      returnType = "void",
      params = {
        {type = "Image", name = "image"}
      }
    },
    {
      name = "ExportImage",
      description = "Export image data to file, returns true on success",
      returnType = "bool",
      params = {
        {type = "Image", name = "image"},
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "ExportImageAsCode",
      description = "Export image as code file defining an array of bytes, returns true on success",
      returnType = "bool",
      params = {
        {type = "Image", name = "image"},
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "GenImageColor",
      description = "Generate image: plain color",
      returnType = "Image",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "GenImageGradientV",
      description = "Generate image: vertical gradient",
      returnType = "Image",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "top"},
        {type = "Color", name = "bottom"}
      }
    },
    {
      name = "GenImageGradientH",
      description = "Generate image: horizontal gradient",
      returnType = "Image",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "left"},
        {type = "Color", name = "right"}
      }
    },
    {
      name = "GenImageGradientRadial",
      description = "Generate image: radial gradient",
      returnType = "Image",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "float", name = "density"},
        {type = "Color", name = "inner"},
        {type = "Color", name = "outer"}
      }
    },
    {
      name = "GenImageChecked",
      description = "Generate image: checked",
      returnType = "Image",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "checksX"},
        {type = "int", name = "checksY"},
        {type = "Color", name = "col1"},
        {type = "Color", name = "col2"}
      }
    },
    {
      name = "GenImageWhiteNoise",
      description = "Generate image: white noise",
      returnType = "Image",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "float", name = "factor"}
      }
    },
    {
      name = "GenImageCellular",
      description = "Generate image: cellular algorithm, bigger tileSize means bigger cells",
      returnType = "Image",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "tileSize"}
      }
    },
    {
      name = "ImageCopy",
      description = "Create an image duplicate (useful for transformations)",
      returnType = "Image",
      params = {
        {type = "Image", name = "image"}
      }
    },
    {
      name = "ImageFromImage",
      description = "Create an image from another image piece",
      returnType = "Image",
      params = {
        {type = "Image", name = "image"},
        {type = "Rectangle", name = "rec"}
      }
    },
    {
      name = "ImageText",
      description = "Create an image from text (default font)",
      returnType = "Image",
      params = {
        {type = "const char *", name = "text"},
        {type = "int", name = "fontSize"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageTextEx",
      description = "Create an image from text (custom sprite font)",
      returnType = "Image",
      params = {
        {type = "Font", name = "font"},
        {type = "const char *", name = "text"},
        {type = "float", name = "fontSize"},
        {type = "float", name = "spacing"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "ImageFormat",
      description = "Convert image data to desired format",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "int", name = "newFormat"}
      }
    },
    {
      name = "ImageToPOT",
      description = "Convert image to POT (power-of-two)",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "Color", name = "fill"}
      }
    },
    {
      name = "ImageCrop",
      description = "Crop an image to a defined rectangle",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "Rectangle", name = "crop"}
      }
    },
    {
      name = "ImageAlphaCrop",
      description = "Crop image depending on alpha value",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "float", name = "threshold"}
      }
    },
    {
      name = "ImageAlphaClear",
      description = "Clear alpha channel to desired color",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "Color", name = "color"},
        {type = "float", name = "threshold"}
      }
    },
    {
      name = "ImageAlphaMask",
      description = "Apply alpha mask to image",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "Image", name = "alphaMask"}
      }
    },
    {
      name = "ImageAlphaPremultiply",
      description = "Premultiply alpha channel",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageResize",
      description = "Resize image (Bicubic scaling algorithm)",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "int", name = "newWidth"},
        {type = "int", name = "newHeight"}
      }
    },
    {
      name = "ImageResizeNN",
      description = "Resize image (Nearest-Neighbor scaling algorithm)",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "int", name = "newWidth"},
        {type = "int", name = "newHeight"}
      }
    },
    {
      name = "ImageResizeCanvas",
      description = "Resize canvas and fill with color",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "int", name = "newWidth"},
        {type = "int", name = "newHeight"},
        {type = "int", name = "offsetX"},
        {type = "int", name = "offsetY"},
        {type = "Color", name = "fill"}
      }
    },
    {
      name = "ImageMipmaps",
      description = "Compute all mipmap levels for a provided image",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageDither",
      description = "Dither image data to 16bpp or lower (Floyd-Steinberg dithering)",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "int", name = "rBpp"},
        {type = "int", name = "gBpp"},
        {type = "int", name = "bBpp"},
        {type = "int", name = "aBpp"}
      }
    },
    {
      name = "ImageFlipVertical",
      description = "Flip image vertically",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageFlipHorizontal",
      description = "Flip image horizontally",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageRotateCW",
      description = "Rotate image clockwise 90deg",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageRotateCCW",
      description = "Rotate image counter-clockwise 90deg",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageColorTint",
      description = "Modify image color: tint",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageColorInvert",
      description = "Modify image color: invert",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageColorGrayscale",
      description = "Modify image color: grayscale",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"}
      }
    },
    {
      name = "ImageColorContrast",
      description = "Modify image color: contrast (-100 to 100)",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "float", name = "contrast"}
      }
    },
    {
      name = "ImageColorBrightness",
      description = "Modify image color: brightness (-255 to 255)",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "int", name = "brightness"}
      }
    },
    {
      name = "ImageColorReplace",
      description = "Modify image color: replace color",
      returnType = "void",
      params = {
        {type = "Image *", name = "image"},
        {type = "Color", name = "color"},
        {type = "Color", name = "replace"}
      }
    },
    {
      name = "LoadImageColors",
      description = "Load color data from image as a Color array (RGBA - 32bit)",
      returnType = "Color *",
      params = {
        {type = "Image", name = "image"}
      }
    },
    {
      name = "LoadImagePalette",
      description = "Load colors palette from image as a Color array (RGBA - 32bit)",
      returnType = "Color *",
      params = {
        {type = "Image", name = "image"},
        {type = "int", name = "maxPaletteSize"},
        {type = "int *", name = "colorCount"}
      }
    },
    {
      name = "UnloadImageColors",
      description = "Unload color data loaded with LoadImageColors()",
      returnType = "void",
      params = {
        {type = "Color *", name = "colors"}
      }
    },
    {
      name = "UnloadImagePalette",
      description = "Unload colors palette loaded with LoadImagePalette()",
      returnType = "void",
      params = {
        {type = "Color *", name = "colors"}
      }
    },
    {
      name = "GetImageAlphaBorder",
      description = "Get image alpha border rectangle",
      returnType = "Rectangle",
      params = {
        {type = "Image", name = "image"},
        {type = "float", name = "threshold"}
      }
    },
    {
      name = "GetImageColor",
      description = "Get image pixel color at (x, y) position",
      returnType = "Color",
      params = {
        {type = "Image", name = "image"},
        {type = "int", name = "x"},
        {type = "int", name = "y"}
      }
    },
    {
      name = "ImageClearBackground",
      description = "Clear image background with given color",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawPixel",
      description = "Draw pixel within an image",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawPixelV",
      description = "Draw pixel within an image (Vector version)",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Vector2", name = "position"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawLine",
      description = "Draw line within an image",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "int", name = "startPosX"},
        {type = "int", name = "startPosY"},
        {type = "int", name = "endPosX"},
        {type = "int", name = "endPosY"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawLineV",
      description = "Draw line within an image (Vector version)",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Vector2", name = "start"},
        {type = "Vector2", name = "end"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawCircle",
      description = "Draw circle within an image",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "int", name = "centerX"},
        {type = "int", name = "centerY"},
        {type = "int", name = "radius"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawCircleV",
      description = "Draw circle within an image (Vector version)",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Vector2", name = "center"},
        {type = "int", name = "radius"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawRectangle",
      description = "Draw rectangle within an image",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawRectangleV",
      description = "Draw rectangle within an image (Vector version)",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Vector2", name = "position"},
        {type = "Vector2", name = "size"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawRectangleRec",
      description = "Draw rectangle within an image",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Rectangle", name = "rec"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawRectangleLines",
      description = "Draw rectangle lines within an image",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Rectangle", name = "rec"},
        {type = "int", name = "thick"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDraw",
      description = "Draw a source image within a destination image (tint applied to source)",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Image", name = "src"},
        {type = "Rectangle", name = "srcRec"},
        {type = "Rectangle", name = "dstRec"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "ImageDrawText",
      description = "Draw text (using default font) within an image (destination)",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "const char *", name = "text"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "fontSize"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ImageDrawTextEx",
      description = "Draw text (custom sprite font) within an image (destination)",
      returnType = "void",
      params = {
        {type = "Image *", name = "dst"},
        {type = "Font", name = "font"},
        {type = "const char *", name = "text"},
        {type = "Vector2", name = "position"},
        {type = "float", name = "fontSize"},
        {type = "float", name = "spacing"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "LoadTexture",
      description = "Load texture from file into GPU memory (VRAM)",
      returnType = "Texture2D",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "LoadTextureFromImage",
      description = "Load texture from image data",
      returnType = "Texture2D",
      params = {
        {type = "Image", name = "image"}
      }
    },
    {
      name = "LoadTextureCubemap",
      description = "Load cubemap from image, multiple image cubemap layouts supported",
      returnType = "TextureCubemap",
      params = {
        {type = "Image", name = "image"},
        {type = "int", name = "layout"}
      }
    },
    {
      name = "LoadRenderTexture",
      description = "Load texture for rendering (framebuffer)",
      returnType = "RenderTexture2D",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"}
      }
    },
    {
      name = "UnloadTexture",
      description = "Unload texture from GPU memory (VRAM)",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"}
      }
    },
    {
      name = "UnloadRenderTexture",
      description = "Unload render texture from GPU memory (VRAM)",
      returnType = "void",
      params = {
        {type = "RenderTexture2D", name = "target"}
      }
    },
    {
      name = "UpdateTexture",
      description = "Update GPU texture with new data",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "const void *", name = "pixels"}
      }
    },
    {
      name = "UpdateTextureRec",
      description = "Update GPU texture rectangle with new data",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "rec"},
        {type = "const void *", name = "pixels"}
      }
    },
    {
      name = "GenTextureMipmaps",
      description = "Generate GPU mipmaps for a texture",
      returnType = "void",
      params = {
        {type = "Texture2D *", name = "texture"}
      }
    },
    {
      name = "SetTextureFilter",
      description = "Set texture scaling filter mode",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "int", name = "filter"}
      }
    },
    {
      name = "SetTextureWrap",
      description = "Set texture wrapping mode",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "int", name = "wrap"}
      }
    },
    {
      name = "DrawTexture",
      description = "Draw a Texture2D",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextureV",
      description = "Draw a Texture2D with position defined as Vector2",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Vector2", name = "position"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextureEx",
      description = "Draw a Texture2D with extended parameters",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Vector2", name = "position"},
        {type = "float", name = "rotation"},
        {type = "float", name = "scale"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextureRec",
      description = "Draw a part of a texture defined by a rectangle",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "source"},
        {type = "Vector2", name = "position"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextureQuad",
      description = "Draw texture quad with tiling and offset parameters",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Vector2", name = "tiling"},
        {type = "Vector2", name = "offset"},
        {type = "Rectangle", name = "quad"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextureTiled",
      description = "Draw part of a texture (defined by a rectangle) with rotation and scale tiled into dest.",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "source"},
        {type = "Rectangle", name = "dest"},
        {type = "Vector2", name = "origin"},
        {type = "float", name = "rotation"},
        {type = "float", name = "scale"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTexturePro",
      description = "Draw a part of a texture defined by a rectangle with 'pro' parameters",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "source"},
        {type = "Rectangle", name = "dest"},
        {type = "Vector2", name = "origin"},
        {type = "float", name = "rotation"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextureNPatch",
      description = "Draws a texture (or part of it) that stretches or shrinks nicely",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "NPatchInfo", name = "nPatchInfo"},
        {type = "Rectangle", name = "dest"},
        {type = "Vector2", name = "origin"},
        {type = "float", name = "rotation"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTexturePoly",
      description = "Draw a textured polygon",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Vector2", name = "center"},
        {type = "Vector2 *", name = "points"},
        {type = "Vector2 *", name = "texcoords"},
        {type = "int", name = "pointCount"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "Fade",
      description = "Get color with alpha applied, alpha goes from 0.0f to 1.0f",
      returnType = "Color",
      params = {
        {type = "Color", name = "color"},
        {type = "float", name = "alpha"}
      }
    },
    {
      name = "ColorToInt",
      description = "Get hexadecimal value for a Color",
      returnType = "int",
      params = {
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ColorNormalize",
      description = "Get Color normalized as float [0..1]",
      returnType = "Vector4",
      params = {
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ColorFromNormalized",
      description = "Get Color from normalized values [0..1]",
      returnType = "Color",
      params = {
        {type = "Vector4", name = "normalized"}
      }
    },
    {
      name = "ColorToHSV",
      description = "Get HSV values for a Color, hue [0..360], saturation/value [0..1]",
      returnType = "Vector3",
      params = {
        {type = "Color", name = "color"}
      }
    },
    {
      name = "ColorFromHSV",
      description = "Get a Color from HSV values, hue [0..360], saturation/value [0..1]",
      returnType = "Color",
      params = {
        {type = "float", name = "hue"},
        {type = "float", name = "saturation"},
        {type = "float", name = "value"}
      }
    },
    {
      name = "ColorAlpha",
      description = "Get color with alpha applied, alpha goes from 0.0f to 1.0f",
      returnType = "Color",
      params = {
        {type = "Color", name = "color"},
        {type = "float", name = "alpha"}
      }
    },
    {
      name = "ColorAlphaBlend",
      description = "Get src alpha-blended into dst color with tint",
      returnType = "Color",
      params = {
        {type = "Color", name = "dst"},
        {type = "Color", name = "src"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "GetColor",
      description = "Get Color structure from hexadecimal value",
      returnType = "Color",
      params = {
        {type = "unsigned int", name = "hexValue"}
      }
    },
    {
      name = "GetPixelColor",
      description = "Get Color from a source pixel pointer of certain format",
      returnType = "Color",
      params = {
        {type = "void *", name = "srcPtr"},
        {type = "int", name = "format"}
      }
    },
    {
      name = "SetPixelColor",
      description = "Set color formatted into destination pixel pointer",
      returnType = "void",
      params = {
        {type = "void *", name = "dstPtr"},
        {type = "Color", name = "color"},
        {type = "int", name = "format"}
      }
    },
    {
      name = "GetPixelDataSize",
      description = "Get pixel data size in bytes for certain format",
      returnType = "int",
      params = {
        {type = "int", name = "width"},
        {type = "int", name = "height"},
        {type = "int", name = "format"}
      }
    },
    {
      name = "GetFontDefault",
      description = "Get the default Font",
      returnType = "Font"
    },
    {
      name = "LoadFont",
      description = "Load font from file into GPU memory (VRAM)",
      returnType = "Font",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "LoadFontEx",
      description = "Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set",
      returnType = "Font",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "int", name = "fontSize"},
        {type = "int *", name = "fontChars"},
        {type = "int", name = "glyphCount"}
      }
    },
    {
      name = "LoadFontFromImage",
      description = "Load font from Image (XNA style)",
      returnType = "Font",
      params = {
        {type = "Image", name = "image"},
        {type = "Color", name = "key"},
        {type = "int", name = "firstChar"}
      }
    },
    {
      name = "LoadFontFromMemory",
      description = "Load font from memory buffer, fileType refers to extension: i.e. '.ttf'",
      returnType = "Font",
      params = {
        {type = "const char *", name = "fileType"},
        {type = "const unsigned char *", name = "fileData"},
        {type = "int", name = "dataSize"},
        {type = "int", name = "fontSize"},
        {type = "int *", name = "fontChars"},
        {type = "int", name = "glyphCount"}
      }
    },
    {
      name = "LoadFontData",
      description = "Load font data for further use",
      returnType = "GlyphInfo *",
      params = {
        {type = "const unsigned char *", name = "fileData"},
        {type = "int", name = "dataSize"},
        {type = "int", name = "fontSize"},
        {type = "int *", name = "fontChars"},
        {type = "int", name = "glyphCount"},
        {type = "int", name = "type"}
      }
    },
    {
      name = "GenImageFontAtlas",
      description = "Generate image font atlas using chars info",
      returnType = "Image",
      params = {
        {type = "const GlyphInfo *", name = "chars"},
        {type = "Rectangle **", name = "recs"},
        {type = "int", name = "glyphCount"},
        {type = "int", name = "fontSize"},
        {type = "int", name = "padding"},
        {type = "int", name = "packMethod"}
      }
    },
    {
      name = "UnloadFontData",
      description = "Unload font chars info data (RAM)",
      returnType = "void",
      params = {
        {type = "GlyphInfo *", name = "chars"},
        {type = "int", name = "glyphCount"}
      }
    },
    {
      name = "UnloadFont",
      description = "Unload font from GPU memory (VRAM)",
      returnType = "void",
      params = {
        {type = "Font", name = "font"}
      }
    },
    {
      name = "ExportFontAsCode",
      description = "Export font as code file, returns true on success",
      returnType = "bool",
      params = {
        {type = "Font", name = "font"},
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "DrawFPS",
      description = "Draw current FPS",
      returnType = "void",
      params = {
        {type = "int", name = "posX"},
        {type = "int", name = "posY"}
      }
    },
    {
      name = "DrawText",
      description = "Draw text (using default font)",
      returnType = "void",
      params = {
        {type = "const char *", name = "text"},
        {type = "int", name = "posX"},
        {type = "int", name = "posY"},
        {type = "int", name = "fontSize"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawTextEx",
      description = "Draw text using font and additional parameters",
      returnType = "void",
      params = {
        {type = "Font", name = "font"},
        {type = "const char *", name = "text"},
        {type = "Vector2", name = "position"},
        {type = "float", name = "fontSize"},
        {type = "float", name = "spacing"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextPro",
      description = "Draw text using Font and pro parameters (rotation)",
      returnType = "void",
      params = {
        {type = "Font", name = "font"},
        {type = "const char *", name = "text"},
        {type = "Vector2", name = "position"},
        {type = "Vector2", name = "origin"},
        {type = "float", name = "rotation"},
        {type = "float", name = "fontSize"},
        {type = "float", name = "spacing"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextCodepoint",
      description = "Draw one character (codepoint)",
      returnType = "void",
      params = {
        {type = "Font", name = "font"},
        {type = "int", name = "codepoint"},
        {type = "Vector2", name = "position"},
        {type = "float", name = "fontSize"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawTextCodepoints",
      description = "Draw multiple character (codepoint)",
      returnType = "void",
      params = {
        {type = "Font", name = "font"},
        {type = "const int *", name = "codepoints"},
        {type = "int", name = "count"},
        {type = "Vector2", name = "position"},
        {type = "float", name = "fontSize"},
        {type = "float", name = "spacing"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "MeasureText",
      description = "Measure string width for default font",
      returnType = "int",
      params = {
        {type = "const char *", name = "text"},
        {type = "int", name = "fontSize"}
      }
    },
    {
      name = "MeasureTextEx",
      description = "Measure string size for Font",
      returnType = "Vector2",
      params = {
        {type = "Font", name = "font"},
        {type = "const char *", name = "text"},
        {type = "float", name = "fontSize"},
        {type = "float", name = "spacing"}
      }
    },
    {
      name = "GetGlyphIndex",
      description = "Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found",
      returnType = "int",
      params = {
        {type = "Font", name = "font"},
        {type = "int", name = "codepoint"}
      }
    },
    {
      name = "GetGlyphInfo",
      description = "Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found",
      returnType = "GlyphInfo",
      params = {
        {type = "Font", name = "font"},
        {type = "int", name = "codepoint"}
      }
    },
    {
      name = "GetGlyphAtlasRec",
      description = "Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found",
      returnType = "Rectangle",
      params = {
        {type = "Font", name = "font"},
        {type = "int", name = "codepoint"}
      }
    },
    {
      name = "LoadCodepoints",
      description = "Load all codepoints from a UTF-8 text string, codepoints count returned by parameter",
      returnType = "int *",
      params = {
        {type = "const char *", name = "text"},
        {type = "int *", name = "count"}
      }
    },
    {
      name = "UnloadCodepoints",
      description = "Unload codepoints data from memory",
      returnType = "void",
      params = {
        {type = "int *", name = "codepoints"}
      }
    },
    {
      name = "GetCodepointCount",
      description = "Get total number of codepoints in a UTF-8 encoded string",
      returnType = "int",
      params = {
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "GetCodepoint",
      description = "Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure",
      returnType = "int",
      params = {
        {type = "const char *", name = "text"},
        {type = "int *", name = "bytesProcessed"}
      }
    },
    {
      name = "CodepointToUTF8",
      description = "Encode one codepoint into UTF-8 byte array (array length returned as parameter)",
      returnType = "const char *",
      params = {
        {type = "int", name = "codepoint"},
        {type = "int *", name = "byteSize"}
      }
    },
    {
      name = "TextCodepointsToUTF8",
      description = "Encode text as codepoints array into UTF-8 text string (WARNING: memory must be freed!)",
      returnType = "char *",
      params = {
        {type = "const int *", name = "codepoints"},
        {type = "int", name = "length"}
      }
    },
    {
      name = "TextCopy",
      description = "Copy one string to another, returns bytes copied",
      returnType = "int",
      params = {
        {type = "char *", name = "dst"},
        {type = "const char *", name = "src"}
      }
    },
    {
      name = "TextIsEqual",
      description = "Check if two text string are equal",
      returnType = "bool",
      params = {
        {type = "const char *", name = "text1"},
        {type = "const char *", name = "text2"}
      }
    },
    {
      name = "TextLength",
      description = "Get text length, checks for '\\0' ending",
      returnType = "unsigned int",
      params = {
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "TextFormat",
      description = "Text formatting with variables (sprintf() style)",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "text"},
        {type = "...", name = "args"}
      }
    },
    {
      name = "TextSubtext",
      description = "Get a piece of a text string",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "text"},
        {type = "int", name = "position"},
        {type = "int", name = "length"}
      }
    },
    {
      name = "TextReplace",
      description = "Replace text string (WARNING: memory must be freed!)",
      returnType = "char *",
      params = {
        {type = "char *", name = "text"},
        {type = "const char *", name = "replace"},
        {type = "const char *", name = "by"}
      }
    },
    {
      name = "TextInsert",
      description = "Insert text in a position (WARNING: memory must be freed!)",
      returnType = "char *",
      params = {
        {type = "const char *", name = "text"},
        {type = "const char *", name = "insert"},
        {type = "int", name = "position"}
      }
    },
    {
      name = "TextJoin",
      description = "Join text strings with delimiter",
      returnType = "const char *",
      params = {
        {type = "const char **", name = "textList"},
        {type = "int", name = "count"},
        {type = "const char *", name = "delimiter"}
      }
    },
    {
      name = "TextSplit",
      description = "Split text into multiple strings",
      returnType = "const char **",
      params = {
        {type = "const char *", name = "text"},
        {type = "char", name = "delimiter"},
        {type = "int *", name = "count"}
      }
    },
    {
      name = "TextAppend",
      description = "Append text at specific position and move cursor!",
      returnType = "void",
      params = {
        {type = "char *", name = "text"},
        {type = "const char *", name = "append"},
        {type = "int *", name = "position"}
      }
    },
    {
      name = "TextFindIndex",
      description = "Find first text occurrence within a string",
      returnType = "int",
      params = {
        {type = "const char *", name = "text"},
        {type = "const char *", name = "find"}
      }
    },
    {
      name = "TextToUpper",
      description = "Get upper case version of provided string",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "TextToLower",
      description = "Get lower case version of provided string",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "TextToPascal",
      description = "Get Pascal case notation version of provided string",
      returnType = "const char *",
      params = {
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "TextToInteger",
      description = "Get integer value from text (negative values not supported)",
      returnType = "int",
      params = {
        {type = "const char *", name = "text"}
      }
    },
    {
      name = "DrawLine3D",
      description = "Draw a line in 3D world space",
      returnType = "void",
      params = {
        {type = "Vector3", name = "startPos"},
        {type = "Vector3", name = "endPos"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawPoint3D",
      description = "Draw a point in 3D space, actually a small line",
      returnType = "void",
      params = {
        {type = "Vector3", name = "position"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCircle3D",
      description = "Draw a circle in 3D world space",
      returnType = "void",
      params = {
        {type = "Vector3", name = "center"},
        {type = "float", name = "radius"},
        {type = "Vector3", name = "rotationAxis"},
        {type = "float", name = "rotationAngle"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawTriangle3D",
      description = "Draw a color-filled triangle (vertex in counter-clockwise order!)",
      returnType = "void",
      params = {
        {type = "Vector3", name = "v1"},
        {type = "Vector3", name = "v2"},
        {type = "Vector3", name = "v3"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawTriangleStrip3D",
      description = "Draw a triangle strip defined by points",
      returnType = "void",
      params = {
        {type = "Vector3 *", name = "points"},
        {type = "int", name = "pointCount"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCube",
      description = "Draw cube",
      returnType = "void",
      params = {
        {type = "Vector3", name = "position"},
        {type = "float", name = "width"},
        {type = "float", name = "height"},
        {type = "float", name = "length"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCubeV",
      description = "Draw cube (Vector version)",
      returnType = "void",
      params = {
        {type = "Vector3", name = "position"},
        {type = "Vector3", name = "size"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCubeWires",
      description = "Draw cube wires",
      returnType = "void",
      params = {
        {type = "Vector3", name = "position"},
        {type = "float", name = "width"},
        {type = "float", name = "height"},
        {type = "float", name = "length"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCubeWiresV",
      description = "Draw cube wires (Vector version)",
      returnType = "void",
      params = {
        {type = "Vector3", name = "position"},
        {type = "Vector3", name = "size"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCubeTexture",
      description = "Draw cube textured",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Vector3", name = "position"},
        {type = "float", name = "width"},
        {type = "float", name = "height"},
        {type = "float", name = "length"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCubeTextureRec",
      description = "Draw cube with a region of a texture",
      returnType = "void",
      params = {
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "source"},
        {type = "Vector3", name = "position"},
        {type = "float", name = "width"},
        {type = "float", name = "height"},
        {type = "float", name = "length"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawSphere",
      description = "Draw sphere",
      returnType = "void",
      params = {
        {type = "Vector3", name = "centerPos"},
        {type = "float", name = "radius"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawSphereEx",
      description = "Draw sphere with extended parameters",
      returnType = "void",
      params = {
        {type = "Vector3", name = "centerPos"},
        {type = "float", name = "radius"},
        {type = "int", name = "rings"},
        {type = "int", name = "slices"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawSphereWires",
      description = "Draw sphere wires",
      returnType = "void",
      params = {
        {type = "Vector3", name = "centerPos"},
        {type = "float", name = "radius"},
        {type = "int", name = "rings"},
        {type = "int", name = "slices"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCylinder",
      description = "Draw a cylinder/cone",
      returnType = "void",
      params = {
        {type = "Vector3", name = "position"},
        {type = "float", name = "radiusTop"},
        {type = "float", name = "radiusBottom"},
        {type = "float", name = "height"},
        {type = "int", name = "slices"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCylinderEx",
      description = "Draw a cylinder with base at startPos and top at endPos",
      returnType = "void",
      params = {
        {type = "Vector3", name = "startPos"},
        {type = "Vector3", name = "endPos"},
        {type = "float", name = "startRadius"},
        {type = "float", name = "endRadius"},
        {type = "int", name = "sides"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCylinderWires",
      description = "Draw a cylinder/cone wires",
      returnType = "void",
      params = {
        {type = "Vector3", name = "position"},
        {type = "float", name = "radiusTop"},
        {type = "float", name = "radiusBottom"},
        {type = "float", name = "height"},
        {type = "int", name = "slices"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawCylinderWiresEx",
      description = "Draw a cylinder wires with base at startPos and top at endPos",
      returnType = "void",
      params = {
        {type = "Vector3", name = "startPos"},
        {type = "Vector3", name = "endPos"},
        {type = "float", name = "startRadius"},
        {type = "float", name = "endRadius"},
        {type = "int", name = "sides"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawPlane",
      description = "Draw a plane XZ",
      returnType = "void",
      params = {
        {type = "Vector3", name = "centerPos"},
        {type = "Vector2", name = "size"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawRay",
      description = "Draw a ray line",
      returnType = "void",
      params = {
        {type = "Ray", name = "ray"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawGrid",
      description = "Draw a grid (centered at (0, 0, 0))",
      returnType = "void",
      params = {
        {type = "int", name = "slices"},
        {type = "float", name = "spacing"}
      }
    },
    {
      name = "LoadModel",
      description = "Load model from files (meshes and materials)",
      returnType = "Model",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "LoadModelFromMesh",
      description = "Load model from generated mesh (default material)",
      returnType = "Model",
      params = {
        {type = "Mesh", name = "mesh"}
      }
    },
    {
      name = "UnloadModel",
      description = "Unload model (including meshes) from memory (RAM and/or VRAM)",
      returnType = "void",
      params = {
        {type = "Model", name = "model"}
      }
    },
    {
      name = "UnloadModelKeepMeshes",
      description = "Unload model (but not meshes) from memory (RAM and/or VRAM)",
      returnType = "void",
      params = {
        {type = "Model", name = "model"}
      }
    },
    {
      name = "GetModelBoundingBox",
      description = "Compute model bounding box limits (considers all meshes)",
      returnType = "BoundingBox",
      params = {
        {type = "Model", name = "model"}
      }
    },
    {
      name = "DrawModel",
      description = "Draw a model (with texture if set)",
      returnType = "void",
      params = {
        {type = "Model", name = "model"},
        {type = "Vector3", name = "position"},
        {type = "float", name = "scale"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawModelEx",
      description = "Draw a model with extended parameters",
      returnType = "void",
      params = {
        {type = "Model", name = "model"},
        {type = "Vector3", name = "position"},
        {type = "Vector3", name = "rotationAxis"},
        {type = "float", name = "rotationAngle"},
        {type = "Vector3", name = "scale"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawModelWires",
      description = "Draw a model wires (with texture if set)",
      returnType = "void",
      params = {
        {type = "Model", name = "model"},
        {type = "Vector3", name = "position"},
        {type = "float", name = "scale"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawModelWiresEx",
      description = "Draw a model wires (with texture if set) with extended parameters",
      returnType = "void",
      params = {
        {type = "Model", name = "model"},
        {type = "Vector3", name = "position"},
        {type = "Vector3", name = "rotationAxis"},
        {type = "float", name = "rotationAngle"},
        {type = "Vector3", name = "scale"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawBoundingBox",
      description = "Draw bounding box (wires)",
      returnType = "void",
      params = {
        {type = "BoundingBox", name = "box"},
        {type = "Color", name = "color"}
      }
    },
    {
      name = "DrawBillboard",
      description = "Draw a billboard texture",
      returnType = "void",
      params = {
        {type = "Camera", name = "camera"},
        {type = "Texture2D", name = "texture"},
        {type = "Vector3", name = "position"},
        {type = "float", name = "size"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawBillboardRec",
      description = "Draw a billboard texture defined by source",
      returnType = "void",
      params = {
        {type = "Camera", name = "camera"},
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "source"},
        {type = "Vector3", name = "position"},
        {type = "Vector2", name = "size"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "DrawBillboardPro",
      description = "Draw a billboard texture defined by source and rotation",
      returnType = "void",
      params = {
        {type = "Camera", name = "camera"},
        {type = "Texture2D", name = "texture"},
        {type = "Rectangle", name = "source"},
        {type = "Vector3", name = "position"},
        {type = "Vector3", name = "up"},
        {type = "Vector2", name = "size"},
        {type = "Vector2", name = "origin"},
        {type = "float", name = "rotation"},
        {type = "Color", name = "tint"}
      }
    },
    {
      name = "UploadMesh",
      description = "Upload mesh vertex data in GPU and provide VAO/VBO ids",
      returnType = "void",
      params = {
        {type = "Mesh *", name = "mesh"},
        {type = "bool", name = "dynamic"}
      }
    },
    {
      name = "UpdateMeshBuffer",
      description = "Update mesh vertex data in GPU for a specific buffer index",
      returnType = "void",
      params = {
        {type = "Mesh", name = "mesh"},
        {type = "int", name = "index"},
        {type = "const void *", name = "data"},
        {type = "int", name = "dataSize"},
        {type = "int", name = "offset"}
      }
    },
    {
      name = "UnloadMesh",
      description = "Unload mesh data from CPU and GPU",
      returnType = "void",
      params = {
        {type = "Mesh", name = "mesh"}
      }
    },
    {
      name = "DrawMesh",
      description = "Draw a 3d mesh with material and transform",
      returnType = "void",
      params = {
        {type = "Mesh", name = "mesh"},
        {type = "Material", name = "material"},
        {type = "Matrix", name = "transform"}
      }
    },
    {
      name = "DrawMeshInstanced",
      description = "Draw multiple mesh instances with material and different transforms",
      returnType = "void",
      params = {
        {type = "Mesh", name = "mesh"},
        {type = "Material", name = "material"},
        {type = "const Matrix *", name = "transforms"},
        {type = "int", name = "instances"}
      }
    },
    {
      name = "ExportMesh",
      description = "Export mesh data to file, returns true on success",
      returnType = "bool",
      params = {
        {type = "Mesh", name = "mesh"},
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "GetMeshBoundingBox",
      description = "Compute mesh bounding box limits",
      returnType = "BoundingBox",
      params = {
        {type = "Mesh", name = "mesh"}
      }
    },
    {
      name = "GenMeshTangents",
      description = "Compute mesh tangents",
      returnType = "void",
      params = {
        {type = "Mesh *", name = "mesh"}
      }
    },
    {
      name = "GenMeshBinormals",
      description = "Compute mesh binormals",
      returnType = "void",
      params = {
        {type = "Mesh *", name = "mesh"}
      }
    },
    {
      name = "GenMeshPoly",
      description = "Generate polygonal mesh",
      returnType = "Mesh",
      params = {
        {type = "int", name = "sides"},
        {type = "float", name = "radius"}
      }
    },
    {
      name = "GenMeshPlane",
      description = "Generate plane mesh (with subdivisions)",
      returnType = "Mesh",
      params = {
        {type = "float", name = "width"},
        {type = "float", name = "length"},
        {type = "int", name = "resX"},
        {type = "int", name = "resZ"}
      }
    },
    {
      name = "GenMeshCube",
      description = "Generate cuboid mesh",
      returnType = "Mesh",
      params = {
        {type = "float", name = "width"},
        {type = "float", name = "height"},
        {type = "float", name = "length"}
      }
    },
    {
      name = "GenMeshSphere",
      description = "Generate sphere mesh (standard sphere)",
      returnType = "Mesh",
      params = {
        {type = "float", name = "radius"},
        {type = "int", name = "rings"},
        {type = "int", name = "slices"}
      }
    },
    {
      name = "GenMeshHemiSphere",
      description = "Generate half-sphere mesh (no bottom cap)",
      returnType = "Mesh",
      params = {
        {type = "float", name = "radius"},
        {type = "int", name = "rings"},
        {type = "int", name = "slices"}
      }
    },
    {
      name = "GenMeshCylinder",
      description = "Generate cylinder mesh",
      returnType = "Mesh",
      params = {
        {type = "float", name = "radius"},
        {type = "float", name = "height"},
        {type = "int", name = "slices"}
      }
    },
    {
      name = "GenMeshCone",
      description = "Generate cone/pyramid mesh",
      returnType = "Mesh",
      params = {
        {type = "float", name = "radius"},
        {type = "float", name = "height"},
        {type = "int", name = "slices"}
      }
    },
    {
      name = "GenMeshTorus",
      description = "Generate torus mesh",
      returnType = "Mesh",
      params = {
        {type = "float", name = "radius"},
        {type = "float", name = "size"},
        {type = "int", name = "radSeg"},
        {type = "int", name = "sides"}
      }
    },
    {
      name = "GenMeshKnot",
      description = "Generate trefoil knot mesh",
      returnType = "Mesh",
      params = {
        {type = "float", name = "radius"},
        {type = "float", name = "size"},
        {type = "int", name = "radSeg"},
        {type = "int", name = "sides"}
      }
    },
    {
      name = "GenMeshHeightmap",
      description = "Generate heightmap mesh from image data",
      returnType = "Mesh",
      params = {
        {type = "Image", name = "heightmap"},
        {type = "Vector3", name = "size"}
      }
    },
    {
      name = "GenMeshCubicmap",
      description = "Generate cubes-based map mesh from image data",
      returnType = "Mesh",
      params = {
        {type = "Image", name = "cubicmap"},
        {type = "Vector3", name = "cubeSize"}
      }
    },
    {
      name = "LoadMaterials",
      description = "Load materials from model file",
      returnType = "Material *",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "int *", name = "materialCount"}
      }
    },
    {
      name = "LoadMaterialDefault",
      description = "Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)",
      returnType = "Material"
    },
    {
      name = "UnloadMaterial",
      description = "Unload material from GPU memory (VRAM)",
      returnType = "void",
      params = {
        {type = "Material", name = "material"}
      }
    },
    {
      name = "SetMaterialTexture",
      description = "Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)",
      returnType = "void",
      params = {
        {type = "Material *", name = "material"},
        {type = "int", name = "mapType"},
        {type = "Texture2D", name = "texture"}
      }
    },
    {
      name = "SetModelMeshMaterial",
      description = "Set material for a mesh",
      returnType = "void",
      params = {
        {type = "Model *", name = "model"},
        {type = "int", name = "meshId"},
        {type = "int", name = "materialId"}
      }
    },
    {
      name = "LoadModelAnimations",
      description = "Load model animations from file",
      returnType = "ModelAnimation *",
      params = {
        {type = "const char *", name = "fileName"},
        {type = "unsigned int *", name = "animCount"}
      }
    },
    {
      name = "UpdateModelAnimation",
      description = "Update model animation pose",
      returnType = "void",
      params = {
        {type = "Model", name = "model"},
        {type = "ModelAnimation", name = "anim"},
        {type = "int", name = "frame"}
      }
    },
    {
      name = "UnloadModelAnimation",
      description = "Unload animation data",
      returnType = "void",
      params = {
        {type = "ModelAnimation", name = "anim"}
      }
    },
    {
      name = "UnloadModelAnimations",
      description = "Unload animation array data",
      returnType = "void",
      params = {
        {type = "ModelAnimation *", name = "animations"},
        {type = "unsigned int", name = "count"}
      }
    },
    {
      name = "IsModelAnimationValid",
      description = "Check model animation skeleton match",
      returnType = "bool",
      params = {
        {type = "Model", name = "model"},
        {type = "ModelAnimation", name = "anim"}
      }
    },
    {
      name = "CheckCollisionSpheres",
      description = "Check collision between two spheres",
      returnType = "bool",
      params = {
        {type = "Vector3", name = "center1"},
        {type = "float", name = "radius1"},
        {type = "Vector3", name = "center2"},
        {type = "float", name = "radius2"}
      }
    },
    {
      name = "CheckCollisionBoxes",
      description = "Check collision between two bounding boxes",
      returnType = "bool",
      params = {
        {type = "BoundingBox", name = "box1"},
        {type = "BoundingBox", name = "box2"}
      }
    },
    {
      name = "CheckCollisionBoxSphere",
      description = "Check collision between box and sphere",
      returnType = "bool",
      params = {
        {type = "BoundingBox", name = "box"},
        {type = "Vector3", name = "center"},
        {type = "float", name = "radius"}
      }
    },
    {
      name = "GetRayCollisionSphere",
      description = "Get collision info between ray and sphere",
      returnType = "RayCollision",
      params = {
        {type = "Ray", name = "ray"},
        {type = "Vector3", name = "center"},
        {type = "float", name = "radius"}
      }
    },
    {
      name = "GetRayCollisionBox",
      description = "Get collision info between ray and box",
      returnType = "RayCollision",
      params = {
        {type = "Ray", name = "ray"},
        {type = "BoundingBox", name = "box"}
      }
    },
    {
      name = "GetRayCollisionModel",
      description = "Get collision info between ray and model",
      returnType = "RayCollision",
      params = {
        {type = "Ray", name = "ray"},
        {type = "Model", name = "model"}
      }
    },
    {
      name = "GetRayCollisionMesh",
      description = "Get collision info between ray and mesh",
      returnType = "RayCollision",
      params = {
        {type = "Ray", name = "ray"},
        {type = "Mesh", name = "mesh"},
        {type = "Matrix", name = "transform"}
      }
    },
    {
      name = "GetRayCollisionTriangle",
      description = "Get collision info between ray and triangle",
      returnType = "RayCollision",
      params = {
        {type = "Ray", name = "ray"},
        {type = "Vector3", name = "p1"},
        {type = "Vector3", name = "p2"},
        {type = "Vector3", name = "p3"}
      }
    },
    {
      name = "GetRayCollisionQuad",
      description = "Get collision info between ray and quad",
      returnType = "RayCollision",
      params = {
        {type = "Ray", name = "ray"},
        {type = "Vector3", name = "p1"},
        {type = "Vector3", name = "p2"},
        {type = "Vector3", name = "p3"},
        {type = "Vector3", name = "p4"}
      }
    },
    {
      name = "InitAudioDevice",
      description = "Initialize audio device and context",
      returnType = "void"
    },
    {
      name = "CloseAudioDevice",
      description = "Close the audio device and context",
      returnType = "void"
    },
    {
      name = "IsAudioDeviceReady",
      description = "Check if audio device has been initialized successfully",
      returnType = "bool"
    },
    {
      name = "SetMasterVolume",
      description = "Set master volume (listener)",
      returnType = "void",
      params = {
        {type = "float", name = "volume"}
      }
    },
    {
      name = "LoadWave",
      description = "Load wave data from file",
      returnType = "Wave",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "LoadWaveFromMemory",
      description = "Load wave from memory buffer, fileType refers to extension: i.e. '.wav'",
      returnType = "Wave",
      params = {
        {type = "const char *", name = "fileType"},
        {type = "const unsigned char *", name = "fileData"},
        {type = "int", name = "dataSize"}
      }
    },
    {
      name = "LoadSound",
      description = "Load sound from file",
      returnType = "Sound",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "LoadSoundFromWave",
      description = "Load sound from wave data",
      returnType = "Sound",
      params = {
        {type = "Wave", name = "wave"}
      }
    },
    {
      name = "UpdateSound",
      description = "Update sound buffer with new data",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"},
        {type = "const void *", name = "data"},
        {type = "int", name = "sampleCount"}
      }
    },
    {
      name = "UnloadWave",
      description = "Unload wave data",
      returnType = "void",
      params = {
        {type = "Wave", name = "wave"}
      }
    },
    {
      name = "UnloadSound",
      description = "Unload sound",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"}
      }
    },
    {
      name = "ExportWave",
      description = "Export wave data to file, returns true on success",
      returnType = "bool",
      params = {
        {type = "Wave", name = "wave"},
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "ExportWaveAsCode",
      description = "Export wave sample data to code (.h), returns true on success",
      returnType = "bool",
      params = {
        {type = "Wave", name = "wave"},
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "PlaySound",
      description = "Play a sound",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"}
      }
    },
    {
      name = "StopSound",
      description = "Stop playing a sound",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"}
      }
    },
    {
      name = "PauseSound",
      description = "Pause a sound",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"}
      }
    },
    {
      name = "ResumeSound",
      description = "Resume a paused sound",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"}
      }
    },
    {
      name = "PlaySoundMulti",
      description = "Play a sound (using multichannel buffer pool)",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"}
      }
    },
    {
      name = "StopSoundMulti",
      description = "Stop any sound playing (using multichannel buffer pool)",
      returnType = "void"
    },
    {
      name = "GetSoundsPlaying",
      description = "Get number of sounds playing in the multichannel",
      returnType = "int"
    },
    {
      name = "IsSoundPlaying",
      description = "Check if a sound is currently playing",
      returnType = "bool",
      params = {
        {type = "Sound", name = "sound"}
      }
    },
    {
      name = "SetSoundVolume",
      description = "Set volume for a sound (1.0 is max level)",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"},
        {type = "float", name = "volume"}
      }
    },
    {
      name = "SetSoundPitch",
      description = "Set pitch for a sound (1.0 is base level)",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"},
        {type = "float", name = "pitch"}
      }
    },
    {
      name = "SetSoundPan",
      description = "Set pan for a sound (0.5 is center)",
      returnType = "void",
      params = {
        {type = "Sound", name = "sound"},
        {type = "float", name = "pan"}
      }
    },
    {
      name = "WaveCopy",
      description = "Copy a wave to a new wave",
      returnType = "Wave",
      params = {
        {type = "Wave", name = "wave"}
      }
    },
    {
      name = "WaveCrop",
      description = "Crop a wave to defined samples range",
      returnType = "void",
      params = {
        {type = "Wave *", name = "wave"},
        {type = "int", name = "initSample"},
        {type = "int", name = "finalSample"}
      }
    },
    {
      name = "WaveFormat",
      description = "Convert wave data to desired format",
      returnType = "void",
      params = {
        {type = "Wave *", name = "wave"},
        {type = "int", name = "sampleRate"},
        {type = "int", name = "sampleSize"},
        {type = "int", name = "channels"}
      }
    },
    {
      name = "LoadWaveSamples",
      description = "Load samples data from wave as a 32bit float data array",
      returnType = "float *",
      params = {
        {type = "Wave", name = "wave"}
      }
    },
    {
      name = "UnloadWaveSamples",
      description = "Unload samples data loaded with LoadWaveSamples()",
      returnType = "void",
      params = {
        {type = "float *", name = "samples"}
      }
    },
    {
      name = "LoadMusicStream",
      description = "Load music stream from file",
      returnType = "Music",
      params = {
        {type = "const char *", name = "fileName"}
      }
    },
    {
      name = "LoadMusicStreamFromMemory",
      description = "Load music stream from data",
      returnType = "Music",
      params = {
        {type = "const char *", name = "fileType"},
        {type = "const unsigned char *", name = "data"},
        {type = "int", name = "dataSize"}
      }
    },
    {
      name = "UnloadMusicStream",
      description = "Unload music stream",
      returnType = "void",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "PlayMusicStream",
      description = "Start music playing",
      returnType = "void",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "IsMusicStreamPlaying",
      description = "Check if music is playing",
      returnType = "bool",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "UpdateMusicStream",
      description = "Updates buffers for music streaming",
      returnType = "void",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "StopMusicStream",
      description = "Stop music playing",
      returnType = "void",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "PauseMusicStream",
      description = "Pause music playing",
      returnType = "void",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "ResumeMusicStream",
      description = "Resume playing paused music",
      returnType = "void",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "SeekMusicStream",
      description = "Seek music to a position (in seconds)",
      returnType = "void",
      params = {
        {type = "Music", name = "music"},
        {type = "float", name = "position"}
      }
    },
    {
      name = "SetMusicVolume",
      description = "Set volume for music (1.0 is max level)",
      returnType = "void",
      params = {
        {type = "Music", name = "music"},
        {type = "float", name = "volume"}
      }
    },
    {
      name = "SetMusicPitch",
      description = "Set pitch for a music (1.0 is base level)",
      returnType = "void",
      params = {
        {type = "Music", name = "music"},
        {type = "float", name = "pitch"}
      }
    },
    {
      name = "SetMusicPan",
      description = "Set pan for a music (0.5 is center)",
      returnType = "void",
      params = {
        {type = "Music", name = "music"},
        {type = "float", name = "pan"}
      }
    },
    {
      name = "GetMusicTimeLength",
      description = "Get music time length (in seconds)",
      returnType = "float",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "GetMusicTimePlayed",
      description = "Get current music time played (in seconds)",
      returnType = "float",
      params = {
        {type = "Music", name = "music"}
      }
    },
    {
      name = "LoadAudioStream",
      description = "Load audio stream (to stream raw audio pcm data)",
      returnType = "AudioStream",
      params = {
        {type = "unsigned int", name = "sampleRate"},
        {type = "unsigned int", name = "sampleSize"},
        {type = "unsigned int", name = "channels"}
      }
    },
    {
      name = "UnloadAudioStream",
      description = "Unload audio stream and free memory",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"}
      }
    },
    {
      name = "UpdateAudioStream",
      description = "Update audio stream buffers with data",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"},
        {type = "const void *", name = "data"},
        {type = "int", name = "frameCount"}
      }
    },
    {
      name = "IsAudioStreamProcessed",
      description = "Check if any audio stream buffers requires refill",
      returnType = "bool",
      params = {
        {type = "AudioStream", name = "stream"}
      }
    },
    {
      name = "PlayAudioStream",
      description = "Play audio stream",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"}
      }
    },
    {
      name = "PauseAudioStream",
      description = "Pause audio stream",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"}
      }
    },
    {
      name = "ResumeAudioStream",
      description = "Resume audio stream",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"}
      }
    },
    {
      name = "IsAudioStreamPlaying",
      description = "Check if audio stream is playing",
      returnType = "bool",
      params = {
        {type = "AudioStream", name = "stream"}
      }
    },
    {
      name = "StopAudioStream",
      description = "Stop audio stream",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"}
      }
    },
    {
      name = "SetAudioStreamVolume",
      description = "Set volume for audio stream (1.0 is max level)",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"},
        {type = "float", name = "volume"}
      }
    },
    {
      name = "SetAudioStreamPitch",
      description = "Set pitch for audio stream (1.0 is base level)",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"},
        {type = "float", name = "pitch"}
      }
    },
    {
      name = "SetAudioStreamPan",
      description = "Set pan for audio stream (0.5 is centered)",
      returnType = "void",
      params = {
        {type = "AudioStream", name = "stream"},
        {type = "float", name = "pan"}
      }
    },
    {
      name = "SetAudioStreamBufferSizeDefault",
      description = "Default size for new audio streams",
      returnType = "void",
      params = {
        {type = "int", name = "size"}
      }
    }
  }
}
