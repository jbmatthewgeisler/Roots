# This is a matlab script that uses a black/white image from a digital camera and identifies root edges, writing a skeletized image  as an output file
# After this is executed, images frequently need manual cleanup to remove flares and digitial artifacts.

function extract_edge(i, start_x, start_y, end_x, end_y, filename)
i_gray = rgb2gray(i);
root = i_gray(start_y:end_y, start_x:end_x);
root_e = edge(root, 'canny');
imwrite(root, strcat(filename, '.bmp'), 'bmp');
imwrite(root_e, strcat(filename, '- e.bmp'), 'bmp');
