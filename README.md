# **Low Light Game Engine**  

Welcome to the *Low Light Game Engine*! This is a hobby project developed by [me](link.com). I post regular dev/study logs on my [blog](link.com), where I go into detail about implementing new features in the engine.  

*Low Light Engine* is focused on **2D game prototyping and development** for my personal projects. The engine is designed to be a **flexible and modular toolset** for 2D game development. Currently, it is in the **early stages of development**, and as new systems and features are added, this README will be updated with documentation on architecture and implementation details.  

> ⚠ **Stability Notice:**  
> This is an **experimental** hobby project. It is **not yet ready** for serious game development and is **very feature-incomplete**. Expect frequent changes and breaking updates.  

---

## **Features**  

### **Game Loop**  
- **Description:** A fixed and variable time-step game loop, broken into different sub-loops to separate concerns.  
- **Key Files:** `GameEngine.cpp`, `GameEngine.h`, `main.cpp`  

### **Component System**  
- **Description:** GameActors are composed of component classes that provide functionality.  
- **Key Files:** `GameActor.cpp`, `GameActor.h`, `Component.h`  

### **Texture Manager** *(Work in Progress)*  
- **Description:** Efficiently loads, stores, and manages textures for rendering.  
- **Key Files:** **TODO**  

*(More features coming soon!)*  

---

## **Platforms**  

The following platforms are planned for support.  
- [ ] PC (Windows, Linux, Mac)  
- [ ] PlayStation 4
- [ ] Xbox
- [ ] Android 
- [ ] iOS 
- [ ] Nintendo Switch 

---

## **Contributing**  

At this stage, *Low Light Engine* is a personal project. However, if you have **suggestions, improvements, or ideas**, feel free to open an issue or submit a pull request.  

Ways to contribute:  
✅ Report bugs & issues  
✅ Suggest features or optimizations  
✅ Write or add to documentation
✅ Graphics programmers are very saught after here
✅ Provide feedback on code structure & design  

> **Note:** Since this project is primarily for learning, expect **major changes** as I improve the engine.  

---

## **License**  

This project is licensed under the **MIT License**. In short, you are free to use, modify, and distribute this software, as long as you include the original license and attribution in any copies or substantial portions of the software.


---

## **Build Guide**  

### **Prerequisites**  
- A C++ compiler supporting C++11 or later  
- CMake (version 3.10 or newer recommended)  
- Required libraries: (e.g., The Forge SDK, SDL3 or Raylib, depending on your current backend)  

### **Building the Engine**  

*IN PROGRESS*

### **Notes:**  
- If you encounter missing dependencies or libraries, refer to the documentation for each third-party library.  
- Adjust your CMakeLists.txt if you decide to swap out libraries or add new ones.

---
