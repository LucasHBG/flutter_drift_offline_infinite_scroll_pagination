# flutter_drift_offline_infinite_scroll_pagination 

A new Flutter project.

## Getting Started

```typescript
let a = Math.random();
```

```mermaid
erDiagram 
    file {
        uuid id PK 
        timestamptz created_at
    }
    batch {
        uuid id PK
        uuid file_id FK
        enum status "waiting, processing, completed, error" 
        bigint record_count
        uuid last_attempt_id FK
        
        timestamptz started_at
        timestamptz completed_at
        uuid user_id FK
        uuid subscription_id FK
        timestamptz created_at
        timestamptz updated_at
    }
    record {
        uuid id PK
        uuid batch_id FK
        boolean is_valid
        jsonb raw_data
        jsonb transformed_data
        timestamptz created_at
    }
    record_error {
        uuid id PK
        uuid record_id FK
        jsonb details "RFC 9457 compliant"
        timestamptz created_at
    }
    processing_attempt {
        uuid id PK
        uuid batch_id FK
        
        enum status "waiting, processing, completed, error" 
        timestamptz created_at
        timestamptz updated_at
    }
    processing_attempt_record {
        uuid id PK
        uuid processing_attempt_id FK
        uuid record_id FK
    }
    task {
        uuid id PK
        uuid batch_id FK
        uuid record_id FK
        uuid processing_attempt_id FK
        enum type "validation, transformation, loading"
        enum status "pending, running, completed, failed"
        timestamptz started_at
        timestamptz completed_at
        timestamptz created_at
        timestamptz updated_at
    }
    task_result {
        uuid id PK
        uuid task_id FK
        jsonb data
        timestamptz created_at
    }
    task_result_error {
        uuid id PK
        uuid task_result_id FK
        jsonb details "RFC 9457 compliant"
        timestamptz created_at
    }
    batch ||--|| file: "batch_file_id_fkey"
    batch ||--|{ record: "record_batch_id_fkey"
    batch ||--|{ processing_attempt: "attempt_batch_id_fkey"
    batch ||--|{ task: "task_batch_id_fkey"
    record ||--|{ record_error: "record_error_record_id_fkey"
    record ||--|{ processing_attempt_record: "attempt_record_record_id_fkey"
    processing_attempt ||--|{ task: "task_attempt_id_fkey"
    processing_attempt ||--|{ processing_attempt_record: "attempt_record_attempt_id_fkey"
    task ||--|| record: "task_record_id_fkey"
    task ||--|| task_result: "task_result_task_id_fkey"
    task_result ||--|{ task_result_error: "task_result_error_task_result_id_fkey"
```

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
