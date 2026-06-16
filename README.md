# 3D Crystal Lattice Visualizer & Symmetry Analyzer

A comprehensive MATLAB educational toolkit for visualizing cubic crystal lattices and their rotational symmetry elements. Designed for first-year chemistry students in solid-state chemistry and crystallography courses.

## 📋 Project Overview

This project provides interactive 3D visualizations of fundamental crystal structures found in materials science and chemistry. Each script generates a rotating 3D model with accurate geometric representations, enabling students to develop intuitive understanding of lattice geometry and point group symmetries.

### Educational Value

- **Structural Chemistry**: Understand the spatial arrangement of atoms in crystalline solids
- **Symmetry Operations**: Visualize rotational symmetry axes and their mathematical properties
- **Materials Science Foundation**: Build intuition about crystal structures before advanced computational chemistry

---

## ✨ Features

### Lattice Structures

1. **Simple Cubic (SC)**
   - Basic cubic lattice with atoms at corners
   - Coordination number: 6
   - Packing fraction: ~52%
   - Demonstrates fundamental cubic geometry

2. **Body-Centered Cubic (BCC)**
   - Atoms at cube corners + one atom at the center
   - Coordination number: 8
   - Packing fraction: ~68%
   - Shows higher atomic density than SC

3. **Face-Centered Cubic (FCC)**
   - Atoms at cube corners + atoms at face centers
   - Coordination number: 12
   - Packing fraction: ~74% (most efficient cubic packing)
   - Demonstrates close-packed cubic arrangement

### Rotational Symmetry Axes

4. **C₂ Symmetry (2-fold rotation)**
   - 180° rotation axis through opposite face centers
   - Symmetry element: vertical line through cube center
   - Total C₂ axes in cubic system: 6

5. **C₃ Symmetry (3-fold rotation)**
   - 120° rotation axis through opposite body corners (main diagonal)
   - Symmetry element: diagonal from (0,0,0) to (1,1,1)
   - Total C₃ axes in cubic system: 4

6. **C₄ Symmetry (4-fold rotation)**
   - 90° rotation axis through opposite face centers
   - Symmetry element: parallel to Cartesian axes through cube center
   - Total C₄ axes in cubic system: 3

---

## 🚀 Quick Start

### System Requirements
- **MATLAB**: R2019b or later
- **Toolboxes**: None required (uses only built-in graphics)
- **Disk Space**: ~5 MB
- **Operating System**: Windows, macOS, Linux

### Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/surya-solver/3d-crystal-lattice-visualizer.git
   cd 3d-crystal-lattice-visualizer
   ```

2. **Open MATLAB and navigate to the project directory**
   ```matlab
   cd /path/to/3d-crystal-lattice-visualizer
   ```

### Running the Scripts

#### Option A: From MATLAB Command Window

Navigate to the appropriate directory and run the script:

```matlab
% View lattice structures
cd lattice_structures
simple_cubic        % Simple Cubic (SC) structure
bcc                 % Body-Centered Cubic (BCC) structure
fcc                 % Face-Centered Cubic (FCC) structure

