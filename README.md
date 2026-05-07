# Flutter Blog App

A Flutter Blog Application built using Clean Architecture, Bloc State Management, Dependency Injection, and Supabase Authentication.

---

# Features

- User Signup
- User Login
- Supabase Authentication
- Clean Architecture
- Bloc State Management
- Dependency Injection using GetIt
- Form Validation
- Reusable Widgets

---

# Tech Stack

- Flutter
- Dart
- Flutter Bloc
- GetIt
- Supabase

---

# Project Architecture

```text
UI
↓
Bloc
↓
UseCase
↓
Repository
↓
Datasource
↓
Supabase
```

---

# Clean Architecture Layers

## Presentation Layer
Handles:
- UI
- Bloc
- User Interaction

## Domain Layer
Handles:
- Business Logic
- UseCases
- Repository Interfaces

## Data Layer
Handles:
- API/Supabase Calls
- Models
- Repository Implementations
- Datasources

---

# SOLID Principles Used

## S → Single Responsibility Principle
One class = one responsibility.

Example:
- Bloc handles state
- Repository handles data
- UI handles UI

---

## O → Open Closed Principle
Add new functionality without modifying existing code.

Example:
New payment methods can be added using new classes.

---

## L → Liskov Substitution Principle
Child classes should properly replace parent classes.

Example:
FirebaseAuthRepository and SupabaseAuthRepository both implement AuthRepository.

---

## I → Interface Segregation Principle
Small focused interfaces are better.

Example:
Separate AuthRepository and PaymentRepository.

---

## D → Dependency Inversion Principle
Depend on abstraction, not implementation.

Example:
Bloc depends on AuthRepository instead of SupabaseAuthRepository.

---

# Dependency Injection

This project uses GetIt for Dependency Injection.

Main registrations:
- Bloc
- Repository
- Datasource
- Supabase Client

---

# Folder Structure

```text
lib/
│
├── core/
├── features/
│   ├── auth/
│   │   ├── data/
│   │   ├── domain/
│   │   ├── presentation/
│
├── init_dependencies.dart
├── main.dart
```

---

# State Management

This project uses Flutter Bloc.

Main concepts:
- Events
- States
- Bloc

---

# Backend

Supabase is used for:
- Authentication
- Database

---

# Getting Started

## Install Dependencies

```bash
flutter pub get
```

## Run Project

```bash
flutter run
```

---

# Learning Goals

This project was created to learn:
- Clean Architecture
- SOLID Principles
- Bloc State Management
- Dependency Injection
- Supabase Integration
