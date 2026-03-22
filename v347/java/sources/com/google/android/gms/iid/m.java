package com.google.android.gms.iid;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f3657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f3658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x f3659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, y> f3660d;

    public m(Context context) {
        this(context, new x());
    }

    private m(Context context, x xVar) {
        this.f3660d = new android.support.v4.g.a();
        this.f3658b = context;
        this.f3657a = context.getSharedPreferences("com.google.android.gms.appid", 0);
        this.f3659c = xVar;
        File file = new File(android.support.v4.a.c.a(this.f3658b), "com.google.android.gms.appid-no-backup");
        if (file.exists()) {
            return;
        }
        try {
            if (!file.createNewFile() || a()) {
                return;
            }
            Log.i("InstanceID/Store", "App restored, clearing state");
            b.a(this.f3658b, this);
        } catch (IOException e) {
            if (Log.isLoggable("InstanceID/Store", 3)) {
                String strValueOf = String.valueOf(e.getMessage());
                Log.d("InstanceID/Store", strValueOf.length() != 0 ? "Error creating file in no backup dir: ".concat(strValueOf) : new String("Error creating file in no backup dir: "));
            }
        }
    }

    static String a(String str, String str2) {
        return new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length()).append(str).append("|S|").append(str2).toString();
    }

    private static String b(String str, String str2, String str3) {
        return new StringBuilder(String.valueOf(str).length() + 4 + String.valueOf(str2).length() + String.valueOf(str3).length()).append(str).append("|T|").append(str2).append("|").append(str3).toString();
    }

    final synchronized String a(String str) {
        return this.f3657a.getString(str, null);
    }

    public final synchronized String a(String str, String str2, String str3) {
        return this.f3657a.getString(b(str, str2, str3), null);
    }

    public final synchronized void a(String str, String str2, String str3, String str4, String str5) {
        String strB = b(str, str2, str3);
        SharedPreferences.Editor editorEdit = this.f3657a.edit();
        editorEdit.putString(strB, str4);
        editorEdit.putString("appVersion", str5);
        editorEdit.putString("lastToken", Long.toString(System.currentTimeMillis() / 1000));
        editorEdit.commit();
    }

    public final boolean a() {
        return this.f3657a.getAll().isEmpty();
    }

    public final synchronized void b() {
        this.f3660d.clear();
        x.a(this.f3658b);
        this.f3657a.edit().clear().commit();
    }

    public final synchronized void b(String str) {
        SharedPreferences.Editor editorEdit = this.f3657a.edit();
        for (String str2 : this.f3657a.getAll().keySet()) {
            if (str2.startsWith(str)) {
                editorEdit.remove(str2);
            }
        }
        editorEdit.commit();
    }

    public final synchronized y c(String str) {
        y yVarB;
        yVarB = this.f3660d.get(str);
        if (yVarB == null) {
            try {
                yVarB = this.f3659c.a(this.f3658b, str);
            } catch (z e) {
                Log.w("InstanceID/Store", "Stored data is corrupt, generating new identity");
                b.a(this.f3658b, this);
                yVarB = this.f3659c.b(this.f3658b, str);
            }
            this.f3660d.put(str, yVarB);
        }
        return yVarB;
    }

    final void d(String str) {
        synchronized (this) {
            this.f3660d.remove(str);
        }
        x.c(this.f3658b, str);
        b(String.valueOf(str).concat("|"));
    }
}
