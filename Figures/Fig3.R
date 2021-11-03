lc_lr_p <- readPNG(here("lc_lr.png"))
lc_lr_p[1,1,]
as.raster(lc_lr_p)

img_3 <- readPNG(here("img3.png"))

img_list <- c(lc_lr_p, img_3)

par(mfrow = c(3, 3))
grid.raster(img_3)
grid.raster(lc_lr_p)

x = 1:10
y = 1:10

grid.newpage()
rasterImage(img_3, 1, 2, 2, 1)

r <- as.raster(c(0.5, 1, 0.5))
plot(r)
# additional arguments to rasterImage()
plot(r, interpolate=FALSE)
# distort
plot(r, asp=NA)
# fill page
op <- par(mar=rep(0, 4))
plot(r, asp=NA)
par(op)
# normal annotations work
plot(r, asp=NA)
box()
title(main="This is my raster")
# add to existing plot
plot(1)
plot(r, add=TRUE)

img_3 <- as.raster(img_3)
plot(img_3, interpolate = FALSE, asp = NA)

lc_lr_p <- as.raster(lc_lr_p)
plot(lc_lr_p, interpolate = FALSE, asp = NA)
