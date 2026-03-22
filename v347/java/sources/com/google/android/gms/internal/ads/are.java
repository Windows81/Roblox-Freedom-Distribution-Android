package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public abstract class are<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final T f4389c;

    private are(int i, String str, T t) {
        this.f4387a = i;
        this.f4388b = str;
        this.f4389c = t;
        aoo.e().a(this);
    }

    /* synthetic */ are(int i, String str, Object obj, arf arfVar) {
        this(i, str, obj);
    }

    public static are<String> a(int i, String str) {
        are<String> areVarA = a(i, str, (String) null);
        aoo.e().b(areVarA);
        return areVarA;
    }

    public static are<Float> a(int i, String str, float f) {
        return new ari(i, str, Float.valueOf(f));
    }

    public static are<Integer> a(int i, String str, int i2) {
        return new arg(i, str, Integer.valueOf(i2));
    }

    public static are<Long> a(int i, String str, long j) {
        return new arh(i, str, Long.valueOf(j));
    }

    public static are<Boolean> a(int i, String str, Boolean bool) {
        return new arf(i, str, bool);
    }

    public static are<String> a(int i, String str, String str2) {
        return new arj(i, str, str2);
    }

    public static are<String> b(int i, String str) {
        are<String> areVarA = a(i, str, (String) null);
        aoo.e().c(areVarA);
        return areVarA;
    }

    protected abstract T a(SharedPreferences sharedPreferences);

    protected abstract T a(JSONObject jSONObject);

    public final String a() {
        return this.f4388b;
    }

    public abstract void a(SharedPreferences.Editor editor, T t);

    public final T b() {
        return this.f4389c;
    }

    public final int c() {
        return this.f4387a;
    }
}
