outfile = open('output.txt', 'w')

y = True
while y:
    updateName = input("Input update name: ")
    y = input("Is \"%s\" okay? (y?) " % (updateName)) != "y"
infile = open(updateName + '/RUN THIS BEFORE UPDATING.bat', 'r')
updateName = updateName.replace(" ","_")
year = int(input("Input update year: "))
month = int(input("Input update month: "))

lastyear = year
lastmonth = month-1

if month == 1:
    lastyear = year-1
    lastmonth = 12

outfile.write("\t{\n\t  \"version\": \"aov-%s.%s\",\n\t  \"prev\": \"aov-%s.%s\",\n\t  \"update\": [\n" % (year, month, lastyear, lastmonth))
for line in infile:
    if len(line.split("\"")) > 1 :
        holder = line.split("\"")[1].replace("\\","/")
        outfile.write("\t\t{ \"action\": \"%s\", \"target\": \"%s\"},\n" % (('deleteDir' if ('rmdir' in line.split("\"")[0]) else ('delete' if ('del' in line.split("\"")[0]) else 'CHECK .BAT')) , holder))

outfile.write("\n\t\t{\n\t\t  \"action\": \"dl\",\n\t\t  \"url\": \"https://s3.wasabisys.com/aov/Update/%s/%s.zip\",\n" % (year,updateName))

shahash = input("Input SHA-1 hash for the file: ").lower()

outfile.write("\t\t  \"hash\": \"%s\"\n\t\t}\n\t  ]\n\t},\n")

print("Suck it, jumbles")
input()

infile.close()
outfile.close()
