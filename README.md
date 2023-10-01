# Blood-Bank-Management-System

This project seeks to create a streamlined Blood Bank Management System, designed for use in healthcare facilities, clinics, laboratories, and during emergencies where a steady supply of blood is vital. The system facilitates the efficient retrieval of specific blood types, whether from a blood bank or willing donors, eliminating the chaos and anxiety often associated with blood shortages during emergencies. Unlike the current reliance on word-of-mouth communication, our system offers a reliable and organized solution for accessing life-saving blood units when they are urgently needed.
The 'Blood Bank Management System' helps in blood quality monitoring and efficiently manages blood inventory. Existing manual systems are time-consuming and less effective. The system automates blood distribution, managing thousands of records for each blood bank. It simplifies the search for available blood, saving significant time compared to manual processes. This system stores, operates, retrieves, and analyzes administrative and inventory data within blood banks. It's designed to be manageable, time-saving, cost-effective, flexible, and requires minimal manpower.
Entities required: 
1. Blood Donor:
   - Attributes: bd_ID (Primary Key), bd_name, bd_sex, bd_age, bd_Bgroup, bd_reg_date, bd_phNo
   - Purpose: Stores information about blood donors, including their unique bd_ID, name, age, sex, blood group, registration date, and phone number.

2. Recipient:
   - Attributes: reci_ID (Primary Key), reci_name, reci_age, reci_Bgrp, reci_Bqnty, reci_sex, reci_reg_date, reci_phNo
   - Purpose: Manages data of blood recipients, with reci_ID as the primary key. Records recipient name, age, sex, needed blood group, required blood quantity, registration date, and contact number.

3. BB Manager:
   - Attributes: m_ID (Primary Key), m_Name, m_phNo
   - Purpose: Tracks information about blood bank managers. Utilizes a unique m_ID as the primary key and stores manager names and phone numbers. Managers oversee blood sample management and handle requests from recipients and hospitals.
4. Recording Staff:
   - Attributes: reco_ID (Primary Key), reco_Name, reco_phNo
   - Purpose: Records blood donors and recipients. Stores staff details with a unique reco_ID, name, and phone number.

5. Blood Specimen:
   - Attributes: specimen_number (Primary Key), b_group, status
   - Purpose: Manages blood sample information in the blood bank. Uses specimen_number and blood group as a primary key and tracks specimen status (contamination).

6. Disease Finder:
   - Attributes: dfind_ID (Primary Key), dfind_name, dfind_PhNo
   - Purpose: Stores details of doctors responsible for checking blood for contamination. Utilizes a unique dfind_ID along with the doctor's name and phone number.

7. Hospital Info:
   - Attributes: hosp_ID (Primary Key), hosp_name, hosp_needed_Bgrp, hosp_needed_Bqnty
   - Purpose: Records hospital information. hosp_ID and hosp_needed_Bgrp together form the primary key, and the entity tracks hospital names and required blood group quantities.
8. City
- Attributes: city_ID (Primary Key), city_name
- Purpose: Stores city information for donors, recipients, and hospitals. City_ID serves as a unique identifier, and city names are recorded within this entity.
