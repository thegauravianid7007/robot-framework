# robot-framework
**🚀 Robot Framework Test Automation**

This repository contains a sample Robot Framework project showcasing both UI automation (SeleniumLibrary) and API testing (RequestsLibrary).

## 📂 Project Structure
```
tests/
    ui/                -> UI test cases (example: login_tests.robot)
    api/               -> API test cases (example: weather_api_tests.robot)

resources/             -> variables.robot
pages/                 -> UI & API related helper methods (ui/LoginPage.robot, api/WeatherForecast.robot) | BasePage.robot
results/               -> Test execution reports
README.md              -> Documentation
requirements.txt       -> Requirements for the project
```

##  ⚙️ Setup
1.	**Clone the repository**
```
git clone git@github.com:<your-username>/<repo-name>.git
cd <repo-name>
```
2.  **Create a virtual environment (optional but recommended)**
```
python -m venv venv
source venv/bin/activate   # Mac/Linux
venv\Scripts\activate      # Windows
```
3. **Install dependencies**
```
pip install -r requirements.txt
```

##  ▶️ Running Tests
1.	**Run all tests**
```
robot tests/
```

2.	**Run only UI tests**
```
robot tests/ui/
```
3.	**Run only API tests**
```
robot tests/api/
```
4.	**Run with a custom output directory**
```
robot --outputdir results tests/
```
5.	**Run a group**
```
robot --include smoke tests/
```
## 📊 Reports

After execution, Robot Framework generates:
	•	log.html → Detailed execution log
	•	report.html → Summary report
	•	output.xml → Raw execution data

These files are stored in the results/ folder (or your chosen output directory).

## ✅ Features Covered
	•	UI automation using SeleniumLibrary (Herokuapp demo site)
	•	API testing using RequestsLibrary (Weather Forecast API)
	•	Page Object style structure with reusable keywords in /pages/
	•	Centralized variables in resources/variables.robot
	•	Easy-to-run test suite organization under /tests/