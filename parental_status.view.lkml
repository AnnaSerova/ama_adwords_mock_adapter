include: "criteria_base.view"

explore: parental_status_adapter {
  persist_with: adwords_etl_datagroup
  extends: [criteria_joins_base]
  from: parental_status_adapter
  view_label: "Parental Status"
  view_name: criteria
  hidden: yes
}

view: parental_status_adapter {
  extends: [criteria_base]

  derived_table: {
    sql:
        SELECT
          CURRENT_DATE as _DATA_DATE,
          CURRENT_DATE as _LATEST_DATE,
          'NA' as ExternalCustomerId,
          'NA' as AdGroupId,
          'NA' as BaseAdGroupId,
          'NA' as BaseCampaignId,
          0 as BidModifier,
          'NA' as BidType,
          'NA' as CampaignId,
          'NA' as CpcBid,
          'NA' as CpcBidSource,
          0 as CpmBid,
          'NA' as CpmBidSource,
          'NA' as Criteria,
          'NA' as CriteriaDestinationUrl,
          'NA' as CriterionId,
          'NA' as FinalAppUrls,
          'NA' as FinalMobileUrls,
          'NA' as FinalUrls,
          false as IsNegative,
          false as IsRestrict,
          'NA' as Status,
          'NA' as TrackingUrlTemplate,
          'NA' as UrlCustomParameters,
          'NA' as criteria
        ;;
  }

  dimension: criteria {
    label: "Parental Status"
  }
}