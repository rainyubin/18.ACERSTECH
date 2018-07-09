


SELECT @@VERSION



--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ013408O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--


--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓取引先マスタ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--


select
COUNT(*)
from
CsMaster

select
*
from
CsMaster
where
CsCode='200107701'



--経理専用　１


select
C_AddRebateRate
,*
from
CsMaster
where
CsCode='200107701'


update
CsMaster
set
C_AddRebateRate=3.125
where
CsCode='200107701'




sp_help CsMaster
ComCode, CsCode




--経理専用　２

select 
C_InterestRebatesRate
, * 
from 
CsMaster
where 
CsCode = '200107701'



update 
CsMaster 
set 
C_InterestRebatesRate = 1.125 
where 
CsCode = '200107701'



delete from 
CsMaster 
where 
CsCode = '200107701' 
and 
ComCode = '0002'


select 
C_InterestRebatesRate
, * 
from 
CsMaster
where 
CsCode = '200107701'


sp_help csmaster
ComCode, CsCode


--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑取引先マスタ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--





--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓商品マスタ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--［基本１］タブ

select
* 
from 
ItemMaster 
where 
C_ItemMakerCode='2000111' 
and 
ItemCode = '0001110301800'



select C_ListPrice
,C_IndividualSizeL
,C_IndividualSizeW
,C_IndividualSizeH
,* 
from 
ItemMaster 
where 
C_ItemMakerCode='2000111' 
and 
ItemCode = '0001110301800'



update 
ItemMaster 
set 
C_ListPrice = 11.125
,C_IndividualSizeL = 82.125
,C_IndividualSizeW = 92.125
,C_IndividualSizeH = 102.125
where 
C_ItemMakerCode='2000111' 
and 
ItemCode = '0001110301800'



update 
ItemMaster 
set 
C_ListPrice = 11.125
,C_IndividualSizeL = 82.15
,C_IndividualSizeW = 92.15
,C_IndividualSizeH = 102.15
where 
C_ItemMakerCode='2000111' 
and 
ItemCode='0001110301800'



update 
ItemMaster 
set 
C_ListPrice = 11.1256565656565656
where 
C_ItemMakerCode='2000111' 
and 
ItemCode='0001110301800'


update 
ItemMaster 
set 
C_ListPrice = 11125.656
where 
C_ItemMakerCode='2000111' 
and 
ItemCode='0001110301800'




sp_help ItemMaster
sp_columns ItemMaster



--［基本２］タブ




--［単価情報］タブ



select
*
from
C_DeptPoPrice
where
DeptCode = '508'
and
ItemCode = '0001110301800'



select
C_StorePurPrice
,C_DirectPurPrice
,C_StoreRebateRateAP
,C_StoreRebateRateAY
,C_StoreRebateRateAI
,C_StoreRebateRateBP
,C_StoreRebateRateBY
,C_StoreRebateRateBI
,C_DirectRebateRateAP
,C_DirectRebateRateAY
,C_DirectRebateRateAI
,C_DirectRebateRateBP
,C_DirectRebateRateBY
,C_DirectRebateRateBI
,*
from
C_DeptPoPrice
where
DeptCode = '508'
and
ItemCode = '0001110301800'


update
C_DeptPoPrice
set 
C_StorePurPrice = 342.125
,C_DirectPurPrice = 342.125
,C_StoreRebateRateAP = 1.125
,C_StoreRebateRateAY = 2.125
,C_StoreRebateRateAI = 3.125
,C_StoreRebateRateBP = 4.125
,C_StoreRebateRateBY = 5.125
,C_StoreRebateRateBI = 6.125
,C_DirectRebateRateAP = 7.125
,C_DirectRebateRateAY = 8.125
,C_DirectRebateRateAI = 9.125
,C_DirectRebateRateBP = 1.125
,C_DirectRebateRateBY = 1.125
,C_DirectRebateRateBI = 1.125
where
DeptCode = '508'
and
ItemCode = '0001110301800'



sp_help C_DeptPoPrice
SiteCode, DeptCode, ItemCode, C_FromDate



--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑商品マスタ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--









--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓得意先商品変換マスタ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--


select
count(*)
from
C_sdAcceptItem


select
*
from
C_sdAcceptItem
where
DeptCode=505




select
C_CustUnitSD
,C_CustSalPrice
,*
from
C_sdAcceptItem
where
DeptCode=505


sp_help C_sdAcceptItem
sp_columns C_sdAcceptItem


select
C_CustUnitSD
,C_CustSalPrice
,*
from
C_sdAcceptItem
where
ItemCode='0003538201900       '



update
C_sdAcceptItem
set
C_CustUnitSD=20.2
where
ItemCode='0003538201900       '


update
C_sdAcceptItem
set
C_CustSalPrice=80.565
where
ItemCode='0003538201900       '

update
C_sdAcceptItem
set
DeptCode=505
where
ItemCode='0003538201900       '

--ItemCode 0003538201900       
update
C_sdAcceptItem
set
ItemCode='0003538201900       '
--ItemCode='0010530133900       '
where
DeptCode=505

--ItemJanCode 4900353820194
update
C_sdAcceptItem
set
ItemJanCode='4900353820194'
--ItemJanCode='JAN1'
where
DeptCode=505




sp_help C_sdAcceptItem

SiteCode, DeptCode, C_OrderAcceptNo, C_OrderAcceptSerNo

sp_columns C_sdAcceptItem




select
count(*)
from
C_CsExchangeMaster


select
CsCode --得意先コード
,*
from
C_CsExchangeMaster
where
SiteCode=0001
and
DeptCode=505
and
CsCode='175500000004'
and
C_ItemJanCode='4900353820194'





sp_help C_CsExchangeMaster
SiteCode, DeptCode, CsCode, C_CustItemCode, C_poRegSaleGubun, C_CustItemJanCode, C_CustHItemCode, C_ItemJanCode, C_MainItemCode, ItemCode, AvailableBDate



--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑得意先商品変換マスタ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--


--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓得意先単価マスタ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--


select
COUNT(*)
from
C_ItemCsMaster
where
DeptCode=508



select
*
from
C_ItemCsMaster
where
DeptCode=508
and
CsCode='122810090042'
and
AvailableBDate=20000607



select
C_DeliveryWhSalPrice
,C_DeliveryWhSalBaseRate
,C_DeliveryWhSalAddRate
,C_DirectDeliSalPrice
,C_DirectDeliSalBaseRate
,C_CustOrderUnit
,*
from
C_ItemCsMaster
where
DeptCode=508
and
CsCode='122810090042'
and
AvailableBDate=20000607


update
C_ItemCsMaster
set
C_DeliveryWhSalPrice=63.125
,C_DeliveryWhSalBaseRate=1.215
,C_DeliveryWhSalAddRate=2.415
,C_DirectDeliSalPrice=58.715
,C_DirectDeliSalBaseRate=2.315
,C_CustOrderUnit=12.15
where
DeptCode=508
and
CsCode='122810090042'
and
AvailableBDate=20000607



update 
C_ItemCsMaster
set
C_DeliveryWhSalPrice=63.125
where
DeptCode=508
and
CsCode='122810090042'
and
C_DeliveryWhSalPrice=63.00000000




select
C_DeliveryWhSalPrice
,*
from
C_ItemCsMaster
where
DeptCode=508
and
CsCode='122810090042'
and
C_DeliveryWhSalPrice=63.125




sp_help C_ItemCsMaster
SiteCode, DeptCode, CsCode, C_ItemJanCode, C_MainItemCode, ItemCode, C_QualityGubun, C_poRegSaleGubun, AvailableBDate



--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑得意先単価マスタ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--



--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓得意先入数マスタ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--


select
COUNT(*)
from
C_CsQuantityMaster
go

select
*
from
C_CsQuantityMaster
where
DeptCode=508
and
CsCode=122810090042
go


select
C_ItemPackage1Qty
,C_TotalIndQty
,*
from
C_CsQuantityMaster
where
DeptCode=508
and
CsCode=122810090042
go


update
C_CsQuantityMaster
set
C_ItemPackage1Qty=12.555
,C_TotalIndQty=120.525
where
DeptCode=508
and
CsCode=122810090042
go


sp_help C_CsQuantityMaster
SiteCode, DeptCode, CsCode, C_MainItemCode, C_ItemJanCode, ItemCode



--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑得意先入数マスタ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--


--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ013408O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--





--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ013939O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

select 
C_ShopCode
,C_DeptCode
,*
from
CsMaster
where
C_DeptCode=508
and
C_ShopCode<>''



sp_help CsMaster
ComCode, CsCode





SELECT
		 CM.CsCode
		,CM.CsName
		,CM.C_RecordedBase
		,CM.C_CsSecCode
		,CMN13.CodeName
		,CM.CsClass1
		,CMN3.CodeName
		,CM.C_EmpStartyyyymm1
		,CM.C_EmpStartyyyymm2
		,CM.C_EmpCode1
		,CM.C_EmpCode2
		,CM.C_OldEmpStartym1
		,CM.C_OldEmpStartym2
		,CM.C_OldEmpCode1
		,CM.C_OldEmpCode2
		,CM.C_InVoiceCs
		,CM6.CsName
		,CM.C_AccountNo
		,CM.C_InVoiceGubun
		,CM.PayConditionAr
		,RPC.PayCondName
		,CM.SettlementCodeAr
		,SIM.SettlementName
		,CM.C_InVoiceYN
		,CM.C_ShopCode
		,CM.C_InVoiceSumNeed
		,CM.C_InVoiceCsFormatID
		,CM.C_InVoice_Descr
		,CM.C_deliveryGubun
		,CM.C_CalenderGubun
		,CMN9.CodeName
		,CM.C_OrderType
		,CM.C_OtherCsTel
		,CM.C_ItemCsMsUpdGubun
		,CM.C_OtherCsFax
		,CM.C_WhCode
		,WH17.WhName
		,CM.C_DirectWhCode
		,WH18.WhName
		,CM.C_ArUpdateDate
		,CM.LeadTime
		,CM.C_LastDeliveryToCs
		,CM12.CsName
		,CM.C_ColdShipToCsCode
		,CM16.CsName
		,CM.C_ColdStorageBdate
		,CM.C_ColdStorageEdate
		,CM.ParentCs
		,CM.ArCheck
		,CONVERT(nchar(23), CM.C_OperationTime, 126)
		,CM.C_OrderAcceptType
		,CM.C_OldGroupCode
FROM CsMaster CM
LEFT JOIN CodeMaster CMN3
	ON	CMN3.ComCode = N'0001'
	AND	CMN3.CodeID = 'CsClass1'
	AND	CMN3.CodeCode = CM.CsClass1
LEFT JOIN CsMaster CM6
	ON	CM6.ComCode = N'0001'
	AND	CM6.CsCode = CM.C_InVoiceCs
LEFT JOIN rpPayConditionMaster RPC
	ON	RPC.ComCode = N'0001'
	AND	RPC.ArApGubun = 'AR'
	AND	RPC.PayCondCode = CM.PayConditionAr
	AND	ISNUMERIC(SUBSTRING(RPC.PayCondCode,1,1)) = 1
LEFT JOIN SettlementMaster SIM
	ON	SIM.ComCode = N'0001'
	AND	SIM.ArApGubun = 'AR'
	AND	SIM.SettlementCode = CM.SettlementCodeAr
LEFT JOIN CodeMaster CMN9
	ON	CMN9.ComCode = N'0001'
	AND	CMN9.CodeID = 'WSKBN'
	AND	CMN9.CodeCode = CM.C_CalenderGubun
LEFT JOIN WhMaster WH17
	ON	WH17.ComCode = N'0001'
	AND	WH17.WhCode = CM.C_WhCode
LEFT JOIN WhMaster WH18
	ON	WH18.ComCode = N'0001'
	AND	WH18.WhCode = CM.C_DirectWhCode
LEFT JOIN CsMaster CM12
	ON	CM12.ComCode = N'0001'
	AND	CM12.CsCode = CM.C_LastDeliveryToCs
LEFT JOIN CodeMaster CMN13
	ON	CMN13.ComCode = N'0001'
	AND	CMN13.CodeID = 'C_CsSecCode'
	AND	CMN13.CodeCode = CM.C_CsSecCode
LEFT JOIN CsMaster CM16
	ON	CM16.ComCode = N'0001'
	AND	CM16.CsCode = CM.C_ColdShipToCsCode
WHERE
		CM.ComCode = N'0001'
	AND	CM.CsCode = N'200107701'

go


--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ013939O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--







--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓RDM9824 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

1335

SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180615' 
 	AND Organization_jpn.OrganEdate >= N'20180615' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180615'    AND Organization_jpn.OrganEdate >= 
N'20180615'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1335%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))
 ORDER BY ObjLevel, ParentObj, ObjID






 SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180615' 
 	AND Organization_jpn.OrganEdate >= N'20180615' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180615'    AND Organization_jpn.OrganEdate >= 
N'20180615'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1335%' 
 ORDER BY ObjLevel, ParentObj, ObjID






--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑RDM9824 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--





--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ013865O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--



 SELECT 
									'N'
									,CRM.PoCsCode AS PoCsCode
									,CRM.CsCode AS CsCode
									,CRM.ItemCode AS ItemCode
									,CRM.C_ItemJanCode AS ItemJanCode
									,CRM.SalesPrice AS SalesPrice
									,CRM.C_poRegSaleGubun AS PoRegSaleGubun
									,'倉出'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcCode1
												ELSE 0
											END) AS C_CalcCodeWH1
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcValue1
												ELSE 0 
											END) AS C_CalcValueWH1
									,'倉出'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcCode2
												ELSE 0
											END) AS C_CalcCodeWH2
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcValue2
												ELSE 0
											END) AS C_CalcValueWH2
									,CRM.C_ItemClassCode AS ItemClassCode
									,CRM.C_Styyyymm AS Styyyymm
									,CRM.C_Edyyyymm AS Edyyyymm
									,CM1.CsName AS PoCsName
									,CM.CsName AS CsName
									,IM.C_ItemNameAbbrev AS ItemName --2018/05/21 MARS CHOU UPD ItemName⇒C_ItemNameAbbrev　SEQ013420O
									,'直送'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcCode1
												ELSE 0
											END) AS C_CalcCodeSS1
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcValue1
												ELSE 0
											END) AS C_CalcValueSS1
									,'直送'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcCode2
												ELSE 0
											END) AS C_CalcCodeSS2
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcValue2
												ELSE 0
											END) AS C_CalcValueSS2
									,CRM.RebateUse AS RebateUse
									,CRM.RebateUse AS Status
									,Convert(nvarchar(25), MAX(CRM.OperationTime), 121)
									,CRM.PoCsCode AS PoCsCodeHidden
									,CRM.CsCode AS CsCodeHidden
									,CRM.ItemCode AS ItemCodeHidden
									,CRM.C_ItemJanCode AS C_ItemJanCodeHidden
									,CRM.C_ItemClassCode AS C_ItemClassCodeHidden
									,CRM.SalesPrice AS SalesPriceHidden
									-- 2017/12/16 USOL-V TienTD DELETE Start(SEQ009880Oの対応)
									--,CRM.C_RebatePay AS RebatePay
									-- 2017/12/16 USOL-V TienTD DELETE End(SEQ009880Oの対応)
									,CRM.C_poRegSaleGubun AS PoRegSaleGubunHidden
									,CRM.C_Styyyymm AS StyyyymmHidden
									,CRM.C_Edyyyymm AS EdyyyymmHidden
								-- 2018/05/24 MARS CHOU UPD START (SEQ013493Oの対応)
								--FROM C_RebateMaster CRM
									,CRM.DeptCode
								FROM (
									SELECT * FROM C_RebateMaster WHERE SiteCode = N'0001' AND DeptCode = N'508'
									UNION
									SELECT * FROM C_RebateMaster WHERE  SiteCode = N'0001' AND DeptCode <> N'508'
									AND CsCode IN (SELECT ParentCs FROM CsMaster WHERE ComCode = N'0001' AND C_DefaultDept IN (N'101',N'301',N'502',N'503',N'504',N'505',N'508',N'510',N'515',N'516',N'519',N'520',N'521',N'522',N'526',N'528',N'620',N'721',N'769',N'799',N'B00',N'B01',N'B02',N'B03',N'B04',N'B05',N'B06',N'B07',N'B08',N'B09',N'511',N'527',N'K12'))
									) CRM 
								-- 2018/05/24 MARS CHOU UPD START (SEQ013493Oの対応)
								LEFT JOIN CsMaster CM
									ON CM.ComCode = N'0001'
									AND CM.CsCode = CRM.CsCode
								LEFT JOIN CsMaster CM1
									ON CM1.ComCode = N'0001'
									AND CM1.CsCode = CRM.PoCsCode
								LEFT JOIN ItemMaster IM
									ON IM.ComCode = N'0001'
									AND IM.ItemCode = CRM.ItemCode
								--2017/08/17　USOL-V TungHD　UPDATE　Start(SEQ005886Oの対応)
								--INNER JOIN CodeMaster COM
								LEFT JOIN CodeMaster COM
								--2017/08/17　USOL-V TungHD　UPDATE　End(SEQ005886Oの対応)
									ON COM.ComCode = N'0001'
									AND COM.CodeID = 'C_IROFlog'
									AND COM.CodeCode = CRM.C_poRegSaleGubun
								WHERE CRM.SiteCode = N'0001'
									--AND CRM.DeptCode = N'508' -- 2018/05/24 MARS CHOU DEL (SEQ013493Oの対応)
									AND CRM.C_RebateGubun = N'1'
AND CRM.CsCode = N'1100021'
GROUP BY CRM.PoCsCode
									,CM1.CsName
									,CRM.CsCode
									,CM.CsName
									,CRM.ItemCode
									,IM.C_ItemNameAbbrev --2018/05/21 MARS CHOU UPD ItemName⇒C_ItemNameAbbrev　SEQ013420O
									,CRM.C_ItemJanCode
									,CRM.C_ItemClassCode
									,CRM.SalesPrice
									,CRM.C_poRegSaleGubun
									,COM.CodeName
									,CRM.C_Styyyymm
									,CRM.C_Edyyyymm
									,CRM.RebateUse
									-- 2017/12/16 USOL-V TienTD DELETE Start(SEQ009880Oの対応)
									--,CRM.C_RebatePay
									-- 2017/12/16 USOL-V TienTD DELETE End(SEQ009880Oの対応)
									,CRM.DeptCode -- 2018/05/24 MARS CHOU ADD (SEQ013493Oの対応)
								ORDER BY CRM.PoCsCode
									,CRM.CsCode
									,CRM.C_ItemJanCode




select * from Cur_TempRebate
Cur_TempRebate


SELECT Convert(nvarchar(25), OperationTime, 121) FROM #OperationTimeTbl


--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ013865O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--




--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ013865O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--




SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180622' 
 	AND Organization_jpn.OrganEdate >= N'20180622' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180622'    AND Organization_jpn.OrganEdate >= 
N'20180622'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'132%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))
 ORDER BY ObjLevel, ParentObj, ObjID





 SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180622' 
 	AND Organization_jpn.OrganEdate >= N'20180622' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180622'    AND Organization_jpn.OrganEdate >= 
N'20180622'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'132%' 
 ORDER BY ObjLevel, ParentObj, ObjID










--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ013865O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--








--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--






DECLARE @ROWCOUNT int = 0;
SELECT @ROWCOUNT = Count(1)
FROM DeptMaster_jpn DMJ 
INNER JOIN Organization_jpn OJ 
ON OJ.ComCode = N'0001'
AND OJ.OrganBdate <= CONVERT(VARCHAR(10),GETDATE() ,112)
AND OJ.OrganEdate >= CONVERT(VARCHAR(10),GETDATE() ,112)
AND OJ.RevNo = DMJ.RevNo
WHERE
DMJ.ComCode = N'0001'
AND DMJ.DeptCode = N'508'

IF @ROWCOUNT <> 0
BEGIN
SELECT ROW_NUMBER() OVER(ORDER BY CAS.C_CondGubun,CAS.C_ApCsCode,CAS.C_ArCsCode)
,CAS.C_ApCsCode
,CS1.CsName
,CAS.C_ArCsCode
,Case when CAS.C_ArCsCode = FAM.TextField then FAM.SubIDName Else CS2.CsName END
,C_FromDate
,CAS.C_PriceSetting
,CM1.CodeName
,CM2.CodeName
,CM3.CodeName
FROM C_ApSaleOutputCond CAS
LEFT JOIN CsMaster CS1 ON
CS1.ComCode = N'0001'
AND CS1.CsCode = CAS.C_ApCsCode
LEFT JOIN CsMaster CS2 ON
CS2.ComCode = N'0001'
AND CS2.CsCode = CAS.C_ArCsCode
LEFT JOIN CodeMaster CM1 ON
CM1.ComCode	= N'0001'
AND CM1.CodeID = 'C_PriceSetting'
AND CM1.CodeCode= CAS.C_PriceSetting
LEFT JOIN CodeMaster CM2 ON
CM1.ComCode	= N'0001'
AND CM2.CodeID = 'C_CondGubun'
AND CM2.CodeCode= CAS.C_CondGubun
LEFT JOIN CodeMaster CM3 ON
CM1.ComCode	= N'0001'
AND CM3.CodeID = 'C_SumSetting'
AND CM3.CodeCode= CAS.C_SumSetting

LEFT JOIN FormAccMapping_jpn FAM ON
FAM.ComCode = N'0001'
AND FAM.FormID = N'OM444'
AND FAM.SubID = N'T100'
AND FAM.TextField = CAS.C_ArCsCode
WHERE
CAS.SiteCode = N'0001'
AND CAS.DeptCode = N'508';
END
ELSE
BEGIN
SELECT 'CR', N'事業所が正しくありません。';
END




--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--




--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ014274O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--



SELECT 
A.ParentCS
,A.CsCode
,
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180626' 
 	AND Organization_jpn.OrganEdate >= N'20180626' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180626'    AND Organization_jpn.OrganEdate >= 
N'20180626'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'132%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))   AND A.C_DefaultDept = N'508'

 ORDER BY ObjLevel, ParentObj, ObjID

go


select 
C_DeptCode
,C_DefaultDept
,*
from
csmaster
where
cscode='1324000     '



update
csmaster
set
--C_DeptCode='508'
--,C_DefaultDept='508'
--C_DeptCode='522'
C_DefaultDept='522'
--C_DefaultDept='508'
where
cscode='1324000     '




--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ014274O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--




--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ014434O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--


sp_help ItemMaster

sp_columns ItemMaster 
where column_name='UnitMM'




SELECT ItemUse,*
FROM ItemMaster
WHERE ComCode = N'0001'
AND ItemCode = N'0013130713700'



SELECT 
ItemUse
,C_RebExceptType
FROM ItemMaster
WHERE ComCode = N'0001'
AND ItemCode = N'0013131949700'


update
ItemMaster
set
--C_RebExceptType = '1'
C_RebExceptType = null
--ItemUse='Y'
WHERE ComCode = N'0001'
AND ItemCode = N'0013131949700'




SELECT ItemUse,*
FROM ItemMaster
WHERE ComCode = N'0001'
AND ItemCode = N'0013131949700'


update
ItemMaster
set
ItemCode = N'0013131949700'
WHERE ComCode = N'0001'
AND ItemCode = N'0013131949799'




DECLARE @C_RebExceptType nchar(1)
SET @C_RebExceptType = NULL

SELECT @C_RebExceptType= C_RebExceptType
FROM ItemMaster
WHERE ComCode = N'0001'
	AND ItemCode = N'0013131949700'


select @C_RebExceptType

IF @C_RebExceptType IS NULL
	BEGIN
		SELECT 'CR', '{2}'
		GOTO Ending
	END
ELSE IF @C_RebExceptType = '1 '
	BEGIN
		SELECT 'CR', '{3}'
		GOTO Ending
	END


1




