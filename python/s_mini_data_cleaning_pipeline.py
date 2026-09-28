from word2number import w2n


data = [
    {"name": "Alice", "age": "25", "salary": "50000"},
    {"name": "Bob", "age": "thirty", "salary": "60000"},
    {"name": "Charlie", "age": "35", "salary": ""},
    {"name": "David", "age": "40", "salary": "70000"}
]


def calculate_median(numbers):
    numbers = sorted(numbers)
    mid = len(numbers) // 2

    if len(numbers) % 2 == 1:
        return numbers[mid]
    else:
        return (numbers[mid - 1] + numbers[mid]) / 2


def clean_data(data):
    valid_salaries = []

    # -------------------------
    # STEP 1: Clean the data
    # -------------------------
    for person in data:

        # Clean age
        try:
            person["age"] = int(person["age"])
        except (ValueError, TypeError):
            try:
                person["age"] = w2n.word_to_num(person["age"])
            except (ValueError, TypeError):
                person["age"] = None

        # Clean salary
        try:
            person["salary"] = float(person["salary"])
        except (ValueError, TypeError):
            person["salary"] = None

        # Collect valid salaries
        if person["salary"] is not None:
            valid_salaries.append(person["salary"])


    # -------------------------
    # STEP 2: Calculate median
    # -------------------------
    if valid_salaries:
        median_salary = calculate_median(valid_salaries)
    else:
        median_salary = None


    # -------------------------
    # STEP 3: Fill missing salaries
    # -------------------------
    for person in data:
        if person["salary"] is None:
            person["salary"] = median_salary


    return data


print(clean_data(data))