# 🐸 GodotCharacterTest

Tarea de **Programación Multimedia (2º DAM)**: partir del ejemplo de clase y añadirle una mecánica. A mí me tocó el **triple salto**.

Hecho con **Godot 4.7**. Para probarlo, importa el `project.godot` desde Godot y dale a **F5**.

## Controles

- **← →** o **A / D** — moverte
- **↑** — saltar, hasta **3 veces** seguidas

## El triple salto

Está en `scripts/RanaNinja.gd`. Es un contador de saltos que se pone a 0 al tocar el suelo.

El reinicio tiene que ir **antes** de la comprobación del salto: `is_on_floor()` devuelve lo que calculó el último `move_and_slide()`, así que si va después borra el salto del suelo y salen 4.

También cambié el personaje y las plataformas para que no fuera el ejemplo tal cual.

## Créditos

- Base: ejemplo de clase de Rubén Montero — [RubenTeacher/GodotCharacterTest](https://github.com/RubenTeacher/GodotCharacterTest)
- Gráficos: [Pixel Adventure 1](https://pixelfrog-assets.itch.io/pixel-adventure-1), de Pixel Frog (CC0)
