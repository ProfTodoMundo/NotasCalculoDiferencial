# Instala el paquete si aún no lo tienes
# install.packages("qrcode")

library(qrcode)
setwd("~/Documents/GitHub/NotasCalculoDiferencial/docs")
# URL que deseas codificar en el QR
url <- "https://proftodomundo.github.io/NotasCalculoDiferencial/"

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
