# Generar puntos en el círculo unitario
theta <- seq(0, 2 * pi, length.out = 100) # Ángulos de 0 a 2*pi
x <- cos(theta) # Coordenada x
y <- sin(theta) # Coordenada y

# Graficar el círculo unitario
plot(x, y, type = "l", aspect = 1, xlim = c(-1, 1), ylim = c(-1, 1), 
     xlab = "Eje X", ylab = "Eje Y", main = "Círculo Unitario")

# Opcional: agregar un punto en el centro
points(0, 0, pch = 19, col = "red")


# Generar puntos en el círculo unitario
theta <- seq(0, 2 * pi, length.out = 100) # Ángulos de 0 a 2*pi
x <- cos(theta) # Coordenada x
y <- sin(theta) # Coordenada y

# Graficar el círculo unitario
plot(x, y, type = "n", aspect = 1, xlim = c(-1, 1), ylim = c(-1, 1), 
     xlab = "", ylab = "", main = "Círculo Unitario")

# Dibujar los ejes X y Y en color azul y grosor delgado
abline(h = 0, col = "blue", lwd = 1) # Eje X
abline(v = 0, col = "blue", lwd = 1) # Eje Y

# Dibujar el círculo unitario
lines(x, y)

# Opcional: agregar un punto en el centro
points(0, 0, pch = 19, col = "red")


# --------------------------------------------------
# Generar puntos en el círculo unitario
theta <- seq(0, 2 * pi, length.out = 100) # Ángulos de 0 a 2*pi
x <- cos(theta) # Coordenada x
y <- sin(theta) # Coordenada y

# Ángulos específicos
angles <- c(pi/4, pi/2, pi/3)

# Coordenadas de los puntos en la circunferencia para los ángulos específicos
x_points <- cos(angles)
y_points <- sin(angles)

# Graficar el círculo unitario
plot(x, y, type = "n", aspect = 1, xlim = c(-1, 1), ylim = c(-1, 1), 
     xlab = "", ylab = "", main = "Círculo Unitario")

# Dibujar los ejes X y Y en color azul y grosor delgado
abline(h = 0, col = "blue", lwd = 1) # Eje X
abline(v = 0, col = "blue", lwd = 1) # Eje Y

# Dibujar el círculo unitario
lines(x, y)

# Agregar puntos en la circunferencia para ángulos específicos
points(x_points, y_points, pch = 19, col = "red")

# Etiquetar los puntos con los ángulos correspondientes
text(x_points, y_points, labels = as.character(angles/pi), pos = 3)


# --------------------------------------------------

# Generar puntos en el círculo unitario
theta <- seq(0, 2 * pi, length.out = 100) # Ángulos de 0 a 2*pi
x <- cos(theta) # Coordenada x
y <- sin(theta) # Coordenada y

# Ángulos específicos
angles <- c(pi/4, pi/2, pi/3)

# Coordenadas de los puntos en la circunferencia para los ángulos específicos
x_points <- cos(angles)
y_points <- sin(angles)

# Valores de ángulos en términos de π
angle_labels <- c("π/4", "π/2", "π/3")

# Graficar el círculo unitario
plot(x, y, type = "n", aspect = 1, xlim = c(-1, 1), ylim = c(-1, 1), 
     xlab = "", ylab = "", main = "Círculo Unitario")

# Dibujar los ejes X y Y en color azul y grosor delgado
abline(h = 0, col = "blue", lwd = 1) # Eje X
abline(v = 0, col = "blue", lwd = 1) # Eje Y

# Dibujar el círculo unitario
lines(x, y)

# Agregar puntos en la circunferencia para ángulos específicos
points(x_points, y_points, pch = 19, col = "red")

# Etiquetar los puntos con los valores de ángulo en términos de π
text(x_points, y_points, labels = angle_labels, pos = 3)

# --------------------------------------------------

# Generar puntos en el círculo unitario
theta <- seq(0, 2 * pi, length.out = 100) # Ángulos de 0 a 2*pi
x <- cos(theta) # Coordenada x
y <- sin(theta) # Coordenada y

# Ángulos específicos (π/4, π/2, π/3)
angles <- c(pi/4, pi/2, pi/3)

# Coordenadas de los puntos en la circunferencia para los ángulos específicos
x_points <- cos(angles)
y_points <- sin(angles)

# Valores de ángulos en términos de π
angle_labels <- c("π/4", "π/2", "π/3")

# Ángulos múltiplos de π/2 y π/3 hasta 2π
angles_multiples <- seq(0, 2 * pi, by = pi/2)
angles_multiples <- angles_multiples[angles_multiples <= 2 * pi]  # Asegurarse de que no exceda 2π

