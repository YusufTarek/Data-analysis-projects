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
6. **Fill Missing Phone Numbers and Format:**
```python
df['Phone_Number'].fillna('', inplace=True)
df['Phone_Number'] = df['Phone_Number'].apply(lambda x: ''.join(filter(str.isalnum, str(x))))
```
7. **Split 'Address' into 'Street_Adress', 'State', 'Zip_Code':**
```python
df['Phone_Number'] = df['Phone_Number'].apply(lambda x: str(x))
df['Phone_Number'] = df['Phone_Number'].apply(lambda x: x[0:3] + '-' + x[3:6] + '-' + x[6:10])
```
8. **Clean 'Do_Not_Contact' Column:**
```python
df['Phone_Number'] = df['Phone_Number'].str.replace('Na', '')
df['Phone_Number'] = df['Phone_Number'].str.replace('--', '')
```
9. **Drop Rows with 'Do_Not_Contact' = 'Yes':**
```python