SELECT 
	ItemMasterQuery.CsName,	ItemMasterQuery.ItemCode,	ItemMasterQuery.ItemName ,	ItemMasterQuery.C_ItemPackage1Qty,	ItemMasterQuery.C_ItemJanCode,	ItemMasterQuery.C_ColdReserving ,	ItemMasterQuery.ItemDeptUse
 FROM ( 
 SELECT DISTINCT 
	CsMaster.CsName,	ItemMaster.ItemCode,	ItemMaster.ItemName ,	ItemMaster.C_ItemPackage1Qty,	ItemMaster.C_ItemJanCode,	CodeMaster.CodeName AS C_ColdReserving ,	C_ItemDeptMaster.C_ColdReserving AS C_ColdReservingCode,	C_ItemDeptMaster.ItemDeptUse,	ItemMaster.ItemSpec,	ItemMaster.ItemGroup,	ItemMaster.C_MatchQty,	ItemMaster.C_ItemPackage1Unit,	ItemMaster.C_ItemPackage2Qty,	ItemMaster.C_ItemPackage2Unit,	ItemMaster.C_TaxRatioGubun,	ItemMaster.C_ItemClassCode,	ItemMaster.C_ItemNameKana,	ItemMaster.C_ItemMakerCode,	ItemMaster.C_ProductCode,	'C_ItemCaseItfCode = ' + ISNULL(ItemMaster.C_ItemCaseItfCode,'') + '|' 
	+'C_ItemBowlItfCode = ' + ISNULL(ItemMaster.C_ItemBowlItfCode,'') + '|' 
	+'C_ItemMakerCode = ' + ItemMaster.C_ItemMakerCode + '|' 
	+'C_ItemMakerName = ' + CsMaster.CsName + '|' 
	+'C_CaseIndQty = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseIndQty,0)) + '|' 
	+'C_ExpDateS = ' + ISNULL(C_ItemDeptMaster.C_ExpDateS,'') + '|' 
	+'C_DeliveryRuleNum = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_DeliveryRuleNum,0)) + '|' 
	+'C_DeliveryRuleDen = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_DeliveryRuleDen,0)) + '|' 
	+'C_AlertRuleNum = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_AlertRuleNum,0)) + '|' 
	+'C_AlertRuleDen = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_AlertRuleDen,0)) + '|' 
	+'C_ReceivedRuleNum = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_ReceivedRuleNum,0))+ '|' 
	+'C_ReceivedRuleDen = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_ReceivedRuleDen,0))+ '|' 
	+'C_CaseWeight = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseWeight,0))+ '|' 
	+'C_CaseVolume = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseVolume,0)) + '|' 
	+'C_CaseSizeH = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseSizeH,0)) + '|' 
	+'C_CaseSizeL = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseSizeL,0)) + '|' 
	+'C_CaseSizeW = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseSizeW,0)) + '|'  AS ReturnValue ,	ItemMaster.C_IndUnit,	ItemMaster.C_StorePurPrice,	C_ItemDeptMaster.C_ItemMakerCode AS C_ItemMakerCode1,	C_ItemDeptMaster.C_ItemJanCode AS C_ItemJanCode1 FROM ItemMaster 
 INNER JOIN C_ItemDeptMaster ON 
	C_ItemDeptMaster.SiteCode = N'0001' 
	AND C_ItemDeptMaster.ItemCode = ItemMaster.ItemCode 
 INNER JOIN CsMaster ON 
	CsMaster.ComCode = ItemMaster.ComCode 
	AND CsMaster.CsCode = C_ItemDeptMaster.C_ItemMakerCode 
 LEFT JOIN CodeMaster ON 
	CodeMaster.ComCode = ItemMaster.ComCode 
	AND CodeMaster.CodeID = 'HOREI' 
	AND CodeMaster.CodeCode = C_ItemDeptMaster.C_ColdReserving 
 WHERE 
	ItemMaster.ComCode = N'0001'
	AND C_ItemDeptMaster.DeptCode = N'522' 

	AND ItemMaster.C_ItemJanCode LIKE N'4901313194973%' 

 ) AS ItemMasterQuery 
 ORDER BY ItemMasterQuery.C_ItemMakerCode1, ItemMasterQuery.ItemCode, ItemMasterQuery.C_ItemJanCode





 
SELECT 
	ItemMasterQuery.CsName
	,	ItemMasterQuery.ItemCode
	,	ItemMasterQuery.ItemName 
	,	ItemMasterQuery.C_ItemPackage1Qty
	,	ItemMasterQuery.C_ItemJanCode
	,	ItemMasterQuery.C_ColdReserving 
	,	ItemMasterQuery.ItemDeptUse
	,	ItemMasterQuery.C_RebExceptType
	,	ItemMasterQuery.ItemUse
 FROM ( 
 SELECT DISTINCT 
	CsMaster.CsName
	,	ItemMaster.ItemCode
	,	ItemMaster.ItemName 
	,	ItemMaster.C_ItemPackage1Qty
	,	ItemMaster.C_ItemJanCode
	,	CodeMaster.CodeName AS C_ColdReserving 
	,	C_ItemDeptMaster.C_ColdReserving AS C_ColdReservingCode
	,	C_ItemDeptMaster.ItemDeptUse
	,	ItemMaster.ItemSpec
	,	ItemMaster.ItemGroup
	,	ItemMaster.C_MatchQty
	,	ItemMaster.C_ItemPackage1Unit
	,	ItemMaster.C_ItemPackage2Qty
	,	ItemMaster.C_ItemPackage2Unit
	,	ItemMaster.C_TaxRatioGubun
	,	ItemMaster.C_ItemClassCode
	,	ItemMaster.C_ItemNameKana
	,	ItemMaster.C_ItemMakerCode
	,	ItemMaster.C_ProductCode
	,	'C_ItemCaseItfCode = ' + ISNULL(ItemMaster.C_ItemCaseItfCode,'') + '|' 
	+'C_ItemBowlItfCode = ' + ISNULL(ItemMaster.C_ItemBowlItfCode,'') + '|' 
	+'C_ItemMakerCode = ' + ItemMaster.C_ItemMakerCode + '|' 
	+'C_ItemMakerName = ' + CsMaster.CsName + '|' 
	+'C_CaseIndQty = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseIndQty,0)) + '|' 
	+'C_ExpDateS = ' + ISNULL(C_ItemDeptMaster.C_ExpDateS,'') + '|' 
	+'C_DeliveryRuleNum = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_DeliveryRuleNum,0)) + '|' 
	+'C_DeliveryRuleDen = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_DeliveryRuleDen,0)) + '|' 
	+'C_AlertRuleNum = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_AlertRuleNum,0)) + '|' 
	+'C_AlertRuleDen = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_AlertRuleDen,0)) + '|' 
	+'C_ReceivedRuleNum = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_ReceivedRuleNum,0))+ '|' 
	+'C_ReceivedRuleDen = ' + Convert(nvarchar, ISNULL(C_ItemDeptMaster.C_ReceivedRuleDen,0))+ '|' 
	+'C_CaseWeight = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseWeight,0))+ '|' 
	+'C_CaseVolume = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseVolume,0)) + '|' 
	+'C_CaseSizeH = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseSizeH,0)) + '|' 
	+'C_CaseSizeL = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseSizeL,0)) + '|' 
	+'C_CaseSizeW = ' + Convert(nvarchar, ISNULL(ItemMaster.C_CaseSizeW,0)) + '|'  AS ReturnValue 
	,	ItemMaster.C_IndUnit
	,	ItemMaster.C_StorePurPrice
	,	C_ItemDeptMaster.C_ItemMakerCode AS C_ItemMakerCode1
	,	C_ItemDeptMaster.C_ItemJanCode AS C_ItemJanCode1 
	--
	,	ItemMaster.C_RebExceptType AS C_RebExceptType
	,	ItemMaster.ItemUse AS ItemUse
	--
FROM ItemMaster 
 INNER JOIN C_ItemDeptMaster ON 
	C_ItemDeptMaster.SiteCode = N'0001' 
	AND C_ItemDeptMaster.ItemCode = ItemMaster.ItemCode 
 INNER JOIN CsMaster ON 
	CsMaster.ComCode = ItemMaster.ComCode 
	AND CsMaster.CsCode = C_ItemDeptMaster.C_ItemMakerCode 
 LEFT JOIN CodeMaster ON 
	CodeMaster.ComCode = ItemMaster.ComCode 
	AND CodeMaster.CodeID = 'HOREI' 
	AND CodeMaster.CodeCode = C_ItemDeptMaster.C_ColdReserving 
 WHERE 
	ItemMaster.ComCode = N'0001'
	AND C_ItemDeptMaster.DeptCode = N'522' 

	AND ItemMaster.C_ItemJanCode LIKE N'4901313194973%' 

 ) AS ItemMasterQuery 
 ORDER BY ItemMasterQuery.C_ItemMakerCode1, ItemMasterQuery.ItemCode, ItemMasterQuery.C_ItemJanCode







  SELECT 
									'N'
									,CRM.PoCsCode AS PoCsCode
									,CRM.CsCode AS CsCode
									,CRM.ItemCode AS ItemCode
									,CRM.C_ItemJanCode AS ItemJanCode
									,CRM.SalesPrice AS SalesPrice
									,CRM.C_poRegSaleGubun AS PoRegSaleGubun
									,'倉出'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcCode1
												ELSE 0
											END) AS C_CalcCodeWH1
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcValue1
												ELSE 0 
											END) AS C_CalcValueWH1
									,'倉出'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcCode2
												ELSE 0
											END) AS C_CalcCodeWH2
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '1'
													THEN CRM.C_CalcValue2
												ELSE 0
											END) AS C_CalcValueWH2
									,CRM.C_ItemClassCode AS ItemClassCode
									,CRM.C_Styyyymm AS Styyyymm
									,CRM.C_Edyyyymm AS Edyyyymm
									,CM1.CsName AS PoCsName
									,CM.CsName AS CsName
									,IM.C_ItemNameAbbrev AS ItemName --2018/05/21 MARS CHOU UPD ItemName⇒C_ItemNameAbbrev　SEQ013420O
									,'直送'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcCode1
												ELSE 0
											END) AS C_CalcCodeSS1
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcValue1
												ELSE 0
											END) AS C_CalcValueSS1
									,'直送'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcCode2
												ELSE 0
											END) AS C_CalcCodeSS2
									,'条件'
									,SUM (Case CRM.C_deliveryType
												WHEN '2'
													THEN CRM.C_CalcValue2
												ELSE 0
											END) AS C_CalcValueSS2
									,CRM.RebateUse AS RebateUse
									,CRM.RebateUse AS Status
									,Convert(nvarchar(25), MAX(CRM.OperationTime), 121)
									,CRM.PoCsCode AS PoCsCodeHidden
									,CRM.CsCode AS CsCodeHidden
									,CRM.ItemCode AS ItemCodeHidden
									,CRM.C_ItemJanCode AS C_ItemJanCodeHidden
									,CRM.C_ItemClassCode AS C_ItemClassCodeHidden
									,CRM.SalesPrice AS SalesPriceHidden
									-- 2017/12/16 USOL-V TienTD DELETE Start(SEQ009880Oの対応)
									--,CRM.C_RebatePay AS RebatePay
									-- 2017/12/16 USOL-V TienTD DELETE End(SEQ009880Oの対応)
									,CRM.C_poRegSaleGubun AS PoRegSaleGubunHidden
									,CRM.C_Styyyymm AS StyyyymmHidden
									,CRM.C_Edyyyymm AS EdyyyymmHidden
								-- 2018/05/24 MARS CHOU UPD START (SEQ013493Oの対応)
								--FROM C_RebateMaster CRM
									,CRM.DeptCode
								--
									,IM.C_RebExceptType
									,IM.ItemUse
								--
								FROM (
									SELECT * FROM C_RebateMaster WHERE SiteCode = N'0001' AND DeptCode = N'522'
									UNION
									SELECT * FROM C_RebateMaster WHERE  SiteCode = N'0001' AND DeptCode <> N'522'
									AND CsCode IN (SELECT ParentCs FROM CsMaster WHERE ComCode = N'0001' AND C_DefaultDept IN (N'101',N'301',N'502',N'503',N'504',N'505',N'508',N'510',N'515',N'516',N'519',N'520',N'521',N'522',N'526',N'528',N'620',N'721',N'769',N'799',N'B00',N'B01',N'B02',N'B03',N'B04',N'B05',N'B06',N'B07',N'B08',N'B09',N'511',N'527',N'K12'))
									) CRM 
								-- 2018/05/24 MARS CHOU UPD START (SEQ013493Oの対応)
								LEFT JOIN CsMaster CM
									ON CM.ComCode = N'0001'
									AND CM.CsCode = CRM.CsCode
								LEFT JOIN CsMaster CM1
									ON CM1.ComCode = N'0001'
									AND CM1.CsCode = CRM.PoCsCode
								LEFT JOIN ItemMaster IM
									ON IM.ComCode = N'0001'
									AND IM.ItemCode = CRM.ItemCode
								--2017/08/17　USOL-V TungHD　UPDATE　Start(SEQ005886Oの対応)
								--INNER JOIN CodeMaster COM
								LEFT JOIN CodeMaster COM
								--2017/08/17　USOL-V TungHD　UPDATE　End(SEQ005886Oの対応)
									ON COM.ComCode = N'0001'
									AND COM.CodeID = 'C_IROFlog'
									AND COM.CodeCode = CRM.C_poRegSaleGubun
								WHERE CRM.SiteCode = N'0001'
									--AND CRM.DeptCode = N'522' -- 2018/05/24 MARS CHOU DEL (SEQ013493Oの対応)
									AND CRM.C_RebateGubun = N'3'
AND CRM.PoCsCode = N'2001313'
GROUP BY CRM.PoCsCode
									,CM1.CsName
									,CRM.CsCode
									,CM.CsName
									,CRM.ItemCode
									,IM.C_ItemNameAbbrev --2018/05/21 MARS CHOU UPD ItemName⇒C_ItemNameAbbrev　SEQ013420O
									,CRM.C_ItemJanCode
									,CRM.C_ItemClassCode
									,CRM.SalesPrice
									,CRM.C_poRegSaleGubun
									,COM.CodeName
									,CRM.C_Styyyymm
									,CRM.C_Edyyyymm
									,CRM.RebateUse
									-- 2017/12/16 USOL-V TienTD DELETE Start(SEQ009880Oの対応)
									--,CRM.C_RebatePay
									-- 2017/12/16 USOL-V TienTD DELETE End(SEQ009880Oの対応)
									,CRM.DeptCode -- 2018/05/24 MARS CHOU ADD (SEQ013493Oの対応)
									--
									,IM.C_RebExceptType
									,IM.ItemUse
									--
								ORDER BY CRM.PoCsCode
									,CRM.CsCode
									,CRM.C_ItemJanCode






--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ014434O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--



--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ014146O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--



SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180627' 
 	AND Organization_jpn.OrganEdate >= N'20180627' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180627'    AND Organization_jpn.OrganEdate >= 
N'20180627'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1335%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))   AND A.C_DefaultDept = N'508'

 ORDER BY ObjLevel, ParentObj, ObjID

















SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180627' 
 	AND Organization_jpn.OrganEdate >= N'20180627' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180627'    AND Organization_jpn.OrganEdate >= 
N'20180627'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1335%' 
    AND (A.C_DeptCode = N'508' 
		OR (A.CsCode = A.ParentCs 
			AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))   
	AND A.C_DefaultDept = N'508'
 ORDER BY ObjLevel, ParentObj, ObjID








 

SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180627' 
 	AND Organization_jpn.OrganEdate >= N'20180627' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180627'    AND Organization_jpn.OrganEdate >= 
N'20180627'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1335%' 
    AND (A.C_DeptCode = N'508' 
		OR (A.CsCode = A.ParentCs 
			AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))   
	AND A.C_DefaultDept = N'508'
 ORDER BY ObjLevel, ParentObj, ObjID








SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
	,A.C_DefaultDept
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180628' 
 	AND Organization_jpn.OrganEdate >= N'20180628' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180628'    AND Organization_jpn.OrganEdate >= 
N'20180628'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1323%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508') AND A.C_DefaultDept <> N'508') OR A.C_DefaultDept = N'508') 

 ORDER BY ObjLevel, ParentObj, ObjID




 SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = CsMaster.ParentCs AND C_DeptCode = N'508'


 SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180628' 
 	AND Organization_jpn.OrganEdate >= N'20180628' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180628'    AND Organization_jpn.OrganEdate >= 
N'20180628'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1323%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))   AND A.C_DefaultDept = N'508'

 ORDER BY ObjLevel, ParentObj, ObjID




 SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180628' 
 	AND Organization_jpn.OrganEdate >= N'20180628' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180628'    AND Organization_jpn.OrganEdate >= 
N'20180628'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1323%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508')))
 ORDER BY ObjLevel, ParentObj, ObjID









 SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180628' 
 	AND Organization_jpn.OrganEdate >= N'20180628' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180628'    AND Organization_jpn.OrganEdate >= 
N'20180628'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1323%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508') AND A.C_DefaultDept <> N'508')  OR A.C_DefaultDept = N'508')

 ORDER BY ObjLevel, ParentObj, ObjID





 SELECT 
    CASE 
        WHEN A.ParentCS = A.CsCode
            THEN 1
        ELSE 2
	   END AS ObjLevel
    ,CASE 
        WHEN A.ParentCS = A.CsCode 
            THEN NULL
        ELSE A.ParentCS
	   END AS ParentObj
    ,A.CsCode AS ObjID
    ,CASE 
        WHEN A.ParentCS = A.CsCode and B.countPrCs > 0 
            THEN 'N'
        ELSE 'Y'
	   END AS LeafCheck
    ,A.CsCode AS ObjName
    ,A.CsName
    ,DeptMaster_jpn.DeptName
FROM CsMaster A
 INNER JOIN  
 	(SELECT A.ComCode, A.ParentCs , Count(*) as countPrCs FROM CsMaster A 
 	INNER JOIN Organization_jpn ON Organization_jpn.ComCode = N'0001' 
 	AND Organization_jpn.OrganBdate <= N'20180628' 
 	AND Organization_jpn.OrganEdate >= N'20180628' 
 	INNER JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  N'0001' 
 	AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo 
     AND DeptMaster_jpn.DeptCode = A.C_DeptCode 
 	WHERE  A.ComCode = N'0001' 
		AND A.CsUse = 'Y' 
 	GROUP BY A.ComCode, A.ParentCs 
 	) B ON B.ComCode = 　A.ComCode 
     AND B.ParentCs = 　A.ParentCs 
INNER JOIN Organization_jpn ON Organization_jpn.ComCode = 
N'0001'    AND Organization_jpn.OrganBdate <= 
N'20180628'    AND Organization_jpn.OrganEdate >= 
N'20180628'LEFT JOIN DeptMaster_jpn ON DeptMaster_jpn.ComCode =  
N'0001'    AND DeptMaster_jpn.RevNo = Organization_jpn.RevNo
    AND DeptMaster_jpn.DeptCode = A.C_DeptCode
WHERE 
 A.ComCode = 
