package com.roblox.client.friends.b.a;

import android.content.Context;
import android.util.Log;
import io.chirp.connect.ChirpConnect;
import io.chirp.connect.interfaces.ConnectSetConfigListener;
import io.chirp.connect.models.ChirpError;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6034a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f6035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6036c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f6037d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f6038e;

    public b(String str, String str2, String str3, Context context, a aVar) {
        this.f6034a = str;
        this.f6035b = str2;
        this.f6036c = str3;
        this.f6037d = context;
        this.f6038e = aVar;
    }

    public ChirpConnect a() {
        ChirpConnect chirpConnect = new ChirpConnect(this.f6037d, this.f6034a, this.f6035b);
        this.f6038e.b();
        chirpConnect.setConfig(this.f6036c, new ConnectSetConfigListener() { // from class: com.roblox.client.friends.b.a.b.1
            @Override // io.chirp.connect.interfaces.ConnectSetConfigListener
            public void onSuccess() {
                b.this.f6038e.a();
                Log.i("ChirpConnectBuilder", "ChirpConnect.setConfig(). Success.");
            }

            @Override // io.chirp.connect.interfaces.ConnectSetConfigListener
            public void onError(ChirpError chirpError) {
                b.this.f6038e.a("InitError", chirpError.getErrorCode());
                Log.e("ChirpConnectBuilder", "Error setting chirp's licence: " + chirpError.getMessage() + ".");
            }
        });
        return chirpConnect;
    }
}
