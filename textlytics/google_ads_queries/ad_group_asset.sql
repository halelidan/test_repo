-- Copyright 2022 Google LLC
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     https://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

SELECT
    segments.date AS date,
    customer.id AS account_id,
    customer.descriptive_name AS account_name,
    campaign.advertising_channel_type AS campaign_type,
    campaign.id AS campaign_id,
    campaign.name AS campaign_name,
    campaign.status AS campaign_status,
    ad_group.id AS ad_group_id,
    ad_group.name AS ad_group_name,
    ad_group.status AS ad_group_status,
    ad_group.type AS ad_group_type,
    ad_group_asset.asset AS ad_group_ad_asset,
    asset.id AS asset_id,
    ad_group_asset.field_type AS asset_type,
    ad_group_asset.primary_status AS asset_primary_status,
    ad_group_asset.source AS asset_source,
    ad_group_asset.status AS asset_status,
    asset.image_asset.full_size.url AS image_url,
    asset.image_asset.file_size AS image_file_size,
    asset.text_asset.text AS asset_text,
    metrics.clicks AS clicks,
    metrics.conversions AS conversions,
    metrics.cost_micros AS cost,
    metrics.ctr AS ctr,
    metrics.impressions AS impressions
FROM ad_group_asset
WHERE campaign.status = 'ENABLED'
 AND segments.date >= '{start_date}'
 AND segments.date <= '{end_date}'