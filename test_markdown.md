# pMaximizer Update - v.3.0

## What type of upgrade do I need?

There are two types of upgrades available today for the pMaximizer, depending on the user's needs:

1. An existing pMaximizer user wishing to upgrade to our latest version, including the use of a new Google Ads API version (after deprecation of v14), and new features to the dashboard such as the Asset Group Performance table. This update will result in a new Looker Studio dashboard with the latest updates.

2. A non-retail pMaximizer user that wants to upgrade to the retail version. The update for this user will involve creating a new Looker Studio dashboard for the user, with an additional page of retail-related insights.

All upgrades can be done in a few quick and simple steps.

## How To Upgrade:

These are the steps to update your pMaximizer to the new version:

1. Enter the Google Cloud Platform (GCP).
2. Make sure you’re in the project you deployed the pMaximizer to.
3. Activate the cloud shell by clicking on the upper right side of the screen.
4. Enter the following commands in the cloud shell, depending on the user type best describing you. Press Enter after each one.

| 1. **Existing pMaximizer users** | 2. **Non-retail pMaximizer users upgrading to the retail pMaximizer** |
| -------------------------------- | ------------------------------------------------------------------- |
| `cd pmax_best_practices_dashboard`<br>`git pull`<br>`sh upgrade_pmaximizer.sh`<br>[Video tutorial can be found here](https://youtu.be/mL773VRdWBI). (make sure you paste the sh upgrade_pmaximizer.sh and not the one used in the video). | `sh non_retail_to_retail_upgrade.sh`<br>[Video tutorial can be found here](https://youtu.be/SHlK0lXsAw8). |

Follow the link at the end of the deployment process to see your new upgraded version!
