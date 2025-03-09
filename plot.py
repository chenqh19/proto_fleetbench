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

# First figure: benchmark_time and serialize+deserialize
plt.figure(figsize=(10, 8))
metrics1 = ['benchmark_time', 'serialize+deserialize']
for metric in metrics1:
    plt.plot(protobuf_data['iterations'], protobuf_data[metric], 
             linestyle=':', label=f'Protobuf {metric}', marker='o')
    plt.plot(ser1de_data['iterations'], ser1de_data[metric], 
             linestyle='-', label=f'Ser1de {metric}', marker='s')

plt.xlabel('Iterations')
plt.ylabel('Time (milliseconds)')
plt.title('Benchmark Time and Total Serialization Performance')
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
plt.xscale('log')
plt.yscale('log')
plt.tight_layout()
plt.savefig('latency_comparison_total.png', bbox_inches='tight', dpi=300)
plt.close()

# Second figure: serialize and deserialize
plt.figure(figsize=(10, 8))
metrics2 = ['serialize', 'deserialize']
for metric in metrics2:
    plt.plot(protobuf_data['iterations'], protobuf_data[metric], 
             linestyle=':', label=f'Protobuf {metric}', marker='o')
    plt.plot(ser1de_data['iterations'], ser1de_data[metric], 
             linestyle='-', label=f'Ser1de {metric}', marker='s')

plt.xlabel('Iterations')
plt.ylabel('Time (microseconds)')
plt.title('Individual Serialize and Deserialize Performance')
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left')
plt.xscale('log')
plt.yscale('log')
plt.tight_layout()
plt.savefig('latency_comparison_individual.png', bbox_inches='tight', dpi=300)
plt.close()