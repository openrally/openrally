xmllint --noout --schema ../common/XMLSchema.xsd openrally.xsd
xmllint --noout --schema ../common/XMLSchema.xsd ../common/gpx-strict.xsd
xmllint --noout --schema ../common/XMLSchema.xsd test_wrapper.xsd
xmllint --noout --schema test_wrapper.xsd example.gpx
