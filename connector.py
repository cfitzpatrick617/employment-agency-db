

# WILL NOT RUN DUE TO SECURITY REASONS!



from datetime import datetime
import mysql.connector
# Database Connection Setting
mydb = mysql.connector.connect(
host="null",
port=3306,
database="null",
user="null",
password="null")

mycursor = mydb.cursor()

while True:
    print("\n===============\n\nMENU:\n1. See jobs closing this week (View 2)\n2. Insert a new job\n3. Exit")
    choice = input("Please enter a choice: ")
    # see all jobs closing within the next week
    if choice == "1":
        print("\n===============\n\nJOBS CLOSING THIS WEEK\n")
        mycursor.execute("SELECT * FROM jobs_closing_this_week")
        attribute_names = [i[0] for i in mycursor.description]
        headers = ""
        for attribute in attribute_names:
            # format data in a tabular structure
            headers += f"{attribute:<30}"
        # print column names
        print(headers + "\n")
        for row in mycursor.fetchall():
            fields = ""
            for count, field in enumerate(row):
                # ensure NULL values do not break the system
                if field is None:
                    field = "None"
                if count == 6:
                    # convert tinyint values to boolean for aesthetics
                    if field == "0":
                        field = "False"
                    else:
                        field = "True"
                # print each record in the same tabular structure
                if count == 9 or count == 10:
                    fields += datetime.strftime(field, "%Y-%m-%d") + " " * 20
                else:
                    fields += f"{field:<30}"
            print(fields)

    # insert a job record
    elif choice == "2":
        print("\n===============\n\nINSERT NEW JOB")
        job_title = input("Job title: ")

        job_sector = input("Sector ID (leave blank if needed): ")
        mycursor.execute("SELECT sector_id FROM sector")
        # get all sector IDs in the system
        sectors = [f"{record[0]}" for record in mycursor.fetchall()]
        while True:
            # ensure NULL is set if input is blank
            if job_sector.strip() == "":
                job_sector = "NULL"
                break
            # ensure the sector ID exists for referential integrity
            if job_sector in sectors:
                break
            print("FK constraint failed: no sector.sector_id matches")
            job_sector = input("Please try again: ")

        employer = input("Employer ID: ")
        mycursor.execute("SELECT employer_id FROM employer")
        # fetch all employer IDs in the system
        employers = [f"{row[0]}" for row in mycursor.fetchall()]
        while True:
            # ensure the employer ID exists for referential integrity
            if employer in employers:
                break
            print("FK constraint failed: no employer.employer_id matches")
            employer = input("Please try again: ")

        # ensure the user enters a decimal below 1000 for salary
        hourly_salary = input("Hourly Salary: ")
        while True:
            try:
                hourly_salary = float(hourly_salary)
                if hourly_salary >= 1000:
                    print("Hourly salary must be below 999.99")
                    hourly_salary = input("Please try again: ")
                else:
                    break
            except ValueError:
                print("Hourly salary must be a decimal number less than 999.99")
                hourly_salary = input("Please try again: ")

        date_posted = input("Date Posted: ")
        application_deadline = input("Application Deadline: ")

        # convert Y or N to 1 or 0
        on_site = input("On-site (Y or N): ")
        while True:
            if on_site.upper() == "Y":
                on_site = 1
                break
            elif on_site.upper() == "N":
                on_site = 0
                break
            else:
                on_site = input("On-site (Y or N): ")

        # convert Y or N to 1 or 0
        full_time = input("Full-time (Y or N): ")
        while True:
            if full_time.upper() == "Y":
                full_time = 1
                break
            elif full_time.upper() == "N":
                full_time = 0
                break
            else:
                full_time = input("On-site (Y or N): ")

        # allow for city input to be blank
        city = input("City (leave blank if needed): ")
        if city.strip() == "":
            city = "NULL"
        else:
            city = f"'{city}'"

        # allow for country input to be blank
        country = input("Country (leave blank if needed): ")
        if country.strip() == "":
            country = "NULL"
        else:
            country = f"'{country}'"

        headers = "job_title, sector_id, employer_id, hourly_salary, date_posted, application_deadline, on_site, full_time, city, country"
        values = f"'{job_title}', {job_sector}, {employer}, '{hourly_salary:.2f}', '{date_posted}', '{application_deadline}', {on_site}, {full_time}, {city}, {country}"
        mycursor.execute(f"INSERT INTO job({headers}) VALUES({values})")
        mydb.commit()
        print("\nInsertion successful.")

    # allow the user to quit
    elif choice == "3":
        break
