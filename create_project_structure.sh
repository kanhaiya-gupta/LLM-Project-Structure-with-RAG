#!/bin/bash

# Get current working directory
ROOT_DIR=$(pwd)

# --- Create Directory Structure ---
# Creates all necessary directories for data, source code, configs, notebooks, scripts, and pretrained models
# -p ensures no errors if directories already exist
mkdir -p "$ROOT_DIR/data/raw" \
         "$ROOT_DIR/data/processed" \
         "$ROOT_DIR/data/knowledge_base" \
         "$ROOT_DIR/data/index" \
         "$ROOT_DIR/src/app" \
         "$ROOT_DIR/src/dataloaders" \
         "$ROOT_DIR/src/retriever" \
         "$ROOT_DIR/src/models" \
         "$ROOT_DIR/src/training" \
         "$ROOT_DIR/src/evaluation" \
         "$ROOT_DIR/src/inference" \
         "$ROOT_DIR/src/utils" \
         "$ROOT_DIR/configs" \
         "$ROOT_DIR/notebooks" \
         "$ROOT_DIR/scripts" \
         "$ROOT_DIR/pretrained"

# --- Create Source Files under src/ ---
# Creates Python files for FastAPI app, data loading, retriever, models, training, evaluation, inference, and utilities
# Includes __init__.py to make directories Python modules
touch "$ROOT_DIR/src/app/__init__.py" \
      "$ROOT_DIR/src/app/app.py" \
      "$ROOT_DIR/src/dataloaders/__init__.py" \
      "$ROOT_DIR/src/dataloaders/dataloader.py" \
      "$ROOT_DIR/src/retriever/__init__.py" \
      "$ROOT_DIR/src/retriever/retriever_model.py" \
      "$ROOT_DIR/src/retriever/indexer.py" \
      "$ROOT_DIR/src/retriever/config.py" \
      "$ROOT_DIR/src/retriever/search.py" \
      "$ROOT_DIR/src/models/__init__.py" \
      "$ROOT_DIR/src/models/architecture.py" \
      "$ROOT_DIR/src/models/rag_integration.py" \
      "$ROOT_DIR/src/models/config.py" \
      "$ROOT_DIR/src/training/__init__.py" \
      "$ROOT_DIR/src/training/trainer.py" \
      "$ROOT_DIR/src/training/loss.py" \
      "$ROOT_DIR/src/training/scheduler.py" \
      "$ROOT_DIR/src/training/rag_trainer.py" \
      "$ROOT_DIR/src/evaluation/__init__.py" \
      "$ROOT_DIR/src/evaluation/metrics.py" \
      "$ROOT_DIR/src/evaluation/evaluate_retriever.py" \
      "$ROOT_DIR/src/evaluation/evaluate_rag.py" \
      "$ROOT_DIR/src/inference/__init__.py" \
      "$ROOT_DIR/src/inference/generate.py" \
      "$ROOT_DIR/src/inference/rag_pipeline.py" \
      "$ROOT_DIR/src/utils/__init__.py" \
      "$ROOT_DIR/src/utils/logging.py" \
      "$ROOT_DIR/src/utils/preprocessing.py" \
      "$ROOT_DIR/src/utils/embedding_utils.py" \
      "$ROOT_DIR/src/utils/helpers.py"

# --- Create Configuration Files ---
# Creates YAML files for model, retriever, training, and inference configurations
touch "$ROOT_DIR/configs/model_config.yaml" \
      "$ROOT_DIR/configs/retriever_config.yaml" \
      "$ROOT_DIR/configs/training_config.yaml" \
      "$ROOT_DIR/configs/inference_config.yaml"

# --- Create Jupyter Notebooks ---
# Creates notebooks for data exploration, retriever testing, and RAG pipeline testing
touch "$ROOT_DIR/notebooks/data_exploration.ipynb" \
      "$ROOT_DIR/notebooks/retriever_testing.ipynb" \
      "$ROOT_DIR/notebooks/rag_testing.ipynb"

# --- Create Executable Scripts ---
# Creates Python scripts for indexing, training, evaluation, and inference
touch "$ROOT_DIR/scripts/index_documents.py" \
      "$ROOT_DIR/scripts/train_retriever.py" \
      "$ROOT_DIR/scripts/train_rag.py" \
      "$ROOT_DIR/scripts/evaluate.py" \
      "$ROOT_DIR/scripts/generate.py"

# --- Create Root-Level Files ---
# Creates main entry point, requirements, README, gitignore, and setup files
touch "$ROOT_DIR/main.py" \
      "$ROOT_DIR/requirements.txt" \
      "$ROOT_DIR/README.md" \
      "$ROOT_DIR/.gitignore" \
      "$ROOT_DIR/setup.py"