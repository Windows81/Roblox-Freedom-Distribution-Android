package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class aa implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f5189a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PowerManager.WakeLock f5190b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FirebaseInstanceId f5191c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f5192d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ac f5193e;

    aa(FirebaseInstanceId firebaseInstanceId, p pVar, ac acVar, long j) {
        this.f5191c = firebaseInstanceId;
        this.f5192d = pVar;
        this.f5193e = acVar;
        this.f5189a = j;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) a().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f5190b = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5190b.acquire();
        try {
            this.f5191c.a(true);
            if (!this.f5191c.i()) {
                this.f5191c.a(false);
                return;
            }
            if (!b()) {
                new ab(this).a();
                return;
            }
            if (c() && d() && this.f5193e.a(this.f5191c)) {
                this.f5191c.a(false);
            } else {
                this.f5191c.a(this.f5189a);
            }
        } finally {
            this.f5190b.release();
        }
    }

    private final boolean c() {
        try {
            if (this.f5191c.j()) {
                return true;
            }
            this.f5191c.k();
            return true;
        } catch (IOException e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Build channel failed: ".concat(strValueOf) : new String("Build channel failed: "));
            return false;
        }
    }

    private final boolean d() {
        z zVarE = this.f5191c.e();
        if (zVarE != null && !zVarE.b(this.f5192d.b())) {
            return true;
        }
        try {
            String strF = this.f5191c.f();
            if (strF == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
            }
            if (zVarE == null || (zVarE != null && !strF.equals(zVarE.f5294a))) {
                Context contextA = a();
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", strF);
                x.b(contextA, intent);
                x.a(contextA, new Intent("com.google.firebase.iid.TOKEN_REFRESH"));
            }
            return true;
        } catch (IOException | SecurityException e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Token retrieval failed: ".concat(strValueOf) : new String("Token retrieval failed: "));
            return false;
        }
    }

    final Context a() {
        return this.f5191c.b().a();
    }

    final boolean b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
