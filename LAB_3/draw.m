function draw(M, nx, ny, nz)

% nx - czy macierz zostala obrocona o nieparzysta wielokrotnosc 90 stopni wzgledem osi x?
% ny - czy macierz zostala obrocona o nieparzysta wielokrotnosc 90 stopni wzgledem osi y?
% nz - czy obracamy wokolo osi z?

% 1 oznacza tak, 0 oznacza nie

N = 150; % gestosc linespace'a czyli w zasadzie punktów na wykresie

if nx == 0 && ny == 0 && nz == 0
    X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    Y = linspace(min(M(:, 2)), max(M(:, 2)), N);

    [xi, yi] = meshgrid(X, Y);
    zi = griddata(M(:, 1), M(:, 2), M(:, 3), xi, yi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); hold on; mesh(xi, yi, zi); hold off;
elseif nx == 1 && ny == 0 && nz == 0
    X = linspace(min(M(:, 1)), max(M(:, 1)), N);
    Z = linspace(min(M(:, 3)), max(M(:, 3)), N);

    [xi, zi] = meshgrid(X, Z);
    yi = griddata(M(:, 1), M(:, 3), M(:, 2), xi, zi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); hold on; mesh(xi, yi, zi); hold off;

elseif nx == 0 && ny == 1 && nz == 0
    Y = linspace(min(M(:, 2)), max(M(:, 2)), N);
    Z = linspace(min(M(:, 3)), max(M(:, 3)), N);

    [yi, zi] = meshgrid(Y, Z);
    xi = griddata(M(:, 2), M(:, 3), M(:, 1), yi, zi, 'cubic');

    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.'); hold on; mesh(xi, yi, zi); hold off;
else
    figure; plot3(M(:, 1), M(:, 2), M(:, 3), '.');
end
