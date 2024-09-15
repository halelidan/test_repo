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
CREATE OR REPLACE TABLE `{bq_dataset}_bq.text_assets_performance` AS 
SELECT
    asset_text,
    SUM(CASE WHEN asset_performance_label = 'BEST' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS best,
    SUM(CASE WHEN asset_performance_label = 'GOOD' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS good,
    SUM(CASE WHEN asset_performance_label = 'LEARNING' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS learning,
    SUM(CASE WHEN asset_performance_label = 'LOW' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS low,
    SUM(CASE WHEN asset_performance_label = 'PENDING' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS pending,
    SUM(CASE WHEN asset_performance_label = 'UNKNOWN' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS unknown,
    SUM(CASE WHEN asset_performance_label = 'UNSPECIFIED' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS unspecified,
    SUM(clicks) AS clicks,
    SUM(conversions) AS conversions,
    AVG(ctr) AS ctr,
    SUM(impressions) AS impressions
FROM `{bq_dataset}.ad_group_ad_asset_view`
GROUP BY asset_text

