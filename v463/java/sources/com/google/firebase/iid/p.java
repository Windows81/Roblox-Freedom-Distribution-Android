package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Base64;
import android.util.Log;
import java.security.KeyPair;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f5269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5272e = 0;

    public p(Context context) {
        this.f5268a = context;
    }

    public final synchronized int a() {
        if (this.f5272e != 0) {
            return this.f5272e;
        }
        PackageManager packageManager = this.f5268a.getPackageManager();
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", "com.google.android.gms") == -1) {
            Log.e("FirebaseInstanceId", "Google Play services missing or without correct permission.");
            return 0;
        }
        if (!com.google.android.gms.common.util.m.i()) {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage("com.google.android.gms");
            List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                this.f5272e = 1;
                return 1;
            }
        }
        Intent intent2 = new Intent("com.google.iid.TOKEN_REQUEST");
        intent2.setPackage("com.google.android.gms");
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent2, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
            this.f5272e = 2;
            return 2;
        }
        Log.w("FirebaseInstanceId", "Failed to resolve IID implementation package, falling back");
        if (com.google.android.gms.common.util.m.i()) {
            this.f5272e = 2;
        } else {
            this.f5272e = 1;
        }
        return this.f5272e;
    }

    public static String a(com.google.firebase.b bVar) {
        String strB = bVar.c().b();
        if (strB != null) {
            return strB;
        }
        String strA = bVar.c().a();
        if (!strA.startsWith("1:")) {
            return strA;
        }
        String[] strArrSplit = strA.split(":");
        if (strArrSplit.length < 2) {
            return null;
        }
        String str = strArrSplit[1];
        if (str.isEmpty()) {
            return null;
        }
        return str;
    }

    public static String a(KeyPair keyPair) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(keyPair.getPublic().getEncoded());
            bArrDigest[0] = (byte) ((bArrDigest[0] & 15) + 112);
            return Base64.encodeToString(bArrDigest, 0, 8, 11);
        } catch (NoSuchAlgorithmException unused) {
            Log.w("FirebaseInstanceId", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    public final synchronized String b() {
        if (this.f5269b == null) {
            e();
        }
        return this.f5269b;
    }

    public final synchronized String c() {
        if (this.f5270c == null) {
            e();
        }
        return this.f5270c;
    }

    public final synchronized int d() {
        PackageInfo packageInfoA;
        if (this.f5271d == 0 && (packageInfoA = a("com.google.android.gms")) != null) {
            this.f5271d = packageInfoA.versionCode;
        }
        return this.f5271d;
    }

    private final synchronized void e() {
        PackageInfo packageInfoA = a(this.f5268a.getPackageName());
        if (packageInfoA != null) {
            this.f5269b = Integer.toString(packageInfoA.versionCode);
            this.f5270c = packageInfoA.versionName;
        }
    }

    private final PackageInfo a(String str) {
        try {
            return this.f5268a.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 23);
            sb.append("Failed to find package ");
            sb.append(strValueOf);
            Log.w("FirebaseInstanceId", sb.toString());
            return null;
        }
    }
}
