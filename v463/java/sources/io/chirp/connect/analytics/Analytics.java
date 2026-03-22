package io.chirp.connect.analytics;

import android.content.Context;
import io.chirp.b.a;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class Analytics {
    private String appKey;
    private String appSecret;
    private ClientID clientID;
    private JSONObject genericPostData;
    private a network;
    private String protocolName;
    private int protocolVersion;
    private String sdkVersion;

    public Analytics(Context context, String str, String str2, String str3, a aVar, String str4, int i) throws JSONException {
        this.clientID = new ClientID(context);
        this.network = aVar;
        this.appKey = str2;
        this.appSecret = str3;
        this.sdkVersion = str;
        this.protocolName = str4;
        this.protocolVersion = i;
        buildGenericPostData();
    }

    private void buildGenericPostData() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        this.genericPostData = jSONObject;
        jSONObject.put("client_id", this.clientID.getUuid());
        this.genericPostData.put("timestamp", TimestampUtils.getISO8601StringForCurrentDate());
        this.genericPostData.put("platform", "android");
        this.genericPostData.put("sdk_version", this.sdkVersion);
    }

    private void postAnalytics(final String str, final String str2, final String str3, final String str4, final String str5) {
        new Thread(new Runnable() { // from class: io.chirp.connect.analytics.Analytics.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Analytics.this.network.a(str, str2, str3, str4, str5);
                } catch (Exception unused) {
                }
                Thread.currentThread().interrupt();
            }
        }).start();
    }

    public void postInstantiate() {
        try {
            this.genericPostData.put("timestamp", TimestampUtils.getISO8601StringForCurrentDate());
            postAnalytics(this.appKey, this.appSecret, "connect", "instantiate", this.genericPostData.toString());
        } catch (JSONException unused) {
        }
    }

    public void postReceived(int i) {
        try {
            JSONObject jSONObject = new JSONObject(this.genericPostData.toString());
            jSONObject.put("success", i > 0);
            jSONObject.put("payload_length", i);
            jSONObject.put("protocol_name", this.protocolName);
            jSONObject.put("protocol_version", this.protocolVersion);
            jSONObject.put("timestamp", TimestampUtils.getISO8601StringForCurrentDate());
            postAnalytics(this.appKey, this.appSecret, "connect", "receive", jSONObject.toString());
        } catch (JSONException unused) {
        }
    }

    public void postSent(int i) {
        try {
            JSONObject jSONObject = new JSONObject(this.genericPostData.toString());
            jSONObject.put("payload_length", i);
            jSONObject.put("protocol_name", this.protocolName);
            jSONObject.put("protocol_version", this.protocolVersion);
            jSONObject.put("timestamp", TimestampUtils.getISO8601StringForCurrentDate());
            postAnalytics(this.appKey, this.appSecret, "connect", "send", jSONObject.toString());
        } catch (JSONException unused) {
        }
    }
}
