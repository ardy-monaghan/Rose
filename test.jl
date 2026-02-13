using Images, FileIO, Colors, CairoMakie, Statistics, PortAudio


young = load("./data/pic/IMG_3010.jpeg");
middle = load("./data/pic/IMG_3252.jpeg");
old = load("./data/pic/IMG_3301.jpeg");

## Testing

# Maybe view the images without blue first?
test_image = zeros(eltype(young), size(young))

for i in eachindex(young)
    test_image[i] = RGB(middle[i].r, zero(middle[i].g), zero(middle[i].b))
end

test_image

another_test_image = middle .- young

## Looking at time-averaged pixels -- averaged relative to a fixed point

# Get a course-grained red pixel value for each image

# Shift the images by a little to try minimise the error in change in red pixel value between the images

# I suppose look at the derivative -- then average relative to an angle



##

another_test_image = old

hist_data = [float(pixel.r)  for pixel in another_test_image[:]]

println(sum(hist_data))
f = Figure()
hist(f[1, 1], hist_data, bins = 1000)
f

## Cool artwork


young = load("./data/pic/IMG_3010.jpeg");
middle = load("./data/pic/IMG_3252.jpeg");
old = load("./data/pic/IMG_3301.jpeg");


# Maybe view the images without blue first?
test_image = zeros(eltype(young), size(young))

for i in eachindex(young)
    test_image[i] = RGB(young[i].r, middle[i].g, old[i].b)
end

image(test_image)