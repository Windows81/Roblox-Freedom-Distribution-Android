package com.google.firebase.iid;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5195a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Integer, com.google.android.gms.f.h<Void>> f5196b = new androidx.c.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y f5197c;

    ac(y yVar) {
        this.f5197c = yVar;
    }

    final synchronized boolean a() {
        return b() != null;
    }

    final boolean a(FirebaseInstanceId firebaseInstanceId) {
        com.google.android.gms.f.h<Void> hVarRemove;
        while (true) {
            synchronized (this) {
                String strB = b();
                if (strB == null) {
                    Log.d("FirebaseInstanceId", "topic sync succeeded");
                    return true;
                }
                if (!a(firebaseInstanceId, strB)) {
                    return false;
                }
                synchronized (this) {
                    hVarRemove = this.f5196b.remove(Integer.valueOf(this.f5195a));
                    a(strB);
                    this.f5195a++;
                }
                if (hVarRemove != null) {
                    hVarRemove.a((Void) null);
                }
            }
        }
    }

    private final String b() {
        String strA;
        synchronized (this.f5197c) {
            strA = this.f5197c.a();
        }
        if (TextUtils.isEmpty(strA)) {
            return null;
        }
        String[] strArrSplit = strA.split(",");
        if (strArrSplit.length <= 1 || TextUtils.isEmpty(strArrSplit[1])) {
            return null;
        }
        return strArrSplit[1];
    }

    private final synchronized boolean a(String str) {
        synchronized (this.f5197c) {
            String strA = this.f5197c.a();
            String strValueOf = String.valueOf(str);
            if (!strA.startsWith(strValueOf.length() != 0 ? ",".concat(strValueOf) : new String(","))) {
                return false;
            }
            String strValueOf2 = String.valueOf(str);
            this.f5197c.a(strA.substring((strValueOf2.length() != 0 ? ",".concat(strValueOf2) : new String(",")).length()));
            return true;
        }
    }

    private static boolean a(FirebaseInstanceId firebaseInstanceId, String str) {
        String[] strArrSplit = str.split("!");
        if (strArrSplit.length == 2) {
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            byte b2 = -1;
            try {
                int iHashCode = str2.hashCode();
                if (iHashCode != 83) {
                    if (iHashCode == 85 && str2.equals("U")) {
                        b2 = 1;
                    }
                } else if (str2.equals("S")) {
                    b2 = 0;
                }
                if (b2 == 0) {
                    firebaseInstanceId.a(str3);
                    if (FirebaseInstanceId.g()) {
                        Log.d("FirebaseInstanceId", "subscribe operation succeeded");
                    }
                } else if (b2 == 1) {
                    firebaseInstanceId.b(str3);
                    if (FirebaseInstanceId.g()) {
                        Log.d("FirebaseInstanceId", "unsubscribe operation succeeded");
                    }
                }
            } catch (IOException e2) {
                String strValueOf = String.valueOf(e2.getMessage());
                Log.e("FirebaseInstanceId", strValueOf.length() != 0 ? "Topic sync failed: ".concat(strValueOf) : new String("Topic sync failed: "));
                return false;
            }
        }
        return true;
    }
}
