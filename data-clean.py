import csv
import sys
import numpy as np

def importDataSet():
	'Import the data set into a list of lists.'

	# Read lines into list container
	try:
		#
		noaa_hail_data = []
		#
		coords = []
		#
		dataFile = open("/home/sean/academic/utc/f2012/cpsc_5210/research-project/dataset/noaa-hail-mini.csv", 'rt')
		#
		reader = csv.reader(dataFile)
		reader.next()
		# Add each record to 
		i = 0
		for row in reader:
			coord = (int(i), float(row[15]), float(row[16]))
			row.reverse()
			row.append(i)
			row.reverse()
			i += 1
			noaa_hail_data.append(row)
			coords.append(coord)

		x = np.array(coords)
		j,k,l = 0
		for j in range(len(x)):
			check = x[j][]
			for k,l in range(len(x)):


		print(x[0])

		outFile = open('fixed-noaa.csv', 'wb')

		for record in noaa_hail_data:
			writer = csv.writer(outFile, delimiter=",")
			writer.writerow(record)


	finally:
		# Close the file
		dataFile.close()

importDataSet()