# ShopSphere E-Commerce Web Application Testing

## Project Overview

**ShopSphere** is a fictional e-commerce web application created for a Software Testing / QA portfolio project.

The project demonstrates practical, entry-level QA activities without advanced automation or complex testing:

- Manual Testing
- Functional Testing
- Test Case Design
- Basic Regression Testing
- Postman API Testing
- Basic MySQL / Database Testing
- Defect Reporting
- JIRA-style defect reporting simulation
- Requirements Traceability Matrix (RTM)
- Test Execution Reporting

### Project Scope

| Component | Scope |
|---|---|
| Manual Testing | Main focus |
| Functional Testing | Included |
| Test Case Design | 18 test cases |
| Regression Testing | Included |
| Postman API Testing | 3 APIs |
| MySQL Testing | 5 simple queries |
| Defect Reporting | 4 sample defects |
| JIRA | Basic simulation |
| RTM | Included |
| Automation/Selenium | Not included |
| Advanced API scripting | Not included |
| Complex SQL | Not included |
| Performance Testing | Not included |

## Application Modules

1. User Registration
2. Login
3. Product Search
4. Product Details
5. Add to Cart
6. Cart Update
7. Checkout
8. Order Confirmation
9. Logout

## Suggested Test Environment

- OS: Windows 10/11
- Browser: Google Chrome / Microsoft Edge
- API Tool: Postman
- Database: MySQL 8.x
- Documentation: MS Excel / Markdown
- Defect Tracking: JIRA-style simulation

## Repository Structure

```text
shopsphere-ecommerce-web-application-testing/
│
├── README.md
├── .gitignore
│
├── docs/
│   └── Test_Plan.md
│
├── test-cases/
│   └── Test_Cases.csv
│
├── api/
│   └── ShopSphere_Postman_Collection.json
│
├── database/
│   └── shopsphere_test_database.sql
│
├── defects/
│   └── Defect_Report.csv
│
├── jira-simulation/
│   └── JIRA_Defect_Log.csv
│
├── rtm/
│   └── Requirements_Traceability_Matrix.csv
│
├── reports/
│   ├── Test_Execution_Report.md
│   └── Test_Execution_Summary.csv
│
└── test-data/
    └── Test_Data.csv
```

## How to Use This Project

### Step 1 — Review the test plan
Open `docs/Test_Plan.md` and understand the fictional application's scope, assumptions, entry/exit criteria, and test approach.

### Step 2 — Review test cases
Open `test-cases/Test_Cases.csv`. It contains 18 functional/manual test cases covering positive, negative, boundary, and regression scenarios.

### Step 3 — Execute API tests
Import `api/ShopSphere_Postman_Collection.json` into Postman.

The collection uses DummyJSON's public demo API for executable practice:
- GET product
- GET products
- POST cart

This avoids requiring a real ShopSphere server while still demonstrating Postman API testing.

### Step 4 — Run database tests
Install MySQL and run:

```sql
SOURCE shopsphere_test_database.sql;
```

Then execute the five queries documented in the SQL file.

### Step 5 — Review defects
Open `defects/Defect_Report.csv`. Four realistic defects are documented using JIRA-style fields.

### Step 6 — Review RTM
Open `rtm/Requirements_Traceability_Matrix.csv` to see how requirements map to test cases.

### Step 7 — Review execution report
Open `reports/Test_Execution_Report.md` for the final execution summary and regression result.

## Test Execution Summary

- Total manual test cases: **18**
- Passed: **14**
- Failed: **4**
- Blocked: **0**
- Sample defects: **4**
- API tests: **3**
- SQL validation queries: **5**
- RTM requirements: **9**

The failed cases are intentionally linked to the sample defects so the project demonstrates a realistic QA workflow.

## Skills Demonstrated

**Manual Testing:** Test planning, test case design, functional testing, negative testing, regression testing

**API Testing:** Postman, HTTP methods, status-code validation, JSON response validation

**Database Testing:** MySQL, SELECT, WHERE, JOIN, COUNT, SUM

**Defect Management:** Severity, priority, reproduction steps, expected vs actual result, JIRA-style reporting

**Documentation:** Test Plan, Test Cases, RTM, Defect Report, Test Execution Report

## Important Portfolio Note

ShopSphere is a **fictional project created for demonstration and portfolio purposes**. The application itself is not a live production website.
