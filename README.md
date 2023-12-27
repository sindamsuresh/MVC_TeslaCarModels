# iOS Sample MVC App

## Overview

This iOS app is developed using the Model-View-Controller (MVC) architecture, a widely adopted design pattern for building scalable and maintainable software. MVC separates the concerns of data management, user interface, and user input, promoting a modular and organized codebase.

## MVC Architecture

### Model

The Model represents the data and business logic of the application. In this app, the model classes are responsible for managing data, performing calculations, and enforcing business rules. They are independent of the user interface and communicate with the controller to update the view.

### View

The View is responsible for displaying the user interface and presenting the data to the user. In this app, the view classes are designed to be passive, meaning they only display the information and forward user input to the controller. They do not contain business logic.

### Controller

The Controller acts as an intermediary between the Model and the View. It receives user input from the View, processes it, and updates the Model accordingly. The Controller also updates the View in response to changes in the Model. This separation of concerns makes the code more modular and easier to maintain.

## Project Structure

├── Model
│ ├── Model.swift
│ └── ...
├── View
│ ├── ViewController.swift
│ └── ...
├── Controller
│ ├── MainController.swift
│ └── ...
└── ...

- **Model:** Contains classes representing the data and business logic.
- **View:** Contains classes responsible for the user interface.
- **Controller:** Contains classes that manage user input and update the Model and View accordingly.


