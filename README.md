# My-Django-Project
# Django Restaurant Web Application

Welcome to the Django Restaurant Web Application! This project is designed to provide a seamless experience for managing a restaurant's operations, including menu management, reservation handling, user authentication, and order processing.

## Features
- User Authentication: Allow users to register, login, and logout securely.
- User Profile: Enable users to view their profiles.
- Reservation System: Provide an intuitive interface for users to make reservations.
- Menu Display: Showcase the restaurant's menu with interactive features for browsing and filtering by categories.
- Order Placement: Facilitate order placement for dine-in, pickup, or delivery. Allow users to customize their orders and submit them securely.
- Responsive Design: Ensure compatibility across devices with a responsive design implemented using Bootstrap and CSS media queries.

## Deployment of Django Restaurant Application on AWS:

Step1. Setting up Virtual Private Cloud (VPC) with public and private subnets to ensure a secure and scalable infrastructure.
- Create a new VPC with CIDR block 10.0.0.0/16.
- Create two public subnets and two private subnets in different availability zones.
- Configure route tables for public subnets to route traffic to an Internet Gateway (IGW).

Step2. Launching EC2 Instance for Application Hosting:
- Launch an Elastic Compute Cloud (EC2) instance within one of the public subnets.
- Configure security groups to allow inbound HTTP (port 80), port(8000) for django and HTTPS (port 443) traffic to the EC2 instance.
- Configure security groups to allow inbound traffic from the RDS security group on port 5432 for PostgreSQL to the EC2 instance.

3. Setting up Relational Database Service (RDS) for PostgreSQL:
- Create subnet groups to define the subnets for RDS.
- Deploy a new RDS PostgreSQL instance within one of the private subnets.
- Configure security groups to permit inbound traffic from the local postgres on port 5432.

