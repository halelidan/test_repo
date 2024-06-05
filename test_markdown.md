# pMaximizer Update - v.3.0

### Installation

Click [this link](https://console.cloud.google.com/?cloudshell=true&cloudshell_git_repo=https://github.com/google/pmax_best_practices_dashboard&cloudshell_tutorial=walkthrough.md) to be redirected to a Google Cloud tutorial that will guide you step-by-step in the deployment of pMaximizer. 

### What type of upgrade do I need?

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




### Update to the newest version

In order to update the code and produce a new updated dashboard link, execute these steps (If you wish to keep the same the dashboard as you previously produced you can, but in that case only backend updates will be implemented) . 

1. Enter the [Google Cloud Platform (GCP)](https://console.cloud.google.com/).
2. Make sure you’re in the project you deployed the pMaximizer to.
3. Activate the Cloud Shell by clicking on the "Activate Cloud Shell" icon on the upper right side of the screen: ![Activate Cloud Shell”](https://services.google.com/fh/files/misc/pmaximizer-impl-img5.png)
4. Execute (copy to the cloud shell and press enter) the following commands in your Cloud Shell:

```
cd pmax_best_practices_dashboard
```

```
git pull
```

```
sh upgrade_pmaximizer.sh
```

Follow the link at the end of the deployment process to see access the new frontend, or use your previous link if you wish to only update the backend of the dashboard. 

### After finishing an upgrade, some tables are missing, and when looking at the table properties I see an "Invalid dimension" for two or three of the top columns (see this screenshot): 

![column link error](https://services.google.com/fh/files/misc/ocid_bug.png)

This could be caused by newly introduced columns that allow deep linking into the respective accounts, campaigns, or asset groups. If you do not want deep linking, you can simply replace the broken (red) columns of your tables with account_name, campaign_name, and asset_group_name respectively.

If you do want the deep linking feature, see full instructions on how to fix the issue in [this document](https://docs.google.com/document/d/1bXSV6Et0xMD6XfS3y10qpdsbivrM_Y5-o71LMK8sbTI/edit?resourcekey=0-9MSOa9d1tYpWMnh2Zmr4Tg&tab=t.0) (you need to be part of the [Google group](https://groups.google.com/g/pmax-dashboard-template-readers/) to access the document).
---
