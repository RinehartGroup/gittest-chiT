T = Xtdata.TemperatureK; % An elipsis allows in line commenting
H = Xtdata.MagneticFieldOe;
mw = 595.17; % input this manually
mass = 0.0694; % input this manually
moles = mass / mw;
Mag = Xtdata.DCMomentErrFreeCtremu ./ moles;
Xt = (Mag .* T) ./ H;
hold on
plot(T, Xt, 'ko')
title('Magnetic Susceptibility')
xlabel('Temperature (K)')
ylabel('\it\chiT')
hold off
