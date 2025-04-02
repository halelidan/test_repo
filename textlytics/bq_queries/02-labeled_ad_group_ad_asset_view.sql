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
CREATE OR REPLACE TABLE `{bq_dataset}_bq.labeled_ad_group_ad_asset_view` AS (
    SELECT
        A.date,
        A.customer_id,
        A.customer_name,
        A.campaign_id,
        A.campaign_name,
        A.campaign_status,
        A.campaign_label,
        A.campaign_type,
        A.ad_group_id,
        A.ad_group_name,
        A.ad_group_label,
        A.ad_group_status,
        A.ad_group_ad_label,
        A.asset_id,
        A.asset_name,
        A.asset_type,
        A.asset_text,
        A.asset_sitelink,
        A.image_asset_url,
        A.youtube_video_id,
        A.asset_performance_label,
        A.clicks,
        A.conversions,
        A.ctr,
        A.impressions,
        A.cost/1e6 AS cost,
        ARRAY(
            SELECT LM.label_name
            FROM `{bq_dataset}_bq.labels_map` AS LM
            WHERE LM.ad_group_ad_label IN UNNEST(A.ad_group_ad_label)
        ) AS ad_group_ad_label_text
    FROM `{bq_dataset}.ad_group_ad_asset_view` AS A;
)