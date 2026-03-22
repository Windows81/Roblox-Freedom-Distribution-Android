package com.appsflyer.internal;

import android.content.Context;
import android.net.TrafficStats;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.internal.model.event.BackgroundEvent;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ad implements Runnable {

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private final BackgroundEvent f168;

    public ad(BackgroundEvent backgroundEvent) {
        this.f168 = (BackgroundEvent) backgroundEvent.weakContext();
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    final HttpURLConnection m123() {
        String strM99;
        HttpURLConnection httpURLConnection;
        URL url;
        int responseCode;
        strM99 = "";
        String strUrlString = this.f168.urlString();
        String strBody = this.f168.body();
        boolean zTrackingStopped = this.f168.trackingStopped();
        boolean response = this.f168.readResponse();
        boolean zProxyMode = this.f168.proxyMode();
        boolean zIsEncrypt = this.f168.isEncrypt();
        byte[] bytes = strBody.getBytes();
        HttpURLConnection httpURLConnection2 = null;
        if (zTrackingStopped) {
            return null;
        }
        boolean z = false;
        try {
            url = new URL(strUrlString);
            if (zProxyMode) {
                if (ai.f184 == null) {
                    ai.f184 = new ai();
                }
                ai.f184.m141("server_request", url.toString(), strBody);
                int length = strBody.getBytes("UTF-8").length;
                StringBuilder sb = new StringBuilder("call = ");
                sb.append(url);
                sb.append("; size = ");
                sb.append(length);
                sb.append(" byte");
                sb.append(length > 1 ? "s" : "");
                sb.append("; body = ");
                sb.append(strBody);
                ah.m134(sb.toString());
            }
            TrafficStats.setThreadStatsTag("AppsFlyer".hashCode());
            httpURLConnection = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection.setReadTimeout(30000);
                httpURLConnection.setConnectTimeout(30000);
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setRequestProperty("Content-Type", zIsEncrypt ? "application/octet-stream" : "application/json");
                OutputStream outputStream = httpURLConnection.getOutputStream();
                if (zIsEncrypt) {
                    try {
                        try {
                            bytes = (byte[]) ((Class) d.m176(24, (char) 0, 24)).getDeclaredMethod("ı", byte[].class).invoke(((Class) d.m176(24, (char) 0, 24)).getMethod("ǃ", String.class).invoke(null, this.f168.key()), bytes);
                        } catch (Throwable th) {
                            Throwable cause = th.getCause();
                            if (cause != null) {
                                throw cause;
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        Throwable cause2 = th2.getCause();
                        if (cause2 != null) {
                            throw cause2;
                        }
                        throw th2;
                    }
                }
                outputStream.write(bytes);
                outputStream.close();
                httpURLConnection.connect();
                responseCode = httpURLConnection.getResponseCode();
                strM99 = response ? AppsFlyerLibCore.getInstance().m99(httpURLConnection) : "";
                if (zProxyMode) {
                    if (ai.f184 == null) {
                        ai.f184 = new ai();
                    }
                    ai.f184.m141("server_response", url.toString(), String.valueOf(responseCode), strM99);
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection2 = httpURLConnection;
                AFLogger.afErrorLog("Error while calling ".concat(String.valueOf(strUrlString)), th);
                httpURLConnection = httpURLConnection2;
            }
        } catch (Throwable th4) {
            th = th4;
        }
        if (responseCode == 200) {
            AFLogger.afInfoLog("Status 200 ok");
            Context context = this.f168.context();
            if (url.toString().startsWith(ServerConfigHandler.getUrl(AppsFlyerLibCore.REGISTER_URL)) && context != null) {
                AppsFlyerLibCore.getSharedPreferences(context).edit().putBoolean("sentRegisterRequestToAF", true).apply();
                AFLogger.afDebugLog("Successfully registered for Uninstall Tracking");
            }
        } else {
            z = true;
        }
        StringBuilder sb2 = new StringBuilder("Connection ");
        sb2.append(z ? "error" : "call succeeded");
        sb2.append(": ");
        sb2.append(strM99);
        AFLogger.afInfoLog(sb2.toString());
        return httpURLConnection;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m123();
    }
}