% View symmetry axes
cd ../symmetry_axes
c2_symmetry         % C₂ (2-fold) rotational axis
c3_symmetry         % C₃ (3-fold) rotational axis
c4_symmetry         % C₄ (4-fold) rotational axis
```

#### Option B: From File Explorer

1. Navigate to `lattice_structures/` or `symmetry_axes/` folder
2. Double-click the desired `.m` file
3. MATLAB will execute the script automatically

### Interactive Controls

Once a visualization window opens:

| Control | Action |
|---------|--------|
| **Click & Drag** | Manually rotate the 3D structure |
| **Scroll Wheel** | Zoom in/out |
| **Right-Click & Drag** | Pan the view |
| **Ctrl+C** | Stop automatic rotation |

---

## 📚 Scientific Context

### Crystal Lattices & Unit Cells

A **crystal lattice** is a periodic arrangement of atoms or ions in three-dimensional space. The **unit cell** is the smallest repeating unit that, when stacked together, generates the entire crystal structure.

The three primary cubic lattice types are:

#### Simple Cubic (SC)

| Parameter | Value |
|-----------|-------|
| **Atoms per unit cell** | 1 (8 corners × 1/8) |
| **Coordination number** | 6 |
| **Lattice parameter** | a |
| **Packing fraction** | ~52% |
| **Common examples** | Po (polonium), CsCl-type compounds |

**Geometry**: Atoms located only at the eight corners of a cube. Each atom is surrounded by 6 nearest neighbors (coordination number = 6).

**Atomic Positions**:
- Corner atoms: (0,0,0), (1,0,0), (0,1,0), (0,0,1), (1,1,0), (1,0,1), (0,1,1), (1,1,1)

#### Body-Centered Cubic (BCC)

| Parameter | Value |
|-----------|-------|
| **Atoms per unit cell** | 2 (8 corners × 1/8 + 1 center) |
| **Coordination number** | 8 |
| **Lattice parameter** | a |
| **Packing fraction** | ~68% |
| **Common examples** | Fe (α-iron), Cr (chromium), W (tungsten) |

**Geometry**: Atoms at all eight corners plus one atom at the body center (1/2, 1/2, 1/2). Each atom is surrounded by 8 nearest neighbors.

**Key Features**:
- Center atom touches all 8 corner atoms
- Corner atoms do NOT touch each other
- More densely packed than SC (68% vs 52%)

#### Face-Centered Cubic (FCC)

| Parameter | Value |
|-----------|-------|
| **Atoms per unit cell** | 4 (8 corners × 1/8 + 6 faces × 1/2) |
| **Coordination number** | 12 |
| **Lattice parameter** | a |
| **Packing fraction** | ~74% (highest for cubic systems) |
| **Common examples** | Cu, Al, Au, Ag, Ni, γ-Fe (face-centered iron) |

**Geometry**: Atoms at all eight corners plus atoms at the center of each of the six faces. Each atom is surrounded by 12 nearest neighbors.

**Key Features**:
- Highest packing efficiency (74%)
- Most stable structure for many metals
- Face-centered atoms belong to adjacent unit cells (1/2 each)

---

### Point Group Symmetry Operations

A **symmetry operation** is a transformation that leaves an object looking identical to its original state. For cubic crystals, several types of symmetry operations exist:

#### Rotational Symmetry (Cₙ)

**Definition**: A rotation by 360°/n degrees about an axis that maps the structure onto itself.

#### C₂ Symmetry (2-fold Rotation)

- **Rotation angle**: 360°/2 = 180°
- **Location in cube**: Through opposite face centers
- **Number in cubic system**: 6 axes
- **Coordinates of axis**: Examples at (0.5, 0.5, z), (0.5, y, 0.5), (x, 0.5, 0.5)
- **Symmetry operations**: E (identity), C₂ (180° rotation)

**Physical Meaning**: If you rotate the cube 180° about a face-center axis, the structure looks identical.

#### C₃ Symmetry (3-fold Rotation)

- **Rotation angle**: 360°/3 = 120°
- **Location in cube**: Through opposite body corners (main diagonals)
- **Number in cubic system**: 4 axes
- **Coordinates of axis**: (0,0,0) to (1,1,1) and 3 others
- **Symmetry operations**: E, C₃, C₃² (rotations by 0°, 120°, 240°)

**Physical Meaning**: If you rotate the cube 120° about a body diagonal, the three atoms connected to each corner appear identical.

#### C₄ Symmetry (4-fold Rotation)

- **Rotation angle**: 360°/4 = 90°
- **Location in cube**: Through opposite face centers (perpendicular to faces)
- **Number in cubic system**: 3 axes
- **Coordinates of axis**: (0.5, 0.5, z), (0.5, y, 0.5), (x, 0.5, 0.5)
- **Symmetry operations**: E, C₄, C₄² (= C₂), C₄³ (rotations by 0°, 90°, 180°, 270°)

**Physical Meaning**: If you rotate the cube 90° about an axis through face centers, the four corners around that axis appear identical.

### Point Group Notation

Cubic crystals belong to point group **m3̄m** (or **Oh** in Schoenflies notation).

**Complete symmetry elements in Oh**:
- 1 Identity operation (E)
- 6 C₂ axes (2-fold rotations)
- 4 C₃ axes (3-fold rotations)
- 3 C₄ axes (4-fold rotations)
- 9 Mirror planes (σ)
- 1 Inversion center (i)
- **Total**: 48 symmetry operations

---

## 📁 Project Structure

```
3d-crystal-lattice-visualizer/
│
├── README.md                      # Project documentation (this file)
├── .gitignore                     # Git ignore rules for MATLAB projects
│
├── lattice_structures/            # Basic lattice visualizations
│   ├── simple_cubic.m             # Simple Cubic (SC) lattice
│   ├── bcc.m                      # Body-Centered Cubic (BCC) lattice
│   └── fcc.m                      # Face-Centered Cubic (FCC) lattice
│
└── symmetry_axes/                 # Rotational symmetry demonstrations
    ├── c2_symmetry.m              # C₂ (2-fold) rotational axis
    ├── c3_symmetry.m              # C₃ (3-fold) rotational axis
    └── c4_symmetry.m              # C₄ (4-fold) rotational axis
