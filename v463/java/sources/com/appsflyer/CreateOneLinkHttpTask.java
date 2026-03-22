package com.appsflyer;

import android.content.Context;
import com.appsflyer.share.Constants;
import com.appsflyer.share.LinkGenerator;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CreateOneLinkHttpTask extends OneLinkHttpTask {
    private static final String BRAND_DOMAIN = "brand_domain";
    private static final String TRACKING_LINK_DATA_KEY = "data";
    private static final String TRACKING_LINK_LIVE_TIME_KEY = "ttl";
    private String brandDomain;
    private Context context;
    private Map<String, String> data;
    private boolean mTrackingStopped;
    private String packageName;
    private ResponseListener responseListener;
    private String ttl;

    public interface ResponseListener {
        void onResponse(String str);

        void onResponseError(String str);
    }

    public CreateOneLinkHttpTask(String str, Map<String, String> map, AppsFlyerLibCore appsFlyerLibCore, Context context, boolean z) {
        super(appsFlyerLibCore);
        this.packageName = "";
        this.mTrackingStopped = false;
        this.mTrackingStopped = z;
        this.context = context;
        if (context != null) {
            this.packageName = context.getPackageName();
        } else {
            AFLogger.afWarnLog("CreateOneLinkHttpTask: context can't be null");
        }
        this.oneLinkId = str;
        this.ttl = "-1";
        this.data = map;
    }

    public void setListener(ResponseListener responseListener) {
        this.responseListener = responseListener;
    }

    public void setBrandDomain(String str) {
        this.brandDomain = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.OneLinkHttpTask
    protected void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException {
        if (this.mTrackingStopped) {
            return;
        }
        httpsURLConnection.setRequestMethod("POST");
        httpsURLConnection.setDoInput(true);
        httpsURLConnection.setDoOutput(true);
        httpsURLConnection.setUseCaches(false);
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject(this.data);
        jSONObject.put(TRACKING_LINK_LIVE_TIME_KEY, this.ttl);
        jSONObject.put(TRACKING_LINK_DATA_KEY, jSONObject2);
        String str = this.brandDomain;
        if (str != null) {
            jSONObject.put(BRAND_DOMAIN, str);
        }
        httpsURLConnection.connect();
        DataOutputStream dataOutputStream = new DataOutputStream(httpsURLConnection.getOutputStream());
        dataOutputStream.writeBytes(jSONObject.toString());
        dataOutputStream.flush();
        dataOutputStream.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.OneLinkHttpTask
    protected String getOneLinkUrl() {
        return ServerConfigHandler.getUrl("https://%sonelink.%s/shortlink-sdk/v1") + "/" + this.oneLinkId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.OneLinkHttpTask
    protected void handleResponse(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                this.responseListener.onResponse(jSONObject.optString(itKeys.next()));
            }
        } catch (JSONException e2) {
            this.responseListener.onResponseError("Can't parse one link data");
            AFLogger.afErrorLog("Error while parsing to json " + str, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.appsflyer.OneLinkHttpTask
    protected void onErrorResponse() {
        LinkGenerator linkGeneratorAddParameters = new LinkGenerator(Constants.USER_INVITE_LINK_TYPE).setBaseURL(this.oneLinkId, AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_DOMAIN), this.packageName).addParameter(Constants.URL_SITE_ID, this.packageName).addParameters(this.data);
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string != null) {
            linkGeneratorAddParameters.setReferrerCustomerId(string);
        }
        this.responseListener.onResponse(linkGeneratorAddParameters.generateLink());
    }
}
