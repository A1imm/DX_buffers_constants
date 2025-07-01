# DirectX - Constant Buffers

This project was developed as part of the **Graphics API Programming** course at the Silesian University of Technology. The objective was to explore the use of **constant buffers (CBuffers)** in DirectX 12, enhance the rendering pipeline with per-vertex color data, and implement user interaction for camera and object control.

## Objective

- Create and bind constant buffers to the DirectX 11 graphics pipeline.
- Extend vertex structure to include RGB color attributes.
- Implement basic HLSL vertex and pixel shaders using semantic bindings.
- Enable interactive control of camera and object transformations.

## Technical Stack

- **API**: DirectX 11
- **Language**: C++17
- **Shaders**: HLSL (Shader Model 5.0+)
- **IDE**: Visual Studio 2019+
- **Platform**: Windows 10/11

## How to Run

1. Open the Visual Studio solution file (`*.sln`).
2. Build the project using `Ctrl+Shift+B`.
3. Run the application using `F5`.

### Controls
- **Mouse**:
  - Left click + drag → rotate camera
  - Right click + drag → zoom
- **Keyboard**:
  - Arrow keys → move object (cube) in world space

## Project Structure

```
├── shader.fx             # HLSL shader program
├── GeometryHelper.h      # Cube geometry and vertex color logic
├── RenderWidget.cpp      # Rendering logic and resource binding
├── System.cpp            # Application window and event loop
├── .gitignore            # Excludes build artifacts and cache
└── README.md             # Project documentation
```

## Results

![image](https://github.com/user-attachments/assets/1dbadcd9-55ae-4af1-9d78-b2ee04b388db)


## Academic Context

This project was developed as part of laboratory exercises for the course:

> **Graphics API Programming (DirectX)**  
> Silesian University of Technology – Faculty of Automatic Control, Electronics and Computer Science  
> Supervised by: mgr inż. Aleksandra Szymczak

---

>  Technical note: In DirectX 11, constant buffer size must be a multiple of 256 bytes.  

## Author

**inż. Alan Pawleta**  
Silesian University of Technology  
Faculty of Automatic Control, Electronics and Computer Science  
