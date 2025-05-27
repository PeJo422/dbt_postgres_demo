
# 🧱 DBT Project Style Guide

## 📁 1. Project Structure
```
dbt_project/
│
├── models/
│   ├── staging/
│   │   ├── <source_system>/
│   │   │   └── stg_<source_table>.sql
│   ├── marts/
│   │   ├── core/
│   │   ├── reporting/
│   └── intermediate/
│
├── seeds/
├── snapshots/
├── macros/
├── tests/
├── analyses/
├── dbt_project.yml
└── README.md
```

## 📐 2. Naming Conventions

### ✅ Models
- Prefix staging models with `stg_`
- Intermediate models with `int_`
- Final marts with business logic: `fct_`, `dim_`, `rpt_`
- Doobeedoobeedooo

### ✅ Files
- Use `snake_case` for all file names
- Align file names with model names inside

### ✅ Columns
- Match naming to business terms, not source system jargon
- Stick to `snake_case` for column names

## 🧙 3. SQL Style Guide

### Formatting
- **Capitalize SQL keywords** (SELECT, FROM, JOIN)
- One clause per line
- Indent consistently (2 or 4 spaces — pick one and stick to it)

```sql
SELECT
    customer_id,
    first_name,
    last_name
FROM {{ ref('stg_customers') }}
WHERE is_active = TRUE
```

### Jinja Style
- Use `{{ ref() }}` and `{{ source() }}` instead of hardcoding
- Always include a comment explaining complex Jinja logic
- Avoid nested Jinja inside SQL unless absolutely necessary

## 📊 4. Documentation & Descriptions

- Use `description` fields in `.yml` files for **every model, column, source, and test**
- Start with a business-friendly sentence, then add technical details

```yaml
version: 2

models:
  - name: fct_orders
    description: >
      Fact table containing order transactions at the line item level.
      Data is sourced from the ecommerce platform via stg_orders.
    columns:
      - name: order_id
        description: Primary key for the order.
```

## 🧪 5. Testing Strategy

- Use `not_null`, `unique`, `relationships` for all dimension/fact PKs and FKs
- Add custom tests (via macros) for business logic when needed
- Place tests in the corresponding `*.yml` file under `tests/`

## 🧬 6. Macros and Reusability

- Place all macros in `macros/`
- Use meaningful macro names: `generate_surrogate_key`, `get_latest_record`
- Include docstrings or inline comments explaining parameters

## 🔁 7. Version Control Best Practices

- One model per pull request
- Include tests and documentation in the same PR
- Use conventional commit messages: `feat: add stg_products`, `fix: null handling in fct_sales`

## 📋 8. Miscellaneous

- Always run `dbt run` + `dbt test` locally before pushing
- Prefer `dbt build` in CI/CD
- Keep your dev and prod environments isolated
