from pyverilog.vparser.parser import parse
import os
import pandas as pd

def extract_features(verilog_file):
    ast, _ = parse([verilog_file])
    num_gates = sum(1 for _ in ast.children())  # Approximate gate count
    return {"file": verilog_file, "gates": num_gates}

verilog_folder = "./verilog/"
dataset = []

for file in os.listdir(verilog_folder):
    if file.endswith(".v"):
        features = extract_features(os.path.join(verilog_folder, file))
        dataset.append(features)

df = pd.DataFrame(dataset)
df.to_csv("dataset.csv", index=False)
print("Dataset saved as dataset.csv")