```

---

## 🔧 Script Descriptions

### Lattice Structure Scripts

#### simple_cubic.m
- **Output**: Interactive 3D visualization of SC lattice
- **Features**: 8 red corner atoms, colored faces, black edges, automatic rotation

#### bcc.m
- **Output**: Interactive 3D visualization of BCC lattice
- **Features**: 8 red corner atoms, 1 blue center atom, bonding lines

#### fcc.m
- **Output**: Interactive 3D visualization of FCC lattice
- **Features**: 8 red corner atoms, 6 blue face-centered atoms, bonding lines

### Symmetry Axis Scripts

#### c2_symmetry.m
- **Axis Location**: Through face centers (0.5, 0.5, z)
- **Visual**: Blue axis line, rotation circle, annotated

#### c3_symmetry.m
- **Axis Location**: Body diagonal (0,0,0) to (1,1,1)
- **Visual**: Magenta axis line, rotation triangle, annotated

#### c4_symmetry.m
- **Axis Location**: Face centers (0.5, 0.5, z)
- **Visual**: Dark magenta axis line, rotation square, annotated

---

## 🎓 Curriculum Integration

### Suggested Learning Sequence

| Week | Activity | Script(s) |
|------|----------|-----------|
| 1 | Intro to cubic crystals | simple_cubic.m |
| 2 | Compare lattice types | bcc.m, fcc.m |
| 3 | Symmetry operations | c2_symmetry.m |
| 4 | Body diagonal symmetry | c3_symmetry.m |
| 5 | Face-center symmetry | c4_symmetry.m |

### Discussion Questions

1. Why does FCC have higher packing efficiency than BCC?
2. Compare coordination numbers: SC (6), BCC (8), FCC (12). What does this mean?
3. What happens when you rotate a cube 120° about a body diagonal?
4. How many C₂ axes are in a cube? Can you name their orientations?
5. Copper is FCC, iron is BCC. How might this affect their properties?

---

## 💡 Tips for Educators

**Customize Point Size**:
```matlab
scatter3(x, y, z, 'red', 'filled', 'SizeData', 300);
```

**Adjust Animation Speed**:
```matlab
rotationSpeed = 0.02;  % Faster
rotationAngle = 1.0;   % More angle per frame
```

**Change View Angle**:
```matlab
view(0, 0);      % Along Z-axis
view(45, 30);    % 3D isometric
view(0, 90);     % Top-down
```

---

## 📊 Mathematical Background

### Bragg's Law & X-ray Diffraction

**nλ = 2d sinθ**

Understanding crystal geometry helps predict diffraction patterns.

### Spacing Between Planes

- d₁₀₀ = a
- d₁₁₀ = a/√2
- d₁₁₁ = a/√3

---

## 🔗 Related Resources

- **CCDC Crystal Structures**: https://www.ccdc.cam.ac.uk/
- **Materials Project**: https://materialsproject.org/
- **MATLAB 3D Graphics**: https://www.mathworks.com/help/matlab/3-d-plots.html
- **IUCr Crystallography**: https://www.iucr.org/

---

## 📄 License

Educational material - Free to use and modify for chemistry coursework.

---

## 👨‍💼 Author

**SURYA-SOLVER** - 1st-Year Chemistry Student  
Solid-State Chemistry Project (2026)

---

## 🔄 Version History

**v1.0** (June 2026) - Initial release with SC, BCC, FCC lattices and C₂, C₃, C₄ symmetry visualization

---

**Last Updated**: June 16, 2026  
**Status**: Active Maintenance  
**MATLAB Compatibility**: R2019b and later