N'0001' AND A.CsUse = 'Y' 
 AND A.CsCode LIKE N'1323%' 
    AND (A.C_DeptCode = N'508' OR (A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508') AND A.C_DefaultDept <> N'508')  OR A.C_DefaultDept = N'508')

 ORDER BY ObjLevel, ParentObj, ObjID





 select 
 C_DeptCode
 ,A.C_DefaultDept
 ,*
 from
 CsMaster A
 where
  A.ComCode = N'0001' 
 AND 
  A.CsUse = 'Y' 
 AND 
  A.CsCode LIKE N'1323%'
 AND 
  A.C_DeptCode = N'508'
 AND
  A.CsCode = '132300080001'




update 
CsMaster
set
C_DeptCode = N'509'
where
  ComCode = N'0001' 
 AND 
  CsUse = 'Y' 
 AND 
  CsCode LIKE N'1323%'
 AND 
  C_DeptCode = N'508'
 AND
  CsCode = '132300080001'




 select 
 C_DeptCode
 ,A.C_DefaultDept
 ,*
 from
 CsMaster A
 where
  A.ComCode = N'0001' 
 AND 
  A.CsUse = 'Y' 
 AND 
  A.CsCode LIKE N'1323%'
 AND 
  A.CsCode = A.ParentCs AND EXISTS (SELECT 1 FROM CsMaster WHERE ComCode = N'0001' AND ParentCs = A.ParentCs AND C_DeptCode = N'508') AND A.C_DefaultDept <> N'508'

  




 select 
 C_DeptCode
 ,A.C_DefaultDept
 ,*
 from
 CsMaster A
 where
  A.ComCode = N'0001' 
 AND 
  A.CsUse = 'Y' 
 AND 
  A.CsCode LIKE N'1323%'
 AND 
  A.C_DefaultDept = N'508'
 AND
  A.CsCode = '132300080002'



update 
CsMaster
set
C_DefaultDept = N'510'
where
  ComCode = N'0001' 
 AND 
  CsUse = 'Y' 
 AND 
  CsCode LIKE N'1323%'
 AND 
  C_DefaultDept = N'508'
 AND
  CsCode = '132300080002'





--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ014146O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--




--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ014644O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--



---------修正中１（ソースに使ってる）

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
--「WK-DC制御区分」を設定する。
DECLARE @WK_DCCtrlType NCHAR(1) = NULL;				--WK-DC制御区分
DECLARE @C_WhGubunDC NCHAR(1) = NULL;				--倉庫区分
DECLARE @C_InstructionSkipDC NCHAR(1) = NULL;		--出荷指示省略（画面入力）
DECLARE @C_InstructionSkipEOSDC NCHAR(1) = NULL;	--出荷指示省略（EOS）
DECLARE @C_OhReserveDC NCHAR(1) = NULL;				--在庫引当可否区分（画面入力）
DECLARE @C_OhReserveEosDC NCHAR(1) = NULL;			--在庫引当可否区分（EOS）

DECLARE @OrderAcceptTypeDC NCHAR(4) = NULL;

BEGIN
	SELECT @C_WhGubunDC = WhM.C_WhGubun
		,@C_InstructionSkipDC = WhM.C_InstructionSkip
		,@C_InstructionSkipEOSDC = WhM.C_InstructionSkipEOS
		,@C_OhReserveDC = WhM.C_OhReserve
		,@C_OhReserveEosDC = WhM.C_OhReserveEos
		,@OrderAcceptTypeDC = C_sdAcceptH.OrderAcceptType
	FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
	INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
		ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
		AND C_sdAcceptH.SiteCode = N'0001' 
		AND C_sdAcceptH.DeptCode = N'508' 
		AND C_sdAcceptH.OrderAcceptType <> '3' 
	INNER JOIN WhMaster WhM WITH(NOLOCK)
		ON WhM.WhCode = C_sdAcceptI.WhCode
		AND WhM.ComCode = N'0001'
	WHERE C_sdAcceptI.DeptCode = N'508' 
		AND C_sdAcceptI.SiteCode = N'0001' 
		AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
		AND C_sdAcceptI.IrExpectDate <= N'20180703' 
		AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
		AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
		AND C_sdAcceptI.WhCode = N'0508'
		AND C_sdAcceptI.C_InvStatus = N'10'

	IF(@C_WhGubunDC = '2' OR @C_WhGubunDC = '3')
	BEGIN
		SET @WK_DCCtrlType =
		CASE WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'N'
				THEN '2'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'N'
				THEN '2'
		END
	END
	--ｲ.ｱ.以外の場合
	ELSE
	BEGIN
		SET @WK_DCCtrlType = NULL
	END
END


SELECT WhM.C_CenterCode
, SubItemInf.WhCode
, WhM.WhName
, C_ItemWhM.C_ItemJanCode
, C_ItemWhM.C_MainItemCode
, ''
, ItemM.ItemName
, ItemM.ItemSpec
, SubItemInf.InvStatus
, CodeMaster.CodeName
, ''
, CAST(ItemM.C_ItemPackage1Qty AS BIGINT) AS C_ItemPackage1Qty
, CAST(SUM((isnull(SubItemInf.C_mmStockM_OhQty, 0) / isnull(ItemM.C_ItemPackage1Qty, 1))) AS BIGINT) AS C_CurrentStockBlockNum
, CAST(SUM(isnull(SubItemInf.C_mmStockM_OhQty, 0)) % isnull(ItemM.C_ItemPackage1Qty, 1) AS BIGINT) AS C_CurrentStockIndNum
, SUM(SubItemInf.C_CurrentStockIndTotal)
, SUM(SubItemInf.C_ExpInBlockNum)
, SUM(SubItemInf.C_ExpOutBlockNum)
, CAST(SUM((SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum) / isnull(ItemM.C_ItemPackage1Qty, 1)) AS BIGINT) AS C_ExpStockBlockNum
, CAST(SUM(SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum) % isnull(ItemM.C_ItemPackage1Qty, 1) AS BIGINT) AS C_ExpStockIndNum
, SUM((SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum)) AS C_ExpStockIndTotal
, C_ItemDeptM.C_ItemMakerCode
, CsM.CsName
, MAX(SubItemInf.C_LastArrivalDate)
, MAX(SubItemInf.C_LastShipDate)
, MAX(SubItemInf.C_LastInspDate)
--
--, SUM(SubItemInf.C_ReservePieceQty)
--
FROM
		(
				SELECT BigSubItem.SiteCode AS SiteCode
					, BigSubItem.WhCode AS WhCode 
					, BigSubItem.ItemCode AS TakayamaItemCode
					, BigSubItem.InvStatus AS InvStatus
					, BigSubItem.C_DeptCode AS C_DeptCode
					, '' AS ExpDate
					, SUM(isnull(BigSubItem.C_mmStockM_OhQty, 0)) - SUM(isnull(BigSubItem.HoldQty, 0)) - SUM(isnull(BigSubItem.AdjustQty, 0)) AS C_mmStockM_OhQty
					--, CAST(SUM(isnull(BigSubItem.C_mmStockM_OhQty, 0)) - SUM(isnull(BigSubItem.HoldQty, 0)) - SUM(isnull(BigSubItem.AdjustQty, 0)) AS BIGINT) AS C_CurrentStockIndTotal
					, CAST(SUM(isnull(BigSubItem.C_mmStockM_OhQty, 0)) - SUM(isnull(BigSubItem.HoldQty, 0)) - SUM(isnull(BigSubItem.AdjustQty, 0)) - SUM(isnull(BigSubItem.C_ReservePieceQty, 0)) AS BIGINT) AS C_CurrentStockIndTotal
					, CAST((SUM(isnull(BigSubItem.SubPoOrder_OrderQty, 0) - isnull(BigSubItem.SubPoOrder_InQty, 0))
						+ SUM(isnull(BigSubItem.SubmmRequisitI1_ReqQty, 0) - isnull(BigSubItem.SubmmRequisitI1_C_InQty, 0))
						+ SUM(isnull(BigSubItem.SubpoOsOrderI1_OrderQty, 0) - isnull(BigSubItem.SubpoOsOrderI1_InQty, 0)) + SUM(isnull(BigSubItem.SubpoOsApartVndMatI_C_IndividualApartQty, 0))
						+ SUM(isnull(BigSubItem.SubsdReturnExpI_C_ReturnExpQty, 0))) AS BIGINT) AS C_ExpInBlockNum
					, CAST((SUM(isnull(BigSubItem.SubsdAcceptI_C_PieceQty, 0))
						+ SUM(isnull(BigSubItem.SubpoOsOrderVndMatI_C_IndividualOrderQty, 0)) + SUM(isnull(BigSubItem.C_poOsApartH1_C_IndividualApartQty, 0))) AS BIGINT) AS C_ExpOutBlockNum
					, MAX(BigSubItem.C_LastArrivalDate) AS C_LastArrivalDate
					, MAX(BigSubItem.C_LastShipDate) AS C_LastShipDate
					, MAX(BigSubItem.C_LastInspDate) AS C_LastInspDate
					, IM.C_ItemJanCode
					--
					--, BigSubItem.C_ReservePieceQty AS C_ReservePieceQty
					--
				FROM
				(
							SELECT A.SiteCode, A.WhCode, A.ItemCode, A.InvStatus, A.C_DeptCode
							, SUM(A.OhQty) - SUM(A.C_ReserveQty) AS C_mmStockM_OhQty
							, 0 AS SubPoOrder_OrderQty
							, 0 AS SubPoOrder_InQty
							, 0 AS SubmmRequisitI1_ReqQty
							, 0 AS SubmmRequisitI1_C_InQty
							, 0 AS SubsdAcceptI_C_PieceQty
							, 0 AS SubsdAcceptI_C_ResultsPieceQty
							, 0 AS SubmmRequisitI2_ReqQty
							, 0 AS SubmmRequisitI2_OutQty
							, 0 AS SubpoOsOrderI1_OrderQty
							, 0 AS SubpoOsOrderI1_InQty
							, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
							, 0 AS SubsdReturnExpI_C_ReturnExpQty
							, 0 AS C_poOsApartH1_C_IndividualApartQty
							, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
							, MAX(A.C_LastArrivalDate) AS C_LastArrivalDate
							, MAX(A.C_LastShipDate)AS C_LastShipDate
							, MAX(A.C_LastInspDate) AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
							FROM C_mmStockMaster A WITH(NOLOCK)
							INNER JOIN C_mmInoutLotSubInfo C_mmInoutLotSubI WITH(NOLOCK)
							ON C_mmInoutLotSubI.LotNo = A.LotNo
							AND C_mmInoutLotSubI.SiteCode = N'0001'
						WHERE A.C_DeptCode = N'508'
							AND A.SiteCode = N'0001'
							AND A.WhCode = N'0508'
							AND A.InvStatus = N'10'
						Group By A.SiteCode, A.C_DeptCode, A.WhCode, A.ItemCode, A.InvStatus
					UNION ALL 
						SELECT poOrderI.SiteCode, poOrderI.WhCode, poOrderI.ItemCode, poOrderI.C_InvStatus, poOrderH.C_DeptCode
						, 0 AS C_mmStockM_OhQty
						, SUM(ISNULL(poOrderI.C_ExpOrderQty, 0)) AS SubPoOrder_OrderQty
						, SUM(ISNULL(poOrderI.InQty, 0)) AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM poOrderItem poOrderI WITH(NOLOCK)
						INNER JOIN poOrderHeader poOrderH WITH(NOLOCK)
							ON poOrderH.OrderNo = poOrderI.OrderNo
							AND poOrderH.SiteCode = N'0001' 
							AND poOrderH.C_poOrderSendStatus = '3'
						WHERE poOrderI.OrderItemStatus <> 'PC' 
							AND poOrderI.SiteCode = N'0001' 
							AND poOrderI.DueDate <= N'20180703' 
							AND poOrderH.C_DeptCode = N'508'
							AND poOrderI.WhCode = N'0508'
							AND poOrderI.C_InvStatus = N'10'
						GROUP BY poOrderI.SiteCode, poOrderI.WhCode, poOrderI.ItemCode, poOrderI.C_InvStatus, poOrderH.C_DeptCode
					UNION ALL
						SELECT mmRequisitI1.SiteCode, mmRequisitI1.WhCodeIn AS WhCode, mmRequisitI1.ItemCode, mmRequisitH1.C_InvStatusIn, mmRequisitH1.C_ReqDeptIn
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, SUM(ISNULL(mmRequisitI1.ReqQty, 0)) AS SubmmRequisitI1_ReqQty
						, SUM(ISNULL(mmRequisitI1.C_InQty, 0)) AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM mmRequisitItem mmRequisitI1 WITH(NOLOCK)
						INNER JOIN mmRequisitHeader mmRequisitH1 WITH(NOLOCK)
							ON mmRequisitH1.ReqNo = mmRequisitI1.ReqNo
							AND mmRequisitH1.SiteCode = N'0001' 
							AND mmRequisitH1.C_ExpectDateIn <= N'20180703' 
							AND ( (mmRequisitH1.SysCase IN('400', '980') AND mmRequisitH1.C_InWhSendStatus IN ('A', 'B')) 
								OR ( mmRequisitH1.SysCase = '500' AND mmRequisitH1.C_OrderedStatus IN ('A', 'B'))) 
						WHERE mmRequisitI1.ReqItemStatus <> 'C' 
							AND mmRequisitI1.SiteCode = N'0001' 
							AND mmRequisitH1.C_ReqDeptIn = N'508'
							AND mmRequisitI1.WhCodeIn = N'0508'
							AND mmRequisitH1.C_InvStatusIn = N'10'
						GROUP BY mmRequisitI1.SiteCode, mmRequisitI1.WhCodeIn, mmRequisitI1.ItemCode, mmRequisitH1.C_InvStatusIn, mmRequisitH1.C_ReqDeptIn
					UNION ALL
						SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, SUM(ISNULL(C_sdAcceptI.C_PieceQty, 0)) AS SubsdAcceptI_C_PieceQty
						, SUM(ISNULL(C_sdAcceptI.C_ResultsPieceQty, 0)) AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
						INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
							ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
							AND C_sdAcceptH.SiteCode = N'0001' 
							AND C_sdAcceptH.DeptCode = N'508' 
							AND C_sdAcceptH.OrderAcceptType <> '3' 
						WHERE C_sdAcceptI.DeptCode = N'508' 
							AND C_sdAcceptI.SiteCode = N'0001' 
							AND C_sdAcceptI.C_OrderPhaseGubun > '1' 
							AND C_sdAcceptI.C_OrderPhaseGubun < '4' 
							AND C_sdAcceptI.IrExpectDate <= N'20180703' 
							AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
							AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
							AND C_sdAcceptI.WhCode = N'0508'
							AND C_sdAcceptI.C_InvStatus = N'10'
						GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
					---------------------------------------------------------------------------------------------------------------------------------------------------------
					UNION ALL
						SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, SUM(ISNULL(C_sdAcceptI.C_PieceQty, 0)) AS SubsdAcceptI_C_PieceQty
						, SUM(ISNULL(C_sdAcceptI.C_ResultsPieceQty, 0)) AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
						--, C_sdAcceptI.C_ReservePieceQty
						, SUM(ISNULL(C_sdAcceptI.C_ReservePieceQty,0)) AS C_ReservePieceQty
						FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
						INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
							ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
							AND C_sdAcceptH.SiteCode = N'0001' 
							AND C_sdAcceptH.DeptCode = N'508' 
							AND C_sdAcceptH.OrderAcceptType <> '3' 
						INNER JOIN WhMaster WhM WITH(NOLOCK)
							ON WhM.WhCode = C_sdAcceptI.WhCode
							AND WhM.ComCode = N'0001'
						WHERE C_sdAcceptI.DeptCode = N'508' 
							AND C_sdAcceptI.SiteCode = N'0001' 
							AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
							AND C_sdAcceptI.IrExpectDate <= N'20180703' 
							AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
							AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
							AND @WK_DCCtrlType IS NOT NULL
							AND C_sdAcceptI.WhCode = N'0508'
							AND C_sdAcceptI.C_InvStatus = N'10'
						--GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, C_sdAcceptI.C_ReservePieceQty
						GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
					---------------------------------------------------------------------------------------------------------------------------------------------------------
					UNION ALL
						SELECT poOsOrderI1.SiteCode, poOsOrderI1.WhCode, poOsOrderI1.ItemCode, mmStockMst.InvStatus AS InvStatus, poOsOrderH1.C_DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, SUM(ISNULL(poOsOrderI1.OrderQty, 0)) AS SubpoOsOrderI1_OrderQty
						, SUM(ISNULL(poOsOrderI1.InQty, 0)) AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM poOsOrderItem poOsOrderI1 WITH(NOLOCK)
						INNER JOIN poOsOrderHeader poOsOrderH1 WITH(NOLOCK)
							ON poOsOrderH1.OrderNo = poOsOrderI1.OrderNo
							AND poOsOrderH1.SiteCode = N'0001' 
							AND poOsOrderH1.C_OrderStatus ='5' 
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = poOsOrderH1.SiteCode
							AND mmStockMst.WhCode = poOsOrderI1.WhCode
							AND mmStockMst.ItemCode = poOsOrderI1.ItemCode
							AND mmStockMst.InvStatus = '10'
						WHERE poOsOrderI1.C_OsEndGubun <> '2' 
							AND poOsOrderI1.SiteCode = N'0001' 
							AND poOsOrderI1.DueDate <= N'20180703' 
							AND poOsOrderH1.C_DeptCode = N'508'
							AND poOsOrderI1.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY poOsOrderI1.SiteCode, poOsOrderI1.WhCode, poOsOrderI1.ItemCode, mmStockMst.InvStatus, poOsOrderH1.C_DeptCode
					UNION ALL
						SELECT C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode,mmStockMst.InvStatus AS InvStatus, poOsOrderH2.C_DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, SUM(ISNULL(C_poOsOrderVndMatI.C_IndividualOrderQty, 0)) AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_poOsOrderVndMatItem C_poOsOrderVndMatI WITH(NOLOCK)
						INNER JOIN poOsOrderItem poOsOrderI2 WITH(NOLOCK)
							ON poOsOrderI2.SiteCode = N'0001' 
							AND poOsOrderI2.AltKey = C_poOsOrderVndMatI.AltKey 
							AND poOsOrderI2.C_OsEndGubun <> '2' 
							AND poOsOrderI2.DueDate <= N'20180703' 
						INNER JOIN poOsOrderHeader poOsOrderH2 WITH(NOLOCK) 
							ON poOsOrderH2.SiteCode = N'0001' 
							AND poOsOrderH2.OrderNo = poOsOrderI2.OrderNo 
							AND poOsOrderH2.C_OrderStatus = '5' 
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = poOsOrderI2.SiteCode
							AND mmStockMst.WhCode = poOsOrderI2.WhCode
							AND mmStockMst.ItemCode = poOsOrderI2.ItemCode
							AND mmStockMst.InvStatus = '10'
							LEFT JOIN C_poOsDecisionVndMatItem DVMI WITH(NOLOCK) 
							ON DVMI.SiteCode = N'0001' 
							AND DVMI.DecNo = poOsOrderI2.DecNo 
							AND DVMI.DecSerNo = poOsOrderI2.DecSerNo 
							AND DVMI.MatSerNo = C_poOsOrderVndMatI.MatSerNo 
						WHERE C_poOsOrderVndMatI.SiteCode = N'0001' 
							AND poOsOrderH2.C_DeptCode = N'508'
							AND ISNULL(DVMI.C_OsRevPhaseGubun, '1') = '1'
							AND poOsOrderI2.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode,mmStockMst.InvStatus, poOsOrderH2.C_DeptCode
					UNION ALL
						SELECT C_poOsApartH1.SiteCode, C_poOsApartH1.WhCode, C_poOsApartH1.ItemCode, mmStockMst.InvStatus AS InvStatus, C_poOsApartH1.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, SUM(ISNULL(C_poOsApartH1.C_IndividualApartQty, 0)) AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_poOsApartHeader C_poOsApartH1 WITH(NOLOCK)
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = C_poOsApartH1.SiteCode
							AND mmStockMst.WhCode = C_poOsApartH1.WhCode
							AND mmStockMst.ItemCode = C_poOsApartH1.ItemCode
							AND mmStockMst.InvStatus = '30'
						WHERE C_poOsApartH1.SiteCode = N'0001' 
							AND C_poOsApartH1.C_ApartStatus = '0' 
							AND C_poOsApartH1.DeptCode = N'508' 
							AND C_poOsApartH1.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY C_poOsApartH1.SiteCode, C_poOsApartH1.WhCode, C_poOsApartH1.ItemCode,mmStockMst.InvStatus, C_poOsApartH1.DeptCode
					UNION ALL
						SELECT C_poOsApartVndMatI.SiteCode, C_poOsApartH2.WhCode, C_poOsApartVndMatI.MatItemCode,mmStockMst.InvStatus AS InvStatus, C_poOsApartH2.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, SUM(ISNULL(C_poOsApartVndMatI.C_IndividualApartQty, 0)) AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_poOsApartVndMatItem C_poOsApartVndMatI WITH(NOLOCK)
						INNER JOIN C_poOsApartHeader C_poOsApartH2 WITH(NOLOCK)
							ON C_poOsApartH2.SiteCode = N'0001' 
							AND C_poOsApartH2.C_ApartNo = C_poOsApartVndMatI.C_ApartNo 
							AND C_poOsApartH2.C_ApartStatus = '0' 
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = C_poOsApartVndMatI.SiteCode
							AND mmStockMst.WhCode = C_poOsApartH2.WhCode
							AND mmStockMst.ItemCode = C_poOsApartVndMatI.MatItemCode
							AND mmStockMst.InvStatus = '30'
						WHERE C_poOsApartVndMatI.SiteCode = N'0001' 
							AND C_poOsApartH2.DeptCode = N'508' 
							AND C_poOsApartH2.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY C_poOsApartVndMatI.SiteCode, C_poOsApartH2.WhCode, C_poOsApartVndMatI.MatItemCode,mmStockMst.InvStatus, C_poOsApartH2.DeptCode
					UNION ALL
						SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
						, SUM(HoldQty) AS HoldQty
						, SUM(AdjustQty) AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
							FROM C_mmHoldMaster WITH(NOLOCK)
						WHERE SiteCode = N'0001'
						AND DeptCode = N'508'
						AND WhCode = N'0508'
						AND InvStatus = N'10'
						 AND Status <> 'C' 
						GROUP BY SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
				)BigSubItem
			INNER JOIN ItemMaster IM WITH(NOLOCK) ON
			IM.ComCode = N'0001' 
			 AND IM.ItemCode = BigSubItem.ItemCode
			--
			--Group By BigSubItem.SiteCode, BigSubItem.WhCode, BigSubItem.ItemCode, BigSubItem.InvStatus, BigSubItem.C_DeptCode, IM.C_ItemJanCode, BigSubItem.C_ReservePieceQty
			Group By BigSubItem.SiteCode, BigSubItem.WhCode, BigSubItem.ItemCode, BigSubItem.InvStatus, BigSubItem.C_DeptCode, IM.C_ItemJanCode
			--
		)SubItemInf
INNER JOIN C_ItemWhMasterH C_ItemWhMasterH WITH(NOLOCK) 
    ON C_ItemWhMasterH.WhCode = SubItemInf.WhCode 
    AND C_ItemWhMasterH.SiteCode = N'0001' 
    AND C_ItemWhMasterH.C_AvailableDateF <= N'20180703' 
    AND C_ItemWhMasterH.C_AvailableDateT >= N'20180703' 
	AND C_ItemWhMasterH.C_ItemJanCode = SubItemInf.C_ItemJanCode
INNER JOIN C_ItemWhMasterI C_ItemWhM WITH(NOLOCK) 
    ON C_ItemWhM.WhCode = C_ItemWhMasterH.WhCode 
    AND C_ItemWhM.SiteCode = N'0001' 
    AND C_ItemWhM.C_ItemJanCode = C_ItemWhMasterH.C_ItemJanCode 
    AND C_ItemWhM.C_MainItemCode = C_ItemWhMasterH.C_MainItemCode 
    AND C_ItemWhM.C_AvailableDateF = C_ItemWhMasterH.C_AvailableDateF 
    AND C_ItemWhM.ItemCode = SubItemInf.TakayamaItemCode 
LEFT JOIN WhMaster WhM WITH(NOLOCK) 
    ON WhM.WhCode = SubItemInf.WhCode 
    AND WhM.ComCode = N'0001' 
LEFT JOIN ItemMaster ItemM WITH(NOLOCK) 
    ON ItemM.ComCode = N'0001' 
    AND ItemM.ItemCode = C_ItemWhM.C_MainItemCode 
LEFT JOIN C_ItemDeptMaster C_ItemDeptM WITH(NOLOCK) 
    ON C_ItemDeptM.ItemCode = C_ItemWhM.C_MainItemCode 
    AND C_ItemDeptM.SiteCode = N'0001' 
    AND C_ItemDeptM.DeptCode = N'508' 
LEFT JOIN CsMaster CsM WITH(NOLOCK) 
    ON CsM.CsCode = C_ItemDeptM.C_ItemMakerCode 
    AND CsM.ComCode = N'0001' 
LEFT JOIN CodeMaster CodeMaster WITH(NOLOCK) 
    ON CodeMaster.ComCode = N'0001' 
    AND CodeMaster.CodeID = 'InvStatus' 
    AND CodeMaster.CodeCode = SubItemInf.InvStatus 
WHERE SubItemInf.C_DeptCode = N'508' 
    AND SubItemInf.SiteCode = N'0001' 
    AND C_ItemDeptM.C_ItemMakerCode = N'2001005' 
	AND SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum <> 0
GROUP BY WhM.C_CenterCode 
	,SubItemInf.WhCode 
	,WhM.WhName 
	,C_ItemDeptM.C_ItemMakerCode 
	,CsM.CsName 
	,C_ItemWhM.C_ItemJanCode 
	,ItemM.ItemName 
	,ItemM.ItemSpec 
	,SubItemInf.InvStatus 
	,CodeMaster.CodeName 
	,C_ItemPackage1Qty 
	,C_ItemWhM.C_MainItemCode 
ORDER BY SubItemInf.WhCode ASC
, C_ItemDeptM.C_ItemMakerCode ASC
, C_ItemWhM.C_ItemJanCode ASC
, C_ItemWhM.C_MainItemCode ASC
, SubItemInf.InvStatus ASC







---------修正中２

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
--「WK-DC制御区分」を設定する。
DECLARE @WK_DCCtrlType NCHAR(1) = NULL;				--WK-DC制御区分
DECLARE @C_WhGubunDC NCHAR(1) = NULL;				--倉庫区分
DECLARE @C_InstructionSkipDC NCHAR(1) = NULL;		--出荷指示省略（画面入力）
DECLARE @C_InstructionSkipEOSDC NCHAR(1) = NULL;	--出荷指示省略（EOS）
DECLARE @C_OhReserveDC NCHAR(1) = NULL;				--在庫引当可否区分（画面入力）
DECLARE @C_OhReserveEosDC NCHAR(1) = NULL;			--在庫引当可否区分（EOS）

DECLARE @OrderAcceptTypeDC NCHAR(4) = NULL;

BEGIN
	SELECT @C_WhGubunDC = WhM.C_WhGubun
		,@C_InstructionSkipDC = WhM.C_InstructionSkip
		,@C_InstructionSkipEOSDC = WhM.C_InstructionSkipEOS
		,@C_OhReserveDC = WhM.C_OhReserve
		,@C_OhReserveEosDC = WhM.C_OhReserveEos
		,@OrderAcceptTypeDC = C_sdAcceptH.OrderAcceptType
	FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
	INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
		ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
		AND C_sdAcceptH.SiteCode = N'0001' 
		AND C_sdAcceptH.DeptCode = N'508' 
		AND C_sdAcceptH.OrderAcceptType <> '3' 
	INNER JOIN WhMaster WhM WITH(NOLOCK)
		ON WhM.WhCode = C_sdAcceptI.WhCode
		AND WhM.ComCode = N'0001'
	WHERE C_sdAcceptI.DeptCode = N'508' 
		AND C_sdAcceptI.SiteCode = N'0001' 
		AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
		AND C_sdAcceptI.IrExpectDate <= N'20180703' 
		AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
		AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
		AND C_sdAcceptI.WhCode = N'0508'
		AND C_sdAcceptI.C_InvStatus = N'10'

	IF(@C_WhGubunDC = '2' OR @C_WhGubunDC = '3')
	BEGIN
		SET @WK_DCCtrlType =
		CASE WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'N'
				THEN '2'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'N'
				THEN '2'
		END
	END
	--ｲ.ｱ.以外の場合
	ELSE
	BEGIN
		SET @WK_DCCtrlType = NULL
	END
END


SELECT WhM.C_CenterCode
, SubItemInf.WhCode
, WhM.WhName
, C_ItemWhM.C_ItemJanCode
, C_ItemWhM.C_MainItemCode
, ''
, ItemM.ItemName
, ItemM.ItemSpec
, SubItemInf.InvStatus
, CodeMaster.CodeName
, ''
, CAST(ItemM.C_ItemPackage1Qty AS BIGINT) AS C_ItemPackage1Qty
, CAST(SUM((isnull(SubItemInf.C_mmStockM_OhQty, 0) / isnull(ItemM.C_ItemPackage1Qty, 1))) AS BIGINT) AS C_CurrentStockBlockNum
, CAST(SUM(isnull(SubItemInf.C_mmStockM_OhQty, 0)) % isnull(ItemM.C_ItemPackage1Qty, 1) AS BIGINT) AS C_CurrentStockIndNum
, SUM(SubItemInf.C_CurrentStockIndTotal)
, SUM(SubItemInf.C_ExpInBlockNum)
, SUM(SubItemInf.C_ExpOutBlockNum)
, CAST(SUM((SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum) / isnull(ItemM.C_ItemPackage1Qty, 1)) AS BIGINT) AS C_ExpStockBlockNum
, CAST(SUM(SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum) % isnull(ItemM.C_ItemPackage1Qty, 1) AS BIGINT) AS C_ExpStockIndNum
, SUM((SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum)) AS C_ExpStockIndTotal
, C_ItemDeptM.C_ItemMakerCode
, CsM.CsName
, MAX(SubItemInf.C_LastArrivalDate)
, MAX(SubItemInf.C_LastShipDate)
, MAX(SubItemInf.C_LastInspDate)
--
, SubItemInf.C_ReservePieceQty
--
FROM
		(
				SELECT BigSubItem.SiteCode AS SiteCode
					, BigSubItem.WhCode AS WhCode 
					, BigSubItem.ItemCode AS TakayamaItemCode
					, BigSubItem.InvStatus AS InvStatus
					, BigSubItem.C_DeptCode AS C_DeptCode
					, '' AS ExpDate
					, SUM(isnull(BigSubItem.C_mmStockM_OhQty, 0)) - SUM(isnull(BigSubItem.HoldQty, 0)) - SUM(isnull(BigSubItem.AdjustQty, 0)) AS C_mmStockM_OhQty
					, CAST(SUM(isnull(BigSubItem.C_mmStockM_OhQty, 0)) - SUM(isnull(BigSubItem.HoldQty, 0)) - SUM(isnull(BigSubItem.AdjustQty, 0)) AS BIGINT) AS C_CurrentStockIndTotal
					, CAST((SUM(isnull(BigSubItem.SubPoOrder_OrderQty, 0) - isnull(BigSubItem.SubPoOrder_InQty, 0))
						+ SUM(isnull(BigSubItem.SubmmRequisitI1_ReqQty, 0) - isnull(BigSubItem.SubmmRequisitI1_C_InQty, 0))
						+ SUM(isnull(BigSubItem.SubpoOsOrderI1_OrderQty, 0) - isnull(BigSubItem.SubpoOsOrderI1_InQty, 0)) + SUM(isnull(BigSubItem.SubpoOsApartVndMatI_C_IndividualApartQty, 0))
						+ SUM(isnull(BigSubItem.SubsdReturnExpI_C_ReturnExpQty, 0))) AS BIGINT) AS C_ExpInBlockNum
					, CAST((SUM(isnull(BigSubItem.SubsdAcceptI_C_PieceQty, 0))
						+ SUM(isnull(BigSubItem.SubpoOsOrderVndMatI_C_IndividualOrderQty, 0)) + SUM(isnull(BigSubItem.C_poOsApartH1_C_IndividualApartQty, 0))) AS BIGINT) AS C_ExpOutBlockNum
					, MAX(BigSubItem.C_LastArrivalDate) AS C_LastArrivalDate
					, MAX(BigSubItem.C_LastShipDate) AS C_LastShipDate
					, MAX(BigSubItem.C_LastInspDate) AS C_LastInspDate
					, IM.C_ItemJanCode
					--
					, SUM(BigSubItem.C_ReservePieceQty) AS C_ReservePieceQty
					--
				FROM
				(
							SELECT A.SiteCode, A.WhCode, A.ItemCode, A.InvStatus, A.C_DeptCode
							, SUM(A.OhQty) - SUM(A.C_ReserveQty) AS C_mmStockM_OhQty
							, 0 AS SubPoOrder_OrderQty
							, 0 AS SubPoOrder_InQty
							, 0 AS SubmmRequisitI1_ReqQty
							, 0 AS SubmmRequisitI1_C_InQty
							, 0 AS SubsdAcceptI_C_PieceQty
							, 0 AS SubsdAcceptI_C_ResultsPieceQty
							, 0 AS SubmmRequisitI2_ReqQty
							, 0 AS SubmmRequisitI2_OutQty
							, 0 AS SubpoOsOrderI1_OrderQty
							, 0 AS SubpoOsOrderI1_InQty
							, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
							, 0 AS SubsdReturnExpI_C_ReturnExpQty
							, 0 AS C_poOsApartH1_C_IndividualApartQty
							, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
							, MAX(A.C_LastArrivalDate) AS C_LastArrivalDate
							, MAX(A.C_LastShipDate)AS C_LastShipDate
							, MAX(A.C_LastInspDate) AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
							FROM C_mmStockMaster A WITH(NOLOCK)
							INNER JOIN C_mmInoutLotSubInfo C_mmInoutLotSubI WITH(NOLOCK)
							ON C_mmInoutLotSubI.LotNo = A.LotNo
							AND C_mmInoutLotSubI.SiteCode = N'0001'
						WHERE A.C_DeptCode = N'508'
							AND A.SiteCode = N'0001'
							AND A.WhCode = N'0508'
							AND A.InvStatus = N'10'
						Group By A.SiteCode, A.C_DeptCode, A.WhCode, A.ItemCode, A.InvStatus
					UNION ALL 
						SELECT poOrderI.SiteCode, poOrderI.WhCode, poOrderI.ItemCode, poOrderI.C_InvStatus, poOrderH.C_DeptCode
						, 0 AS C_mmStockM_OhQty
						, SUM(ISNULL(poOrderI.C_ExpOrderQty, 0)) AS SubPoOrder_OrderQty
						, SUM(ISNULL(poOrderI.InQty, 0)) AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM poOrderItem poOrderI WITH(NOLOCK)
						INNER JOIN poOrderHeader poOrderH WITH(NOLOCK)
							ON poOrderH.OrderNo = poOrderI.OrderNo
							AND poOrderH.SiteCode = N'0001' 
							AND poOrderH.C_poOrderSendStatus = '3'
						WHERE poOrderI.OrderItemStatus <> 'PC' 
							AND poOrderI.SiteCode = N'0001' 
							AND poOrderI.DueDate <= N'20180703' 
							AND poOrderH.C_DeptCode = N'508'
							AND poOrderI.WhCode = N'0508'
							AND poOrderI.C_InvStatus = N'10'
						GROUP BY poOrderI.SiteCode, poOrderI.WhCode, poOrderI.ItemCode, poOrderI.C_InvStatus, poOrderH.C_DeptCode
					UNION ALL
						SELECT mmRequisitI1.SiteCode, mmRequisitI1.WhCodeIn AS WhCode, mmRequisitI1.ItemCode, mmRequisitH1.C_InvStatusIn, mmRequisitH1.C_ReqDeptIn
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, SUM(ISNULL(mmRequisitI1.ReqQty, 0)) AS SubmmRequisitI1_ReqQty
						, SUM(ISNULL(mmRequisitI1.C_InQty, 0)) AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM mmRequisitItem mmRequisitI1 WITH(NOLOCK)
						INNER JOIN mmRequisitHeader mmRequisitH1 WITH(NOLOCK)
							ON mmRequisitH1.ReqNo = mmRequisitI1.ReqNo
							AND mmRequisitH1.SiteCode = N'0001' 
							AND mmRequisitH1.C_ExpectDateIn <= N'20180703' 
							AND ( (mmRequisitH1.SysCase IN('400', '980') AND mmRequisitH1.C_InWhSendStatus IN ('A', 'B')) 
								OR ( mmRequisitH1.SysCase = '500' AND mmRequisitH1.C_OrderedStatus IN ('A', 'B'))) 
						WHERE mmRequisitI1.ReqItemStatus <> 'C' 
							AND mmRequisitI1.SiteCode = N'0001' 
							AND mmRequisitH1.C_ReqDeptIn = N'508'
							AND mmRequisitI1.WhCodeIn = N'0508'
							AND mmRequisitH1.C_InvStatusIn = N'10'
						GROUP BY mmRequisitI1.SiteCode, mmRequisitI1.WhCodeIn, mmRequisitI1.ItemCode, mmRequisitH1.C_InvStatusIn, mmRequisitH1.C_ReqDeptIn
					UNION ALL
						SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, SUM(ISNULL(C_sdAcceptI.C_PieceQty, 0)) AS SubsdAcceptI_C_PieceQty
						, SUM(ISNULL(C_sdAcceptI.C_ResultsPieceQty, 0)) AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
						INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
							ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
							AND C_sdAcceptH.SiteCode = N'0001' 
							AND C_sdAcceptH.DeptCode = N'508' 
							AND C_sdAcceptH.OrderAcceptType <> '3' 
						WHERE C_sdAcceptI.DeptCode = N'508' 
							AND C_sdAcceptI.SiteCode = N'0001' 
							AND C_sdAcceptI.C_OrderPhaseGubun > '1' 
							AND C_sdAcceptI.C_OrderPhaseGubun < '4' 
							AND C_sdAcceptI.IrExpectDate <= N'20180703' 
							AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
							AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
							AND C_sdAcceptI.WhCode = N'0508'
							AND C_sdAcceptI.C_InvStatus = N'10'
						GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
					---------------------------------------------------------------------------------------------------------------------------------------------------------
					UNION ALL
						SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, SUM(ISNULL(C_sdAcceptI.C_PieceQty, 0)) AS SubsdAcceptI_C_PieceQty
						, SUM(ISNULL(C_sdAcceptI.C_ResultsPieceQty, 0)) AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
						, C_sdAcceptI.C_ReservePieceQty
						FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
						INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
							ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
							AND C_sdAcceptH.SiteCode = N'0001' 
							AND C_sdAcceptH.DeptCode = N'508' 
							AND C_sdAcceptH.OrderAcceptType <> '3' 
						INNER JOIN WhMaster WhM WITH(NOLOCK)
							ON WhM.WhCode = C_sdAcceptI.WhCode
							AND WhM.ComCode = N'0001'
						WHERE C_sdAcceptI.DeptCode = N'508' 
							AND C_sdAcceptI.SiteCode = N'0001' 
							AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
							AND C_sdAcceptI.IrExpectDate <= N'20180703' 
							AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
							AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
							AND @WK_DCCtrlType IS NOT NULL
							AND C_sdAcceptI.WhCode = N'0508'
							AND C_sdAcceptI.C_InvStatus = N'10'
						GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, C_sdAcceptI.C_ReservePieceQty
					---------------------------------------------------------------------------------------------------------------------------------------------------------
					UNION ALL
						SELECT poOsOrderI1.SiteCode, poOsOrderI1.WhCode, poOsOrderI1.ItemCode, mmStockMst.InvStatus AS InvStatus, poOsOrderH1.C_DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, SUM(ISNULL(poOsOrderI1.OrderQty, 0)) AS SubpoOsOrderI1_OrderQty
						, SUM(ISNULL(poOsOrderI1.InQty, 0)) AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM poOsOrderItem poOsOrderI1 WITH(NOLOCK)
						INNER JOIN poOsOrderHeader poOsOrderH1 WITH(NOLOCK)
							ON poOsOrderH1.OrderNo = poOsOrderI1.OrderNo
							AND poOsOrderH1.SiteCode = N'0001' 
							AND poOsOrderH1.C_OrderStatus ='5' 
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = poOsOrderH1.SiteCode
							AND mmStockMst.WhCode = poOsOrderI1.WhCode
							AND mmStockMst.ItemCode = poOsOrderI1.ItemCode
							AND mmStockMst.InvStatus = '10'
						WHERE poOsOrderI1.C_OsEndGubun <> '2' 
							AND poOsOrderI1.SiteCode = N'0001' 
							AND poOsOrderI1.DueDate <= N'20180703' 
							AND poOsOrderH1.C_DeptCode = N'508'
							AND poOsOrderI1.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY poOsOrderI1.SiteCode, poOsOrderI1.WhCode, poOsOrderI1.ItemCode, mmStockMst.InvStatus, poOsOrderH1.C_DeptCode
					UNION ALL
						SELECT C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode,mmStockMst.InvStatus AS InvStatus, poOsOrderH2.C_DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, SUM(ISNULL(C_poOsOrderVndMatI.C_IndividualOrderQty, 0)) AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_poOsOrderVndMatItem C_poOsOrderVndMatI WITH(NOLOCK)
						INNER JOIN poOsOrderItem poOsOrderI2 WITH(NOLOCK)
							ON poOsOrderI2.SiteCode = N'0001' 
							AND poOsOrderI2.AltKey = C_poOsOrderVndMatI.AltKey 
							AND poOsOrderI2.C_OsEndGubun <> '2' 
							AND poOsOrderI2.DueDate <= N'20180703' 
						INNER JOIN poOsOrderHeader poOsOrderH2 WITH(NOLOCK) 
							ON poOsOrderH2.SiteCode = N'0001' 
							AND poOsOrderH2.OrderNo = poOsOrderI2.OrderNo 
							AND poOsOrderH2.C_OrderStatus = '5' 
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = poOsOrderI2.SiteCode
							AND mmStockMst.WhCode = poOsOrderI2.WhCode
							AND mmStockMst.ItemCode = poOsOrderI2.ItemCode
							AND mmStockMst.InvStatus = '10'
							LEFT JOIN C_poOsDecisionVndMatItem DVMI WITH(NOLOCK) 
							ON DVMI.SiteCode = N'0001' 
							AND DVMI.DecNo = poOsOrderI2.DecNo 
							AND DVMI.DecSerNo = poOsOrderI2.DecSerNo 
							AND DVMI.MatSerNo = C_poOsOrderVndMatI.MatSerNo 
						WHERE C_poOsOrderVndMatI.SiteCode = N'0001' 
							AND poOsOrderH2.C_DeptCode = N'508'
							AND ISNULL(DVMI.C_OsRevPhaseGubun, '1') = '1'
							AND poOsOrderI2.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode,mmStockMst.InvStatus, poOsOrderH2.C_DeptCode
					UNION ALL
						SELECT C_poOsApartH1.SiteCode, C_poOsApartH1.WhCode, C_poOsApartH1.ItemCode, mmStockMst.InvStatus AS InvStatus, C_poOsApartH1.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, SUM(ISNULL(C_poOsApartH1.C_IndividualApartQty, 0)) AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_poOsApartHeader C_poOsApartH1 WITH(NOLOCK)
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = C_poOsApartH1.SiteCode
							AND mmStockMst.WhCode = C_poOsApartH1.WhCode
							AND mmStockMst.ItemCode = C_poOsApartH1.ItemCode
							AND mmStockMst.InvStatus = '30'
						WHERE C_poOsApartH1.SiteCode = N'0001' 
							AND C_poOsApartH1.C_ApartStatus = '0' 
							AND C_poOsApartH1.DeptCode = N'508' 
							AND C_poOsApartH1.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY C_poOsApartH1.SiteCode, C_poOsApartH1.WhCode, C_poOsApartH1.ItemCode,mmStockMst.InvStatus, C_poOsApartH1.DeptCode
					UNION ALL
						SELECT C_poOsApartVndMatI.SiteCode, C_poOsApartH2.WhCode, C_poOsApartVndMatI.MatItemCode,mmStockMst.InvStatus AS InvStatus, C_poOsApartH2.DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, SUM(ISNULL(C_poOsApartVndMatI.C_IndividualApartQty, 0)) AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
							, 0 AS HoldQty
							, 0 AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
						FROM C_poOsApartVndMatItem C_poOsApartVndMatI WITH(NOLOCK)
						INNER JOIN C_poOsApartHeader C_poOsApartH2 WITH(NOLOCK)
							ON C_poOsApartH2.SiteCode = N'0001' 
							AND C_poOsApartH2.C_ApartNo = C_poOsApartVndMatI.C_ApartNo 
							AND C_poOsApartH2.C_ApartStatus = '0' 
						INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
							ON mmStockMst.SiteCode = C_poOsApartVndMatI.SiteCode
							AND mmStockMst.WhCode = C_poOsApartH2.WhCode
							AND mmStockMst.ItemCode = C_poOsApartVndMatI.MatItemCode
							AND mmStockMst.InvStatus = '30'
						WHERE C_poOsApartVndMatI.SiteCode = N'0001' 
							AND C_poOsApartH2.DeptCode = N'508' 
							AND C_poOsApartH2.WhCode = N'0508'
							AND mmStockMst.InvStatus = N'10'
						GROUP BY C_poOsApartVndMatI.SiteCode, C_poOsApartH2.WhCode, C_poOsApartVndMatI.MatItemCode,mmStockMst.InvStatus, C_poOsApartH2.DeptCode
					UNION ALL
						SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode
						, 0 AS C_mmStockM_OhQty
						, 0 AS SubPoOrder_OrderQty
						, 0 AS SubPoOrder_InQty
						, 0 AS SubmmRequisitI1_ReqQty
						, 0 AS SubmmRequisitI1_C_InQty
						, 0 AS SubsdAcceptI_C_PieceQty
						, 0 AS SubsdAcceptI_C_ResultsPieceQty
						, 0 AS SubmmRequisitI2_ReqQty
						, 0 AS SubmmRequisitI2_OutQty
						, 0 AS SubpoOsOrderI1_OrderQty
						, 0 AS SubpoOsOrderI1_InQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS SubsdReturnExpI_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
						, '' AS C_LastArrivalDate
						, '' AS C_LastShipDate
						, '' AS C_LastInspDate
						, SUM(HoldQty) AS HoldQty
						, SUM(AdjustQty) AS AdjustQty
							--
							, 0 AS C_ReservePieceQty
							--
							FROM C_mmHoldMaster WITH(NOLOCK)
						WHERE SiteCode = N'0001'
						AND DeptCode = N'508'
						AND WhCode = N'0508'
						AND InvStatus = N'10'
						 AND Status <> 'C' 
						GROUP BY SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
				)BigSubItem
			INNER JOIN ItemMaster IM WITH(NOLOCK) ON
			IM.ComCode = N'0001' 
			 AND IM.ItemCode = BigSubItem.ItemCode

			Group By BigSubItem.SiteCode, BigSubItem.WhCode, BigSubItem.ItemCode, BigSubItem.InvStatus, BigSubItem.C_DeptCode, IM.C_ItemJanCode

		)SubItemInf
INNER JOIN C_ItemWhMasterH C_ItemWhMasterH WITH(NOLOCK) 
    ON C_ItemWhMasterH.WhCode = SubItemInf.WhCode 
    AND C_ItemWhMasterH.SiteCode = N'0001' 
    AND C_ItemWhMasterH.C_AvailableDateF <= N'20180703' 
    AND C_ItemWhMasterH.C_AvailableDateT >= N'20180703' 
	AND C_ItemWhMasterH.C_ItemJanCode = SubItemInf.C_ItemJanCode
INNER JOIN C_ItemWhMasterI C_ItemWhM WITH(NOLOCK) 
    ON C_ItemWhM.WhCode = C_ItemWhMasterH.WhCode 
    AND C_ItemWhM.SiteCode = N'0001' 
    AND C_ItemWhM.C_ItemJanCode = C_ItemWhMasterH.C_ItemJanCode 
    AND C_ItemWhM.C_MainItemCode = C_ItemWhMasterH.C_MainItemCode 
    AND C_ItemWhM.C_AvailableDateF = C_ItemWhMasterH.C_AvailableDateF 
    AND C_ItemWhM.ItemCode = SubItemInf.TakayamaItemCode 
LEFT JOIN WhMaster WhM WITH(NOLOCK) 
    ON WhM.WhCode = SubItemInf.WhCode 
    AND WhM.ComCode = N'0001' 
LEFT JOIN ItemMaster ItemM WITH(NOLOCK) 
    ON ItemM.ComCode = N'0001' 
    AND ItemM.ItemCode = C_ItemWhM.C_MainItemCode 
LEFT JOIN C_ItemDeptMaster C_ItemDeptM WITH(NOLOCK) 
    ON C_ItemDeptM.ItemCode = C_ItemWhM.C_MainItemCode 
    AND C_ItemDeptM.SiteCode = N'0001' 
    AND C_ItemDeptM.DeptCode = N'508' 
LEFT JOIN CsMaster CsM WITH(NOLOCK) 
    ON CsM.CsCode = C_ItemDeptM.C_ItemMakerCode 
    AND CsM.ComCode = N'0001' 
LEFT JOIN CodeMaster CodeMaster WITH(NOLOCK) 
    ON CodeMaster.ComCode = N'0001' 
    AND CodeMaster.CodeID = 'InvStatus' 
    AND CodeMaster.CodeCode = SubItemInf.InvStatus 
WHERE SubItemInf.C_DeptCode = N'508' 
    AND SubItemInf.SiteCode = N'0001' 
    AND C_ItemDeptM.C_ItemMakerCode = N'2001005' 
	AND SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum <> 0
GROUP BY WhM.C_CenterCode 
	,SubItemInf.WhCode 
	,WhM.WhName 
	,C_ItemDeptM.C_ItemMakerCode 
	,CsM.CsName 
	,C_ItemWhM.C_ItemJanCode 
	,ItemM.ItemName 
	,ItemM.ItemSpec 
	,SubItemInf.InvStatus 
	,CodeMaster.CodeName 
	,C_ItemPackage1Qty 
	,C_ItemWhM.C_MainItemCode 
	--
	,SubItemInf.C_ReservePieceQty 
	--
ORDER BY SubItemInf.WhCode ASC
, C_ItemDeptM.C_ItemMakerCode ASC
, C_ItemWhM.C_ItemJanCode ASC
, C_ItemWhM.C_MainItemCode ASC
, SubItemInf.InvStatus ASC













---------修正後

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
--「WK-DC制御区分」を設定する。
DECLARE @WK_DCCtrlType NCHAR(1) = NULL;              --WK-DC制御区分
DECLARE @C_WhGubunDC NCHAR(1) = NULL;                --倉庫区分
DECLARE @C_InstructionSkipDC NCHAR(1) = NULL;        --出荷指示省略（画面入力）
DECLARE @C_InstructionSkipEOSDC NCHAR(1) = NULL;     --出荷指示省略（EOS）
DECLARE @C_OhReserveDC NCHAR(1) = NULL;              --在庫引当可否区分（画面入力）
DECLARE @C_OhReserveEosDC NCHAR(1) = NULL;           --在庫引当可否区分（EOS）

DECLARE @OrderAcceptTypeDC NCHAR(4) = NULL;

BEGIN
    SELECT @C_WhGubunDC = WhM.C_WhGubun
        ,@C_InstructionSkipDC = WhM.C_InstructionSkip
        ,@C_InstructionSkipEOSDC = WhM.C_InstructionSkipEOS
        ,@C_OhReserveDC = WhM.C_OhReserve
        ,@C_OhReserveEosDC = WhM.C_OhReserveEos
        ,@OrderAcceptTypeDC = C_sdAcceptH.OrderAcceptType
    FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
    INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
        ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
        AND C_sdAcceptH.SiteCode = N'0001' 
        AND C_sdAcceptH.DeptCode = N'508' 
        AND C_sdAcceptH.OrderAcceptType <> '3' 
    INNER JOIN WhMaster WhM WITH(NOLOCK)
        ON WhM.WhCode = C_sdAcceptI.WhCode
        AND WhM.ComCode = N'0001'
    WHERE C_sdAcceptI.DeptCode = N'508' 
        AND C_sdAcceptI.SiteCode = N'0001' 
        AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
        AND C_sdAcceptI.IrExpectDate <= N'20180704' 
        AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
        AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
        AND C_sdAcceptI.WhCode = N'0508'

    IF(@C_WhGubunDC = '2' OR @C_WhGubunDC = '3')
    BEGIN
        SET @WK_DCCtrlType =
        CASE WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'Y'
                THEN '1'
                WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'Y'
                THEN NULL
                WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'N'
                THEN '2'
                WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'Y'
                THEN '1'
                WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'Y'
                THEN NULL
                WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'N'
                THEN '2'
        END
    END
    --ｲ.ｱ.以外の場合
    ELSE
    BEGIN
        SET @WK_DCCtrlType = NULL
    END
END
SELECT WhM.C_CenterCode
, SubItemInf.WhCode
, WhM.WhName
, C_ItemWhM.C_ItemJanCode
, C_ItemWhM.C_MainItemCode
, ''
, ItemM.ItemName
, ItemM.ItemSpec
, SubItemInf.InvStatus
, CodeMaster.CodeName
, ''
, CAST(ItemM.C_ItemPackage1Qty AS BIGINT) AS C_ItemPackage1Qty
, CAST(SUM((isnull(SubItemInf.C_mmStockM_OhQty, 0) / isnull(ItemM.C_ItemPackage1Qty, 1))) AS BIGINT) AS C_CurrentStockBlockNum
, CAST(SUM(isnull(SubItemInf.C_mmStockM_OhQty, 0)) % isnull(ItemM.C_ItemPackage1Qty, 1) AS BIGINT) AS C_CurrentStockIndNum
, SUM(SubItemInf.C_CurrentStockIndTotal)
, SUM(SubItemInf.C_ExpInBlockNum)
, SUM(SubItemInf.C_ExpOutBlockNum)
, CAST(SUM((SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum) / isnull(ItemM.C_ItemPackage1Qty, 1)) AS BIGINT) AS C_ExpStockBlockNum
, CAST(SUM(SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum) % isnull(ItemM.C_ItemPackage1Qty, 1) AS BIGINT) AS C_ExpStockIndNum
, SUM((SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum - SubItemInf.C_ExpOutBlockNum)) AS C_ExpStockIndTotal
, C_ItemDeptM.C_ItemMakerCode
, CsM.CsName
, MAX(SubItemInf.C_LastArrivalDate)
, MAX(SubItemInf.C_LastShipDate)
, MAX(SubItemInf.C_LastInspDate)
, SUM(SubItemInf.C_ReservePieceQty)
FROM
(
SELECT BigSubItem.SiteCode AS SiteCode
	, BigSubItem.WhCode AS WhCode 
	, BigSubItem.ItemCode AS TakayamaItemCode
	, BigSubItem.InvStatus AS InvStatus
	, BigSubItem.C_DeptCode AS C_DeptCode
	, '' AS ExpDate
	, SUM(isnull(BigSubItem.C_mmStockM_OhQty, 0)) - SUM(isnull(BigSubItem.HoldQty, 0)) - SUM(isnull(BigSubItem.AdjustQty, 0)) AS C_mmStockM_OhQty
	, CAST(SUM(isnull(BigSubItem.C_mmStockM_OhQty, 0)) - SUM(isnull(BigSubItem.HoldQty, 0)) - SUM(isnull(BigSubItem.AdjustQty, 0)) AS BIGINT) AS C_CurrentStockIndTotal
	, CAST((SUM(isnull(BigSubItem.SubPoOrder_OrderQty, 0) - isnull(BigSubItem.SubPoOrder_InQty, 0))
		+ SUM(isnull(BigSubItem.SubmmRequisitI1_ReqQty, 0) - isnull(BigSubItem.SubmmRequisitI1_C_InQty, 0))
		+ SUM(isnull(BigSubItem.SubpoOsOrderI1_OrderQty, 0) - isnull(BigSubItem.SubpoOsOrderI1_InQty, 0)) + SUM(isnull(BigSubItem.SubpoOsApartVndMatI_C_IndividualApartQty, 0))
		+ SUM(isnull(BigSubItem.SubsdReturnExpI_C_ReturnExpQty, 0))) AS BIGINT) AS C_ExpInBlockNum
	, CAST((SUM(isnull(BigSubItem.SubsdAcceptI_C_PieceQty, 0))
		+ SUM(isnull(BigSubItem.SubpoOsOrderVndMatI_C_IndividualOrderQty, 0)) + SUM(isnull(BigSubItem.C_poOsApartH1_C_IndividualApartQty, 0))) AS BIGINT) AS C_ExpOutBlockNum
	, MAX(BigSubItem.C_LastArrivalDate) AS C_LastArrivalDate
	, MAX(BigSubItem.C_LastShipDate) AS C_LastShipDate
	, MAX(BigSubItem.C_LastInspDate) AS C_LastInspDate
	, IM.C_ItemJanCode
, BigSubItem.C_ReservePieceQty AS C_ReservePieceQty
FROM
(
	SELECT A.SiteCode, A.WhCode, A.ItemCode, A.InvStatus, A.C_DeptCode
	, SUM(A.OhQty) - SUM(A.C_ReserveQty) AS C_mmStockM_OhQty
	, 0 AS SubPoOrder_OrderQty
	, 0 AS SubPoOrder_InQty
	, 0 AS SubmmRequisitI1_ReqQty
	, 0 AS SubmmRequisitI1_C_InQty
	, 0 AS SubsdAcceptI_C_PieceQty
	, 0 AS SubsdAcceptI_C_ResultsPieceQty
	, 0 AS SubmmRequisitI2_ReqQty
	, 0 AS SubmmRequisitI2_OutQty
	, 0 AS SubpoOsOrderI1_OrderQty
	, 0 AS SubpoOsOrderI1_InQty
	, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS SubsdReturnExpI_C_ReturnExpQty
	, 0 AS C_poOsApartH1_C_IndividualApartQty
	, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
	, MAX(A.C_LastArrivalDate) AS C_LastArrivalDate
	, MAX(A.C_LastShipDate)AS C_LastShipDate
	, MAX(A.C_LastInspDate) AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
    FROM C_mmStockMaster A WITH(NOLOCK)
    INNER JOIN C_mmInoutLotSubInfo C_mmInoutLotSubI WITH(NOLOCK)
    ON C_mmInoutLotSubI.LotNo = A.LotNo
	AND C_mmInoutLotSubI.SiteCode = N'0001'
WHERE A.C_DeptCode = N'508'
	AND A.SiteCode = N'0001'
	AND A.WhCode = N'0508'
Group By A.SiteCode, A.C_DeptCode, A.WhCode, A.ItemCode, A.InvStatus
UNION ALL 
SELECT poOrderI.SiteCode, poOrderI.WhCode, poOrderI.ItemCode, poOrderI.C_InvStatus, poOrderH.C_DeptCode
, 0 AS C_mmStockM_OhQty
, SUM(ISNULL(poOrderI.C_ExpOrderQty, 0)) AS SubPoOrder_OrderQty
, SUM(ISNULL(poOrderI.InQty, 0)) AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, 0 AS SubsdAcceptI_C_PieceQty
, 0 AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
FROM poOrderItem poOrderI WITH(NOLOCK)
INNER JOIN poOrderHeader poOrderH WITH(NOLOCK)
	ON poOrderH.OrderNo = poOrderI.OrderNo
	AND poOrderH.SiteCode = N'0001' 
	AND poOrderH.C_poOrderSendStatus = '3'
WHERE poOrderI.OrderItemStatus <> 'PC' 
	AND poOrderI.SiteCode = N'0001' 
	AND poOrderI.DueDate <= N'20180704' 
	AND poOrderH.C_DeptCode = N'508'
	AND poOrderI.WhCode = N'0508'
GROUP BY poOrderI.SiteCode, poOrderI.WhCode, poOrderI.ItemCode, poOrderI.C_InvStatus, poOrderH.C_DeptCode
UNION ALL
SELECT mmRequisitI1.SiteCode, mmRequisitI1.WhCodeIn AS WhCode, mmRequisitI1.ItemCode, mmRequisitH1.C_InvStatusIn, mmRequisitH1.C_ReqDeptIn
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, SUM(ISNULL(mmRequisitI1.ReqQty, 0)) AS SubmmRequisitI1_ReqQty
, SUM(ISNULL(mmRequisitI1.C_InQty, 0)) AS SubmmRequisitI1_C_InQty
, 0 AS SubsdAcceptI_C_PieceQty
, 0 AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
FROM mmRequisitItem mmRequisitI1 WITH(NOLOCK)
INNER JOIN mmRequisitHeader mmRequisitH1 WITH(NOLOCK)
	ON mmRequisitH1.ReqNo = mmRequisitI1.ReqNo
	AND mmRequisitH1.SiteCode = N'0001' 
	AND mmRequisitH1.C_ExpectDateIn <= N'20180704' 
	AND ( (mmRequisitH1.SysCase IN('400', '980') AND mmRequisitH1.C_InWhSendStatus IN ('A', 'B')) 
		OR ( mmRequisitH1.SysCase = '500' AND mmRequisitH1.C_OrderedStatus IN ('A', 'B'))) 
WHERE mmRequisitI1.ReqItemStatus <> 'C' 
	AND mmRequisitI1.SiteCode = N'0001' 
	AND mmRequisitH1.C_ReqDeptIn = N'508'
	AND mmRequisitI1.WhCodeIn = N'0508'
GROUP BY mmRequisitI1.SiteCode, mmRequisitI1.WhCodeIn, mmRequisitI1.ItemCode, mmRequisitH1.C_InvStatusIn, mmRequisitH1.C_ReqDeptIn
UNION ALL
SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, SUM(ISNULL(C_sdAcceptI.C_PieceQty, 0)) AS SubsdAcceptI_C_PieceQty
, SUM(ISNULL(C_sdAcceptI.C_ResultsPieceQty, 0)) AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
	ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
	AND C_sdAcceptH.SiteCode = N'0001' 
	AND C_sdAcceptH.DeptCode = N'508' 
	AND C_sdAcceptH.OrderAcceptType <> '3' 
WHERE C_sdAcceptI.DeptCode = N'508' 
	AND C_sdAcceptI.SiteCode = N'0001' 
	AND C_sdAcceptI.C_OrderPhaseGubun > '1' 
	AND C_sdAcceptI.C_OrderPhaseGubun < '4' 
	AND C_sdAcceptI.IrExpectDate <= N'20180704' 
	AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
	AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
	AND C_sdAcceptI.WhCode = N'0508'
GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
UNION ALL
SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, SUM(ISNULL(C_sdAcceptI.C_PieceQty, 0)) AS SubsdAcceptI_C_PieceQty
, SUM(ISNULL(C_sdAcceptI.C_ResultsPieceQty, 0)) AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, C_sdAcceptI.C_ReservePieceQty
FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
	ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
	AND C_sdAcceptH.SiteCode = N'0001' 
	AND C_sdAcceptH.DeptCode = N'508' 
	AND C_sdAcceptH.OrderAcceptType <> '3' 
INNER JOIN WhMaster WhM WITH(NOLOCK)
	ON WhM.WhCode = C_sdAcceptI.WhCode
	AND WhM.ComCode = N'0001' 
WHERE C_sdAcceptI.DeptCode = N'508' 
	AND C_sdAcceptI.SiteCode = N'0001' 
	AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
	AND C_sdAcceptI.IrExpectDate <= N'20180704' 
	AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
	AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
	AND @WK_DCCtrlType IS NOT NULL
	AND C_sdAcceptI.WhCode = N'0508'
GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, C_sdAcceptI.C_ReservePieceQty
UNION ALL
SELECT poOsOrderI1.SiteCode, poOsOrderI1.WhCode, poOsOrderI1.ItemCode, mmStockMst.InvStatus AS InvStatus, poOsOrderH1.C_DeptCode
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, 0 AS SubsdAcceptI_C_PieceQty
, 0 AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, SUM(ISNULL(poOsOrderI1.OrderQty, 0)) AS SubpoOsOrderI1_OrderQty
, SUM(ISNULL(poOsOrderI1.InQty, 0)) AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
FROM poOsOrderItem poOsOrderI1 WITH(NOLOCK)
INNER JOIN poOsOrderHeader poOsOrderH1 WITH(NOLOCK)
	ON poOsOrderH1.OrderNo = poOsOrderI1.OrderNo
	AND poOsOrderH1.SiteCode = N'0001' 
	AND poOsOrderH1.C_OrderStatus ='5' 
INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
	ON mmStockMst.SiteCode = poOsOrderH1.SiteCode
	AND mmStockMst.WhCode = poOsOrderI1.WhCode
	AND mmStockMst.ItemCode = poOsOrderI1.ItemCode
	AND mmStockMst.InvStatus = '10'
WHERE poOsOrderI1.C_OsEndGubun <> '2' 
	AND poOsOrderI1.SiteCode = N'0001' 
	AND poOsOrderI1.DueDate <= N'20180704' 
	AND poOsOrderH1.C_DeptCode = N'508'
	AND poOsOrderI1.WhCode = N'0508'
GROUP BY poOsOrderI1.SiteCode, poOsOrderI1.WhCode, poOsOrderI1.ItemCode, mmStockMst.InvStatus, poOsOrderH1.C_DeptCode
UNION ALL
SELECT C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode,mmStockMst.InvStatus AS InvStatus, poOsOrderH2.C_DeptCode
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, 0 AS SubsdAcceptI_C_PieceQty
, 0 AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, SUM(ISNULL(C_poOsOrderVndMatI.C_IndividualOrderQty, 0)) AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
FROM C_poOsOrderVndMatItem C_poOsOrderVndMatI WITH(NOLOCK)
INNER JOIN poOsOrderItem poOsOrderI2 WITH(NOLOCK)
	ON poOsOrderI2.SiteCode = N'0001' 
	AND poOsOrderI2.AltKey = C_poOsOrderVndMatI.AltKey 
	AND poOsOrderI2.C_OsEndGubun <> '2' 
	AND poOsOrderI2.DueDate <= N'20180704' 
INNER JOIN poOsOrderHeader poOsOrderH2 WITH(NOLOCK) 
	ON poOsOrderH2.SiteCode = N'0001' 
	AND poOsOrderH2.OrderNo = poOsOrderI2.OrderNo 
	AND poOsOrderH2.C_OrderStatus = '5' 
INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
	ON mmStockMst.SiteCode = poOsOrderI2.SiteCode
	AND mmStockMst.WhCode = poOsOrderI2.WhCode
	AND mmStockMst.ItemCode = poOsOrderI2.ItemCode
	AND mmStockMst.InvStatus = '10'
	LEFT JOIN C_poOsDecisionVndMatItem DVMI WITH(NOLOCK) 
	ON DVMI.SiteCode = N'0001' 
	AND DVMI.DecNo = poOsOrderI2.DecNo 
	AND DVMI.DecSerNo = poOsOrderI2.DecSerNo 
	AND DVMI.MatSerNo = C_poOsOrderVndMatI.MatSerNo 
WHERE C_poOsOrderVndMatI.SiteCode = N'0001' 
	AND poOsOrderH2.C_DeptCode = N'508'
	AND ISNULL(DVMI.C_OsRevPhaseGubun, '1') = '1'
	AND poOsOrderI2.WhCode = N'0508'
GROUP BY C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode,mmStockMst.InvStatus, poOsOrderH2.C_DeptCode
UNION ALL
SELECT C_poOsApartH1.SiteCode, C_poOsApartH1.WhCode, C_poOsApartH1.ItemCode, mmStockMst.InvStatus AS InvStatus, C_poOsApartH1.DeptCode
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, 0 AS SubsdAcceptI_C_PieceQty
, 0 AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, SUM(ISNULL(C_poOsApartH1.C_IndividualApartQty, 0)) AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
FROM C_poOsApartHeader C_poOsApartH1 WITH(NOLOCK)
INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
	ON mmStockMst.SiteCode = C_poOsApartH1.SiteCode
	AND mmStockMst.WhCode = C_poOsApartH1.WhCode
	AND mmStockMst.ItemCode = C_poOsApartH1.ItemCode
	AND mmStockMst.InvStatus = '30'
WHERE C_poOsApartH1.SiteCode = N'0001' 
	AND C_poOsApartH1.C_ApartStatus = '0' 
	AND C_poOsApartH1.DeptCode = N'508' 
	AND C_poOsApartH1.WhCode = N'0508'
GROUP BY C_poOsApartH1.SiteCode, C_poOsApartH1.WhCode, C_poOsApartH1.ItemCode,mmStockMst.InvStatus, C_poOsApartH1.DeptCode
UNION ALL
SELECT C_poOsApartVndMatI.SiteCode, C_poOsApartH2.WhCode, C_poOsApartVndMatI.MatItemCode,mmStockMst.InvStatus AS InvStatus, C_poOsApartH2.DeptCode
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, 0 AS SubsdAcceptI_C_PieceQty
, 0 AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, SUM(ISNULL(C_poOsApartVndMatI.C_IndividualApartQty, 0)) AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
	, 0 AS HoldQty
	, 0 AS AdjustQty
	, 0 AS C_ReservePieceQty
FROM C_poOsApartVndMatItem C_poOsApartVndMatI WITH(NOLOCK)
INNER JOIN C_poOsApartHeader C_poOsApartH2 WITH(NOLOCK)
	ON C_poOsApartH2.SiteCode = N'0001' 
	AND C_poOsApartH2.C_ApartNo = C_poOsApartVndMatI.C_ApartNo 
	AND C_poOsApartH2.C_ApartStatus = '0' 
INNER JOIN C_mmStockMaster mmStockMst WITH(NOLOCK)
	ON mmStockMst.SiteCode = C_poOsApartVndMatI.SiteCode
	AND mmStockMst.WhCode = C_poOsApartH2.WhCode
	AND mmStockMst.ItemCode = C_poOsApartVndMatI.MatItemCode
	AND mmStockMst.InvStatus = '30'
WHERE C_poOsApartVndMatI.SiteCode = N'0001' 
	AND C_poOsApartH2.DeptCode = N'508' 
	AND C_poOsApartH2.WhCode = N'0508'
GROUP BY C_poOsApartVndMatI.SiteCode, C_poOsApartH2.WhCode, C_poOsApartVndMatI.MatItemCode,mmStockMst.InvStatus, C_poOsApartH2.DeptCode
UNION ALL
SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode
, 0 AS C_mmStockM_OhQty
, 0 AS SubPoOrder_OrderQty
, 0 AS SubPoOrder_InQty
, 0 AS SubmmRequisitI1_ReqQty
, 0 AS SubmmRequisitI1_C_InQty
, 0 AS SubsdAcceptI_C_PieceQty
, 0 AS SubsdAcceptI_C_ResultsPieceQty
, 0 AS SubmmRequisitI2_ReqQty
, 0 AS SubmmRequisitI2_OutQty
, 0 AS SubpoOsOrderI1_OrderQty
, 0 AS SubpoOsOrderI1_InQty
, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
, 0 AS SubsdReturnExpI_C_ReturnExpQty
, 0 AS C_poOsApartH1_C_IndividualApartQty
, 0 AS SubpoOsApartVndMatI_C_IndividualApartQty
, '' AS C_LastArrivalDate
, '' AS C_LastShipDate
, '' AS C_LastInspDate
, SUM(HoldQty) AS HoldQty
, SUM(AdjustQty) AS AdjustQty
	, 0 AS C_ReservePieceQty
    FROM C_mmHoldMaster WITH(NOLOCK)
WHERE SiteCode = N'0001'
AND DeptCode = N'508'
AND WhCode = N'0508'
 AND Status <> 'C' 
GROUP BY SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
)BigSubItem
INNER JOIN ItemMaster IM WITH(NOLOCK) ON
IM.ComCode = N'0001' 
 AND IM.ItemCode = BigSubItem.ItemCode
Group By BigSubItem.SiteCode, BigSubItem.WhCode, BigSubItem.ItemCode, BigSubItem.InvStatus, BigSubItem.C_DeptCode, IM.C_ItemJanCode, BigSubItem.C_ReservePieceQty
)SubItemInf
INNER JOIN C_ItemWhMasterH C_ItemWhMasterH WITH(NOLOCK) 
    ON C_ItemWhMasterH.WhCode = SubItemInf.WhCode 
    AND C_ItemWhMasterH.SiteCode = N'0001' 
    AND C_ItemWhMasterH.C_AvailableDateF <= N'20180704' 
    AND C_ItemWhMasterH.C_AvailableDateT >= N'20180704' 
	AND C_ItemWhMasterH.C_ItemJanCode = SubItemInf.C_ItemJanCode
INNER JOIN C_ItemWhMasterI C_ItemWhM WITH(NOLOCK) 
    ON C_ItemWhM.WhCode = C_ItemWhMasterH.WhCode 
    AND C_ItemWhM.SiteCode = N'0001' 
    AND C_ItemWhM.C_ItemJanCode = C_ItemWhMasterH.C_ItemJanCode 
    AND C_ItemWhM.C_MainItemCode = C_ItemWhMasterH.C_MainItemCode 
    AND C_ItemWhM.C_AvailableDateF = C_ItemWhMasterH.C_AvailableDateF 
    AND C_ItemWhM.ItemCode = SubItemInf.TakayamaItemCode 
LEFT JOIN WhMaster WhM WITH(NOLOCK) 
    ON WhM.WhCode = SubItemInf.WhCode 
    AND WhM.ComCode = N'0001' 
LEFT JOIN ItemMaster ItemM WITH(NOLOCK) 
    ON ItemM.ComCode = N'0001' 
    AND ItemM.ItemCode = C_ItemWhM.C_MainItemCode 
LEFT JOIN C_ItemDeptMaster C_ItemDeptM WITH(NOLOCK) 
    ON C_ItemDeptM.ItemCode = C_ItemWhM.C_MainItemCode 
    AND C_ItemDeptM.SiteCode = N'0001' 
    AND C_ItemDeptM.DeptCode = N'508' 
LEFT JOIN CsMaster CsM WITH(NOLOCK) 
    ON CsM.CsCode = C_ItemDeptM.C_ItemMakerCode 
    AND CsM.ComCode = N'0001' 
LEFT JOIN CodeMaster CodeMaster WITH(NOLOCK) 
    ON CodeMaster.ComCode = N'0001' 
    AND CodeMaster.CodeID = 'InvStatus' 
    AND CodeMaster.CodeCode = SubItemInf.InvStatus 
WHERE SubItemInf.C_DeptCode = N'508' 
    AND SubItemInf.SiteCode = N'0001' 
    AND C_ItemDeptM.C_ItemMakerCode = N'2001005' 
	AND SubItemInf.C_CurrentStockIndTotal + SubItemInf.C_ExpInBlockNum <> 0
GROUP BY WhM.C_CenterCode 
	,SubItemInf.WhCode 
	,WhM.WhName 
	,C_ItemDeptM.C_ItemMakerCode 
	,CsM.CsName 
	,C_ItemWhM.C_ItemJanCode 
	,ItemM.ItemName 
	,ItemM.ItemSpec 
	,SubItemInf.InvStatus 
	,CodeMaster.CodeName 
	,C_ItemPackage1Qty 
	,C_ItemWhM.C_MainItemCode 
ORDER BY SubItemInf.WhCode ASC
, C_ItemDeptM.C_ItemMakerCode ASC
, C_ItemWhM.C_ItemJanCode ASC
, C_ItemWhM.C_MainItemCode ASC
, SubItemInf.InvStatus ASC






DECLARE @WK_DCCtrlType NCHAR(1) = NULL;				--WK-DC制御区分
DECLARE @C_WhGubunDC NCHAR(1) = NULL;				--倉庫区分
DECLARE @C_InstructionSkipDC NCHAR(1) = NULL;		--出荷指示省略（画面入力）
DECLARE @C_InstructionSkipEOSDC NCHAR(1) = NULL;	--出荷指示省略（EOS）
DECLARE @C_OhReserveDC NCHAR(1) = NULL;				--在庫引当可否区分（画面入力）
DECLARE @C_OhReserveEosDC NCHAR(1) = NULL;			--在庫引当可否区分（EOS）

DECLARE @OrderAcceptTypeDC NCHAR(4) = NULL;
DECLARE @WhCodeDC NCHAR(4) = NULL;

SELECT @C_WhGubunDC = WhM.C_WhGubun
										,@C_InstructionSkipDC = WhM.C_InstructionSkip
										,@C_InstructionSkipEOSDC = WhM.C_InstructionSkipEOS
										,@C_OhReserveDC = WhM.C_OhReserve
										,@C_OhReserveEosDC = WhM.C_OhReserveEos
										,@OrderAcceptTypeDC = C_sdAcceptH.OrderAcceptType
									FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
									INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
										ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
										AND C_sdAcceptH.SiteCode = N'0001' 
										AND C_sdAcceptH.DeptCode = N'508' 
										AND C_sdAcceptH.OrderAcceptType <> '3' 
									INNER JOIN WhMaster WhM WITH(NOLOCK)
										ON WhM.WhCode = C_sdAcceptI.WhCode
										AND WhM.ComCode = N'0001'
									WHERE C_sdAcceptI.DeptCode = N'508' 
										AND C_sdAcceptI.SiteCode = N'0001' 
										AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
										AND C_sdAcceptI.IrExpectDate <= N'20180703' 
										AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
										AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
										AND C_sdAcceptI.WhCode = N'0508'
										AND C_sdAcceptI.C_InvStatus = N'10'
IF(@C_WhGubunDC = '2' OR @C_WhGubunDC = '3')
	BEGIN
		SET @WK_DCCtrlType =
		CASE WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'N'
				THEN '2'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'N'
				THEN '2'
		END
	END
	--ｲ.ｱ.以外の場合
	ELSE
	BEGIN
		SET @WK_DCCtrlType = NULL
	END





















---------そもそも


SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT ItemReserveInf.ItemCode AS ItemCode
	, ItemMaster.ItemName AS ItemName
    , RIDM.C_ReserveIDName AS C_ReserveID
	, ExpOrderInItemNum
	, ExpOtherInItemNum
    , ExpOrderInItemNum + ExpOtherInItemNum AS ExpInItemNum
    ,CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN ItemReserveInf.AvaStockItemNum END AS StockItemNum
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN 0 ELSE ISNULL(C_mmHoldMaster_Q.HoldQty, 0) END AS HoldItemNum
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN 0 ELSE ISNULL(C_mmHoldMaster_Q.AdjustQty, 0) END AS AdjustQty
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN ReserveItemQty ELSE 0 END AS ReserveItemQty
    , '' AS AvaStockItemNum
    , ''
    , ''
FROM
(
SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
	, CAST(SUM(ISNULL(poOrderItem_OrderQty, 0) - ISNULL(poOrderItem_InQty, 0)) + SUM(ISNULL(poOsOrderItem_OrderQty, 0) - ISNULL(poOsOrderItem_InQty, 0)) AS BIGINT) AS ExpOrderInItemNum
		 , CAST(SUM(ISNULL(mmRequisitItem1_ReqQty, 0) - ISNULL(mmRequisitItem1_C_InQty, 0)) + SUM(ISNULL(C_sdReturnExpItem_C_ReturnExpQty, 0)) + SUM(ISNULL(C_poOsApartVndMatI_C_IndividualApartQty, 0)) AS BIGINT) AS ExpOtherInItemNum
		 , CAST(SUM(ISNULL(C_sdAcceptItem1_C_PieceQty, 0) - ISNULL(C_sdAcceptItem1_C_ReservePieceQty, 0)) AS BIGINT) AS DiffItemNum
    --, CASE ISNULL(C_ReserveID, '') WHEN '' THEN CAST(ISNULL(C_mmStockMaster.OhQty, 0) - ISNULL(C_mmStockMaster.C_ReserveQty, 0) - ISNULL(C_mmHoldMaster_Q.HoldQty, 0) AS BIGINT) ELSE '-' END AS AvaStockItemNum
	, SUM(ISNULL(HoldQty, 0)) AS HoldItemNum
	, SUM(ISNULL(AdjustQty, 0)) AS AdjustQty
	, SUM(ISNULL(C_ReserveQty, 0)) AS ReserveItemQty
	, CAST(SUM(ISNULL(C_sdAcceptItem3_C_ReservePieceQty, 0)) AS BIGINT) AS InsItemQty
	, CAST((SUM(ISNULL(mmRequisitItem2_ReqQty, 0) - ISNULL(mmRequisitItem2_OutQty, 0))
		+ SUM(ISNULL(SubpoOsOrderVndMatI_C_IndividualOrderQty, 0)) + SUM(ISNULL(C_poOsApartH1_C_IndividualApartQty, 0))) AS BIGINT) AS ExpOutItemNum
	, CAST(SUM(ISNULL(OhQty, 0)) AS BIGINT) AS AvaStockItemNum
FROM
(
	SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode, ISNULL(C_ReserveID, '') AS C_ReserveID
	, SUM(ISNULL(HoldQty, 0)) AS HoldQty
	, SUM(ISNULL(AdjustQty, 0)) AS AdjustQty
	, 0 AS poOrderItem_OrderQty
	, 0 AS poOrderItem_InQty
	, 0 AS poOsOrderItem_OrderQty
	, 0 AS poOsOrderItem_InQty
	, 0 AS mmRequisitItem1_ReqQty
	, 0 AS mmRequisitItem1_C_InQty
	, 0 AS C_sdReturnExpItem_C_ReturnExpQty
	, 0 AS C_poOsApartH1_C_IndividualApartQty
	, 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	, 0 AS C_sdAcceptItem1_C_PieceQty
	, 0 AS C_sdAcceptItem1_C_ReservePieceQty
	, 0 AS C_sdAcceptItem2_C_PieceQty
	, 0 AS C_sdAcceptItem2_C_ReservePieceQty
	, 0 AS C_sdAcceptItem3_C_PieceQty
	, 0 AS C_sdAcceptItem3_C_ReservePieceQty
	, 0 AS mmRequisitItem2_ReqQty
	, 0 AS mmRequisitItem2_OutQty
	, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
    FROM C_mmHoldMaster
WHERE SiteCode = N'0001'
AND DeptCode = N'508'
AND WhCode = N'0508'
AND InvStatus = N'10'
 AND Status <> 'C' 
GROUP BY SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
UNION ALL
    SELECT poOrderItem.SiteCode, poOrderItem.WhCode, poOrderItem.ItemCode, poOrderItem.C_InvStatus, poOrderHeader.C_DeptCode, ISNULL(poOrderHeader.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	, 0 AS AdjustQty
	 , SUM(ISNULL(poOrderItem.C_ExpOrderQty, 0)) AS poOrderItem_OrderQty
	 , SUM(ISNULL(poOrderItem.InQty, 0)) AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM poOrderItem poOrderItem
     INNER JOIN poOrderHeader poOrderHeader
         ON poOrderHeader.OrderNo = poOrderItem.OrderNo
         AND poOrderHeader.SiteCode = N'0001'
         AND poOrderHeader.C_poOrderSendStatus = '3'
     WHERE poOrderItem.SiteCode = N'0001'
         AND poOrderItem.OrderItemStatus <> 'PC'
         AND poOrderItem.DueDate <= N'20180704'
         AND poOrderItem.C_DeptCode = N'508'
         AND poOrderItem.WhCode = N'0508'
         AND poOrderItem.C_InvStatus = N'10'
     GROUP BY poOrderItem.SiteCode, poOrderItem.WhCode, poOrderItem.ItemCode, poOrderItem.C_InvStatus, poOrderHeader.C_DeptCode, poOrderHeader.C_ReserveID
 UNION ALL
     SELECT poOsOrderItem.SiteCode, poOsOrderItem.WhCode, poOsOrderItem.ItemCode, mmStockMst.InvStatus, poOsOrderHeader.C_DeptCode, ISNULL(poOsOrderItem.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , SUM(ISNULL(poOsOrderItem.OrderQty, 0)) AS poOsOrderItem_OrderQty
	 , SUM(ISNULL(poOsOrderItem.InQty, 0)) AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM poOsOrderItem poOsOrderItem
     INNER JOIN poOsOrderHeader poOsOrderHeader
         ON poOsOrderHeader.OrderNo = poOsOrderItem.OrderNo
         AND poOsOrderHeader.SiteCode = N'0001'
         AND poOsOrderHeader.C_OrderStatus > '4'
     INNER JOIN C_mmStockMaster mmStockMst
         ON mmStockMst.SiteCode = poOsOrderHeader.SiteCode
         AND mmStockMst.WhCode = poOsOrderItem.WhCode
         AND mmStockMst.ItemCode = poOsOrderItem.ItemCode
         AND mmStockMst.InvStatus = '10'
     WHERE poOsOrderItem.SiteCode = N'0001'
         AND poOsOrderItem.C_OsEndGubun <> '2'
         AND poOsOrderItem.DueDate <= N'20180704'
         AND poOsOrderHeader.C_DeptCode = N'508'
         AND poOsOrderItem.WhCode = N'0508'
         AND mmStockMst.InvStatus = N'10'
     GROUP BY poOsOrderItem.SiteCode, poOsOrderItem.WhCode, poOsOrderItem.ItemCode, mmStockMst.InvStatus, poOsOrderHeader.C_DeptCode, poOsOrderItem.C_ReserveID
 UNION ALL
     SELECT mmRequisitItem1.SiteCode, mmRequisitItem1.WhCodeIn AS WhCode, mmRequisitItem1.ItemCode, mmRequisitHeader1.C_InvStatusIn, mmRequisitHeader1.C_ReqDeptIn, ISNULL(mmRequisitHeader1.C_ReserveIDIn, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , SUM(ISNULL(mmRequisitItem1.ReqQty, 0)) AS mmRequisitItem1_ReqQty
	 , SUM(ISNULL(mmRequisitItem1.C_InQty, 0)) AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM mmRequisitItem mmRequisitItem1
     INNER JOIN mmRequisitHeader mmRequisitHeader1
         ON mmRequisitHeader1.ReqNo = mmRequisitItem1.ReqNo
         AND mmRequisitHeader1.SiteCode = N'0001'
         AND mmRequisitHeader1.C_ExpectDateIn <= N'20180704'
         AND ( (mmRequisitHeader1.SysCase IN('400', '980') AND mmRequisitHeader1.C_InWhSendStatus IN ('A', 'B')) 
            OR ( mmRequisitHeader1.SysCase = '500' AND mmRequisitHeader1.C_OrderedStatus IN ('A', 'B'))) 
     WHERE mmRequisitItem1.SiteCode = N'0001'
         AND mmRequisitItem1.ReqItemStatus <> 'C'
         AND mmRequisitHeader1.C_ReqDeptIn = N'508'
         AND mmRequisitItem1.WhCodeIn = N'0508'
         AND mmRequisitHeader1.C_InvStatusIn = N'10'
     GROUP BY mmRequisitItem1.SiteCode, mmRequisitItem1.WhCodeIn, mmRequisitItem1.ItemCode, mmRequisitHeader1.C_InvStatusIn, mmRequisitHeader1.C_ReqDeptIn, mmRequisitHeader1.C_ReserveIDIn
 UNION ALL
 SELECT C_sdAcceptItem1.SiteCode, C_sdAcceptItem1.WhCode, C_sdAcceptItem1.ItemCode, C_sdAcceptItem1.C_InvStatus, C_sdAcceptHeader1.DeptCode, ISNULL(C_sdAcceptItem1.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , SUM(ISNULL(C_sdAcceptItem1.C_PieceQty, 0)) AS C_sdAcceptItem1_C_PieceQty
	 , SUM(ISNULL(C_sdAcceptItem1.C_ReservePieceQty, 0)) AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM C_sdAcceptItem C_sdAcceptItem1
     INNER JOIN C_sdAcceptHeader C_sdAcceptHeader1
         ON C_sdAcceptHeader1.OrderAcceptNo = C_sdAcceptItem1.C_OrderAcceptNo
         AND C_sdAcceptHeader1.SiteCode = N'0001'
         AND C_sdAcceptHeader1.DeptCode = N'508'
         AND C_sdAcceptHeader1.OrderAcceptType <> '3'
     WHERE C_sdAcceptItem1.SiteCode = N'0001'
         AND C_sdAcceptItem1.DeptCode = N'508'
         AND C_sdAcceptItem1.C_OrderPhaseGubun > '1'
         AND C_sdAcceptItem1.C_OrderPhaseGubun < '4'
         AND C_sdAcceptItem1.IrExpectDate <= N'20180704'
         AND C_sdAcceptItem1.WhCode = N'0508'
         AND C_sdAcceptItem1.C_InvStatus = N'10'
     GROUP BY C_sdAcceptItem1.SiteCode, C_sdAcceptItem1.WhCode, C_sdAcceptItem1.ItemCode, C_sdAcceptItem1.C_InvStatus, C_sdAcceptHeader1.DeptCode, C_sdAcceptItem1.C_ReserveID
 UNION ALL
     SELECT C_sdAcceptItem2.SiteCode, C_sdAcceptItem2.WhCode, C_sdAcceptItem2.ItemCode, C_sdAcceptItem2.C_InvStatus, C_sdAcceptHeader2.DeptCode, ISNULL(C_sdAcceptItem2.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , SUM(ISNULL(C_sdAcceptItem2.C_PieceQty, 0)) AS C_sdAcceptItem2_C_PieceQty
	 , SUM(ISNULL(C_sdAcceptItem2.C_ReservePieceQty, 0)) AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM C_sdAcceptItem C_sdAcceptItem2
     INNER JOIN C_sdAcceptHeader C_sdAcceptHeader2
         ON C_sdAcceptHeader2.OrderAcceptNo = C_sdAcceptItem2.C_OrderAcceptNo
         AND C_sdAcceptHeader2.SiteCode = N'0001'
         AND C_sdAcceptHeader2.DeptCode = N'508'
         AND C_sdAcceptHeader2.OrderAcceptType <> '3'
     WHERE C_sdAcceptItem2.SiteCode = N'0001'
         AND C_sdAcceptItem2.DeptCode = N'508'
         AND C_sdAcceptItem2.C_OrderPhaseGubun IN('4', '5')
         AND C_sdAcceptItem2.IrExpectDate <= N'20180704'
         AND C_sdAcceptItem2.WhCode = N'0508'
         AND C_sdAcceptItem2.C_InvStatus = N'10'
     GROUP BY C_sdAcceptItem2.SiteCode, C_sdAcceptItem2.WhCode, C_sdAcceptItem2.ItemCode, C_sdAcceptItem2.C_InvStatus, C_sdAcceptHeader2.DeptCode, C_sdAcceptItem2.C_ReserveID
 UNION ALL
     SELECT C_sdAcceptItem3.SiteCode, C_sdAcceptItem3.WhCode, C_sdAcceptItem3.ItemCode, C_sdAcceptItem3.C_InvStatus, C_sdAcceptHeader3.DeptCode, ISNULL(C_sdAcceptItem3.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , SUM(ISNULL(C_sdAcceptItem3.C_PieceQty, 0)) AS C_sdAcceptItem3_C_PieceQty
	 , SUM(ISNULL(C_sdAcceptItem3.C_ReservePieceQty, 0)) AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM C_sdAcceptItem C_sdAcceptItem3
     INNER JOIN C_sdAcceptHeader C_sdAcceptHeader3
         ON C_sdAcceptHeader3.OrderAcceptNo = C_sdAcceptItem3.C_OrderAcceptNo
         AND C_sdAcceptHeader3.SiteCode = N'0001'
         AND C_sdAcceptHeader3.DeptCode = N'508'
         AND C_sdAcceptHeader3.OrderAcceptType <> '3'
     WHERE C_sdAcceptItem3.SiteCode = N'0001'
         AND C_sdAcceptItem3.DeptCode = N'508'
         AND C_sdAcceptItem3.C_OrderPhaseGubun = '5' 
         AND C_sdAcceptItem3.IrExpectDate <= N'20180704'
         AND C_sdAcceptItem3.WhCode = N'0508'
         AND C_sdAcceptItem3.C_InvStatus = N'10'
     GROUP BY C_sdAcceptItem3.SiteCode, C_sdAcceptItem3.WhCode, C_sdAcceptItem3.ItemCode, C_sdAcceptItem3.C_InvStatus, C_sdAcceptHeader3.DeptCode, C_sdAcceptItem3.C_ReserveID
 UNION ALL
     SELECT mmRequisitItem2.SiteCode, mmRequisitItem2.WhCode, mmRequisitItem2.ItemCode, mmRequisitHeader2.C_InvStatusOut, mmRequisitHeader2.C_ReqDeptOut, ISNULL(mmRequisitHeader2.C_ReserveIDOut, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , SUM(ISNULL(mmRequisitItem2.ReqQty, 0)) AS mmRequisitItem2_ReqQty
	 , SUM(ISNULL(mmRequisitItem2.OutQty, 0)) AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM mmRequisitItem mmRequisitItem2
     INNER JOIN mmRequisitHeader mmRequisitHeader2
         ON 
         (( mmRequisitHeader2.SysCase IN('400', '300') AND mmRequisitHeader2.C_OutWhSendStatus IN ('A', 'B'))
           OR ( mmRequisitHeader2.SysCase = '500' AND mmRequisitHeader2.C_OrderedStatus IN ('A', 'B'))
           OR ( mmRequisitHeader2.SysCase = '360' AND mmRequisitHeader2.C_ReqSendStatus IN ('A', 'B'))
           OR ( mmRequisitHeader2.SysCase = '300' AND mmRequisitHeader2.C_DisposeStatus IN ('1', '2', '3', '31', '4')))
         AND mmRequisitHeader2.ReqNo = mmRequisitItem2.ReqNo
         AND mmRequisitHeader2.ExpectDate <= N'20180704'
     WHERE mmRequisitItem2.SiteCode = N'0001'
         AND mmRequisitHeader2.C_ReqDeptOut = N'508'
         AND mmRequisitItem2.WhCode = N'0508'
         AND mmRequisitHeader2.C_InvStatusOut = N'10'
     GROUP BY mmRequisitItem2.SiteCode, mmRequisitItem2.WhCode, mmRequisitItem2.ItemCode, mmRequisitHeader2.C_InvStatusOut, mmRequisitHeader2.C_ReqDeptOut, mmRequisitHeader2.C_ReserveIDOut
 UNION ALL
     SELECT C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode, mmStockMst.InvStatus AS InvStatus, poOsOrderH2.C_DeptCode, '' AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , SUM(ISNULL(C_poOsOrderVndMatI.C_IndividualOrderQty, 0)) AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
     FROM C_poOsOrderVndMatItem C_poOsOrderVndMatI
     INNER JOIN poOsOrderItem poOsOrderI2
         ON poOsOrderI2.SiteCode = N'0001'
         AND poOsOrderI2.AltKey = C_poOsOrderVndMatI.AltKey
         AND poOsOrderI2.C_OsEndGubun <> '2'
         AND poOsOrderI2.DueDate <= N'20180704'
     INNER JOIN poOsOrderHeader poOsOrderH2
         ON poOsOrderH2.SiteCode = N'0001'
         AND poOsOrderH2.OrderNo = poOsOrderI2.OrderNo
         AND poOsOrderH2.C_OrderStatus > '4'
     INNER JOIN C_mmStockMaster mmStockMst
         ON mmStockMst.SiteCode = poOsOrderI2.SiteCode
         AND mmStockMst.WhCode = poOsOrderI2.WhCode
         AND mmStockMst.ItemCode = poOsOrderI2.ItemCode
         AND mmStockMst.InvStatus = '10'
     WHERE C_poOsOrderVndMatI.SiteCode = N'0001'
         AND poOsOrderH2.C_DeptCode = N'508'
         AND poOsOrderI2.WhCode = N'0508'
         AND mmStockMst.InvStatus = N'10'
     GROUP BY C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode, mmStockMst.InvStatus, poOsOrderH2.C_DeptCode
UNION ALL
SELECT SiteCode, WhCode, ItemCode, InvStatus, C_DeptCode, '' AS C_ReserveID
, 0 AS HoldQty
 , 0 AS AdjustQty
 , 0 AS poOrderItem_OrderQty
 , 0 AS poOrderItem_InQty
 , 0 AS poOsOrderItem_OrderQty
 , 0 AS poOsOrderItem_InQty
 , 0 AS mmRequisitItem1_ReqQty
 , 0 AS mmRequisitItem1_C_InQty
 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
 , 0 AS C_poOsApartH1_C_IndividualApartQty
 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
 , 0 AS C_sdAcceptItem1_C_PieceQty
 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
 , 0 AS C_sdAcceptItem2_C_PieceQty
 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
 , 0 AS C_sdAcceptItem3_C_PieceQty
 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
 , 0 AS mmRequisitItem2_ReqQty
 , 0 AS mmRequisitItem2_OutQty
 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
 , SUM(OhQty)AS OhQty
 , SUM(C_ReserveQty) AS C_ReserveQty
FROM C_mmStockMaster 
    WHERE SiteCode = N'0001'
        AND C_DeptCode = N'508'
        AND WhCode = N'0508'
        AND InvStatus = N'10'
Group By SiteCode, WhCode, ItemCode, InvStatus, C_DeptCode
)SubItemReserve
GROUP BY SubItemReserve.SiteCode, SubItemReserve.WhCode, SubItemReserve.ItemCode,SubItemReserve.InvStatus, SubItemReserve.DeptCode,SubItemReserve.C_ReserveID
)ItemReserveInf
INNER JOIN C_ItemWhMasterH C_ItemWhMasterH
	ON C_ItemWhMasterH.WhCode = ItemReserveInf.WhCode
    AND C_ItemWhMasterH.SiteCode = N'0001'
    AND C_ItemWhMasterH.C_ItemJanCode = N'45178764'
    AND C_ItemWhMasterH.C_MainItemCode = N'0010051052200'
    AND C_ItemWhMasterH.C_AvailableDateF <= N'20180704'
    AND C_ItemWhMasterH.C_AvailableDateT >= N'20180704'
INNER JOIN C_ItemWhMasterI C_ItemWhMasterI
    ON C_ItemWhMasterI.WhCode = C_ItemWhMasterH.WhCode
    AND C_ItemWhMasterI.SiteCode = N'0001'
    AND C_ItemWhMasterI.C_ItemJanCode = C_ItemWhMasterH.C_ItemJanCode
    AND C_ItemWhMasterI.C_MainItemCode = C_ItemWhMasterH.C_MainItemCode
    AND C_ItemWhMasterI.C_AvailableDateF = C_ItemWhMasterH.C_AvailableDateF
    AND C_ItemWhMasterI.ItemCode = ItemReserveInf.ItemCode
LEFT JOIN ItemMaster ItemMaster
    ON ItemMaster.ItemCode = ItemReserveInf.ItemCode
    AND ItemMaster.ComCode = N'0001'
LEFT JOIN (
	SELECT SiteCode
		, WhCode
		, ItemCode
		, InvStatus
		, SUM(HoldQty)AS HoldQty
		, SUM(AdjustQty)AS AdjustQty
		, C_ReserveID
    FROM C_mmHoldMaster
    WHERE SiteCode = N'0001'
        AND DeptCode = N'508'
        AND WhCode = N'0508'
        AND InvStatus = N'10'
    GROUP BY SiteCode
			, WhCode
			, ItemCode
			, C_ReserveID
			, InvStatus) AS C_mmHoldMaster_Q
    ON C_mmHoldMaster_Q.WhCode = ItemReserveInf.WhCode
    AND C_mmHoldMaster_Q.ItemCode = ItemReserveInf.ItemCode
    AND C_mmHoldMaster_Q.InvStatus = ItemReserveInf.InvStatus
    AND C_mmHoldMaster_Q.C_ReserveID = ItemReserveInf.C_ReserveID
LEFT JOIN C_ReserveIDMaster RIDM
    ON RIDM.SiteCode =ItemReserveInf.SiteCode
    AND RIDM.C_ReserveID = ItemReserveInf.C_ReserveID
ORDER BY ItemReserveInf.ItemCode ASC
	, ItemMaster.ItemName ASC
	, ItemReserveInf.C_ReserveID ASC















---------修正始め


SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

--「WK-DC制御区分」を設定する。
DECLARE @WK_DCCtrlType NCHAR(1) = NULL;				--WK-DC制御区分
DECLARE @C_WhGubunDC NCHAR(1) = NULL;				--倉庫区分
DECLARE @C_InstructionSkipDC NCHAR(1) = NULL;		--出荷指示省略（画面入力）
DECLARE @C_InstructionSkipEOSDC NCHAR(1) = NULL;	--出荷指示省略（EOS）
DECLARE @C_OhReserveDC NCHAR(1) = NULL;				--在庫引当可否区分（画面入力）
DECLARE @C_OhReserveEosDC NCHAR(1) = NULL;			--在庫引当可否区分（EOS）

DECLARE @OrderAcceptTypeDC NCHAR(4) = NULL;

BEGIN
	SELECT @C_WhGubunDC = WhM.C_WhGubun
		,@C_InstructionSkipDC = WhM.C_InstructionSkip
		,@C_InstructionSkipEOSDC = WhM.C_InstructionSkipEOS
		,@C_OhReserveDC = WhM.C_OhReserve
		,@C_OhReserveEosDC = WhM.C_OhReserveEos
		,@OrderAcceptTypeDC = C_sdAcceptH.OrderAcceptType
	FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
	INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
		ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
		AND C_sdAcceptH.SiteCode = N'0001' 
		AND C_sdAcceptH.DeptCode = N'508' 
		AND C_sdAcceptH.OrderAcceptType <> '3' 
	INNER JOIN WhMaster WhM WITH(NOLOCK)
		ON WhM.WhCode = C_sdAcceptI.WhCode
		AND WhM.ComCode = N'0001'
	WHERE C_sdAcceptI.DeptCode = N'508' 
		AND C_sdAcceptI.SiteCode = N'0001' 
		AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
		AND C_sdAcceptI.IrExpectDate <= N'20180703' 
		AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
		AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
		AND C_sdAcceptI.WhCode = N'0508'
		AND C_sdAcceptI.C_InvStatus = N'10'

	IF(@C_WhGubunDC = '2' OR @C_WhGubunDC = '3')
	BEGIN
		SET @WK_DCCtrlType =
		CASE WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'N'
				THEN '2'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'Y'
				THEN '1'
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'Y'
				THEN NULL
				WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'N'
				THEN '2'
		END
	END
	--ｲ.ｱ.以外の場合
	ELSE
	BEGIN
		SET @WK_DCCtrlType = NULL
	END
END


SELECT ItemReserveInf.ItemCode AS ItemCode
	, ItemMaster.ItemName AS ItemName
    , RIDM.C_ReserveIDName AS C_ReserveID
	, ExpOrderInItemNum
	, ExpOtherInItemNum
    , ExpOrderInItemNum + ExpOtherInItemNum AS ExpInItemNum
    ,CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN ItemReserveInf.AvaStockItemNum END AS StockItemNum
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN 0 ELSE ISNULL(C_mmHoldMaster_Q.HoldQty, 0) END AS HoldItemNum
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN 0 ELSE ISNULL(C_mmHoldMaster_Q.AdjustQty, 0) END AS AdjustQty
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN ReserveItemQty ELSE 0 END AS ReserveItemQty
    , '' AS AvaStockItemNum
    , ''
    , ''
	--
	, ItemReserveInf.C_ReservePieceQty
	--
FROM
	(
		SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
			, CAST(SUM(ISNULL(poOrderItem_OrderQty, 0) - ISNULL(poOrderItem_InQty, 0)) + SUM(ISNULL(poOsOrderItem_OrderQty, 0) - ISNULL(poOsOrderItem_InQty, 0)) AS BIGINT) AS ExpOrderInItemNum
				 , CAST(SUM(ISNULL(mmRequisitItem1_ReqQty, 0) - ISNULL(mmRequisitItem1_C_InQty, 0)) + SUM(ISNULL(C_sdReturnExpItem_C_ReturnExpQty, 0)) + SUM(ISNULL(C_poOsApartVndMatI_C_IndividualApartQty, 0)) AS BIGINT) AS ExpOtherInItemNum
				 , CAST(SUM(ISNULL(C_sdAcceptItem1_C_PieceQty, 0) - ISNULL(C_sdAcceptItem1_C_ReservePieceQty, 0)) AS BIGINT) AS DiffItemNum
			--, CASE ISNULL(C_ReserveID, '') WHEN '' THEN CAST(ISNULL(C_mmStockMaster.OhQty, 0) - ISNULL(C_mmStockMaster.C_ReserveQty, 0) - ISNULL(C_mmHoldMaster_Q.HoldQty, 0) AS BIGINT) ELSE '-' END AS AvaStockItemNum
			, SUM(ISNULL(HoldQty, 0)) AS HoldItemNum
			, SUM(ISNULL(AdjustQty, 0)) AS AdjustQty
			, SUM(ISNULL(C_ReserveQty, 0)) AS ReserveItemQty
			, CAST(SUM(ISNULL(C_sdAcceptItem3_C_ReservePieceQty, 0)) AS BIGINT) AS InsItemQty
			, CAST((SUM(ISNULL(mmRequisitItem2_ReqQty, 0) - ISNULL(mmRequisitItem2_OutQty, 0))
				+ SUM(ISNULL(SubpoOsOrderVndMatI_C_IndividualOrderQty, 0)) + SUM(ISNULL(C_poOsApartH1_C_IndividualApartQty, 0))) AS BIGINT) AS ExpOutItemNum
			, CAST(SUM(ISNULL(OhQty, 0)) AS BIGINT) AS AvaStockItemNum
			--
			, SUM(SubItemReserve.C_ReservePieceQty) AS C_ReservePieceQty
			--
		FROM
			(
						SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode, ISNULL(C_ReserveID, '') AS C_ReserveID
						, SUM(ISNULL(HoldQty, 0)) AS HoldQty
						, SUM(ISNULL(AdjustQty, 0)) AS AdjustQty
						, 0 AS poOrderItem_OrderQty
						, 0 AS poOrderItem_InQty
						, 0 AS poOsOrderItem_OrderQty
						, 0 AS poOsOrderItem_InQty
						, 0 AS mmRequisitItem1_ReqQty
						, 0 AS mmRequisitItem1_C_InQty
						, 0 AS C_sdReturnExpItem_C_ReturnExpQty
						, 0 AS C_poOsApartH1_C_IndividualApartQty
						, 0 AS C_poOsApartVndMatI_C_IndividualApartQty
						, 0 AS C_sdAcceptItem1_C_PieceQty
						, 0 AS C_sdAcceptItem1_C_ReservePieceQty
						, 0 AS C_sdAcceptItem2_C_PieceQty
						, 0 AS C_sdAcceptItem2_C_ReservePieceQty
						, 0 AS C_sdAcceptItem3_C_PieceQty
						, 0 AS C_sdAcceptItem3_C_ReservePieceQty
						, 0 AS mmRequisitItem2_ReqQty
						, 0 AS mmRequisitItem2_OutQty
						, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
						, 0 AS OhQty
						, 0 AS C_ReserveQty
						--
						, 0 AS C_ReservePieceQty
						--
						FROM C_mmHoldMaster
					WHERE SiteCode = N'0001'
					AND DeptCode = N'508'
					AND WhCode = N'0508'
					AND InvStatus = N'10'
					 AND Status <> 'C' 
					GROUP BY SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
				UNION ALL
					SELECT poOrderItem.SiteCode, poOrderItem.WhCode, poOrderItem.ItemCode, poOrderItem.C_InvStatus, poOrderHeader.C_DeptCode, ISNULL(poOrderHeader.C_ReserveID, '') AS C_ReserveID
					 , 0 AS HoldQty
					, 0 AS AdjustQty
					 , SUM(ISNULL(poOrderItem.C_ExpOrderQty, 0)) AS poOrderItem_OrderQty
					 , SUM(ISNULL(poOrderItem.InQty, 0)) AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM poOrderItem poOrderItem
					 INNER JOIN poOrderHeader poOrderHeader
						 ON poOrderHeader.OrderNo = poOrderItem.OrderNo
						 AND poOrderHeader.SiteCode = N'0001'
						 AND poOrderHeader.C_poOrderSendStatus = '3'
					 WHERE poOrderItem.SiteCode = N'0001'
						 AND poOrderItem.OrderItemStatus <> 'PC'
						 AND poOrderItem.DueDate <= N'20180704'
						 AND poOrderItem.C_DeptCode = N'508'
						 AND poOrderItem.WhCode = N'0508'
						 AND poOrderItem.C_InvStatus = N'10'
					 GROUP BY poOrderItem.SiteCode, poOrderItem.WhCode, poOrderItem.ItemCode, poOrderItem.C_InvStatus, poOrderHeader.C_DeptCode, poOrderHeader.C_ReserveID
				 UNION ALL
					 SELECT poOsOrderItem.SiteCode, poOsOrderItem.WhCode, poOsOrderItem.ItemCode, mmStockMst.InvStatus, poOsOrderHeader.C_DeptCode, ISNULL(poOsOrderItem.C_ReserveID, '') AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , SUM(ISNULL(poOsOrderItem.OrderQty, 0)) AS poOsOrderItem_OrderQty
					 , SUM(ISNULL(poOsOrderItem.InQty, 0)) AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM poOsOrderItem poOsOrderItem
					 INNER JOIN poOsOrderHeader poOsOrderHeader
						 ON poOsOrderHeader.OrderNo = poOsOrderItem.OrderNo
						 AND poOsOrderHeader.SiteCode = N'0001'
						 AND poOsOrderHeader.C_OrderStatus > '4'
					 INNER JOIN C_mmStockMaster mmStockMst
						 ON mmStockMst.SiteCode = poOsOrderHeader.SiteCode
						 AND mmStockMst.WhCode = poOsOrderItem.WhCode
						 AND mmStockMst.ItemCode = poOsOrderItem.ItemCode
						 AND mmStockMst.InvStatus = '10'
					 WHERE poOsOrderItem.SiteCode = N'0001'
						 AND poOsOrderItem.C_OsEndGubun <> '2'
						 AND poOsOrderItem.DueDate <= N'20180704'
						 AND poOsOrderHeader.C_DeptCode = N'508'
						 AND poOsOrderItem.WhCode = N'0508'
						 AND mmStockMst.InvStatus = N'10'
					 GROUP BY poOsOrderItem.SiteCode, poOsOrderItem.WhCode, poOsOrderItem.ItemCode, mmStockMst.InvStatus, poOsOrderHeader.C_DeptCode, poOsOrderItem.C_ReserveID
				 UNION ALL
					 SELECT mmRequisitItem1.SiteCode, mmRequisitItem1.WhCodeIn AS WhCode, mmRequisitItem1.ItemCode, mmRequisitHeader1.C_InvStatusIn, mmRequisitHeader1.C_ReqDeptIn, ISNULL(mmRequisitHeader1.C_ReserveIDIn, '') AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , SUM(ISNULL(mmRequisitItem1.ReqQty, 0)) AS mmRequisitItem1_ReqQty
					 , SUM(ISNULL(mmRequisitItem1.C_InQty, 0)) AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM mmRequisitItem mmRequisitItem1
					 INNER JOIN mmRequisitHeader mmRequisitHeader1
						 ON mmRequisitHeader1.ReqNo = mmRequisitItem1.ReqNo
						 AND mmRequisitHeader1.SiteCode = N'0001'
						 AND mmRequisitHeader1.C_ExpectDateIn <= N'20180704'
						 AND ( (mmRequisitHeader1.SysCase IN('400', '980') AND mmRequisitHeader1.C_InWhSendStatus IN ('A', 'B')) 
							OR ( mmRequisitHeader1.SysCase = '500' AND mmRequisitHeader1.C_OrderedStatus IN ('A', 'B'))) 
					 WHERE mmRequisitItem1.SiteCode = N'0001'
						 AND mmRequisitItem1.ReqItemStatus <> 'C'
						 AND mmRequisitHeader1.C_ReqDeptIn = N'508'
						 AND mmRequisitItem1.WhCodeIn = N'0508'
						 AND mmRequisitHeader1.C_InvStatusIn = N'10'
					 GROUP BY mmRequisitItem1.SiteCode, mmRequisitItem1.WhCodeIn, mmRequisitItem1.ItemCode, mmRequisitHeader1.C_InvStatusIn, mmRequisitHeader1.C_ReqDeptIn, mmRequisitHeader1.C_ReserveIDIn
				 UNION ALL
					 SELECT C_sdAcceptItem1.SiteCode, C_sdAcceptItem1.WhCode, C_sdAcceptItem1.ItemCode, C_sdAcceptItem1.C_InvStatus, C_sdAcceptHeader1.DeptCode, ISNULL(C_sdAcceptItem1.C_ReserveID, '') AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , SUM(ISNULL(C_sdAcceptItem1.C_PieceQty, 0)) AS C_sdAcceptItem1_C_PieceQty
					 , SUM(ISNULL(C_sdAcceptItem1.C_ReservePieceQty, 0)) AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM C_sdAcceptItem C_sdAcceptItem1
					 INNER JOIN C_sdAcceptHeader C_sdAcceptHeader1
						 ON C_sdAcceptHeader1.OrderAcceptNo = C_sdAcceptItem1.C_OrderAcceptNo
						 AND C_sdAcceptHeader1.SiteCode = N'0001'
						 AND C_sdAcceptHeader1.DeptCode = N'508'
						 AND C_sdAcceptHeader1.OrderAcceptType <> '3'
					 WHERE C_sdAcceptItem1.SiteCode = N'0001'
						 AND C_sdAcceptItem1.DeptCode = N'508'
						 AND C_sdAcceptItem1.C_OrderPhaseGubun > '1'
						 AND C_sdAcceptItem1.C_OrderPhaseGubun < '4'
						 AND C_sdAcceptItem1.IrExpectDate <= N'20180704'
						 AND C_sdAcceptItem1.WhCode = N'0508'
						 AND C_sdAcceptItem1.C_InvStatus = N'10'
					 GROUP BY C_sdAcceptItem1.SiteCode, C_sdAcceptItem1.WhCode, C_sdAcceptItem1.ItemCode, C_sdAcceptItem1.C_InvStatus, C_sdAcceptHeader1.DeptCode, C_sdAcceptItem1.C_ReserveID
				 UNION ALL
					 SELECT C_sdAcceptItem2.SiteCode, C_sdAcceptItem2.WhCode, C_sdAcceptItem2.ItemCode, C_sdAcceptItem2.C_InvStatus, C_sdAcceptHeader2.DeptCode, ISNULL(C_sdAcceptItem2.C_ReserveID, '') AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , SUM(ISNULL(C_sdAcceptItem2.C_PieceQty, 0)) AS C_sdAcceptItem2_C_PieceQty
					 , SUM(ISNULL(C_sdAcceptItem2.C_ReservePieceQty, 0)) AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM C_sdAcceptItem C_sdAcceptItem2
					 INNER JOIN C_sdAcceptHeader C_sdAcceptHeader2
						 ON C_sdAcceptHeader2.OrderAcceptNo = C_sdAcceptItem2.C_OrderAcceptNo
						 AND C_sdAcceptHeader2.SiteCode = N'0001'
						 AND C_sdAcceptHeader2.DeptCode = N'508'
						 AND C_sdAcceptHeader2.OrderAcceptType <> '3'
					 WHERE C_sdAcceptItem2.SiteCode = N'0001'
						 AND C_sdAcceptItem2.DeptCode = N'508'
						 AND C_sdAcceptItem2.C_OrderPhaseGubun IN('4', '5')
						 AND C_sdAcceptItem2.IrExpectDate <= N'20180704'
						 AND C_sdAcceptItem2.WhCode = N'0508'
						 AND C_sdAcceptItem2.C_InvStatus = N'10'
					 GROUP BY C_sdAcceptItem2.SiteCode, C_sdAcceptItem2.WhCode, C_sdAcceptItem2.ItemCode, C_sdAcceptItem2.C_InvStatus, C_sdAcceptHeader2.DeptCode, C_sdAcceptItem2.C_ReserveID
				 UNION ALL
					 SELECT C_sdAcceptItem3.SiteCode, C_sdAcceptItem3.WhCode, C_sdAcceptItem3.ItemCode, C_sdAcceptItem3.C_InvStatus, C_sdAcceptHeader3.DeptCode, ISNULL(C_sdAcceptItem3.C_ReserveID, '') AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , SUM(ISNULL(C_sdAcceptItem3.C_PieceQty, 0)) AS C_sdAcceptItem3_C_PieceQty
					 , SUM(ISNULL(C_sdAcceptItem3.C_ReservePieceQty, 0)) AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM C_sdAcceptItem C_sdAcceptItem3
					 INNER JOIN C_sdAcceptHeader C_sdAcceptHeader3
						 ON C_sdAcceptHeader3.OrderAcceptNo = C_sdAcceptItem3.C_OrderAcceptNo
						 AND C_sdAcceptHeader3.SiteCode = N'0001'
						 AND C_sdAcceptHeader3.DeptCode = N'508'
						 AND C_sdAcceptHeader3.OrderAcceptType <> '3'
					 WHERE C_sdAcceptItem3.SiteCode = N'0001'
						 AND C_sdAcceptItem3.DeptCode = N'508'
						 AND C_sdAcceptItem3.C_OrderPhaseGubun = '5' 
						 AND C_sdAcceptItem3.IrExpectDate <= N'20180704'
						 AND C_sdAcceptItem3.WhCode = N'0508'
						 AND C_sdAcceptItem3.C_InvStatus = N'10'
					 GROUP BY C_sdAcceptItem3.SiteCode, C_sdAcceptItem3.WhCode, C_sdAcceptItem3.ItemCode, C_sdAcceptItem3.C_InvStatus, C_sdAcceptHeader3.DeptCode, C_sdAcceptItem3.C_ReserveID
				 --------------------------------------------------------------------------------------
				 UNION ALL
					 SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, ISNULL(C_sdAcceptI.C_ReserveID, '') AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					, C_sdAcceptI.C_ReservePieceQty
					 FROM C_sdAcceptItem C_sdAcceptI
					 INNER JOIN C_sdAcceptHeader C_sdAcceptH
						 ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
						 AND C_sdAcceptH.SiteCode = N'0001'
						 AND C_sdAcceptH.DeptCode = N'508'
						 AND C_sdAcceptH.OrderAcceptType <> '3'
					 INNER JOIN WhMaster WhM
						 ON WhM.WhCode = C_sdAcceptI.WhCode
						 AND WhM.ComCode = N'0001'
					 WHERE C_sdAcceptI.SiteCode = N'0001'
						 AND C_sdAcceptI.DeptCode = N'508'
						 AND C_sdAcceptI.C_OrderPhaseGubun IN('4', '5')
						 AND C_sdAcceptI.IrExpectDate <= N'20180704'
						 AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
						 AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
						 AND @WK_DCCtrlType IS NOT NULL
						 AND C_sdAcceptI.WhCode = N'0508'
						 AND C_sdAcceptI.C_InvStatus = N'10'
					 GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, C_sdAcceptI.C_ReserveID, C_sdAcceptI.C_ReservePieceQty
				 --------------------------------------------------------------------------------------
				 UNION ALL
					 SELECT mmRequisitItem2.SiteCode, mmRequisitItem2.WhCode, mmRequisitItem2.ItemCode, mmRequisitHeader2.C_InvStatusOut, mmRequisitHeader2.C_ReqDeptOut, ISNULL(mmRequisitHeader2.C_ReserveIDOut, '') AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , SUM(ISNULL(mmRequisitItem2.ReqQty, 0)) AS mmRequisitItem2_ReqQty
					 , SUM(ISNULL(mmRequisitItem2.OutQty, 0)) AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM mmRequisitItem mmRequisitItem2
					 INNER JOIN mmRequisitHeader mmRequisitHeader2
						 ON 
						 (( mmRequisitHeader2.SysCase IN('400', '300') AND mmRequisitHeader2.C_OutWhSendStatus IN ('A', 'B'))
						   OR ( mmRequisitHeader2.SysCase = '500' AND mmRequisitHeader2.C_OrderedStatus IN ('A', 'B'))
						   OR ( mmRequisitHeader2.SysCase = '360' AND mmRequisitHeader2.C_ReqSendStatus IN ('A', 'B'))
						   OR ( mmRequisitHeader2.SysCase = '300' AND mmRequisitHeader2.C_DisposeStatus IN ('1', '2', '3', '31', '4')))
						 AND mmRequisitHeader2.ReqNo = mmRequisitItem2.ReqNo
						 AND mmRequisitHeader2.ExpectDate <= N'20180704'
					 WHERE mmRequisitItem2.SiteCode = N'0001'
						 AND mmRequisitHeader2.C_ReqDeptOut = N'508'
						 AND mmRequisitItem2.WhCode = N'0508'
						 AND mmRequisitHeader2.C_InvStatusOut = N'10'
					 GROUP BY mmRequisitItem2.SiteCode, mmRequisitItem2.WhCode, mmRequisitItem2.ItemCode, mmRequisitHeader2.C_InvStatusOut, mmRequisitHeader2.C_ReqDeptOut, mmRequisitHeader2.C_ReserveIDOut
				 UNION ALL
					 SELECT C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode, mmStockMst.InvStatus AS InvStatus, poOsOrderH2.C_DeptCode, '' AS C_ReserveID
					 , 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , SUM(ISNULL(C_poOsOrderVndMatI.C_IndividualOrderQty, 0)) AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					, 0 AS OhQty
					, 0 AS C_ReserveQty
					--
					, 0 AS C_ReservePieceQty
					--
					 FROM C_poOsOrderVndMatItem C_poOsOrderVndMatI
					 INNER JOIN poOsOrderItem poOsOrderI2
						 ON poOsOrderI2.SiteCode = N'0001'
						 AND poOsOrderI2.AltKey = C_poOsOrderVndMatI.AltKey
						 AND poOsOrderI2.C_OsEndGubun <> '2'
						 AND poOsOrderI2.DueDate <= N'20180704'
					 INNER JOIN poOsOrderHeader poOsOrderH2
						 ON poOsOrderH2.SiteCode = N'0001'
						 AND poOsOrderH2.OrderNo = poOsOrderI2.OrderNo
						 AND poOsOrderH2.C_OrderStatus > '4'
					 INNER JOIN C_mmStockMaster mmStockMst
						 ON mmStockMst.SiteCode = poOsOrderI2.SiteCode
						 AND mmStockMst.WhCode = poOsOrderI2.WhCode
						 AND mmStockMst.ItemCode = poOsOrderI2.ItemCode
						 AND mmStockMst.InvStatus = '10'
					 WHERE C_poOsOrderVndMatI.SiteCode = N'0001'
						 AND poOsOrderH2.C_DeptCode = N'508'
						 AND poOsOrderI2.WhCode = N'0508'
						 AND mmStockMst.InvStatus = N'10'
					 GROUP BY C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode, mmStockMst.InvStatus, poOsOrderH2.C_DeptCode
				UNION ALL
					SELECT SiteCode, WhCode, ItemCode, InvStatus, C_DeptCode, '' AS C_ReserveID
					, 0 AS HoldQty
					 , 0 AS AdjustQty
					 , 0 AS poOrderItem_OrderQty
					 , 0 AS poOrderItem_InQty
					 , 0 AS poOsOrderItem_OrderQty
					 , 0 AS poOsOrderItem_InQty
					 , 0 AS mmRequisitItem1_ReqQty
					 , 0 AS mmRequisitItem1_C_InQty
					 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
					 , 0 AS C_poOsApartH1_C_IndividualApartQty
					 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
					 , 0 AS C_sdAcceptItem1_C_PieceQty
					 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem2_C_PieceQty
					 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
					 , 0 AS C_sdAcceptItem3_C_PieceQty
					 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
					 , 0 AS mmRequisitItem2_ReqQty
					 , 0 AS mmRequisitItem2_OutQty
					 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
					 , SUM(OhQty)AS OhQty
					 , SUM(C_ReserveQty) AS C_ReserveQty
					 --
					 , 0 AS C_ReservePieceQty
					 --
					FROM C_mmStockMaster 
						WHERE SiteCode = N'0001'
							AND C_DeptCode = N'508'
							AND WhCode = N'0508'
							AND InvStatus = N'10'
					Group By SiteCode, WhCode, ItemCode, InvStatus, C_DeptCode
			)SubItemReserve
		GROUP BY SubItemReserve.SiteCode, SubItemReserve.WhCode, SubItemReserve.ItemCode,SubItemReserve.InvStatus, SubItemReserve.DeptCode,SubItemReserve.C_ReserveID
	)ItemReserveInf
INNER JOIN C_ItemWhMasterH C_ItemWhMasterH
	ON C_ItemWhMasterH.WhCode = ItemReserveInf.WhCode
    AND C_ItemWhMasterH.SiteCode = N'0001'
    AND C_ItemWhMasterH.C_ItemJanCode = N'45178764'
    AND C_ItemWhMasterH.C_MainItemCode = N'0010051052200'
    AND C_ItemWhMasterH.C_AvailableDateF <= N'20180704'
    AND C_ItemWhMasterH.C_AvailableDateT >= N'20180704'
INNER JOIN C_ItemWhMasterI C_ItemWhMasterI
    ON C_ItemWhMasterI.WhCode = C_ItemWhMasterH.WhCode
    AND C_ItemWhMasterI.SiteCode = N'0001'
    AND C_ItemWhMasterI.C_ItemJanCode = C_ItemWhMasterH.C_ItemJanCode
    AND C_ItemWhMasterI.C_MainItemCode = C_ItemWhMasterH.C_MainItemCode
    AND C_ItemWhMasterI.C_AvailableDateF = C_ItemWhMasterH.C_AvailableDateF
    AND C_ItemWhMasterI.ItemCode = ItemReserveInf.ItemCode
LEFT JOIN ItemMaster ItemMaster
    ON ItemMaster.ItemCode = ItemReserveInf.ItemCode
    AND ItemMaster.ComCode = N'0001'
LEFT JOIN (
	SELECT SiteCode
		, WhCode
		, ItemCode
		, InvStatus
		, SUM(HoldQty)AS HoldQty
		, SUM(AdjustQty)AS AdjustQty
		, C_ReserveID
    FROM C_mmHoldMaster
    WHERE SiteCode = N'0001'
        AND DeptCode = N'508'
        AND WhCode = N'0508'
        AND InvStatus = N'10'
    GROUP BY SiteCode
			, WhCode
			, ItemCode
			, C_ReserveID
			, InvStatus) AS C_mmHoldMaster_Q
    ON C_mmHoldMaster_Q.WhCode = ItemReserveInf.WhCode
    AND C_mmHoldMaster_Q.ItemCode = ItemReserveInf.ItemCode
    AND C_mmHoldMaster_Q.InvStatus = ItemReserveInf.InvStatus
    AND C_mmHoldMaster_Q.C_ReserveID = ItemReserveInf.C_ReserveID
LEFT JOIN C_ReserveIDMaster RIDM
    ON RIDM.SiteCode =ItemReserveInf.SiteCode
    AND RIDM.C_ReserveID = ItemReserveInf.C_ReserveID
ORDER BY ItemReserveInf.ItemCode ASC
	, ItemMaster.ItemName ASC
	, ItemReserveInf.C_ReserveID ASC







--------修正後



SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
--「WK-DC制御区分」を設定する。
DECLARE @WK_DCCtrlType NCHAR(1) = NULL;              --WK-DC制御区分
DECLARE @C_WhGubunDC NCHAR(1) = NULL;                --倉庫区分
DECLARE @C_InstructionSkipDC NCHAR(1) = NULL;        --出荷指示省略（画面入力）
DECLARE @C_InstructionSkipEOSDC NCHAR(1) = NULL;     --出荷指示省略（EOS）
DECLARE @C_OhReserveDC NCHAR(1) = NULL;              --在庫引当可否区分（画面入力）
DECLARE @C_OhReserveEosDC NCHAR(1) = NULL;           --在庫引当可否区分（EOS）

DECLARE @OrderAcceptTypeDC NCHAR(4) = NULL;

BEGIN
    SELECT @C_WhGubunDC = WhM.C_WhGubun
        ,@C_InstructionSkipDC = WhM.C_InstructionSkip
        ,@C_InstructionSkipEOSDC = WhM.C_InstructionSkipEOS
        ,@C_OhReserveDC = WhM.C_OhReserve
        ,@C_OhReserveEosDC = WhM.C_OhReserveEos
        ,@OrderAcceptTypeDC = C_sdAcceptH.OrderAcceptType
    FROM C_sdAcceptItem C_sdAcceptI WITH(NOLOCK)
    INNER JOIN C_sdAcceptHeader C_sdAcceptH WITH(NOLOCK)
        ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
        AND C_sdAcceptH.SiteCode = N'0001' 
        AND C_sdAcceptH.DeptCode = N'508' 
        AND C_sdAcceptH.OrderAcceptType <> '3' 
    INNER JOIN WhMaster WhM WITH(NOLOCK)
        ON WhM.WhCode = C_sdAcceptI.WhCode
        AND WhM.ComCode = N'0001'
    WHERE C_sdAcceptI.DeptCode = N'508' 
        AND C_sdAcceptI.SiteCode = N'0001' 
        AND C_sdAcceptI.C_OrderPhaseGubun IN ('4', '5') 
        AND C_sdAcceptI.IrExpectDate <= N'20180704' 
        AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
        AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
        AND C_sdAcceptI.WhCode = N'0508'
        AND C_sdAcceptI.C_InvStatus = N'10'

    IF(@C_WhGubunDC = '2' OR @C_WhGubunDC = '3')
    BEGIN
        SET @WK_DCCtrlType =
        CASE WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'Y'
                THEN '1'
                WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'Y'
                THEN NULL
                WHEN @OrderAcceptTypeDC = '0' AND @C_InstructionSkipDC = 'N' AND @C_OhReserveDC = 'N'
                THEN '2'
                WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'Y'
                THEN '1'
                WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'Y'
                THEN NULL
                WHEN @OrderAcceptTypeDC = '1' AND @C_InstructionSkipEOSDC = 'N' AND @C_OhReserveEosDC = 'N'
                THEN '2'
        END
    END
    --ｲ.ｱ.以外の場合
    ELSE
    BEGIN
        SET @WK_DCCtrlType = NULL
    END
END
SELECT ItemReserveInf.ItemCode AS ItemCode
	, ItemMaster.ItemName AS ItemName
    , RIDM.C_ReserveIDName AS C_ReserveID
	, ExpOrderInItemNum
	, ExpOtherInItemNum
    , ExpOrderInItemNum + ExpOtherInItemNum AS ExpInItemNum
    ,CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN ItemReserveInf.AvaStockItemNum END AS StockItemNum
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN 0 ELSE ISNULL(C_mmHoldMaster_Q.HoldQty, 0) END AS HoldItemNum
    , CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN 0 ELSE ISNULL(C_mmHoldMaster_Q.AdjustQty, 0) END AS AdjustQty
    --, CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN ReserveItemQty ELSE 0 END AS ReserveItemQty
	, CASE ISNULL(ItemReserveInf.C_ReserveID, '') WHEN '' THEN ReserveItemQty+C_ReservePieceQty ELSE 0 END AS ReserveItemQty
    , '' AS AvaStockItemNum
    , ''
    , ''
    --, ItemReserveInf.C_ReservePieceQty
FROM
(
SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
	, CAST(SUM(ISNULL(poOrderItem_OrderQty, 0) - ISNULL(poOrderItem_InQty, 0)) + SUM(ISNULL(poOsOrderItem_OrderQty, 0) - ISNULL(poOsOrderItem_InQty, 0)) AS BIGINT) AS ExpOrderInItemNum
		 , CAST(SUM(ISNULL(mmRequisitItem1_ReqQty, 0) - ISNULL(mmRequisitItem1_C_InQty, 0)) + SUM(ISNULL(C_sdReturnExpItem_C_ReturnExpQty, 0)) + SUM(ISNULL(C_poOsApartVndMatI_C_IndividualApartQty, 0)) AS BIGINT) AS ExpOtherInItemNum
		 , CAST(SUM(ISNULL(C_sdAcceptItem1_C_PieceQty, 0) - ISNULL(C_sdAcceptItem1_C_ReservePieceQty, 0)) AS BIGINT) AS DiffItemNum
    --, CASE ISNULL(C_ReserveID, '') WHEN '' THEN CAST(ISNULL(C_mmStockMaster.OhQty, 0) - ISNULL(C_mmStockMaster.C_ReserveQty, 0) - ISNULL(C_mmHoldMaster_Q.HoldQty, 0) AS BIGINT) ELSE '-' END AS AvaStockItemNum
	, SUM(ISNULL(HoldQty, 0)) AS HoldItemNum
	, SUM(ISNULL(AdjustQty, 0)) AS AdjustQty
	, SUM(ISNULL(C_ReserveQty, 0)) AS ReserveItemQty
	, CAST(SUM(ISNULL(C_sdAcceptItem3_C_ReservePieceQty, 0)) AS BIGINT) AS InsItemQty
	, CAST((SUM(ISNULL(mmRequisitItem2_ReqQty, 0) - ISNULL(mmRequisitItem2_OutQty, 0))
		+ SUM(ISNULL(SubpoOsOrderVndMatI_C_IndividualOrderQty, 0)) + SUM(ISNULL(C_poOsApartH1_C_IndividualApartQty, 0))) AS BIGINT) AS ExpOutItemNum
	, CAST(SUM(ISNULL(OhQty, 0)) AS BIGINT) AS AvaStockItemNum
	, SUM(ISNULL(SubItemReserve.C_ReservePieceQty, 0)) AS C_ReservePieceQty
FROM
(
	SELECT SiteCode, WhCode, ItemCode, InvStatus, DeptCode, ISNULL(C_ReserveID, '') AS C_ReserveID
	, SUM(ISNULL(HoldQty, 0)) AS HoldQty
	, SUM(ISNULL(AdjustQty, 0)) AS AdjustQty
	, 0 AS poOrderItem_OrderQty
	, 0 AS poOrderItem_InQty
	, 0 AS poOsOrderItem_OrderQty
	, 0 AS poOsOrderItem_InQty
	, 0 AS mmRequisitItem1_ReqQty
	, 0 AS mmRequisitItem1_C_InQty
	, 0 AS C_sdReturnExpItem_C_ReturnExpQty
	, 0 AS C_poOsApartH1_C_IndividualApartQty
	, 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	, 0 AS C_sdAcceptItem1_C_PieceQty
	, 0 AS C_sdAcceptItem1_C_ReservePieceQty
	, 0 AS C_sdAcceptItem2_C_PieceQty
	, 0 AS C_sdAcceptItem2_C_ReservePieceQty
	, 0 AS C_sdAcceptItem3_C_PieceQty
	, 0 AS C_sdAcceptItem3_C_ReservePieceQty
	, 0 AS mmRequisitItem2_ReqQty
	, 0 AS mmRequisitItem2_OutQty
	, 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
    FROM C_mmHoldMaster
WHERE SiteCode = N'0001'
AND DeptCode = N'508'
AND WhCode = N'0508'
AND InvStatus = N'10'
 AND Status <> 'C' 
GROUP BY SiteCode, WhCode, ItemCode, InvStatus, DeptCode, C_ReserveID
UNION ALL
    SELECT poOrderItem.SiteCode, poOrderItem.WhCode, poOrderItem.ItemCode, poOrderItem.C_InvStatus, poOrderHeader.C_DeptCode, ISNULL(poOrderHeader.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	, 0 AS AdjustQty
	 , SUM(ISNULL(poOrderItem.C_ExpOrderQty, 0)) AS poOrderItem_OrderQty
	 , SUM(ISNULL(poOrderItem.InQty, 0)) AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM poOrderItem poOrderItem
     INNER JOIN poOrderHeader poOrderHeader
         ON poOrderHeader.OrderNo = poOrderItem.OrderNo
         AND poOrderHeader.SiteCode = N'0001'
         AND poOrderHeader.C_poOrderSendStatus = '3'
     WHERE poOrderItem.SiteCode = N'0001'
         AND poOrderItem.OrderItemStatus <> 'PC'
         AND poOrderItem.DueDate <= N'20180704'
         AND poOrderItem.C_DeptCode = N'508'
         AND poOrderItem.WhCode = N'0508'
         AND poOrderItem.C_InvStatus = N'10'
     GROUP BY poOrderItem.SiteCode, poOrderItem.WhCode, poOrderItem.ItemCode, poOrderItem.C_InvStatus, poOrderHeader.C_DeptCode, poOrderHeader.C_ReserveID
 UNION ALL
     SELECT poOsOrderItem.SiteCode, poOsOrderItem.WhCode, poOsOrderItem.ItemCode, mmStockMst.InvStatus, poOsOrderHeader.C_DeptCode, ISNULL(poOsOrderItem.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , SUM(ISNULL(poOsOrderItem.OrderQty, 0)) AS poOsOrderItem_OrderQty
	 , SUM(ISNULL(poOsOrderItem.InQty, 0)) AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM poOsOrderItem poOsOrderItem
     INNER JOIN poOsOrderHeader poOsOrderHeader
         ON poOsOrderHeader.OrderNo = poOsOrderItem.OrderNo
         AND poOsOrderHeader.SiteCode = N'0001'
         AND poOsOrderHeader.C_OrderStatus > '4'
     INNER JOIN C_mmStockMaster mmStockMst
         ON mmStockMst.SiteCode = poOsOrderHeader.SiteCode
         AND mmStockMst.WhCode = poOsOrderItem.WhCode
         AND mmStockMst.ItemCode = poOsOrderItem.ItemCode
         AND mmStockMst.InvStatus = '10'
     WHERE poOsOrderItem.SiteCode = N'0001'
         AND poOsOrderItem.C_OsEndGubun <> '2'
         AND poOsOrderItem.DueDate <= N'20180704'
         AND poOsOrderHeader.C_DeptCode = N'508'
         AND poOsOrderItem.WhCode = N'0508'
         AND mmStockMst.InvStatus = N'10'
     GROUP BY poOsOrderItem.SiteCode, poOsOrderItem.WhCode, poOsOrderItem.ItemCode, mmStockMst.InvStatus, poOsOrderHeader.C_DeptCode, poOsOrderItem.C_ReserveID
 UNION ALL
     SELECT mmRequisitItem1.SiteCode, mmRequisitItem1.WhCodeIn AS WhCode, mmRequisitItem1.ItemCode, mmRequisitHeader1.C_InvStatusIn, mmRequisitHeader1.C_ReqDeptIn, ISNULL(mmRequisitHeader1.C_ReserveIDIn, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , SUM(ISNULL(mmRequisitItem1.ReqQty, 0)) AS mmRequisitItem1_ReqQty
	 , SUM(ISNULL(mmRequisitItem1.C_InQty, 0)) AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM mmRequisitItem mmRequisitItem1
     INNER JOIN mmRequisitHeader mmRequisitHeader1
         ON mmRequisitHeader1.ReqNo = mmRequisitItem1.ReqNo
         AND mmRequisitHeader1.SiteCode = N'0001'
         AND mmRequisitHeader1.C_ExpectDateIn <= N'20180704'
         AND ( (mmRequisitHeader1.SysCase IN('400', '980') AND mmRequisitHeader1.C_InWhSendStatus IN ('A', 'B')) 
            OR ( mmRequisitHeader1.SysCase = '500' AND mmRequisitHeader1.C_OrderedStatus IN ('A', 'B'))) 
     WHERE mmRequisitItem1.SiteCode = N'0001'
         AND mmRequisitItem1.ReqItemStatus <> 'C'
         AND mmRequisitHeader1.C_ReqDeptIn = N'508'
         AND mmRequisitItem1.WhCodeIn = N'0508'
         AND mmRequisitHeader1.C_InvStatusIn = N'10'
     GROUP BY mmRequisitItem1.SiteCode, mmRequisitItem1.WhCodeIn, mmRequisitItem1.ItemCode, mmRequisitHeader1.C_InvStatusIn, mmRequisitHeader1.C_ReqDeptIn, mmRequisitHeader1.C_ReserveIDIn
 UNION ALL
 SELECT C_sdAcceptItem1.SiteCode, C_sdAcceptItem1.WhCode, C_sdAcceptItem1.ItemCode, C_sdAcceptItem1.C_InvStatus, C_sdAcceptHeader1.DeptCode, ISNULL(C_sdAcceptItem1.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , SUM(ISNULL(C_sdAcceptItem1.C_PieceQty, 0)) AS C_sdAcceptItem1_C_PieceQty
	 , SUM(ISNULL(C_sdAcceptItem1.C_ReservePieceQty, 0)) AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM C_sdAcceptItem C_sdAcceptItem1
     INNER JOIN C_sdAcceptHeader C_sdAcceptHeader1
         ON C_sdAcceptHeader1.OrderAcceptNo = C_sdAcceptItem1.C_OrderAcceptNo
         AND C_sdAcceptHeader1.SiteCode = N'0001'
         AND C_sdAcceptHeader1.DeptCode = N'508'
         AND C_sdAcceptHeader1.OrderAcceptType <> '3'
     WHERE C_sdAcceptItem1.SiteCode = N'0001'
         AND C_sdAcceptItem1.DeptCode = N'508'
         AND C_sdAcceptItem1.C_OrderPhaseGubun > '1'
         AND C_sdAcceptItem1.C_OrderPhaseGubun < '4'
         AND C_sdAcceptItem1.IrExpectDate <= N'20180704'
         AND C_sdAcceptItem1.WhCode = N'0508'
         AND C_sdAcceptItem1.C_InvStatus = N'10'
     GROUP BY C_sdAcceptItem1.SiteCode, C_sdAcceptItem1.WhCode, C_sdAcceptItem1.ItemCode, C_sdAcceptItem1.C_InvStatus, C_sdAcceptHeader1.DeptCode, C_sdAcceptItem1.C_ReserveID
 UNION ALL
     SELECT C_sdAcceptItem2.SiteCode, C_sdAcceptItem2.WhCode, C_sdAcceptItem2.ItemCode, C_sdAcceptItem2.C_InvStatus, C_sdAcceptHeader2.DeptCode, ISNULL(C_sdAcceptItem2.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , SUM(ISNULL(C_sdAcceptItem2.C_PieceQty, 0)) AS C_sdAcceptItem2_C_PieceQty
	 , SUM(ISNULL(C_sdAcceptItem2.C_ReservePieceQty, 0)) AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM C_sdAcceptItem C_sdAcceptItem2
     INNER JOIN C_sdAcceptHeader C_sdAcceptHeader2
         ON C_sdAcceptHeader2.OrderAcceptNo = C_sdAcceptItem2.C_OrderAcceptNo
         AND C_sdAcceptHeader2.SiteCode = N'0001'
         AND C_sdAcceptHeader2.DeptCode = N'508'
         AND C_sdAcceptHeader2.OrderAcceptType <> '3'
     WHERE C_sdAcceptItem2.SiteCode = N'0001'
         AND C_sdAcceptItem2.DeptCode = N'508'
         AND C_sdAcceptItem2.C_OrderPhaseGubun IN('4', '5')
         AND C_sdAcceptItem2.IrExpectDate <= N'20180704'
         AND C_sdAcceptItem2.WhCode = N'0508'
         AND C_sdAcceptItem2.C_InvStatus = N'10'
     GROUP BY C_sdAcceptItem2.SiteCode, C_sdAcceptItem2.WhCode, C_sdAcceptItem2.ItemCode, C_sdAcceptItem2.C_InvStatus, C_sdAcceptHeader2.DeptCode, C_sdAcceptItem2.C_ReserveID
 UNION ALL
     SELECT C_sdAcceptItem3.SiteCode, C_sdAcceptItem3.WhCode, C_sdAcceptItem3.ItemCode, C_sdAcceptItem3.C_InvStatus, C_sdAcceptHeader3.DeptCode, ISNULL(C_sdAcceptItem3.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , SUM(ISNULL(C_sdAcceptItem3.C_PieceQty, 0)) AS C_sdAcceptItem3_C_PieceQty
	 , SUM(ISNULL(C_sdAcceptItem3.C_ReservePieceQty, 0)) AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM C_sdAcceptItem C_sdAcceptItem3
     INNER JOIN C_sdAcceptHeader C_sdAcceptHeader3
         ON C_sdAcceptHeader3.OrderAcceptNo = C_sdAcceptItem3.C_OrderAcceptNo
         AND C_sdAcceptHeader3.SiteCode = N'0001'
         AND C_sdAcceptHeader3.DeptCode = N'508'
         AND C_sdAcceptHeader3.OrderAcceptType <> '3'
     WHERE C_sdAcceptItem3.SiteCode = N'0001'
         AND C_sdAcceptItem3.DeptCode = N'508'
         AND C_sdAcceptItem3.C_OrderPhaseGubun = '5' 
         AND C_sdAcceptItem3.IrExpectDate <= N'20180704'
         AND C_sdAcceptItem3.WhCode = N'0508'
         AND C_sdAcceptItem3.C_InvStatus = N'10'
     GROUP BY C_sdAcceptItem3.SiteCode, C_sdAcceptItem3.WhCode, C_sdAcceptItem3.ItemCode, C_sdAcceptItem3.C_InvStatus, C_sdAcceptHeader3.DeptCode, C_sdAcceptItem3.C_ReserveID
 UNION ALL
     SELECT C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, ISNULL(C_sdAcceptI.C_ReserveID, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	--, C_sdAcceptI.C_ReservePieceQty
	, SUM(ISNULL(C_sdAcceptI.C_ReservePieceQty,0)) AS C_ReservePieceQty
     FROM C_sdAcceptItem C_sdAcceptI
     INNER JOIN C_sdAcceptHeader C_sdAcceptH
         ON C_sdAcceptH.OrderAcceptNo = C_sdAcceptI.C_OrderAcceptNo
         AND C_sdAcceptH.SiteCode = N'0001'
         AND C_sdAcceptH.DeptCode = N'508'
         AND C_sdAcceptH.OrderAcceptType <> '3'
     INNER JOIN WhMaster WhM
         ON WhM.WhCode = C_sdAcceptI.WhCode
         AND WhM.ComCode = N'0001'
     WHERE C_sdAcceptI.SiteCode = N'0001'
         AND C_sdAcceptI.DeptCode = N'508'
         AND C_sdAcceptI.C_OrderPhaseGubun IN('4', '5')
         AND C_sdAcceptI.IrExpectDate <= N'20180704'
         AND ISNULL(C_sdAcceptI.C_ReserveID, '') = ''
         AND C_sdAcceptI.C_OrderType IN ('100', 'S10') 
         --AND @WK_DCCtrlType IS NOT NULL
         AND C_sdAcceptI.WhCode = N'0508'
         AND C_sdAcceptI.C_InvStatus = N'10'
     --GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, C_sdAcceptI.C_ReserveID, C_sdAcceptI.C_ReservePieceQty
	 GROUP BY C_sdAcceptI.SiteCode, C_sdAcceptI.WhCode, C_sdAcceptI.ItemCode, C_sdAcceptI.C_InvStatus, C_sdAcceptH.DeptCode, C_sdAcceptI.C_ReserveID
 UNION ALL
     SELECT mmRequisitItem2.SiteCode, mmRequisitItem2.WhCode, mmRequisitItem2.ItemCode, mmRequisitHeader2.C_InvStatusOut, mmRequisitHeader2.C_ReqDeptOut, ISNULL(mmRequisitHeader2.C_ReserveIDOut, '') AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , SUM(ISNULL(mmRequisitItem2.ReqQty, 0)) AS mmRequisitItem2_ReqQty
	 , SUM(ISNULL(mmRequisitItem2.OutQty, 0)) AS mmRequisitItem2_OutQty
	 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM mmRequisitItem mmRequisitItem2
     INNER JOIN mmRequisitHeader mmRequisitHeader2
         ON 
         (( mmRequisitHeader2.SysCase IN('400', '300') AND mmRequisitHeader2.C_OutWhSendStatus IN ('A', 'B'))
           OR ( mmRequisitHeader2.SysCase = '500' AND mmRequisitHeader2.C_OrderedStatus IN ('A', 'B'))
           OR ( mmRequisitHeader2.SysCase = '360' AND mmRequisitHeader2.C_ReqSendStatus IN ('A', 'B'))
           OR ( mmRequisitHeader2.SysCase = '300' AND mmRequisitHeader2.C_DisposeStatus IN ('1', '2', '3', '31', '4')))
         AND mmRequisitHeader2.ReqNo = mmRequisitItem2.ReqNo
         AND mmRequisitHeader2.ExpectDate <= N'20180704'
     WHERE mmRequisitItem2.SiteCode = N'0001'
         AND mmRequisitHeader2.C_ReqDeptOut = N'508'
         AND mmRequisitItem2.WhCode = N'0508'
         AND mmRequisitHeader2.C_InvStatusOut = N'10'
     GROUP BY mmRequisitItem2.SiteCode, mmRequisitItem2.WhCode, mmRequisitItem2.ItemCode, mmRequisitHeader2.C_InvStatusOut, mmRequisitHeader2.C_ReqDeptOut, mmRequisitHeader2.C_ReserveIDOut
 UNION ALL
     SELECT C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode, mmStockMst.InvStatus AS InvStatus, poOsOrderH2.C_DeptCode, '' AS C_ReserveID
	 , 0 AS HoldQty
	 , 0 AS AdjustQty
	 , 0 AS poOrderItem_OrderQty
	 , 0 AS poOrderItem_InQty
	 , 0 AS poOsOrderItem_OrderQty
	 , 0 AS poOsOrderItem_InQty
	 , 0 AS mmRequisitItem1_ReqQty
	 , 0 AS mmRequisitItem1_C_InQty
	 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
	 , 0 AS C_poOsApartH1_C_IndividualApartQty
	 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
	 , 0 AS C_sdAcceptItem1_C_PieceQty
	 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem2_C_PieceQty
	 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
	 , 0 AS C_sdAcceptItem3_C_PieceQty
	 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
	 , 0 AS mmRequisitItem2_ReqQty
	 , 0 AS mmRequisitItem2_OutQty
	 , SUM(ISNULL(C_poOsOrderVndMatI.C_IndividualOrderQty, 0)) AS SubpoOsOrderVndMatI_C_IndividualOrderQty
	, 0 AS OhQty
	, 0 AS C_ReserveQty
	, 0 AS C_ReservePieceQty
     FROM C_poOsOrderVndMatItem C_poOsOrderVndMatI
     INNER JOIN poOsOrderItem poOsOrderI2
         ON poOsOrderI2.SiteCode = N'0001'
         AND poOsOrderI2.AltKey = C_poOsOrderVndMatI.AltKey
         AND poOsOrderI2.C_OsEndGubun <> '2'
         AND poOsOrderI2.DueDate <= N'20180704'
     INNER JOIN poOsOrderHeader poOsOrderH2
         ON poOsOrderH2.SiteCode = N'0001'
         AND poOsOrderH2.OrderNo = poOsOrderI2.OrderNo
         AND poOsOrderH2.C_OrderStatus > '4'
     INNER JOIN C_mmStockMaster mmStockMst
         ON mmStockMst.SiteCode = poOsOrderI2.SiteCode
         AND mmStockMst.WhCode = poOsOrderI2.WhCode
         AND mmStockMst.ItemCode = poOsOrderI2.ItemCode
         AND mmStockMst.InvStatus = '10'
     WHERE C_poOsOrderVndMatI.SiteCode = N'0001'
         AND poOsOrderH2.C_DeptCode = N'508'
         AND poOsOrderI2.WhCode = N'0508'
         AND mmStockMst.InvStatus = N'10'
     GROUP BY C_poOsOrderVndMatI.SiteCode, poOsOrderI2.WhCode, C_poOsOrderVndMatI.MatItemCode, mmStockMst.InvStatus, poOsOrderH2.C_DeptCode
UNION ALL
SELECT SiteCode, WhCode, ItemCode, InvStatus, C_DeptCode, '' AS C_ReserveID
, 0 AS HoldQty
 , 0 AS AdjustQty
 , 0 AS poOrderItem_OrderQty
 , 0 AS poOrderItem_InQty
 , 0 AS poOsOrderItem_OrderQty
 , 0 AS poOsOrderItem_InQty
 , 0 AS mmRequisitItem1_ReqQty
 , 0 AS mmRequisitItem1_C_InQty
 , 0 AS C_sdReturnExpItem_C_ReturnExpQty
 , 0 AS C_poOsApartH1_C_IndividualApartQty
 , 0 AS C_poOsApartVndMatI_C_IndividualApartQty
 , 0 AS C_sdAcceptItem1_C_PieceQty
 , 0 AS C_sdAcceptItem1_C_ReservePieceQty
 , 0 AS C_sdAcceptItem2_C_PieceQty
 , 0 AS C_sdAcceptItem2_C_ReservePieceQty
 , 0 AS C_sdAcceptItem3_C_PieceQty
 , 0 AS C_sdAcceptItem3_C_ReservePieceQty
 , 0 AS mmRequisitItem2_ReqQty
 , 0 AS mmRequisitItem2_OutQty
 , 0 AS SubpoOsOrderVndMatI_C_IndividualOrderQty
 , SUM(OhQty)AS OhQty
 , SUM(C_ReserveQty) AS C_ReserveQty
	, 0 AS C_ReservePieceQty
FROM C_mmStockMaster 
    WHERE SiteCode = N'0001'
        AND C_DeptCode = N'508'
        AND WhCode = N'0508'
        AND InvStatus = N'10'
Group By SiteCode, WhCode, ItemCode, InvStatus, C_DeptCode
)SubItemReserve
GROUP BY SubItemReserve.SiteCode, SubItemReserve.WhCode, SubItemReserve.ItemCode,SubItemReserve.InvStatus, SubItemReserve.DeptCode,SubItemReserve.C_ReserveID
)ItemReserveInf
INNER JOIN C_ItemWhMasterH C_ItemWhMasterH
	ON C_ItemWhMasterH.WhCode = ItemReserveInf.WhCode
    AND C_ItemWhMasterH.SiteCode = N'0001'
    AND C_ItemWhMasterH.C_ItemJanCode = N'45178764'
    AND C_ItemWhMasterH.C_MainItemCode = N'0010051052200'
    AND C_ItemWhMasterH.C_AvailableDateF <= N'20180704'
    AND C_ItemWhMasterH.C_AvailableDateT >= N'20180704'
INNER JOIN C_ItemWhMasterI C_ItemWhMasterI
    ON C_ItemWhMasterI.WhCode = C_ItemWhMasterH.WhCode
    AND C_ItemWhMasterI.SiteCode = N'0001'
    AND C_ItemWhMasterI.C_ItemJanCode = C_ItemWhMasterH.C_ItemJanCode
    AND C_ItemWhMasterI.C_MainItemCode = C_ItemWhMasterH.C_MainItemCode
    AND C_ItemWhMasterI.C_AvailableDateF = C_ItemWhMasterH.C_AvailableDateF
    AND C_ItemWhMasterI.ItemCode = ItemReserveInf.ItemCode
LEFT JOIN ItemMaster ItemMaster
    ON ItemMaster.ItemCode = ItemReserveInf.ItemCode
    AND ItemMaster.ComCode = N'0001'
LEFT JOIN (
	SELECT SiteCode
		, WhCode
		, ItemCode
		, InvStatus
		, SUM(HoldQty)AS HoldQty
		, SUM(AdjustQty)AS AdjustQty
		, C_ReserveID
    FROM C_mmHoldMaster
    WHERE SiteCode = N'0001'
        AND DeptCode = N'508'
        AND WhCode = N'0508'
        AND InvStatus = N'10'
    GROUP BY SiteCode
			, WhCode
			, ItemCode
			, C_ReserveID
			, InvStatus) AS C_mmHoldMaster_Q
    ON C_mmHoldMaster_Q.WhCode = ItemReserveInf.WhCode
    AND C_mmHoldMaster_Q.ItemCode = ItemReserveInf.ItemCode
    AND C_mmHoldMaster_Q.InvStatus = ItemReserveInf.InvStatus
    AND C_mmHoldMaster_Q.C_ReserveID = ItemReserveInf.C_ReserveID
LEFT JOIN C_ReserveIDMaster RIDM
    ON RIDM.SiteCode =ItemReserveInf.SiteCode
    AND RIDM.C_ReserveID = ItemReserveInf.C_ReserveID
ORDER BY ItemReserveInf.ItemCode ASC
	, ItemMaster.ItemName ASC
	, ItemReserveInf.C_ReserveID ASC



--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ014644O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--



--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ014708O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--



INSERT INTO C_PoOrderSendKey_Temp (SiteCode
                                 ,UserId
                                 ,OrderNo
                                 ,PoCsCode
                                 ,PoOrderType
                                 ,DueDate
                                 ,WhCode
                                 ,SaleToCs
                                 ,ReserveID
                                 ,poBlanketGubun
                                 ,[1stSendDatetime]
                                 ,DeptCode
                                 ,OrderMethod
                                 ,OrderDate)
SELECT 
	SiteCode
	,UserId
	,OrderNo
	,PoCsCode
	,C_poOrderType
	,DueDate
	,WhCode
	,CsCode
	,C_ReserveID
	,C_poBlanketGubun
	,C_1stSendDatetime
	,C_DeptCode
	,C_OrderMethod
	,OrderDate
	FROM (
SELECT DISTINCT N'0001' AS SiteCode
       ,N'19911004' AS UserId
       ,A.OrderNo
       ,B.CsCode AS PoCsCode
       ,A.C_poOrderType
       ,B.DueDate
       ,B.WhCode
,ISNULL(NULLIF(C.CsCode,''), E.CsCode) AS CsCode
       ,ISNULL(A.C_ReserveID,'') AS C_ReserveID
       ,A.C_poBlanketGubun
       ,A.C_1stSendDatetime
       ,B.C_DeptCode
       ,D.C_OrderMethod
       ,A.OrderDate
       ,Row_number() OVER(PARTITION BY A.OrderNo ORDER BY C.CsCode DESC) rn
FROM poOrderHeader A
     INNER JOIN poOrderItem B ON B.SiteCode = A.SiteCode
                              AND B.OrderNo = A.OrderNo
							  and B.OrderItemStatus <> 'PC'
     INNER JOIN poDecisionHeader E ON E.SiteCode = A.SiteCode
                                   AND E.DecNo = B.DecNo
                                   AND E.C_DeptCode = N'508'
     LEFT JOIN C_sdAcceptHeader C ON C.SiteCode = A.SiteCode
                                   AND C.DeptCode = A.C_DeptCode
                                   AND C.OrderAcceptNo = B.ReqNo
     LEFT JOIN C_OrderPattern D ON D.SiteCode = A.SiteCode
                                   AND D.DeptCode = A.C_DeptCode
                                   AND D.WhCode = B.WhCode
                                   AND D.C_MakerCode = B.CsCode
WHERE
 A.SiteCode = N'0001'
 AND (A.C_poOrderSendStatus = '1' OR A.C_poOrderSendStatus = '2')
 AND A.C_DeptCode = N'508'
 AND A.C_poBlanketGubun = N'N'
) SearchQuery
WHERE rn = 1

select * from C_PoOrderSendKey_Temp





SELECT 
	SiteCode
	,UserId
	,OrderNo
	,PoCsCode
	,C_poOrderType
	,DueDate
	,WhCode
	,CsCode
	,C_ReserveID
	,C_poBlanketGubun
	,C_1stSendDatetime
	,C_DeptCode
	,C_OrderMethod
	,OrderDate
	FROM (
SELECT DISTINCT N'0001' AS SiteCode
       ,N'19911004' AS UserId
       ,A.OrderNo
       ,B.CsCode AS PoCsCode
       ,A.C_poOrderType
       ,B.DueDate
       ,B.WhCode
,ISNULL(NULLIF(C.CsCode,''), E.CsCode) AS CsCode
       ,ISNULL(A.C_ReserveID,'') AS C_ReserveID
       ,A.C_poBlanketGubun
       ,A.C_1stSendDatetime
       ,B.C_DeptCode
       ,D.C_OrderMethod
       ,A.OrderDate
       ,Row_number() OVER(PARTITION BY A.OrderNo ORDER BY C.CsCode DESC) rn
FROM poOrderHeader A
     INNER JOIN poOrderItem B ON B.SiteCode = A.SiteCode
                              AND B.OrderNo = A.OrderNo
                              AND B.OrderItemStatus <> 'PC'
     INNER JOIN poDecisionHeader E ON E.SiteCode = A.SiteCode
                                   AND E.DecNo = B.DecNo
                                   AND E.C_DeptCode = N'508'
     LEFT JOIN C_sdAcceptHeader C ON C.SiteCode = A.SiteCode
                                   AND C.DeptCode = A.C_DeptCode
                                   AND C.OrderAcceptNo = B.ReqNo
     LEFT JOIN C_OrderPattern D ON D.SiteCode = A.SiteCode
                                   AND D.DeptCode = A.C_DeptCode
                                   AND D.WhCode = B.WhCode
                                   AND D.C_MakerCode = B.CsCode
WHERE
 A.SiteCode = N'0001'
 AND A.OrderDate = N'20180705'
 AND A.C_poOrderSendStatus = N'3'
 AND A.C_DeptCode = N'508'
 AND A.C_poBlanketGubun = N'N'
) SearchQuery
WHERE rn = 1



select OrderItemStatus
,* from poOrderItem where SiteCode = N'0001' and C_DeptCode = N'508' and OrderItemStatus <> 'PC' and CsCode = '2001626' and OrderNo = 'BPO01180705TK009'


--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ014708O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--






--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓ TEST ↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓何何何何何何↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--







--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑何何何何何何↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--

--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑ TEST ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--



select	count(*) as UserAccount	from	xErpUser	
where	convert ( nchar(8), getdate(), 112 ) between UserBdate and UserEdate


select
UserID
,PassWdIllegalTimes
,*
from xErpUser
where
UserID = 'jyosys'


update
xErpUser
set 
PassWdIllegalTimes = '1'
where
UserID = 'jyosys'



declare @a int
set @a=5 
print @a 




declare @a int
declare @b int
declare @c int
declare @d int

set @a = 1
set @b = 2
set @c = 3
set @d = 4


print (@a - @b - @c - @d)

print (@a - (@b - @c) - @d)
--select (@a - (@b - @c) - @d)

































