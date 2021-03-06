%% Data Type declaration
% Copyright 2020 - 2020 The MathWorks, Inc.
Simulink.defineIntEnumType('operatingMode', ... 
	{'NoOutput','AllOpenLoop','VoltOpen_CurrClosed','VoltClosed_CurrOpen','AllClosedLoop','AutomaticOperation'}, ...
	[0;1;2;3;4;5], ... 
	'Description', 'Various operating mode for the controller - managing opening and closing of controlled loops', ...
	'DefaultValue', 'NoOutput', ...
	'DataScope', 'Exported', ...
	'StorageType', 'uint16');