# Coordenadas de los puntos en la circunferencia para los ángulos múltiplos
x_multiples <- cos(angles_multiples)
y_multiples <- sin(angles_multiples)

# Valores de ángulos múltiplos en términos de π
angle_labels_multiples <- as.character(angles_multiples / pi)

# Graficar el círculo unitario
plot(x, y, type = "n", aspect = 1, xlim = c(-1, 1), ylim = c(-1, 1), 
     xlab = "", ylab = "", main = "Círculo Unitario")

# Dibujar los ejes X y Y en color azul y grosor delgado
abline(h = 0, col = "blue", lwd = 1) # Eje X
abline(v = 0, col = "blue", lwd = 1) # Eje Y

# Dibujar el círculo unitario
lines(x, y)

# Agregar puntos en la circunferencia para ángulos específicos
points(x_points, y_points, pch = 19, col = "red")

# Etiquetar los puntos con los valores de ángulo en términos de π
text(x_points, y_points, labels = angle_labels, pos = 3)

# Agregar puntos en la circunferencia para ángulos múltiples
points(x_multiples, y_multiples, pch = 19, col = "blue")

# Etiquetar los puntos con los valores de ángulo múltiples en términos de π
text(x_multiples, y_multiples, labels = angle_labels_multiples, pos = 3)

# --------------------------------------------------

# Generar puntos en el círculo unitario
theta <- seq(0, 2 * pi, length.out = 100) # Ángulos de 0 a 2*pi
x <- cos(theta) # Coordenada x
y <- sin(theta) # Coordenada y

# Ángulos específicos (π/4, π/2, π/3)
angles <- c(pi/4, pi/2, pi/3)

# Coordenadas de los puntos en la circunferencia para los ángulos específicos
x_points <- cos(angles)
y_points <- sin(angles)

# Valores de ángulos en términos de π
angle_labels <- c("π/4", "π/2", "π/3")

# Ángulos múltiplos de π/2 y π/3 hasta 2π
angles_multiples <- seq(0, 2 * pi, by = pi/2)
angles_multiples <- angles_multiples[angles_multiples <= 2 * pi]  # Asegurarse de que no exceda 2π

# Coordenadas de los puntos en la circunferencia para los ángulos múltiples
x_multiples <- cos(angles_multiples)
y_multiples <- sin(angles_multiples)

# Valores de ángulos múltiples en términos de π
angle_labels_multiples <- as.character(angles_multiples / pi)

# Ángulos adicionales (π/4, 2π/4, 3π/4, 4π/4, 5π/4, 6π/4, 7π/4, 8π/4, π/3, 2π/3, 3π/3, 4π/3, 5π/3, 6π/3, 7π/3, 8π/3, 9π/3, 10π/3, 11π/3, 12π/3)
additional_angles <- c(pi/4, 2*pi/4, 3*pi/4, 4*pi/4, 5*pi/4, 6*pi/4, 7*pi/4, 8*pi/4,
                       pi/3, 2*pi/3, 3*pi/3, 4*pi/3, 5*pi/3, 6*pi/3, 7*pi/3, 8*pi/3,
                       9*pi/3, 10*pi/3, 11*pi/3, 12*pi/3)

# Coordenadas de los puntos en la circunferencia para los ángulos adicionales
x_additional <- cos(additional_angles)
y_additional <- sin(additional_angles)

# Valores de ángulos adicionales en términos de π
angle_labels_additional <- as.character(additional_angles / pi)

# Graficar el círculo unitario
plot(x, y, type = "n", aspect = 1, xlim = c(-1, 1), ylim = c(-1, 1), 
     xlab = "", ylab = "", main = "Círculo Unitario")

# Dibujar los ejes X y Y en color azul y grosor delgado
abline(h = 0, col = "blue", lwd = 1) # Eje X
abline(v = 0, col = "blue", lwd = 1) # Eje Y

# Dibujar el círculo unitario
lines(x, y)

# Agregar puntos en la circunferencia para ángulos específicos
points(x_points, y_points, pch = 19, col = "red")

# Etiquetar los puntos con los valores de ángulo en términos de π
text(x_points, y_points, labels = angle_labels, pos = 3)

# Agregar puntos en la circunferencia para ángulos múltiples
points(x_multiples, y_multiples, pch = 19, col = "blue")

# Etiquetar los puntos con los valores de ángulo múltiples en términos de π
text(x_multiples, y_multiples, labels = angle_labels_multiples, pos = 3)

# Agregar puntos en la circunferencia para ángulos adicionales
points(x_additional, y_additional, pch = 19, col = "green")

