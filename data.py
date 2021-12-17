import mariadb 

connection=mariadb.connect(
		host='localhost',
		user='root',
		passwd='for i in range',
		db='terry_store',
		)

db =connection.cursor()
data = db.execute("show tables")
result = db.fetchall()

print("These are the tables in the db: \n")

for i in result:
	print(i[0])

with open('data.txt', 'w') as f:
	for i in result:
		# print(i[0]+"\n")
		f.write(i[0]+"\n")
		data = db.execute("select * from "+i[0])
		out = db.fetchall()
		if out:
			for j in out:
				f.write(str(j)[1:-1])

			# 	for k in j:
			# 		print(k,end=" ")
			# 		f.write(k)
				# print("\n")
				f.write("\n")
			f.write("\n")

		else:
			f.write("EMPTY\n\n")

print("File Succesfully created find the content in data.txt")




