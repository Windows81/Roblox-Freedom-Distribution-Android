package com.roblox.client.game;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7006a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7007b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f7008c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7009d = "";
    private int e = -1;

    private a() {
    }

    public long a() {
        return this.f7006a;
    }

    public long b() {
        return this.f7007b;
    }

    public String c() {
        return this.f7008c;
    }

    public String d() {
        return this.f7009d;
    }

    public int e() {
        return this.e;
    }

    public void a(long j) {
        this.f7006a = j;
    }

    public void b(long j) {
        this.f7007b = j;
    }

    public void a(String str) {
        this.f7008c = str;
    }

    public void b(String str) {
        this.f7009d = str;
    }

    public void a(int i) {
        this.e = i;
    }

    public String toString() {
        return getClass().getSimpleName() + "{ placeId:" + this.f7006a + ", userId:" + this.f7007b + ", accessCode:" + this.f7008c + ", gameId:" + this.f7009d + ", reqType:" + this.e + " }";
    }

    public static a a(Long l, Long l2, String str, String str2, Integer num) {
        a aVar = new a();
        long jLongValue = l != null ? l.longValue() : -1L;
        long jLongValue2 = l2 != null ? l2.longValue() : -1L;
        int i = -1;
        if (jLongValue == -1 && jLongValue2 != -1) {
            aVar.b(jLongValue2);
            i = 1;
        } else if (jLongValue != -1) {
            aVar.a(jLongValue);
            if (str != null) {
                aVar.a(str);
                i = 2;
            } else if (str2 != null) {
                aVar.b(str2);
                i = 3;
            } else {
                i = 0;
            }
        }
        if (num != null) {
            aVar.a(num.intValue());
        } else {
            aVar.a(i);
        }
        return aVar;
    }

    public static Bundle a(a aVar) {
        if (aVar == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("mPlaceId", aVar.a());
        bundle.putLong("mUserId", aVar.b());
        bundle.putString("mAccessCode", aVar.c());
        bundle.putString("mGameId", aVar.d());
        bundle.putInt("mRequestType", aVar.e());
        return bundle;
    }

    public static a a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        a aVar = new a();
        aVar.a(bundle.getLong("mPlaceId", 0L));
        aVar.b(bundle.getLong("mUserId", 0L));
        aVar.a(bundle.getString("mAccessCode", ""));
        aVar.b(bundle.getString("mGameId", ""));
        aVar.a(bundle.getInt("mRequestType", -1));
        return aVar;
    }
}
