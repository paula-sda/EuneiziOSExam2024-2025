# Examen iOS: Aplicación Trivia con Ranking

- Se te proporciona un proyecto iOS que implementa un juego Trivia básico. La lógica del juego está encapsulada en la clase `TriviaGame`, pero la aplicación no está terminada. Tu objetivo es completar la aplicación añadiendo funcionalidad a `ViewController`, `TriviaGameViewController` y crear el **Ranking** (explicado más adelante). Debes utilizar la lógica proporcionada y gestionar el ranking.  

A continuación, un ejemplo del resultado visual esperado:
<div style="display: flex; justify-content: center; gap: 10px;">
  <img src="https://github.com/martarodriguezm/EuneiziOSExam2024-2025/blob/main/trivia1.png?raw=true" alt="App navigation 1" width="300"/>
  <img src="https://github.com/martarodriguezm/EuneiziOSExam2024-2025/blob/main/trivia2.png?raw=true" alt="App navigation 2" width="300"/>
</div>
---

## Tiempo

- Máximo **15 minutos** para dudas y puesta en marcha del proyecto iOS entregado.  
- Después, el examen tendrá una duración de **2,5 horas**.  

---

## Herramientas permitidas

- Ordenador y conexión a Internet.  
- Consultar ejercicios realizados en clase y recursos en Internet.  

## Herramientas NO permitidas

- No está permitido usar herramientas de mensajería o similar para hablar con otras personas.  
- Supondrá el **suspenso inmediato**.  

---

## Objetivos

### Home (1 pt)

- Se proporciona la UI con 2 botones.  
- Implementar la lógica de navegación al juego Trivia y al Ranking.  
  - Al pulsar el botón **“Play Trivia”** → navegar a la pantalla con la primera pregunta cargada.  
  - Al pulsar el botón **“Ranking”** → navegar al listado del ranking.  

---

### Juego Trivia (4 pt)

- Implementar la interfaz gráfica de las preguntas con UI y Constraints necesarias.  
- Conectar la UI con la clase `TriviaGame` (ya implementada).  
- Cada vez que el usuario selecciona una respuesta:  
  - Enviar la respuesta a `TriviaGame`.  
  - Recargar la pantalla con la siguiente pregunta.  
- Al contestar la última pregunta → navegar a `TriviaResultViewController`.  

---

### Resultado Juego Trivia (1 pt)

- La UI de `TriviaResultViewController` está entregada (parcialmente con código Swift).  
- Implementar la lógica de los botones:  
  - `saveBt`: Guardar la puntuación introducida en el `UITextField`.  
  - `restartBt`: Volver a la primera pregunta reinicializando el juego.  

---

### Ranking (4 pt)

- Crear el `ViewController` para el Ranking.  
- Mostrar un listado con `UITableView` que incluya:  
  - Nombre del jugador.  
  - Puntuación obtenida.  
- El Ranking se guarda entre ejecuciones usando **Realm**.  

---

## Detalles Técnicos

- La gestión del Ranking se hace con la clase `RankingDataSource` (ya implementada con Realm).  
- Vista de pregunta: UI con la pregunta y 4 botones con las 4 posibles respuestas.  
- Listado del Ranking: Cada celda muestra el nombre y la puntuación.  
- Todas las vistas deben estar correctamente constraintadas, sin errores.  

---

## Entregables

- Un proyecto iOS funcional que cumpla con los requisitos (archivo `.zip`).  
- Explicación en el código mediante **comentarios** sobre las decisiones tomadas.  

---

## Evaluación

- Antes de entregar, deberás mostrar la app en ejecución en el simulador.  
- Tendrás **3 minutos** para explicar tu proyecto.  
- Se valorará:  
  - Funcionamiento de la aplicación.  
  - Uso de los elementos dados.  
  - Compleción de las funcionalidades.  
  - Calidad del código (nombres, organización, etc.).  
  - Uso de elementos vistos en clase.  
- Se penalizará el uso de elementos innecesarios.  
- Se restará **0,5 puntos** si el proyecto entregado no es directamente ejecutable en el simulador.  


---
---

# iOS Exam: Trivia App with Ranking

You are provided with an iOS project that implements a basic Trivia game. The game logic is encapsulated in the `TriviaGame` class, but the application is not complete. Your goal is to finish the app by adding functionality to `ViewController`, `TriviaGameViewController`, and creating the **Ranking** (explained later). You must use the provided logic and manage the ranking.  

Below is an example of the expected visual result:
<div style="display: flex; justify-content: center; gap: 10px;">
  <img src="https://github.com/martarodriguezm/EuneiziOSExam2024-2025/blob/main/trivia1.png?raw=true" alt="App navigation 1" width="300"/>
  <img src="https://github.com/martarodriguezm/EuneiziOSExam2024-2025/blob/main/trivia2.png?raw=true" alt="App navigation 2" width="300"/>
</div>

---

## Time

- Maximum **15 minutes** for questions and project setup.  
- After that, the exam duration is **2.5 hours**.  

---

## Allowed Tools

- Computer and Internet connection.  
- You may consult class exercises and online resources.  

## Not Allowed

- Messaging tools or similar communication with other people.  
- This will result in an **immediate fail**.  

---

## Objectives

### Home (1 pt)

- The UI with 2 buttons is provided.  
- Implement navigation logic to the Trivia game and the Ranking.  
  - Pressing **“Play Trivia”** → navigates to the first trivia question.  
  - Pressing **“Ranking”** → navigates to the ranking list.  

---

### Trivia Game (4 pt)

- Implement the question UI using the necessary UI elements and Constraints.  
- Connect the UI with the `TriviaGame` class (already implemented).  
- Each time the user selects an answer:  
  - Send the answer to `TriviaGame`.  
  - Reload the screen with the next question.  
- After answering the last question → navigate to `TriviaResultViewController`.  

---

### Trivia Result (1 pt)

- The UI of `TriviaResultViewController` is provided (with partial Swift code).  
- Implement the logic of the buttons:  
  - `saveBt`: Save the score entered in the `UITextField`.  
  - `restartBt`: Go back to the first question, restarting the game.  

---

### Ranking (4 pt)

- Create the `ViewController` for the Ranking.  
- Display a list using `UITableView` that includes:  
  - Player name.  
  - Score obtained.  
- The Ranking must be saved between app launches using **Realm**.  

---

## Technical Details

- Ranking management is handled with the `RankingDataSource` class (already implemented with Realm).  
- Question screen: UI with the current question and 4 buttons for the possible answers.  
- Ranking list: Each row displays the player’s name and score.  
- All views must have proper Constraints without errors.  

---

## Deliverables

- A functional iOS project meeting all requirements (submitted as a `.zip` file).  
- Code explanation through **comments** describing your decisions.  

---

## Evaluation

- Before submission, you must show the app running in the simulator.  
- You will have **3 minutes** to explain your project.  
- Evaluation criteria:  
  - Functionality of the app.  
  - Use of the provided elements.  
  - Completion of the required features.  
  - Code quality (naming, organization, etc.).  
  - Use of concepts taught in class.  
- Penalties:  
  - Use of unnecessary elements.  
  - **-0.5 points** if the project is not directly executable in the simulator.  
