#!/bin/bash

# Get current working directory
ROOT_DIR=$(pwd)

# Create directories
mkdir -p $ROOT_DIR/{data/{raw,processed,knowledge_base,index},retriever,models/pretrained,training,evaluation,inference,utils,configs,notebooks,scripts}

# Create files in data/
touch $ROOT_DIR/data/dataloader.py

# Create files in retriever/
touch $ROOT_DIR/retriever/{__init__.py,retriever_model.py,indexer.py,config.py,search.py}

# Create files in models/
touch $ROOT_DIR/models/{__init__.py,architecture.py,rag_integration.py,config.py}

# Create files in training/
touch $ROOT_DIR/training/{__init__.py,trainer.py,loss.py,scheduler.py,rag_trainer.py}

# Create files in evaluation/
touch $ROOT_DIR/evaluation/{__init__.py,metrics.py,evaluate_retriever.py,evaluate_rag.py}

# Create files in inference/
touch $ROOT_DIR/inference/{__init__.py,generate.py,api.py,rag_pipeline.py}

# Create files in utils/
touch $ROOT_DIR/utils/{__init__.py,logging.py,preprocessing.py,embedding_utils.py,helpers.py}

# Create config YAML files
touch $ROOT_DIR/configs/{model_config.yaml,retriever_config.yaml,training_config.yaml,inference_config.yaml}

# Create notebooks
touch $ROOT_DIR/notebooks/{data_exploration.ipynb,retriever_testing.ipynb,rag_testing.ipynb}

# Create scripts
touch $ROOT_DIR/scripts/{index_documents.py,train_retriever.py,train_rag.py,evaluate.py,generate.py}

# Create root-level files
touch $ROOT_DIR/{requirements.txt,README.md,.gitignore,setup.py}

echo "Project structure created at: $ROOT_DIR"
