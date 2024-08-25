<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore the World - Tourist Destination</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <div class="container">
            <h1>Explore the World</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <% if (username == null) { %>
                        <li><a href="login.jsp">Login</a></li>
                        
                    <% } else { %>
                        <li>Welcome, <%= username %></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    <% } %>
                </ul>
            </nav>
        </div>
    </header>

    <main>
        <section id="home" class="hero">
            <div class="container">
                <h2>Welcome to Your Next Adventure</h2>
                <p>Discover the most beautiful places on Earth with us. From serene beaches to bustling cityscapes, find your perfect getaway.</p>
                <a href="destination.jsp" class="btn">Explore Destinations</a>
            </div>
        </section>

        <section id="destinations" class="section">
            <div class="container">
                <h2>Top Destinations</h2>
                <div class="destinations-grid">
                    <div class="destination">
                        <img src="resource/images/paris.jpeg" alt="Eiffel Tower in Paris" />
                        <h3>Paris, France</h3>
                        <p>The city of lights and love, Paris is home to the Eiffel Tower, art museums, and exquisite cuisine.</p>
                    </div>
                    <div class="destination">
                        <img src="resource/images/kyoto.jpeg" alt="Cherry blossoms in Kyoto" />
                        <h3>Kyoto, Japan</h3>
                        <p>Experience traditional Japanese culture in Kyoto, known for its temples, gardens, and cherry blossoms.</p>
                    </div>
                    <div class="destination">
                        <img src="resource/images/newyork.jpeg" alt="Times Square in New York" />
                        <h3>New York, USA</h3>
                        <p>The city that never sleeps, New York offers iconic landmarks, vibrant neighborhoods, and endless entertainment.</p>
                    </div>
                </div>
            </div>
        </section>

        <section id="about" class="section">
            <div class="container">
                <h2>About Us</h2>
                <p>We are a travel agency dedicated to helping you find the perfect travel destinations. Our team of experts is here to provide you with personalized travel plans and tips.</p>
            </div>
        </section>

        
    </main>

    <footer>
        <div class="container">
            <p>&#169; 2024 Explore the World. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
