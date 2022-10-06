DATA = ../../data 
TEMP = ../../gen/temp 

all: $(DATA)/listings $(TEMP)/combined_data $(TEMP)/combined_data1

$(DATA)/listings.csv: download.R
	mkdir -p $(DATA)
	R --vanilla < download.R

$(TEMP)/combined_data: download.R
	mkdir -p $(TEMP)
	R --vanilla < download.R
	
$(TEMP)/combined_data1: $(TEMP)/combined_data clean.R
	mkdir - p $(TEMP)
	R --vanilla < clean.R
