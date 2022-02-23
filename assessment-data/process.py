log_file = open("um-server-01.txt")
#opens the text document


def sales_reports(log_file):
    for line in log_file:     #A for loop that prints just one line at a time of the text file
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":   #specify which day the repots are pulled from
            print(line)    # if you got rid of this "if" statement it would just print every line

#feeds the log file text into the sales report function
sales_reports(log_file)