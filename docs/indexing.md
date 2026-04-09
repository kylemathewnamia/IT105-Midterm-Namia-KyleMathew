# Indexing Process: Student Enrollment System

## Task: Compare Query Before/After Indexing

---

### Step 1: Before Index

**Query:**
```sql
SELECT * FROM Students WHERE Name LIKE 'J%';

**Result:**
Showing rows 0 - 2 (3 total, Query took 0.0134 seconds.)
Rows returned: Jose Rizal, John Cruz, Jane Dela Peña
```
---

### Step 2: Create Index
```sql
CREATE INDEX idx_name ON Students(Name);
```

---

### Step 3: After Index

**Query:**
```sql
SELECT * FROM Students WHERE Name LIKE 'J%';

**Result:**
Showing rows 0 - 2 (3 total, Query took 0.0132 seconds.)
Rows returned: Jose Rizal, John Cruz, Jane Dela Peña
```

---

### What Changed?

| Aspect | Before | After |
|--------|--------|-------|
| Query Result | 3 rows | 3 rows |
| Query Time | 0.0134 sec | 0.0132 sec |
| Index | None | idx_name |

---

### Why Faster?
- The index on Name allows MySQL to quickly locate matching rows without scanning the entire table.
- Query time improved from 0.0134 sec to 0.0132 sec.
- The index setup is crucial for scaling when more student records are added.

---

###Why Indexing is Important?
1. **Improves query efficiency** — indexes speed up search queries using WHERE and LIKE clauses.
2. **Scales well with larger data** — index lookups remain fast even with thousands of records.
3. **Optimizes filtering operations** in SELECT statements.
4. **Reduces server load** and query response time in production environments.
5. **Trade-offs**: indexes use extra storage and can slightly slow down write operations (INSERT, UPDATE, DELETE).