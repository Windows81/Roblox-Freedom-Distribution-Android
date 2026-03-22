package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.aa;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Lock f3399a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f3400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lock f3401c = new ReentrantLock();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SharedPreferences f3402d;

    private c(Context context) {
        this.f3402d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static c a(Context context) {
        aa.a(context);
        f3399a.lock();
        try {
            if (f3400b == null) {
                f3400b = new c(context.getApplicationContext());
            }
            return f3400b;
        } finally {
            f3399a.unlock();
        }
    }

    private static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(":");
        sb.append(str2);
        return sb.toString();
    }

    @Nullable
    private final GoogleSignInAccount c(String str) {
        String strA;
        if (!TextUtils.isEmpty(str) && (strA = a(b("googleSignInAccount", str))) != null) {
            try {
                return GoogleSignInAccount.a(strA);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    @Nullable
    private final GoogleSignInOptions d(String str) {
        String strA;
        if (!TextUtils.isEmpty(str) && (strA = a(b("googleSignInOptions", str))) != null) {
            try {
                return GoogleSignInOptions.a(strA);
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    @Nullable
    public GoogleSignInAccount a() {
        return c(a("defaultGoogleSignInAccount"));
    }

    @Nullable
    protected String a(String str) {
        this.f3401c.lock();
        try {
            return this.f3402d.getString(str, null);
        } finally {
            this.f3401c.unlock();
        }
    }

    public void a(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        aa.a(googleSignInAccount);
        aa.a(googleSignInOptions);
        a("defaultGoogleSignInAccount", googleSignInAccount.k());
        aa.a(googleSignInAccount);
        aa.a(googleSignInOptions);
        String strK = googleSignInAccount.k();
        a(b("googleSignInAccount", strK), googleSignInAccount.m());
        a(b("googleSignInOptions", strK), googleSignInOptions.i());
    }

    protected void a(String str, String str2) {
        this.f3401c.lock();
        try {
            this.f3402d.edit().putString(str, str2).apply();
        } finally {
            this.f3401c.unlock();
        }
    }

    @Nullable
    public GoogleSignInOptions b() {
        return d(a("defaultGoogleSignInAccount"));
    }

    protected void b(String str) {
        this.f3401c.lock();
        try {
            this.f3402d.edit().remove(str).apply();
        } finally {
            this.f3401c.unlock();
        }
    }

    @Nullable
    public String c() {
        return a("refreshToken");
    }

    public void d() {
        String strA = a("defaultGoogleSignInAccount");
        b("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        b(b("googleSignInAccount", strA));
        b(b("googleSignInOptions", strA));
    }

    public void e() {
        this.f3401c.lock();
        try {
            this.f3402d.edit().clear().apply();
        } finally {
            this.f3401c.unlock();
        }
    }
}
