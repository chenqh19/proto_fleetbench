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

# Create two subplots
fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(12, 16))

# First plot: benchmark_time and serialize+deserialize
metrics1 = ['benchmark_time', 'serialize+deserialize']
for metric in metrics1:
    ax1.plot(protobuf_data['iterations'], protobuf_data[metric], 
             linestyle=':', label=f'Protobuf {metric}', marker='o')
    ax1.plot(ser1de_data['iterations'], ser1de_data[metric], 
             linestyle='-', label=f'Ser1de {metric}', marker='s')

ax1.set_xlabel('Iterations')
ax1.set_ylabel('Time (microseconds)')
ax1.set_title('Benchmark Time and Total Serialization Performance')
ax1.grid(True, linestyle='--', alpha=0.7)
ax1.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
ax1.set_xscale('log')
ax1.set_yscale('log')

# Second plot: serialize and deserialize
metrics2 = ['serialize', 'deserialize']
for metric in metrics2:
    ax2.plot(protobuf_data['iterations'], protobuf_data[metric], 
             linestyle=':', label=f'Protobuf {metric}', marker='o')
    ax2.plot(ser1de_data['iterations'], ser1de_data[metric], 
             linestyle='-', label=f'Ser1de {metric}', marker='s')

ax2.set_xlabel('Iterations')
ax2.set_ylabel('Time (microseconds)')
ax2.set_title('Individual Serialize and Deserialize Performance')
ax2.grid(True, linestyle='--', alpha=0.7)
ax2.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
ax2.set_xscale('log')
ax2.set_yscale('log')

# Adjust layout to prevent label cutoff
plt.tight_layout()

# Save the plot
plt.savefig('latency_comparison.png', bbox_inches='tight', dpi=300)
plt.close()