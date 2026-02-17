資料說明（README）
====================
Data Description (README)
====================

本資料為根據「台灣出生世代研究（TBCS）」公開譯碼簿結構所生成之模擬資料（synthetic data），
僅供程式開發與資料結構測試使用，不含任何真實個案資訊。

This dataset consists of synthetic data generated based on the public codebook structure 
from the Taiwan Birth Cohort Study (TBCS).  
It is intended solely for program development and data structure testing purposes.  
No real or identifiable individual information is included.

------------------------------------------------------------
【讀取資料時的注意事項】
------------------------------------------------------------
[Data Import Notes]
------------------------------------------------------------

建議使用 R 語言讀取資料，例如使用 data.table 套件：

It is recommended to read the dataset in R using the data.table package:

    library(data.table)

    # 指定 TOWN 為字串（其他欄位自動推斷）
    # Specify TOWN as a character column (others will be inferred automatically)
    df <- fread("TBCS_6m_simulated.csv", colClasses = list(character = "TOWN"))

注意：
鄉鎮市區代碼（TOWN）包含前導零，例如「0101」。
若未將該欄指定為字串（character），則會被自動轉為數值「101」，導致代碼錯誤。
此外，TOWN 變項僅在「6 個月」波次資料中生成，其他波次（18 個月至 8 歲）未包含此欄。

Note:  
The township/district code (TOWN) contains leading zeros (e.g., "0101").  
If the column is not specified as a character type, R will automatically 
convert "0101" to numeric "101", resulting in incorrect codes.  
In addition, the TOWN variable is generated **only** for the 6-month dataset;  
other waves (18 months to 8 years) do not include this variable.

------------------------------------------------------------
【系統性錯誤與資料檢核】
------------------------------------------------------------
[Systematic Errors and Data Checking]
------------------------------------------------------------

此模擬資料為隨機生成，部分題項之間可能存在邏輯性或系統性錯誤。
使用者需依研究情境進行合理判斷與清理。

範例：
在 18 個月問卷中：
    D1a. 請問您（寶寶媽媽）在寶寶多大時完全停止餵他（她）吃母奶？
        回覆：2（第______個月大時停止餵母奶）
    D1a1. 第______個月大時停止餵母奶
        回覆：24（月）

由於此資料屬於 18 個月問卷，出現「24 個月」屬不合理值，為模擬過程中產生的系統性偏差。
建議使用者依分析需求自行處理，例如：
    - 將超出合理範圍的數值改為問卷最大月齡（此例可改為 18），或
    - 視為遺漏值（missing）。

Since this dataset is randomly generated, some variables may contain 
logical or systematic inconsistencies.  
Users should review and correct these values as appropriate for their own analyses.

Example:  
In the 18-month questionnaire:
    D1a. When did you (the baby’s mother) completely stop breastfeeding?
        Response: 2 (stopped at ____ months old)
    D1a1. At what month did you stop breastfeeding?
        Response: 24 (months)

Because this dataset represents the **18-month** wave, 
a response of "24 months" is logically inconsistent and originates 
from random generation artifacts.  
Users are advised to handle such cases according to their analysis needs, e.g.:
    - Replace values exceeding the wave range with the maximum valid month (e.g., 18), or
    - Treat as missing data.

------------------------------------------------------------
【變項說明補充】
------------------------------------------------------------
[Variable Notes]
------------------------------------------------------------

1. B_SEX、BB1_L、BB2_L、BB3_L、REGION、Fedu、Medu：
   雖然在 18 個月至 8 歲的資料中皆有生成，
   但實際分析時請以「6 個月」資料為主要依據來源，
   其他波次的相同欄位僅供結構參考。

2. Mage、Fage（母親／父親年齡）生成方式更新：
   先前版本之模擬資料因程式設定錯誤，Mage 與 Fage 僅出現兩個離散值（17 與 45），並非連續型年齡分布。
   自最新版本（v1.1）起，兩變項已修正如下：
   - Mage 與 Fage 皆改為依常態分布產生之連續變項
   - 若使用舊版（v1.0）進行統計或測試，請注意新舊差異

3. 譯碼簿請參閱 Excel 檔
   原始問卷中的某些變項（如 Medu 與 Fedu）雖然在設計上區分為 22 類，但最終資料庫僅保留 3 類。因此在模擬資料中，MEDU_5Y、FEDU_5Y、MEDU_8Y、FEDU_8Y 等變項亦採用相同的三類結構。

4. 修正變項
   以下變項在先前版本中僅產生遺失值（如 88、98、99、8888、9999、88888、99999 等）：
   - 18 個月（18m）：F10
   - 3 歲（3y）：A2_3L、F14
   - 5 歲（5y）：A2_2L、A2_2W、G13
   - 8 歲（8y）：A1_1L、A1_1W、H13
   在 v1.2 中，此問題已全面修正，變項內容恢復為對應問卷之合理範圍與分布。

5. 修正變項
   以下變項在先前版本中僅產生遺失值（如 88、98、99、8888、9999、88888、99999 等）：
   - 18 個月（18m）：A6a_1, A6a_2, A6a_3, A6a_4, A6a_5, A6a_6, A6a_7, A6a_8
   在 v1.4 中，此問題已全面修正，變項內容恢復為對應問卷之合理範圍與分布。

