




--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓SEQ013408O 対応↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓--


				DROP TABLE IF EXISTS [dbo].[#C_DirectShipmentStatus] 
	create table #C_DirectShipmentStatus
	(
	MainCsCode nchar(12),
	DeptName nchar(20),
	C_1stStoreName nvarchar(30),
	C_DelvCode nchar(13),
	C_DelvName nvarchar(30),
	C_DelvAddress nvarchar(80),
	CsName nvarchar(20),
	--2018/06/11 MC.Yamada Mod SEQ014006O Start
	--C_TradingCode numeric(2, 0),
	C_TradingCode nchar(2),
	--2018/06/11 MC.Yamada Mod SEQ014006O End
	C_ItemMakerCode nchar(12),
	DueDate nchar(8),
	--2018/06/11 MC.Yamada Mod SEQ014006O Start
	--C_MakerSlipNo numeric(8, 0),
	C_MakerSlipNo nchar(8),
	--2018/06/11 MC.Yamada Mod SEQ014006O End
	C_OwnOrderNo nchar(8),
	ItemCode nchar(5),
	C_MakerItemName nvarchar(40),
	--2017/10/10　USOL-V CuongNM　UPDATE　START　(SEQ007302Oの対応)
	--C_ResultsQty numeric(28,8),
	C_ResultsQty nvarchar(30),
	C_MakerCaseQty numeric(7,0),
	C_MakerBowlQty numeric(7,0),
	--C_MakerPieceQty numeric(9,2),
	C_MakerPieceQty numeric(7,0),
	--ItemPrice numeric(28,8),
	--ItemAmnt numeric(28,8),
	ItemPrice numeric(22,2),
	ItemAmnt numeric(20,0),
	--Remark1 nchar(5),
	--Remark2 nchar(5),
	--Remark3 nchar(5),
	Remark1 nchar(28),
	Remark2 nchar(18),
	Remark3 nchar(28),
	--2017/10/10　USOL-V CuongNM　UPDATE　END　(SEQ007302Oの対応)
	C_ShopDirectDelivery nvarchar(8),
	C_MakerSlipNoOr numeric(8, 0),
	C_MakerDescr nvarchar(50),
	C_MkRegSaleGubun nvarchar(8),
	ShippingDate nchar(8),  -- 2018/05/30 MC.Yamada Mod SEQ013148O
	OrderDueDate nchar(8),
	SumMakerCaseQty numeric(7,0),
	SumMakerBowlQty numeric(7,0),
	--2017/10/20　USOL-V CuongNM　UPDATE　START　(SEQ007302Oの対応)
	SumItemPrice numeric(20,0)
	--2017/10/20　USOL-V CuongNM　UPDATE　END　(SEQ007302Oの対応)
	)

Insert into #C_DirectShipmentStatus (MainCsCode,DeptName,C_1stStoreName,C_DelvCode,C_DelvName,C_DelvAddress,CsName,C_TradingCode,C_ItemMakerCode,DueDate,C_MakerSlipNo,C_OwnOrderNo,ItemCode,C_MakerItemName,C_ResultsQty,C_MakerCaseQty,C_MakerBowlQty,C_MakerPieceQty,ItemPrice,ItemAmnt,Remark1,Remark2,Remark3,C_ShopDirectDelivery,C_MakerSlipNoOr,C_MakerDescr,C_MkRegSaleGubun,ShippingDate, OrderDueDate)
SELECT
     COALESCE(NULLIF(RBH.C_1stStoreCode, ''), DMJ.C_BusiUniCode) AS MainCsCode
    ,DMJ.DeptName
    ,COALESCE(NULLIF(RBH.C_1stStoreName, ''), DMJ.DeptName) AS C_1stStoreName
    ,CAH.ShipToCs AS C_DelvCode
    ,COALESCE(NULLIF(RBH.C_DelvName, ''), NULLIF(PCsM.C_CsComName, ''), PCsM.CsNameFull) AS C_DelvName
    ,ISNULL(NULLIF(RBH.C_DelvAddress, ''), ISNULL(CsM.CsAddress, '') + ' ' + ISNULL(CsM.CsAddress2Full, '')) AS C_DelvAddress
    ,CM.CsName
    ,CASE WHEN ISNULL(RBH.C_TradingCode, 0) = 0 THEN ISNULL(RBH.C_CustDecGubun, '') ELSE CONVERT(nchar(2), RBH.C_TradingCode) END AS C_TradingCode
    ,CAI.C_ItemMakerCode
    ,RBH_AR.BillDate AS DueDate
    ,CASE WHEN ISNULL(RBH.C_MakerSlipNo, 0) = 0 THEN ISNULL(RBH.C_PoCsBiiNo, '') ELSE CONVERT(nchar(8), RBH.C_MakerSlipNo) END AS C_MakerSlipNo
    ,RBH.C_OwnOrderNo
    ,SUBSTRING(CAI.ItemJanCode,8,5) as ItemCode
    ,ISNULL(NULLIF(RBI.C_MakerItemName, ''), IM.ItemName) AS C_MakerItemName
    ,CASE WHEN IsNull(RBI.C_MakerCaseQty,0) = 0 AND IsNull(RBI.C_MakerBowlQty,0) = 0 AND IsNull(RBI.C_MakerPieceQty,0) = 0 
          THEN CASE WHEN RBI.C_OrderUnitItem = '1' 
                         THEN CAST(CONVERT(decimal(13,0),IM.C_ItemPackage1Qty) AS nvarchar) + 'X' + CONVERT(nvarchar,FLOOR(IM.C_ItemPackage2Qty)) 
                    WHEN RBI.C_OrderUnitItem = '2' 
                         THEN CONVERT(nvarchar,FLOOR(IM.C_ItemPackage2Qty))
                    ELSE '' END 
          ELSE CASE WHEN IsNull(RBI.C_MakerCaseQty,0) > 0 
                         THEN CAST(CONVERT(decimal(13,0),IM.C_ItemPackage1Qty) AS nvarchar) + 'X' + CONVERT(nvarchar,FLOOR(IM.C_ItemPackage2Qty)) 
                    WHEN IsNull(RBI.C_MakerCaseQty,0) = 0 
                         THEN CONVERT(nvarchar,FLOOR(IM.C_ItemPackage2Qty))
                    ELSE '' END 
     END AS C_ResultsQty
    ,CASE WHEN IsNull(RBI.C_MakerCaseQty,0) = 0 THEN CASE WHEN RBI.C_OrderUnitItem = '1' THEN FLOOR(IsNull(RBI_AR.C_ResultsQty, 0)) ELSE 0 END ELSE FLOOR(IsNull(RBI.C_MakerCaseQty,0)) END as C_MakerCaseQty
    ,CASE WHEN IsNull(RBI.C_MakerBowlQty,0) = 0 THEN CASE WHEN RBI.C_OrderUnitItem = '2' THEN FLOOR(IsNull(RBI_AR.C_ResultsQty, 0)) ELSE 0 END ELSE FLOOR(IsNull(RBI.C_MakerBowlQty,0)) END as C_MakerBowlQty
    ,CASE WHEN IsNull(RBI.C_MakerPieceQty,0) = 0 THEN FLOOR(IsNull(RBI_AR.C_ResultsPieceQty, 0)) ELSE FLOOR(IsNull(RBI.C_MakerPieceQty,0)) END as C_MakerPieceQty
    ,CONVERT(decimal(22,2),IsNull(RBI.ItemPrice,0)) as ItemPrice
    ,FLOOR(IsNull(RBI.ItemAmnt,0)) as ItemAmnt
    ,CONVERT(decimal(9,2),ARBT.C_CalcValue1) AS Remark1
    ,CONVERT(decimal(9,2),BRBT.C_CalcValue1) AS Remark2
    ,CONVERT(decimal(22,2),RBI.C_CustSalPrice) as Remark3
    ,CASE RBH.C_ShopDirectDelivery WHEN 1 THEN '店入' WHEN 2 THEN '直送' WHEN 3 THEN '店引取' WHEN 4 THEN '直送引取' ELSE '' END as C_ShopDirectDelivery
    ,RBH.C_MakerSlipNoOr
    ,RBH.C_MakerDescr
    ,CASE RBH.C_MkRegSaleGubun WHEN 0 THEN '定番' WHEN 1 THEN '特売' WHEN 2 THEN '分類不能' ELSE '' END as C_MkRegSaleGubun
    ,CAH.ShippingDate
    ,CAH.DueDate
FROM C_sdAcceptHeader CAH
INNER JOIN C_sdAcceptItem CAI
    ON CAH.SiteCode = CAI.SiteCode
    AND CAH.OrderAcceptNo = CAI.C_OrderAcceptNo
    AND CAI.C_OrderType = '400'
LEFT JOIN rpBillHeader RBH
    ON RBH.SiteCode = CAH.SiteCode
    AND RBH.c_OrderAcceptNo = CAH.OrderAcceptNo
    AND RBH.ArApGubun = 'AP'
    AND RBH.SysCase <> '500'
LEFT JOIN Organization_jpn OJ
    ON OJ.ComCode = N'0001'
    AND OJ.OrganBdate <= CONVERT ( NCHAR(8), GETDATE(), 112)
    AND OJ.OrganEdate >= CONVERT ( NCHAR(8), GETDATE(), 112)
LEFT JOIN DeptMaster_jpn DMJ
    ON DMJ.ComCode = N'0001'
    AND DMJ.DeptCode = CAH.DeptCode 
    AND DMJ.RevNo = OJ.RevNo 
LEFT JOIN rpBillItem RBI
    ON RBI.SiteCode = CAH.SiteCode
    AND RBI.BillNo = RBH.BillNo
    AND RBI.ArApGubun = RBH.ArApGubun
    AND RBI.C_OrderAcceptSerNo = CAI.C_OrderAcceptSerNo
LEFT JOIN CsMaster CM
    ON CM.ComCode = N'0001'
    AND CM.CsCode = CAI.C_ItemMakerCode 
LEFT JOIN CsMaster HCSM
	ON	HCSM.ComCode = N'0001'
	AND HCSM.CsCode = CAH.CsCode
LEFT JOIN C_ItemCsMaster ICM
    ON ICM.DeptCode = CAH.DeptCode
    AND ICM.CsCode = CAH.CsCode
    AND ICM.C_ItemJanCode = CAI.ItemJanCode
    AND ICM.C_MainItemCode = CAI.C_MainItemCode
    AND ICM.ItemCode = CAI.ItemCode
    AND ICM.C_QualityGubun = '10'
    AND ICM.C_poRegSaleGubun = CAH.C_RegSaleGubun
	AND (	ISNULL(HCSM.C_RecordedBase, '') = '' 
		OR (HCSM.C_RecordedBase = '1' 
			AND CAI.IrExpectDate >= ICM.AvailableBDate
			AND CAI.IrExpectDate <= ICM.AvailableEDate)
		OR (HCSM.C_RecordedBase = '2' 
			AND CAI.DueDate >= ICM.AvailableBDate
			AND CAI.DueDate <= ICM.AvailableBDate
			) )
LEFT JOIN ItemMaster IM 
    ON IM.ItemCode = CAI.ItemCode 
	AND IM.ComCode = N'0001'
LEFT JOIN CsMaster CsM ON
		CsM.ComCode = N'0001'
	AND CsM.ArCheck = 'Y'
	AND CsM.CsCode = CAH.ShipToCs
LEFT JOIN CsMaster PCsM ON
		PCsM.ComCode = N'0001'
	AND PCsM.CsCode = CsM.ParentCs
LEFT JOIN rpBillItem RBI_AR 
ON RBI_AR.SiteCode = RBI.SiteCode  
AND RBI_AR.InoutNo = RBI.BillNo 
AND RBI_AR.InoutSerNo = RBI.BillSerNo 
AND RBI_AR.InoutGubun = RBI.ArApGubun 
LEFT JOIN rpBillHeader RBH_AR  
ON RBH_AR.SiteCode = RBI_AR.SiteCode  
AND RBH_AR.BillNo = RBI_AR.BillNo 
AND RBH_AR.ArApGubun = RBI_AR.ArApGubun 
LEFT JOIN (
    SELECT I.SiteCode, I.C_OriginBillNo, I.C_OriginBillSerNo, C_CalcValue1 
    FROM rpBillItem I
    JOIN rpBillHeader H
    ON I.SiteCode = H.SiteCode
    AND I.BillNo = H.BillNO
    AND I.ArApGubun = H.ArApGubun
    WHERE H.SysCase = '500'
    AND H.CaseCode = 'P71'
) AS ARBT 
ON ARBT.SiteCode = RBI.SiteCode  
AND ARBT.C_OriginBillNo = RBI.BillNo 
AND ARBT.C_OriginBillSerNo = RBI.BillSerNo 
LEFT JOIN (
    SELECT I.SiteCode, I.C_OriginBillNo, I.C_OriginBillSerNo, C_CalcValue1 
    FROM rpBillItem I
    JOIN rpBillHeader H
    ON I.SiteCode = H.SiteCode
    AND I.BillNo = H.BillNO
    AND I.ArApGubun = H.ArApGubun
    WHERE H.SysCase = '500'
    AND H.CaseCode = 'P72'
) AS BRBT 
ON BRBT.SiteCode = RBI.SiteCode  
AND BRBT.C_OriginBillNo = RBI.BillNo 
AND BRBT.C_OriginBillSerNo = RBI.BillSerNo 
WHERE
    CAH.SiteCode = N'0001'
    AND CAH.DeptCode = N'508'
    AND RBI.BillNo IS NOT NULL
    AND CAH.OrderAcceptNo IN (N'SD411180411A0059',N'SD411180412A0049')
Order by CAH.OrderAcceptNo
UPDATE #C_DirectShipmentStatus set #C_DirectShipmentStatus.SumMakerCaseQty = SumTable.SumMakerCaseQty,#C_DirectShipmentStatus.SumMakerBowlQty = SumTable.SumMakerBowlQty,#C_DirectShipmentStatus.SumItemPrice = SumTable.SumItemPrice
FROM
(SELECT CASE WHEN RBH.BillNo = NULL THEN CAH.CsCode ELSE RBH.C_1stStoreCode END as CsCode
    ,CAH.DueDate
    ,CAH.ShippingDate
    ,Sum(FLOOR(IsNull(RBI.C_MakerCaseQty,0))) as SumMakerCaseQty
    ,Sum(FLOOR(IsNull(RBI.C_MakerBowlQty,0))) as SumMakerBowlQty
    ,Sum(FLOOR(IsNull(RBI.ItemAmnt,0))) as SumItemPrice
FROM C_sdAcceptHeader CAH
LEFT JOIN rpBillHeader RBH
    ON RBH.SiteCode = CAH.SiteCode
    AND RBH.c_OrderAcceptNo = CAH.OrderAcceptNo
    AND RBH.ArApGubun = 'AP'
LEFT JOIN rpBillItem RBI
    ON RBI.SiteCode = CAH.SiteCode
    AND RBI.BillNo = RBH.BillNo
    AND RBI.ArApGubun = 'AP'
WHERE
    CAH.SiteCode = N'0001'
    AND CAH.OrderAcceptNo IN (N'SD411180411A0059',N'SD411180412A0049')
GROUP BY
    CASE WHEN RBH.BillNo = NULL THEN CAH.CsCode ELSE RBH.C_1stStoreCode END
    ,CAH.DueDate
    ,CAH.ShippingDate
    ) AS SumTable
WHERE
    ISNULL(#C_DirectShipmentStatus.MainCsCode, '') = ISNULL(SumTable.CsCode, '')
    AND #C_DirectShipmentStatus.OrderDueDate = SumTable.DueDate
    AND #C_DirectShipmentStatus.ShippingDate = SumTable.ShippingDate
SELECT Distinct MainCsCode,DeptName,C_1stStoreName,C_DelvCode,C_DelvName,C_DelvAddress,CsName,C_TradingCode,SUBSTRING(C_ItemMakerCode,2,LEN(C_ItemMakerCode)),DueDate,C_MakerSlipNo,DueDate,C_OwnOrderNo,
    ItemCode,C_MakerItemName,'',C_ResultsQty,C_MakerCaseQty,C_MakerBowlQty,C_MakerPieceQty,'',ItemPrice,ItemAmnt,Remark1,Remark2,Remark3,SumMakerCaseQty,SumMakerBowlQty,'',SumItemPrice,
    '',C_ShopDirectDelivery,C_MakerSlipNoOr,'','',C_MakerDescr,C_MkRegSaleGubun,'',''
From #C_DirectShipmentStatus




--↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑SEQ013408O 対応↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑--










