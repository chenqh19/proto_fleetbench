import csv
import matplotlib.pyplot as plt

# Read the CSV files
def read_csv_file(filename):
    with open(filename, 'r') as f:
        reader = csv.DictReader(f)
        data = list(reader)
    
    # Convert string values to float
    for row in data:
        for key in row:
            row[key] = float(row[key])
    
    # Organize data by columns
    columns = {}
    for key in data[0].keys():
        columns[key] = [row[key] for row in data]
    return columns

# Read data
protobuf_data = read_csv_file('protobuf_latency.txt')
ser1de_data = read_csv_file('ser1de_latency.txt')

# Create the plot
plt.figure(figsize=(12, 8))

# Plot protobuf data (dotted lines)
for column in protobuf_data:
    if column != 'iterations':  # Skip 'iterations' column
        plt.plot(protobuf_data['iterations'], protobuf_data[column], 
                linestyle=':', label=f'Protobuf {column}', marker='o')

# Plot ser1de data (solid lines)
for column in ser1de_data:
    if column != 'iterations':  # Skip 'iterations' column
        plt.plot(ser1de_data['iterations'], ser1de_data[column], 
                linestyle='-', label=f'Ser1de {column}', marker='s')

# Customize the plot
plt.xlabel('Iterations')
plt.ylabel('Time (microseconds)')
plt.title('Performance Comparison: Protobuf vs Ser1de')
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')

# Use logarithmic scale for better visualization
plt.xscale('log')
plt.yscale('log')

# Adjust layout to prevent label cutoff
plt.tight_layout()

# Save the plot
plt.savefig('latency_comparison.png', bbox_inches='tight', dpi=300)
plt.close()