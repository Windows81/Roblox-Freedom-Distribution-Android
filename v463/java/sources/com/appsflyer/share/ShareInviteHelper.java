package com.appsflyer.share;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.AFExecutor;
import com.appsflyer.AFInAppEventType;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.OneLinkHttpTask;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ShareInviteHelper {
    @Deprecated
    public static void generateUserInviteLink(Context context, String str, Map<String, String> map, CreateOneLinkHttpTask.ResponseListener responseListener) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(str, map, AppsFlyerLibCore.getInstance(), context, AppsFlyerLib.getInstance().isTrackingStopped());
        createOneLinkHttpTask.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        createOneLinkHttpTask.setListener(responseListener);
        AFExecutor.getInstance().getThreadPoolExecutor().execute(createOneLinkHttpTask);
    }

    public static void trackInvite(Context context, String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            AFLogger.afWarnLog("[Invite] Cannot track App-Invite with null/empty channel");
            return;
        }
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, track Invite is disabled", true);
            return;
        }
        LinkGenerator linkGeneratorGenerateInviteUrl = generateInviteUrl(context);
        linkGeneratorGenerateInviteUrl.addParameters(map);
        AFLogger.afDebugLog("[Invite] Tracking App-Invite via channel: ".concat(String.valueOf(str)));
        StringBuilder sb = new StringBuilder("[Invite] Generated URL: ");
        sb.append(linkGeneratorGenerateInviteUrl.generateLink());
        AFLogger.afDebugLog(sb.toString());
        String mediaSource = linkGeneratorGenerateInviteUrl.getMediaSource();
        if (Constants.USER_INVITE_LINK_TYPE.equals(mediaSource)) {
            mediaSource = AFInAppEventType.INVITE;
        } else if ("af_user_share".equals(mediaSource)) {
            mediaSource = AFInAppEventType.SHARE;
        }
        HashMap map2 = new HashMap();
        if (linkGeneratorGenerateInviteUrl.getParameters() != null) {
            map2.putAll(linkGeneratorGenerateInviteUrl.getParameters());
        }
        map2.put("af_channel", str);
        AppsFlyerLib.getInstance().trackEvent(context, mediaSource, map2);
    }

    public static LinkGenerator generateInviteUrl(Context context) {
        String appsFlyerUID = AppsFlyerLib.getInstance().getAppsFlyerUID(context);
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        String string2 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_DOMAIN);
        LinkGenerator linkGeneratorAddParameter = new LinkGenerator(Constants.USER_INVITE_LINK_TYPE).setBaseURL(string, string2, context.getPackageName()).setReferrerUID(appsFlyerUID).setReferrerCustomerId(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID)).addParameter(Constants.URL_SITE_ID, context.getPackageName());
        String string3 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_SCHEME);
        if (string3 != null && string3.length() > 3) {
            linkGeneratorAddParameter.setBaseDeeplink(string3);
        }
        return linkGeneratorAddParameter;
    }
}
