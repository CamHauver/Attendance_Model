# Attendance_Model
This project involves creating a random forest classifier model from guest attendance and ticketing data from an anonymous non-profit organization between the years of 2021 and 2023 that can accurately predict guest membership. The goals of building this model include accurately predicting guest membership and provide insight into what features are most important for accurate predictions. Python, Pandas, and SkLearn were utilized for this project.

Original data: Proprietary, original csv hidden with .gitignore (/Resources/AttendanceATSani.zip)

Code for model versions can be found in jupyter notebooks: rf_model_v1_demographic_location.ipynb, rf_model_v2_condensed_demographic_location.ipynb

1. Original data was first preprocessed using Pandas DataFrames and then loaded into a SQL database. See initial_cleaning_attendance_data.ipynb and ticketing_schema.sql
    - See .gitignore for cleaned csv for SQL database loading (clean_attendance.zip)
    - addressed NULL values, empty values, special characters, datatypes
2. Data was further refined and filtered using Pandas DataFrames. See clean_demographic_location_attendance_data.ipynb and  clean_condensed_demographic_location_attendance_data.ipynb
    - date filtering (2021-2023)
    - excluded irrelevant ticketing (include only general admission or membership ticketing)
    - excluded out-of-state attendees
    - grouped general attendance vs membership data and created a new 'member' column to be used as target variable for model
    - extracted, grouped, and categorized demographic and location features as new columns
3. Undesirable columns were dropped before assigning a target variable and features variables. See rf_model_v1_demographic_location.ipynb and rf_model_v2_condensed_demographic_location.ipynb
        - Included only Salt Lake County, Utah, and Davis County. Excluded 'maingroup_Other Utah Counties' 
        - target variable = member (1), non-member (0)
4. Data was normalized using SMOTE (synthetic minority oversampling technique) to address skew
5. Preprocessed data was then split into training and testing datasets
6. StandardScaler was used to fit the feature dataset and then it was fit to the training data using the transform function
7. Data was then compiled, and a random forest classification model was trained and evaluated
8. Model was optimized by trial and error with multiple parameter tuning. Changes in performance were documented in an excel file (model_iterations_parameter_tuning.xlsx)
9. Two different model versions were created by using different feature sets:

        - Version 1: (rf_model_v1_demographic_location.ipynb)
            - 52 columns
            - Year
            - Month
            - Zipcode
            - Small, medium, and large family/group
            - Adult, student, military, teen, child, two & under, senior
            - Salt Lake, Utah, or Davis County
            - Cities within Salt Lake, Utah, or Davis County

         - Version 2: (rf_model_v2_condensed_demographic_location.ipynb)
            - 13 columns
            - Year
            - Month
            - Zipcode
            - Small, medium, and large family/group
            - Adult, teen, child
            - Salt Lake, Utah, or Davis County
      
10. Both model versions achieved high accuracy (Version 1 = 95%, Version 2 = 86%)
11. Features Importances were also determined for each model versions
12. See end of model scripts for full model performance evaluations

Class presentation powerpoint: Guest_Attendance_Presentation
Presentation video: https://www.youtube.com/watch?v=l8bvP_i8vUc

Original code sources: Andrew Hoang's Data Analytics Course Module 20 files