package com.google.firebase.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f5289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ay f5291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, az> f5292d;

    public y(Context context) {
        this(context, new ay());
    }

    private y(Context context, ay ayVar) {
        this.f5292d = new androidx.c.a();
        this.f5290b = context;
        this.f5289a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f5291c = ayVar;
        File file = new File(androidx.core.a.b.a(this.f5290b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || c()) {
                return;
            }
            Log.i("FirebaseInstanceId", "App restored, clearing state");
            b();
            FirebaseInstanceId.a().h();
        } catch (IOException e2) {
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                String strValueOf = String.valueOf(e2.getMessage());
                Log.d("FirebaseInstanceId", strValueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(strValueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    public final synchronized String a() {
        return this.f5289a.getString("topic_operaion_queue", "");
    }

    public final synchronized void a(String str) {
        this.f5289a.edit().putString("topic_operaion_queue", str).apply();
    }

    private final synchronized boolean c() {
        return this.f5289a.getAll().isEmpty();
    }

    private static String b(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append("|T|");
        sb.append(str2);
        sb.append("|");
        sb.append(str3);
        return sb.toString();
    }

    static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("|S|");
        sb.append(str2);
        return sb.toString();
    }

    public final synchronized void b() {
        this.f5292d.clear();
        ay.a(this.f5290b);
        this.f5289a.edit().clear().commit();
    }

    public final synchronized z a(String str, String str2, String str3) {
        return z.a(this.f5289a.getString(b(str, str2, str3), null));
    }

    public final synchronized void a(String str, String str2, String str3, String str4, String str5) {
        String strA = z.a(str4, str5, System.currentTimeMillis());
        if (strA == null) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.f5289a.edit();
        editorEdit.putString(b(str, str2, str3), strA);
        editorEdit.commit();
    }

    public final synchronized az b(String str) {
        az azVarB;
        az azVar = this.f5292d.get(str);
        if (azVar != null) {
            return azVar;
        }
        try {
            azVarB = this.f5291c.a(this.f5290b, str);
        } catch (ba unused) {
            Log.w("FirebaseInstanceId", "Stored data is corrupt, generating new identity");
            FirebaseInstanceId.a().h();
            azVarB = this.f5291c.b(this.f5290b, str);
        }
        this.f5292d.put(str, azVarB);
        return azVarB;
    }

    public final synchronized void c(String str) {
        String strConcat = String.valueOf(str).concat("|T|");
        SharedPreferences.Editor editorEdit = this.f5289a.edit();
        for (String str2 : this.f5289a.getAll().keySet()) {
            if (str2.startsWith(strConcat)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.commit();
    }
}
