<!---
Provide a short summary in the Title above. Examples of good PR titles:
* "Feature: add so-and-so models"
* "Fix: deduplicate such-and-such"
* "Update: dbt version 1.7.0"
-->

## 🚀 Description & Motivation
<!---
Describe your changes and their purpose. Link to Jira, Trello, GitHub issues or related PRs.
-->

## 🛠 To-do before merge
<!---
Remove if not needed. Use for:
- [ ] Update target branch
- [ ] Confirm dependencies (e.g. PR #56) are merged
- [ ] Update dbt Cloud jobs or CI/CD pipeline configs
-->

## 🖼️ Screenshots / DAG Updates
<!---
Optional: Attach screenshots of changes in your DAG (from `dbt docs serve`) or visual flow.
-->

## ✅ Model Validation
<!---
How do you know it works? Link to BI dashboards, row count diff queries, QA steps, etc.
-->

## ♻️ Changes to Existing Models
<!---
Explain whether models are renamed, dropped, need a full-refresh, etc.
Include any backwards-incompatible changes or migration steps.
-->

---

## 🧪 Tests Added
- [ ] `not_null` tests for primary keys
- [ ] `unique` tests for natural keys
- [ ] Custom data quality tests (if applicable)
- [ ] Tests documented in `schema.yml`

---

## 📚 Documentation Updated
- [ ] Model-level descriptions added
- [ ] Column-level descriptions added
- [ ] New sources documented
- [ ] README updated

---

## 🧾 Checklist
- [ ] My pull request represents one logical piece of work
- [ ] All new models follow the [PeJo style guide](https://github.com/PeJo422/dbt_postgres_demo/blob/main/style_guide.md)
- [ ] Appropriate materializations are used (e.g. `table`, `view`, `incremental`)
- [ ] I used `{{ ref() }}` and `{{ source() }}` properly
- [ ] Models run successfully in `dev`
- [ ] I ran `dbt build` before submitting
- [ ] PR is scoped to a single warehouse (Redshift/Postgres/Other)

---


_This template is generated with ❤️ by PeJo's tireless keyboard._
