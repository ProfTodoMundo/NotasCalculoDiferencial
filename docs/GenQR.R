# Instala el paquete si aún no lo tienes
# install.packages("qrcode")

library(qrcode)
setwd("~/Documents/GitHub/NotasCalculoDiferencial/docs")
setwd("~/Desktop/MiGithub/NotasCalculoDiferencial/docs")
# URL que deseas codificar en el QR
url <- "https://proftodomundo.github.io/NotasCalculoDiferencial/"
urltarea <- "https://github.com/ProfTodoMundo/NotasCalculoDiferencial/blob/PrincipalCD/docs/Tarea1.pdf"
# Genera el código QR
qr <- qr_code(url)

# Guarda el código QR como una imagen PNG
pdf("codigo_qr.pdf", 
    width = 200, height = 200)
plot(qr)
dev.off()


png("codigo_qr.png", 
    width = 200, height = 200)
plot(qr)
dev.off()


urltarea <- "https://github.com/ProfTodoMundo/NotasCalculoDiferencial/blob/PrincipalCD/docs/Tarea1.pdf"
# Genera el código QR
qrtarea <- qr_code(urltarea)

# Guarda el código QR como una imagen PNG
pdf("codigo_qr_tarea.pdf", 
    width = 200, height = 200)
plot(qrtarea)
dev.off()


png("codigo_qr_tarea.png", 
    width = 200, height = 200)
plot(qrtarea)
dev.off()
