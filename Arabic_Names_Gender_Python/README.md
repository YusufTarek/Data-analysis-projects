# Arabic Names Gender Prediction

This Python script utilizes a dataset of Arabic names and their associated genders to predict the gender of a given name. The dataset is loaded into a Pandas DataFrame for analysis and prediction.

## Dataset

The dataset, `Arabic_names_8700.csv`, is a CSV file containing information about Arabic names and their corresponding genders. The dataset includes the following columns:

- `name`: The Arabic name.
- `gender`: The gender associated with the name.

## Usage

1. **Load the Dataset:**
   - The script loads the dataset using Pandas.

```python
import pandas as pd

df = pd.read_csv(r'D:\Downloads\Arabic_names_8700.csv')
```

2. **Data Exploration:**
   - Information about the dataset is displayed using `df.info()` and statistical summary using `df.describe()`.

```python
df.info()
df.describe()
```

3. **Remove Duplicates:**
   - Duplicate rows in the dataset are removed.

```python
df = df.drop_duplicates()
```

4. **Gender Prediction Function:**
   - The function `predict_gender(name)` takes an Arabic name as input and predicts its gender based on the dataset.

```python
def predict_gender(name):
    # ... (see the script for the complete function)
```

5. **User Input and Prediction:**
   - The user is prompted to input an Arabic name, and the script predicts and prints the associated gender.

```python
name_to_predict = input('اكتب الاسم: ')
predicted_gender = predict_gender(name_to_predict)
print("الاسم:", name_to_predict, "،النوع:", predicted_gender)
```

` Output:
الاسم: نور ،النوع: ['أنثى', 'ذكر']
`

## Note
- The script considers cases where a name may be associated with multiple genders, returning a list of possibilities.

Feel free to adapt and extend this script for your specific use case or integrate it into your projects.
