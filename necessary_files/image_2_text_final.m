
% Flatten the 2D image into a 1D array
flattened_image0 = digit_5';
flattened_image = flattened_image0(:);

% Convert each pixel value to an 8-bit binary string
binary_strings = dec2bin(flattened_image, 8);

% Write the binary strings to a text file with each binary value on a new line
fileID = fopen('flattened_image5.txt', 'w');
for i = 1:length(binary_strings)
    fprintf(fileID, '%s\n', binary_strings(i,:)); % Write each binary string on a new line
end
fclose(fileID);

disp('1D flattened binary data saved to flattened_image.txt');