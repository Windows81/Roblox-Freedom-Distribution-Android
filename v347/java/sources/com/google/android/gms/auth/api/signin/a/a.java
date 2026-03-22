package com.google.android.gms.auth.api.signin.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.w;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Lock f3289a = new ReentrantLock();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("sLk")
    private static a f3290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lock f3291c = new ReentrantLock();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLk")
    private final SharedPreferences f3292d;

    private a(Context context) {
        this.f3292d = context.getSharedPreferences("com.google.android.gms.signin", 0);
    }

    public static a a(Context context) {
        w.a(context);
        f3289a.lock();
        try {
            if (f3290b == null) {
                f3290b = new a(context.getApplicationContext());
            }
            return f3290b;
        } finally {
            f3289a.unlock();
        }
    }

    private static String a(String str, String str2) {
        return new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(":").append(str2).toString();
    }

    @Nullable
    private final GoogleSignInAccount b(String str) {
        String strA;
        if (TextUtils.isEmpty(str) || (strA = a(a("googleSignInAccount", str))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.a(strA);
        } catch (JSONException e) {
            return null;
        }
    }

    @Nullable
    public GoogleSignInAccount a() {
        return b(a("defaultGoogleSignInAccount"));
    }

    @Nullable
    protected String a(String str) {
        this.f3291c.lock();
        try {
            return this.f3292d.getString(str, null);
        } finally {
            this.f3291c.unlock();
        }
    }
}
