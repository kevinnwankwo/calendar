"""
This code does the following:
    a. the code prompts me to enter a year
    b. it prompts me to enter a month. i should be able to enter either the month number or the month name in full(eg. 1 or January)
    c. the code prints out the calendar for the month of that particular year
"""

import calendar

def show_month_calendar():
    # Step A: Prompt user for a valid year
    while True:
        try:
            year = int(input("Enter a year (e.g., 2026): ").strip())
            if year > 0:
                break
            else:
                print("Please enter a positive year greater than 0.")
        except ValueError:
            print("Invalid input! Please enter a valid number for the year.")

    # Dictionary mapping month names and abbreviations to numbers 1–12
    month_map = {
        "1": 1, "january": 1, "jan": 1,
        "2": 2, "february": 2, "feb": 2,
        "3": 3, "march": 3, "mar": 3,
        "4": 4, "april": 4, "apr": 4,
        "5": 5, "may": 5,
        "6": 6, "june": 6, "jun": 6,
        "7": 7, "july": 7, "jul": 7,
        "8": 8, "august": 8, "aug": 8,
        "9": 9, "september": 9, "sep": 9, "sept": 9,
        "10": 10, "october": 10, "oct": 10,
        "11": 11, "november": 11, "nov": 11,
        "12": 12, "december": 12, "dec": 12
    }

    # Step B: Prompt user for a month (number, full name, or abbreviation)
    while True:
        month_input = input("Enter a month (e.g., 1, January, or Jan): ").strip().lower()
        
        if month_input in month_map:
            month_num = month_map[month_input]
            break
        else:
            print("Invalid month! Please enter a number (1-12), full month name, or abbreviation.")

    # Step C: Print the calendar for that specific month and year
    print("\n" + calendar.month(year, month_num))

# Run the program
show_month_calendar()
