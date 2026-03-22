package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class mk implements mb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5312a;

    public mk() {
        this(null);
    }

    public mk(String str) {
        this.f5312a = str;
    }

    @Override // com.google.android.gms.internal.ads.mb
    public final void a(String str) {
        try {
            String strValueOf = String.valueOf(str);
            mj.b(strValueOf.length() != 0 ? "Pinging URL: ".concat(strValueOf) : new String("Pinging URL: "));
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                aoo.a();
                ly.a(true, httpURLConnection, this.f5312a);
                mc mcVar = new mc();
                mcVar.a(httpURLConnection, (byte[]) null);
                int responseCode = httpURLConnection.getResponseCode();
                mcVar.a(httpURLConnection, responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    mj.e(new StringBuilder(String.valueOf(str).length() + 65).append("Received non-success response code ").append(responseCode).append(" from pinging URL: ").append(str).toString());
                }
            } finally {
                httpURLConnection.disconnect();
            }
        } catch (IOException e) {
            String message = e.getMessage();
            mj.e(new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message).length()).append("Error while pinging URL: ").append(str).append(". ").append(message).toString());
        } catch (IndexOutOfBoundsException e2) {
            String message2 = e2.getMessage();
            mj.e(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(message2).length()).append("Error while parsing ping URL: ").append(str).append(". ").append(message2).toString());
        } catch (RuntimeException e3) {
            String message3 = e3.getMessage();
            mj.e(new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(message3).length()).append("Error while pinging URL: ").append(str).append(". ").append(message3).toString());
        }
    }
}
