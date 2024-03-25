import csv

chemin_fichier = "donnees.csv"
donnees = [
	["jean" , "25 ans" , "Paris"],
	["marie" ,"30 ans", "lyon"],
	["pierre", "22 ans", "marseille"],
	["sophie", "35 ans", "toulouse"]

]

with open(chemin_fichier, mode='w' ,newline='') as fichier_csv:
	writer = csv.writer(fichier_csv)
	writer.writerows(donnees)

print (" Le fichier à été crée ")
