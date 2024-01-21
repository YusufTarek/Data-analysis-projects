# Data Cleaning using Pandas

## Overview

This Python script demonstrates a series of data cleaning operations using the pandas library. The dataset used for this example is 'Customer Call List.xlsx'. The cleaning steps include handling missing values, formatting phone numbers, transforming categorical variables, and more.

## Steps

1. **Import Pandas:**
```python
import pandas as pd
```
2. **Read Excel File:**
```python
df = pd.read_excel(r'D:\Data analysis\Datasets\Customer Call List.xlsx')
```

3. **Drop Duplicates:**
```python
df = df.drop_duplicates()
```
4. **Drop Unnecessary Column:**
```python
df = df.drop(columns = 'Not_Useful_Column')
```
5. **Clean 'Last_Name':**
```python
df['Last_Name'] = df['Last_Name'].str.strip('123./_')
```
  The code `df['Last_Name'] = df['Last_Name'].str.strip('123./_')` removes leading and trailing occurrences of the characters '1', '2',     '3', '.', '/', and '_' from each string in the 'Last_Name' column of the DataFrame `df`.

6. **Fill Missing Phone Numbers and Format:**
```python
df['Phone_Number'].fillna('', inplace=True)
df['Phone_Number'] = df['Phone_Number'].apply(lambda x: ''.join(filter(str.isalnum, str(x))))
df['Phone_Number'] = df['Phone_Number'].apply(lambda x: str(x))
df['Phone_Number'] = df['Phone_Number'].apply(lambda x: x[0:3] + '-' + x[3:6] + '-' + x[6:10])
df['Phone_Number'] = df['Phone_Number'].str.replace('Na', '')
df['Phone_Number'] = df['Phone_Number'].str.replace('--', '')
```

  It processes a `'Phone_Number'` column in a pandas DataFrame. It first fills missing values with an empty string, removes non-alphanumeric characters, converts entries to strings, and formats them into a standard phone number structure. Additionally, it eliminates the occurrence of 'Na' strings and consecutive double hyphens within the `'Phone_Number'` entries, effectively cleaning and standardizing the data.

7. **Split 'Address' into 'Street_Adress', 'State', 'Zip_Code':**
```python
df[['Street_Adress', 'State', 'Zip_Code']] = df['Address'].str.split(',', n = 2, expand = True)
```

8. **Clean 'Paying Customer' Column:**
```python
df['Paying Customer'] = df['Paying Customer'].str.replace('Yes', 'Y')
df['Paying Customer'] = df['Paying Customer'].str.replace('No', 'N')
df['Paying Customer'] = df['Paying Customer'].str.replace('Y', 'Yes')
df['Paying Customer'] = df['Paying Customer'].str.replace('N', 'No')
df = df.replace('N/a', '')
```
  It modifies a `'Paying Customer'` column in a pandas DataFrame ('df'). It first replaces occurrences of 'Yes' with 'Y' and 'No' with 'N' in the 'Paying Customer' column. Then, it reverses these replacements by replacing 'Y' with 'Yes' and 'N' with 'No'. Finally, it globally replaces 'N/a' with an empty string in the entire DataFrame. The code aims to standardize representations of affirmative and negative responses in the `'Paying Customer'` column while removing 'N/a' values.


9. **Clean 'Do_Not_Contact' Column:**
```python
df['Do_Not_Contact'] = df['Do_Not_Contact'].apply(lambda x: 'No' if str(x).startswith('N') else x)
df['Do_Not_Contact'] = df['Do_Not_Contact'].apply(lambda x: 'Yes' if str(x).startswith('Y') else x)
df = df.replace('N/a', '')
df = df.fillna('')
```

It manipulates a `'Do_Not_Contact'` column in a pandas DataFrame ('df'). It first uses a lambda function to replace values starting with 'N' with 'No' and values starting with 'Y' with 'Yes' in the `'Do_Not_Contact'` column. Then, it globally replaces 'N/a' with an empty string in the entire DataFrame. Finally, any remaining missing values in the DataFrame are filled with empty strings. The code intends to standardize representations of contact preferences in the `'Do_Not_Contact'` column, replacing specific prefixes and handling missing values uniformly by converting 'N/a' to an empty string and filling other missing values with empty strings.

10. **Drop Rows with 'Do_Not_Contact' = 'Yes':**
```python
for x in df.index:
    if df.loc[x, 'Do_Not_Contact'] == 'Yes':
        df.drop(x, inplace = True)
```

The provided code iterates through the index of a pandas DataFrame ('df') and checks the 'Do_Not_Contact' column for each row. If the value in the 'Do_Not_Contact' column is 'Yes', the corresponding row is removed from the DataFrame using the `drop` method with the `inplace` parameter set to True. Essentially, the code filters out and eliminates rows where the 'Do_Not_Contact' column has a value of 'Yes', resulting in a modified DataFrame without these specific entries.

11. **Drop Rows with Empty Phone Numbers:**
```python
for x in df.index:
    if df.loc[x, 'Phone_Number'] == '':
        df.drop(x, inplace = True)
```

The provided code iterates through the index of a pandas DataFrame ('df') and checks the 'Phone_Number' column for each row. If the value in the 'Phone_Number' column is an empty string (''), the corresponding row is removed from the DataFrame using the `drop` method with the `inplace` parameter set to True. In essence, the code filters out and eliminates rows where the 'Phone_Number' column is empty, resulting in a modified DataFrame without these specific entries.

12. **Drop Unnecessary Columns:**
```python
df = df.drop(['Address', 'Zip_Code'], axis=1)
```

13. **Reset Index:**
```python
df = df.reset_index(drop = True)
```

## Conclusion
This script showcases the application of various pandas functions to clean and preprocess the 'Customer Call List' dataset.
