/*: CUSTOMSIZE
  {
    *rcNameID: =RCID_DMPAPER_SYSTEM_NAME
    *MaxSize: PAIR(1260000, 1782000)
    *MinSize: PAIR(162000, 258000)
    *MinLeftMargin: 10200
    *MaxPrintableWidth: 609600
    *CustCursorOriginX: %d{10200}
    *CustPrintableOriginX: %d{10200}
    *CustPrintableSizeX: %d{PhysPaperWidth - 20400}
    *switch: JobDuplexType
    {
      *case: AutoDuplex
      {
        *CustCursorOriginY: %d{15000}
        *CustPrintableOriginY: %d{15000}
        *CustPrintableSizeY: %d{PhysPaperLength - 30000}
      }
      *default
      {
        *CustCursorOriginY: %d{9000}
        *CustPrintableOriginY: %d{9000}
        *CustPrintableSizeY: %d{PhysPaperLength - 24000}
      }
    }
  }
}


*%
*% printer paper size
*%

*Feature: PageOutputMediaSize
{
  *rcNameID: =IDS_PRINTERPAPERSIZE
  *DefaultOption: ISOA4

  *Option: NorthAmericaLetter
  {
    *rcNameID: =IDS_LETTER_P_SHORT
  }

  *Option: NorthAmericaLegal
  {
    *rcNameID: =IDS_LEGAL_P_SHORT
  }

  *Option: ISOA5
  {
    *rcNameID: =IDS_A5_P_SHORT
  }

  *Option: ISOA4
  {
    *rcNameID: =IDS_A4_P_SHORT
  }

  *Option: JISB5
  {
    *rcNameID: =IDS_B5_P_SHORT
  }

  *Option: NorthAmerica4x6
  {
    *rcNameID: =IDS_REALCANON4X6_SHORT
  }

  *Option: NorthAmerica4x8
  {
    *rcNameID: =IDS_4X8_SHORT
  }

  *Option: NorthAmerica5x7
  {
    *rcNameID: =IDS_5X7_SHORT
  }

  *Option: NorthAmerica8x10
  {
    *rcNameID: =IDS_8X10_SHORT
  }

  *Option: JapanLPhoto
  {
    *rcNameID: =IDS_L_SHORT
  }

  *Option: Japan2LPhoto
  {
    *rcNameID: =IDS_2L_SHORT
  }

  *Option: JapanHagakiPostcard
  {
    *rcNameID: =IDS_HAGAKI_P_SHORT
  }

  *Option: JapanDoubleHagakiPostcard
  {
    *rcNameID: =IDS_HAGAKI_DBL_SHORT
  }

  *Option: NorthAmericaNumber10Envelope
  {
    *rcNameID: =IDS_ENV_10_SHORT
  }

  *Option: ISODL*/