1. B_SEX, BB1_L, BB2_L, BB3_L, REGION, Fedu, and Medu:  
   Although these variables are generated across all waves 
   (from 18 months to 8 years),  
   analyses should primarily rely on values from the **6-month dataset**.  
   The corresponding variables in later waves are for structural reference only.

2. In previous versions, Mage and Fage were incorrectly limited to only two discrete values (17 and 45).
   Starting from version v1.1, both variables are now generated as continuous variables following normal distributions.
   Users who previously analyzed v1.0 should be aware of the change.

3. Codebook Reference (see Excel file)
   Certain variables in the original questionnaire (e.g., Medu and Fedu) were initially categorized into 22 levels but were collapsed into 3 levels in the final dataset. Accordingly, in the synthetic dataset, variables such as MEDU_5Y, FEDU_5Y, MEDU_8Y, and FEDU_8Y follow the same three-level coding scheme.

4. Corrected Variables
   In previous versions, the following variables contained only missing-value codes (e.g., 88, 98, 99, 8888, 9999, 88888, 99999):
   - 18 months (18m): F10
   - 3 years (3y): A2_3L, F14
   - 5 years (5y): A2_2L, A2_2W, G13
   - 8 years (8y): A1_1L, A1_1W, H13
   This issue has been fully resolved in v1.2, and these variables now contain valid values consistent with the original questionnaire structure.

5. Corrected Variables
   In previous versions, the following variables contained only missing-value codes (e.g., 88, 98, 99, 8888, 9999, 88888, 99999):
   - 18 months (18m): A6a_1, A6a_2, A6a_3, A6a_4, A6a_5, A6a_6, A6a_7, A6a_8
   This issue has been fully resolved in v1.4, and these variables now contain valid values consistent with the original questionnaire structure.

------------------------------------------------------------
【建議做法】
------------------------------------------------------------
[Recommended Practices]
------------------------------------------------------------

1. 先檢查邏輯關聯（例如問卷波次與年齡題項、母乳餵養期間等）。
2. 針對不合理值進行過濾或修正。
3. 若進行統計測試或模型驗證，請註明資料為「模擬資料（synthetic data）」。
4. 若使用跨波次欄位，請優先採用 6 個月資料中的主版本。

1. Check logical consistency between related variables 
   (e.g., wave timing vs. child age, breastfeeding duration, etc.).  
2. Identify and correct unreasonable or inconsistent values.  
3. When performing statistical tests or model validation, 
   clearly indicate that the data are **synthetic**.  
4. When using variables across waves, always prioritize those 
   from the **6-month dataset** as the main source.

------------------------------------------------------------
【NHIRD 門急診／住院資料（OPD/IPD）模擬說明】
------------------------------------------------------------
[NHIRD Outpatient (OPD) and Inpatient (IPD) Synthetic Data Notes]
------------------------------------------------------------

本資料為根據 TBCS Sampleid 生成之模擬 NHIRD 門診與住院紀錄。

1. 日期與就醫次數
   - 日期範圍：2004–2022
   - 每人門診次數：Poisson(5)，範圍 0–30
   - 每人住院次數：Poisson(1.5)，範圍 0–10

2. 診斷碼生成規則
   - 每筆就醫隨機產生診斷碼數量：門診 1–3 個、住院 1–5 個
   - ICD 系統依年份切換：2017 年以前為 ICD-9、2018 年起為 ICD-10
   - 診斷碼包含一般疾病代碼
   - 特定疾病代碼（2590/2591 或 E300/E301）約佔所有就醫紀錄 0.8%，個人層級約 5%

3. 資料欄位
   - Sampleid
   - 日期（FUNC_DATE／IN_DATE）
   - ICD9CM_1–3（門診）
   - ICD9CM_1–5（住院）

This dataset contains synthetic NHIRD outpatient (OPD) and inpatient (IPD) records generated from TBCS Sample IDs.

1. Date Range and Visit Counts
   - Date range: 2004–2022
   - OPD visit counts: Poisson(5), capped at 0–30
   - IPD visit counts: Poisson(1.5), capped at 0–10

2. ICD Code Generation Rules
   - Each visit contains: 1–3 ICD codes for OPD, 1–5 for IPD
   - ICD system switches by year: ICD-9 before 2018; ICD-10 from 2018 onward
   - Diagnostic codes include general disease codes
   - Special disease codes (2590/2591 or E300/E301) represent ~0.8% of all visits, affecting ~5% of individuals

3. Variables
   - Sampleid
   - Visit date (FUNC_DATE / IN_DATE)
   - ICD9CM_1–3 (OPD)
   - ICD9CM_1–5 (IPD)

------------------------------------------------------------
【版本資訊】
------------------------------------------------------------
[Version Information]
------------------------------------------------------------

版本：v1.4
建立日期：2026-02-03
作者：陳麒任  
資料用途：結構測試與程式開發  
注意事項：不得用於真實研究、分析或發表。

Version: v1.4
Date: 2026-02-03
Author: Chi-Jen Chen  
Purpose: Data structure testing and program development  
Notice: This dataset must not be used for real research, analysis, or publication.
