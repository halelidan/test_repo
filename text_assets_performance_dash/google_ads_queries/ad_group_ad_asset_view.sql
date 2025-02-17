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
    customer.id AS customer_id,
    customer.descriptive_name AS customer_name,
    campaign.id AS campaign_id,
    campaign.name AS campaign_name,
    campaign.status AS campaign_status,
    campaign.labels AS campaign_label,
    ad_group.id AS ad_group_id,
    ad_group.name AS ad_group_name,
    ad_group.labels AS ad_group_label,
    ad_group.status AS ad_group_status,
    ad_group_ad.labels AS ad_group_ad_label,
    asset.id AS asset_id,
    asset.name AS asset_name,
    ad_group_ad_asset_view.field_type AS asset_type,
    asset.text_asset.text AS asset_text,
    asset.sitelink_asset.link_text AS asset_sitelink,
    asset.image_asset.full_size.url AS image_asset_url,
    asset.youtube_video_asset.youtube_video_id AS youtube_video_id,
    ad_group_ad_asset_view.performance_label AS asset_performance_label,
    metrics.clicks AS clicks,
    metrics.conversions AS conversions,
    metrics.ctr AS ctr,
    metrics.impressions AS impressions
FROM ad_group_ad_asset_view
 WHERE campaign.advertising_channel_type = 'SEARCH'
 AND campaign.status = 'ENABLED'
 AND ad_group.status = 'ENABLED'
 AND ad_group_ad.status = 'ENABLED'
 AND segments.date >= '{start_date}'
 AND segments.date <= '{end_date}'
