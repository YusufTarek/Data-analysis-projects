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

9. **Clean 'Do_Not_Contact' Column:**
```python
df['Do_Not_Contact'] = df['Do_Not_Contact'].apply(lambda x: 'No' if str(x).startswith('N') else x)
df['Do_Not_Contact'] = df['Do_Not_Contact'].apply(lambda x: 'Yes' if str(x).startswith('Y') else x)
df = df.replace('N/a', '')
df = df.fillna('')
```
10. **Drop Rows with 'Do_Not_Contact' = 'Yes':**
```python
for x in df.index:
    if df.loc[x, 'Do_Not_Contact'] == 'Yes':
        df.drop(x, inplace = True)
```

11. **Drop Rows with Empty Phone Numbers:**
```python
for x in df.index:
    if df.loc[x, 'Phone_Number'] == '':
        df.drop(x, inplace = True)
```
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
