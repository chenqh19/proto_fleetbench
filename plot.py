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
plt.figure(figsize=(12, 8))
plt.rcParams.update({'font.size': 22})  # Set base font size
metrics1 = ['benchmark_time', 'serialize+deserialize']
for metric in metrics1:
    plt.plot(protobuf_data['iterations'], protobuf_data[metric], 
             linestyle=':', label=f'Protobuf {metric}', marker='o')
    plt.plot(ser1de_data['iterations'], ser1de_data[metric], 
             linestyle='-', label=f'SERenaDE {metric}', marker='s')

plt.xlabel('Iterations', fontsize=22)
plt.ylabel('Time (milliseconds)', fontsize=22)
plt.title('Benchmark Time and Total (De)Serialization Performance', fontsize=26)
plt.tick_params(axis='both', which='major', labelsize=22)
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='upper left', fontsize=22)
plt.xscale('log')
plt.yscale('log')
plt.tight_layout()
plt.savefig('latency_comparison_total.pdf', bbox_inches='tight')
plt.close()

# Second figure: serialize and deserialize
plt.figure(figsize=(12, 8))
plt.rcParams.update({'font.size': 22})  # Set base font size
metrics2 = ['serialize', 'deserialize']
for metric in metrics2:
    plt.plot(protobuf_data['iterations'], protobuf_data[metric], 
             linestyle=':', label=f'Protobuf {metric}', marker='o')
    plt.plot(ser1de_data['iterations'], ser1de_data[metric], 
             linestyle='-', label=f'SERenaDE {metric}', marker='s')

plt.xlabel('Iterations', fontsize=22)
plt.ylabel('Time (microseconds)', fontsize=22)
plt.title('(De)Serialize Performance of Individual Requests', fontsize=26)
plt.tick_params(axis='both', which='major', labelsize=22)
plt.grid(True, linestyle='--', alpha=0.7)
plt.legend(loc='upper left', fontsize=22)
plt.xscale('log')
plt.yscale('log')
plt.tight_layout()
plt.savefig('latency_comparison_individual.pdf', bbox_inches='tight')
plt.close()