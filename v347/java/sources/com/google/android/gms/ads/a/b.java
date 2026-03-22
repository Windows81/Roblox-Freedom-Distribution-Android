package com.google.android.gms.ads.a;

import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class b extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Map f2942a;

    b(a aVar, Map map) {
        this.f2942a = map;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new d();
        Map map = this.f2942a;
        Uri.Builder builderBuildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
        for (String str : map.keySet()) {
            builderBuildUpon.appendQueryParameter(str, (String) map.get(str));
        }
        String string = builderBuildUpon.build().toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 200 || responseCode >= 300) {
                    Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(string).length() + 65).append("Received non-success response code ").append(responseCode).append(" from pinging URL: ").append(string).toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            e = e;
            String message = e.getMessage();
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(string).length() + 27 + String.valueOf(message).length()).append("Error while pinging URL: ").append(string).append(". ").append(message).toString(), e);
        } catch (IndexOutOfBoundsException e2) {
            String message2 = e2.getMessage();
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(string).length() + 32 + String.valueOf(message2).length()).append("Error while parsing ping URL: ").append(string).append(". ").append(message2).toString(), e2);
        } catch (RuntimeException e3) {
            e = e3;
            String message3 = e.getMessage();
            Log.w("HttpUrlPinger", new StringBuilder(String.valueOf(string).length() + 27 + String.valueOf(message3).length()).append("Error while pinging URL: ").append(string).append(". ").append(message3).toString(), e);
        }
    }
}
