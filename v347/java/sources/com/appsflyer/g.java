package com.appsflyer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import com.appsflyer.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static g f2214a = new g();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2217d;
    private String e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, Object> f2215b = new HashMap();
    private boolean f = false;

    private g() {
    }

    public static g a() {
        return f2214a;
    }

    public void a(String str, String str2) {
        this.f2215b.put(str, str2);
    }

    public void a(String str, boolean z) {
        this.f2215b.put(str, Boolean.toString(z));
    }

    public String a(String str) {
        return (String) this.f2215b.get(str);
    }

    public boolean b(String str, boolean z) {
        String strA = a(str);
        return strA == null ? z : Boolean.valueOf(strA).booleanValue();
    }

    int b() {
        return a("logLevel", c.a.NONE.a());
    }

    public int a(String str, int i) {
        String strA = a(str);
        return strA == null ? i : Integer.valueOf(strA).intValue();
    }

    protected void c() {
        this.f2216c = true;
    }

    protected boolean d() {
        return this.f2217d;
    }

    protected void a(boolean z) {
        this.f2217d = z;
    }

    protected void e() {
        this.f2217d = true;
    }

    protected void b(String str) {
        a("AF_REFERRER", str);
        this.e = str;
    }

    public String a(Context context) {
        if (this.e != null) {
            return this.e;
        }
        if (a("AF_REFERRER") != null) {
            return a("AF_REFERRER");
        }
        if (context != null) {
            return context.getSharedPreferences("appsflyer-data", 0).getString("referrer", null);
        }
        return null;
    }

    public boolean f() {
        return b("disableOtherSdk", false);
    }

    @SuppressLint({"CommitPrefEdits"})
    public void a(SharedPreferences sharedPreferences) {
        String string = new JSONObject(this.f2215b).toString();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("savedProperties", string);
        if (Build.VERSION.SDK_INT >= 9) {
            editorEdit.apply();
        } else {
            editorEdit.commit();
        }
    }

    public void b(Context context) {
        String string;
        if (!g() && (string = context.getSharedPreferences("appsflyer-data", 0).getString("savedProperties", null)) != null) {
            c.b("Loading properties..");
            try {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (this.f2215b.get(next) == null) {
                        this.f2215b.put(next, jSONObject.getString(next));
                    }
                }
                this.f = true;
            } catch (JSONException e) {
                c.a("Failed loading properties", e);
            }
            c.b("Done loading properties: " + this.f);
        }
    }

    private boolean g() {
        return this.f;
    }
}
