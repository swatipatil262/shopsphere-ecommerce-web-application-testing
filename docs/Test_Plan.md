# ShopSphere Test Plan

## 1. Objective

Validate the core functionality of the fictional ShopSphere e-commerce web application and identify functional defects before release.

## 2. Scope

### In Scope
- Registration
- Login/logout
- Product search
- Product details
- Add to cart
- Cart quantity/update
- Checkout
- Order confirmation
- Basic API validation
- Basic database validation
- Regression testing of critical flows

### Out of Scope
- Selenium/automation
- Performance/load testing
- Security/penetration testing
- Advanced API scripting
- Complex SQL
- Mobile application testing

## 3. Test Approach

Testing uses primarily manual functional testing with positive and negative scenarios.

Testing types:
- Functional testing
- Negative testing
- Boundary/basic validation
- Regression testing
- API testing
- Database testing

## 4. Entry Criteria

- Test data is available.
- Application build is available for testing.
- Core requirements are understood.
- Test environment is accessible.

## 5. Exit Criteria

- All planned test cases are executed.
- Critical defects are identified and documented.
- Regression testing is completed for fixed functionality.
- Test execution summary is prepared.

## 6. Test Data

Sample user:
- Name: Aditi Sharma
- Email: aditi.sharma@example.com
- Password: Test@1234

Sample invalid login:
- Email: wrong.user@example.com
- Password: Wrong@123

## 7. Risks

- Fictional application is not connected to a live production system.
- API practice uses a public demo API.
- Defects are simulated for portfolio demonstration.

## 8. Deliverables

- Test Plan
- Test Cases
- Test Data
- Postman Collection
- SQL Test Script
- Defect Report
- JIRA-style Defect Log
- RTM
- Test Execution Report
