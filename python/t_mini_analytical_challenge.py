employees = [
    {"name": "Alice", "department": "IT", "salary": 70000, "age": 28},
    {"name": "Bob", "department": "HR", "salary": 50000, "age": 35},
    {"name": "Charlie", "department": "IT", "salary": 90000, "age": 32},
    {"name": "David", "department": "Finance", "salary": 80000, "age": 41},
    {"name": "Eva", "department": "HR", "salary": 60000, "age": 29},
    {"name": "Frank", "department": "Finance", "salary": 95000, "age": 36}
]


# ============================================================
# 1. Calculate Mean
# ============================================================

def calculate_mean(numbers):
    if len(numbers) == 0:
        return None

    return sum(numbers) / len(numbers)


# ============================================================
# 2. Calculate Median
# ============================================================

def calculate_median(numbers):
    if len(numbers) == 0:
        return None

    numbers = sorted(numbers)
    mid = len(numbers) // 2

    if len(numbers) % 2 == 1:
        return numbers[mid]

    return (numbers[mid - 1] + numbers[mid]) / 2


# ============================================================
# 3. Get All Salaries
# ============================================================

def get_salaries(employee_list):
    salaries = []

    for employee in employee_list:
        salaries.append(employee["salary"])

    return salaries


# ============================================================
# 4. Get All Ages
# ============================================================

def get_ages(employee_list):
    ages = []

    for employee in employee_list:
        ages.append(employee["age"])

    return ages


# ============================================================
# 5. Find Highest-Paid Employee
# ============================================================

def find_highest_paid_employee(employee_list):
    highest_paid = None

    for employee in employee_list:

        if highest_paid is None:
            highest_paid = employee

        elif employee["salary"] > highest_paid["salary"]:
            highest_paid = employee

    return highest_paid


# ============================================================
# 6. Calculate Average Salary By Department
# ============================================================

def calculate_average_salary_by_department(employee_list):

    department_data = {}

    for employee in employee_list:

        department = employee["department"]
        salary = employee["salary"]

        if department not in department_data:
            department_data[department] = {
                "total_salary": 0,
                "employee_count": 0
            }

        department_data[department]["total_salary"] += salary
        department_data[department]["employee_count"] += 1

    average_salary_by_department = {}

    for department, data in department_data.items():

        average_salary = (
            data["total_salary"] / data["employee_count"]
        )

        average_salary_by_department[department] = average_salary

    return average_salary_by_department


# ============================================================
# 7. Find Oldest Employee
# ============================================================

def find_oldest_employee(employee_list):

    oldest_employee = None

    for employee in employee_list:

        if oldest_employee is None:
            oldest_employee = employee

        elif employee["age"] > oldest_employee["age"]:
            oldest_employee = employee

    return oldest_employee


# ============================================================
# 8. Find Employees Earning Above Overall Average
# ============================================================

def find_employees_above_average(employee_list, average_salary):

    employees_above_average = []

    for employee in employee_list:

        if employee["salary"] > average_salary:
            employees_above_average.append(employee)

    return employees_above_average


# ============================================================
# 9. Find Department With Highest Average Salary
# ============================================================

def find_highest_average_salary_department(
    average_salary_by_department
):

    highest_department = None
    highest_average = None

    for department, average_salary in average_salary_by_department.items():

        if highest_average is None:
            highest_average = average_salary
            highest_department = department

        elif average_salary > highest_average:
            highest_average = average_salary
            highest_department = department

    return highest_department, highest_average


# ============================================================
# MAIN ANALYSIS
# ============================================================

salaries = get_salaries(employees)
ages = get_ages(employees)


# Average salary
average_salary = calculate_mean(salaries)


# Median salary
median_salary = calculate_median(salaries)


# Highest-paid employee
highest_paid_employee = find_highest_paid_employee(employees)


# Average salary by department
average_salary_by_department = (
    calculate_average_salary_by_department(employees)
)


# Oldest employee
oldest_employee = find_oldest_employee(employees)


# Employees earning above average
employees_above_average = find_employees_above_average(
    employees,
    average_salary
)


# Department with highest average salary
highest_average_department, highest_department_salary = (
    find_highest_average_salary_department(
        average_salary_by_department
    )
)


# ============================================================
# RESULTS
# ============================================================

print("Average Salary:", round(average_salary, 2))

print("Median Salary:", round(median_salary, 2))

print(
    "Highest-Paid Employee:",
    highest_paid_employee["name"],
    "-",
    highest_paid_employee["salary"]
)

print(
    "Average Salary By Department:",
    {
        department: round(average, 2)
        for department, average
        in average_salary_by_department.items()
    }
)

print(
    "Oldest Employee:",
    oldest_employee["name"],
    "-",
    oldest_employee["age"]
)

print("Employees Earning Above Average:")

for employee in employees_above_average:
    print(
        employee["name"],
        "-",
        employee["salary"]
    )

print(
    "Department With Highest Average Salary:",
    highest_average_department,
    "-",
    round(highest_department_salary, 2)
)