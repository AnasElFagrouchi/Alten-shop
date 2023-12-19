# README

## Description
This repository contains the full-stack implementation for the Alten Shop application. The application consists of both the back-end and front-end components.

The back-end is responsible for managing products and exposes a RESTful API for interaction.

The front-end is built using Angular and allows users to interact with the back-end APIs for managing products.

## Prerequisites:
- **JDK 17 (Java Development Kit):**
  - Ensure that you have JDK 17 installed on your machine.

- **MySQL Server:**
  - Install and configure MySQL Server on your system.

- **Maven or IDE:**
  - Install Maven, a build and project management tool, to compile and run the Spring Boot application. 
  - Alternatively, if you have an IDE with Maven integrated, such as Spring Tool Suite (STS), you don't need to have Maven separately installed.

- **Angular CLI:**
- Make sure you have Angular CLI installed.

## Getting Started:

### 1. Set Up MySQL Server:

   - **Launch MySQL Server:**
     - Start the MySQL server on your machine.

   - **Execute data.sql:**
     - Execute the SQL script `data.sql` located at `back/alten-shop/src/main/resources/` using your preferred MySQL client. This script initializes the required database schema and inserts initial data.

   - **MySQL Configuration (if needed):**
     - Open `application.properties` located at `back/alten-shop/src/main/resources/`.
     - Update the following properties based on your MySQL server configuration:

      spring.datasource.url=jdbc:mysql://localhost:3306/alten_shop

      spring.datasource.username=your_username
      
      spring.datasource.password=your_password

     - Update the `spring.datasource.url` property if your MySQL server is running on a port other than the default (3306).
     - Replace `your_username` and `your_password` with your MySQL server credentials.

### 2. Build and Run the Spring Boot Application:

#### Using Command Line (CMD):

   - **Navigate to the Backend Project Directory:**
     - Open a terminal and go to the root directory of the Backend project `back/alten-shop`.

   - **Build and Run:**
     - Run the following commands:

       mvn clean install
       
       mvn spring-boot:run
       
       This compiles the project, resolves dependencies, and starts the Spring Boot application.

#### Using IDE (Example : Spring Tool Suite STS):

   - **Open Project in STS:**
     - Launch the Spring Tool Suite IDE.
     - Import the project into STS.

   - **Build and Run:**
     - Build the project within the IDE.
     - Run the main application class to start the Spring Boot application.

### 3. Import Postman Collection:

   - **Postman Collection:**
     - Import the provided Postman collection (`Alten-Shop.postman_collection.json`) into your Postman application. This collection includes predefined API requests.

### 4. Use the API:

   - **API Endpoints:**
     - With the Spring Boot application running, you can now interact with the API using the endpoints defined in the Postman collection.

### 5. Launch the Frontend:

  #### 5.1 Install Node Modules:
   - **Navigate to the Front-end Directory:**
     - Open a terminal and go to the root directory of the Angular project (where your `package.json` is located) `front/`.

   - **Run npm install:**
     - Execute the following command to install project dependencies:
       npm install

  #### 5.2 Launch the Frontend:
   - **Start the Development Server:**
     - After npm install is complete, run the following command to start the Angular development server:
       ng serve

     - By default, the development server runs on `http://localhost:4200/`.

     - Optionally, use the `--open` flag to automatically open the application in your default web browser:
       ng serve --open

     - If you need to use a different port, specify it with the `--port` flag:
       ng serve --port 42