# Etiquetar los puntos con los valores de ángulo adicionales en términos de π
text(x_additional, y_additional, labels = angle_labels_additional, pos = 3)

# --------------------------------------------------
# Generar puntos en el círculo unitario
theta <- seq(0, 2 * pi, length.out = 100) # Ángulos de 0 a 2*pi
x <- cos(theta) # Coordenada x
y <- sin(theta) # Coordenada y

# Ángulos específicos (π/4, π/2, π/3)
angles <- c(pi/4, pi/2, pi/3)

# Coordenadas de los puntos en la circunferencia para los ángulos específicos
x_points <- cos(angles)
y_points <- sin(angles)

# Valores de ángulos en términos de π
angle_labels <- c("π/4", "π/2", "π/3")

# Ángulos múltiplos de π/2 y π/3 hasta 2π
angles_multiples <- seq(0, 2 * pi, by = pi/2)
angles_multiples <- angles_multiples[angles_multiples <= 2 * pi]  # Asegurarse de que no exceda 2π

# Coordenadas de los puntos en la circunferencia para los ángulos múltiples
x_multiples <- cos(angles_multiples)
y_multiples <- sin(angles_multiples)

# Valores de ángulos múltiples en términos de π
angle_labels_multiples <- as.character(angles_multiples / pi)

# Ángulos adicionales (π/4, 2π/4, 3π/4, 4π/4, 5π/4, 6π/4, 7π/4, 8π/4, π/3, 2π/3, 3π/3, 4π/3, 5π/3, 6π/3, 7π/3, 8π/3, 9π/3, 10π/3, 11π/3, 12π/3)
additional_angles <- c(pi/4, 2*pi/4, 3*pi/4, 4*pi/4, 5*pi/4, 6*pi/4, 7*pi/4, 8*pi/4,
                       pi/6, 2*pi/6, 3*pi/6, 4*pi/6, 5*pi/6, 6*pi/6, 7*pi/6, 8*pi/6,
                       9*pi/6, 10*pi/6, 11*pi/6, 12*pi/6)



# Coordenadas de los puntos en la circunferencia para los ángulos adicionales
x_additional <- cos(additional_angles)
y_additional <- sin(additional_angles)

# Valores de ángulos adicionales en términos de π
#angle_labels_additional <- c(pi/4, 2*pi/4, 3*pi/4, 4*pi/4, 5*pi/4, 6*pi/4, 7*pi/4, 8*pi/4,
#                             pi/3, 2*pi/3, 3*pi/3, 4*pi/3, 5*pi/3, 6*pi/3, 7*pi/3, 8*pi/3,
#                             9*pi/3, 10*pi/3, 11*pi/3, 12*pi/3)

angle_labels_additional <- c("π/4", "π/2", "3π/4", "π", "5π/4", "3π/2", 
                             "7π/4", "2π", "π/6", "π/3", "π/2", "2π/3",
                             "5π/6", "π", "7π/6", "4π/3", "3π/2", "5π/3",
                             "11π/6", "2π")


# Graficar el círculo unitario
plot(x, y, type = "n", aspect = 1, xlim = c(-1, 1), ylim = c(-1, 1), 
     xlab = "", ylab = "", main = "Círculo Unitario")

# Dibujar los ejes X y Y en color azul y grosor delgado
abline(h = 0, col = "blue", lwd = 1) # Eje X
abline(v = 0, col = "blue", lwd = 1) # Eje Y

# Dibujar el círculo unitario
lines(x, y)

# Agregar puntos en la circunferencia para ángulos específicos
points(x_points, y_points, pch = 19, col = "red")

# Etiquetar los puntos con los valores de ángulo en términos de π
#text(x_points, y_points, labels = angle_labels, pos = 3)

# Agregar puntos en la circunferencia para ángulos múltiples
points(x_multiples, y_multiples, pch = 19, col = "blue")

# Etiquetar los puntos con los valores de ángulo múltiples en términos de π
#text(x_multiples, y_multiples, labels = angle_labels_multiples, pos = 3)

# Agregar puntos en la circunferencia para ángulos adicionales
points(x_additional, y_additional, pch = 19, col = "green")

# Etiquetar los puntos con los valores de ángulo adicionales en términos de π
text(x_additional, y_additional, labels = angle_labels_additional, pos = 3)

# Agregar líneas punteadas desde (0,0) a los puntos sobre la circunferencia
segments(0, 0, x_points, y_points, col = "gray", lty = 2)
segments(0, 0, x_multiples, y_multiples, col = "gray", lty = 2)
segments(0, 0, x_additional, y_additional, col = "gray", lty = 2)
# --------------------------------------------------


# --------------------------------------------------


# --------------------------------------------------
