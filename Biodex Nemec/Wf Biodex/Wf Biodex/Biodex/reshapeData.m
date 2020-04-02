%% Eingelesene Daten neu strukturieren und in eine Nx4 Maxtrix speichern
% Anzahl geloeschter Zeilen speichern

function [data, geloescht] = reshapeData(var)
%  profile on; % durch den Profiler kann die Geschwindigkeit der Funktion getestet werden!
geloescht = 0;
var_char = char(var); % In eine Char-Variable �ndern

var_char_edited = sprintf('%s',var_char); % Zusammenf�gen der strings
var_char_edited(var_char_edited == ',') = ';'; % alle Beistriche zu Semikolons �ndern

find_semi = find(var_char_edited == ';'); % alle Indices f�r Semikolons finden (dort befinden sich direkt davor die 4 gew�nschten Zahlenwerte pro Zelle

help_ind = find(diff(find_semi) > 5, 1, 'first'); % Finde den ersten Semikolon mit einem Abstand von �ber 5 Zahlenwerten (= Enter oder Leerzeichen oder so und steht f�r eine neue Zeile). Ziel ist es dass immer in einer neuen Zeile gestartet wird!

 if (help_ind < 4) | (find_semi(1) < 5) % Wenn weniger als 4 Spalten (= Zahlenwerte) in der ersten Zeile sind, oder der erste Zahlenwert nicht vollst�ndig ist, so soll die ganze erste Zeile gel�scht werden
    var_char_edited = var_char_edited(1,find_semi(help_ind)+1:end);  % L�sche alle Werte, damit mit einer vollst�ndigen ersten Zeile begonnen wird  
    geloescht = geloescht+1;
 end


find_semi = find(var_char_edited == ';'); % Semikolons neu finden
var_char_edited2 = cell(1,length(find_semi)); % Preallocation zur Geschwindigkeitsverbesserung

for i = 1:length(find_semi) % Schleifenl�nge = Anzahl der Semikolons
tmp = var_char_edited(find_semi(i)-4:find_semi(i)-1); % tempor�re Variable = Zahlenwerte von 4 Stellen hinter Semikolon bis 1 Stelle hinter Semikolon; bsp.: 2344;0873; [...] => var(1) = 2344; var(2) = 0873 [...]
var_char_edited2(i) = {tmp}; % tempor�re Variable als Cell abspeichern; mat2cell entspricht den geschwungenen Klammern
end

data_format = cell2mat(var_char_edited2); % Variable in mat umwandeln

rest = mod(length(data_format),4); % Rest der Divison durch 4; weil 4 Zahlenwerte gew�nscht sind...
if rest > 0
    geloescht = geschloescht+1;
end

data_format(end-rest+1:end) = []; % ist ein Rest vorhanden sollen diese Zellen gel�scht werden, damit immer 4 Zahlenwerte in eine Zelle geschrieben werden k�nnen
zeilenanz1 = length(data_format)/4; % Zeilenanzahl = L�nge des Datensatzes durch 4

data_reshaped = reshape(data_format,4,zeilenanz1)';  % Reshaping zu 4 Zahlenwerte und N Zeilen (Nx1 Matrix)
data_reshaped = str2num(data_reshaped); % String zu Zahlenwerte umwandeln (str2num statt str2double verwenden!!)

rest2 = mod(length(data_reshaped),4); % Rest der Divison durch 4; weil 4 Spalten gew�nscht sind...
if rest2 > 0
    geloescht = geloescht+1;
end
data_reshaped(end-rest2+1:end) = []; % Ist ein Rest vorhanden sollen diese Zellen gel�scht werden, damit 4 Spalten erstellt werden k�nnen
zeilenanz2 = length(data_reshaped)/4; % Zeilenanzahl = L�nge des Datensatzes durch 4 (Kraft, Trigger, Position, Winkel)
data = reshape(data_reshaped,4,zeilenanz2)'; % Reshaping zu 4 Spalten -> FERTIG!!!

% profile viewer % Auskommentieren wenn der Profiler erw�nscht ist!
% profile off; % Auskommentieren wenn der Profiler erw�nscht ist!