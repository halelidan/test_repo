# Textlytics: Text Assets Performance Dashboard

Welcome to Textlytics, an Assets Performance Dashboard repository!
This project is dedicated to building a streamlined Looker Studio dashboard that aggregates creative asset performance data from an MCC Google Ads account. The primary focus is on scaling the analysis of text assets, enabling quick insights and informed decision-making.

## Overview

This repository provides a solution to build an automated workflow for pulling Google Ads assets performance data daily into BigQuery. The solution leverages the [gaarf-workflow framework](https://github.com/google/ads-api-report-fetcher), which simplifies the integration between the Google Ads API and BigQuery using Google Cloud services such as Cloud Functions, Workflows, and Cloud Scheduler.

The workflow includes:

1. Defining and configuring SQL-like queries.
2. Automatically running the queries daily to fetch data via the Google Ads API.
3. Transferring and storing the data in BigQuery for scalable analysis.
4. Visualizing the processed data in Looker Studio with a pre-configured dashboard.

**Prerequisites**:

1. **Google Ads API Developer Token**
   a. Access the [Google Ads](https://ads.google.com) platform at the MCC level.
   b. Navigate to **Tools & Settings > Setup > API Center**. If you don’t see a developer token, complete the required details and request one.
   c. By default, new tokens have "Test Account" access. To use the API for production data, apply for "Basic Access" following [these instructions](https://developers.google.com/google-ads/api/docs/access-levels).

1. **Google Cloud Project**
   a. Create a new project on the [Google Cloud Console](https://console.cloud.google.com/).
   b. Ensure the project is linked to a **billing account**.

1. **Authentication Setup**
   a. Create a `google_ads.yaml` file for authentication.
   b. Follow [this step-by-step OAuth Credentials tutorial](https://console.cloud.google.com/?cloudshell=true&cloudshell_git_repo=https://github.com/google-marketing-solutions/credentials_creator_walkthrough&cloudshell_tutorial=walkthrough.md) in your Google Cloud Project.

## Contact

For any additional questions or feedback, feel free to contact [halelid@google.com](mailto:halelid@google.com).
