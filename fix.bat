powershell -Command "(gc .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h) -replace '/\* Meter Reading electricity delivered by client \(Special for Lux\) in 0,001 kWh \*/', '/* Electricity Peak Current Month in kW */' | Out-File -encoding ASCII .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h.pat"
move /Y .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h.pat .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h

powershell -Command "(gc .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h) -replace 'DEFINE_FIELD *\( *energy_returned_lux *, *FixedValue *, *ObisId *\( *1 *, *0 *, *2 *, *8 *, *0 *\) *, *FixedField *, *units::kWh, *units::Wh *\) *;', 'DEFINE_FIELD(energy_returned_lux, TimestampedFixedValue, ObisId(1, 0, 1, 6, 0), TimestampedFixedField, units::kW, units::W);' | Out-File -encoding ASCII .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h.pat"
move /Y .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h.pat .\.esphome\build\slimmelezer\.piolibdeps\slimmelezer\Dsmr\src\dsmr\fields.h
