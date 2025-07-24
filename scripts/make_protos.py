import os

protobuf_path = os.environ.get('PROTO_PATH')
current_dir = os.getcwd()

print(f"Protobuf path: {protobuf_path}")
print(f"Current working directory: {current_dir}")
# Check if protos directory exists, exit with warning if not
if not os.path.exists('proto_files'):
    print("Warning: 'proto_files' directory does not exist")
    exit(1)

os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message0.proto')
print('Message0.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message1.proto')
print('Message1.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message2.proto')
print('Message2.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message3.proto')
print('Message3.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message4.proto')
print('Message4.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message5.proto')
print('Message5.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message6.proto')
print('Message6.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message7.proto')
print('Message7.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message8.proto')
print('Message8.proto done')
os.system(f'{protobuf_path}/protoc --cpp_out=. proto_files/Message9.proto')
print('Message9.proto done')