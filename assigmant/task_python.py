import pandas as pd
import time

start_time = time.time()

db = pd.read_csv('steam-200k.csv')

unique_cols = ['151603712', 'The Elder Scrolls V Skyrim', 'purchase', '1.0', '0']

dup_data = db.drop_duplicates(subset=unique_cols)

dup_data.to_csv('steam-200k-new.csv', index=False)

# Measuring the execution time from start to end 
end_time = time.time()
total_time = end_time - start_time

output_data = pd.read_csv('steam-200k-new.csv')
 
before_deduplication = len(db)
after_deduplication = len(output_data)

# number of deduplicates
number_of_duplicates = len(db) - len(output_data)

# showing results
print(f"execution time: {total_time:.2f} seconds")
print(f"number of records in dataset befor deduplication {before_deduplication}")
print(f"number of records in dataset after deduplication {after_deduplication}")
print(f"Number of duplicates: {number_of_duplicates}")
