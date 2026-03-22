package com.roblox.client.game;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6288a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f6289b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6290c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6291d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6292e = "";
    private String f = "";
    private int g = -1;

    private h() {
    }

    public long a() {
        return this.f6288a;
    }

    public long b() {
        return this.f6289b;
    }

    public long c() {
        return this.f6290c;
    }

    public String d() {
        return this.f6291d;
    }

    public String e() {
        return this.f6292e;
    }

    public String f() {
        return this.f;
    }

    public int g() {
        return this.g;
    }

    public void a(long j) {
        this.f6288a = j;
    }

    public void b(long j) {
        this.f6289b = j;
    }

    public void c(long j) {
        this.f6290c = j;
    }

    public void a(String str) {
        this.f6291d = str;
    }

    public void b(String str) {
        this.f6292e = str;
    }

    public void a(int i) {
        this.g = i;
    }

    public void c(String str) {
        this.f = str;
    }

    public String toString() {
        return getClass().getSimpleName() + "{ placeId:" + this.f6288a + ", userId:" + this.f6289b + ", conversationId:" + this.f6290c + ", accessCode:" + this.f6291d + ", gameId:" + this.f6292e + ", reqType:" + this.g + ", referralPage:" + this.f + " }";
    }

    public static h a(Long l, Long l2, String str) {
        h hVar = new h();
        long jLongValue = l != null ? l.longValue() : -1L;
        long jLongValue2 = l2 != null ? l2.longValue() : -1L;
        if (jLongValue != -1 && jLongValue2 != -1) {
            hVar.c(jLongValue2);
            hVar.a(jLongValue);
            hVar.a(6);
        }
        if (str != null) {
            hVar.c(str);
        }
        return hVar;
    }

    public static h a(Long l, Long l2, String str, String str2, Integer num, String str3) {
        h hVar = new h();
        long jLongValue = l != null ? l.longValue() : -1L;
        long jLongValue2 = l2 != null ? l2.longValue() : -1L;
        int i = -1;
        if (jLongValue == -1 && jLongValue2 != -1) {
            hVar.b(jLongValue2);
            i = 1;
        } else if (jLongValue != -1) {
            hVar.a(jLongValue);
            if (str != null) {
                hVar.a(str);
                i = 2;
            } else if (str2 != null) {
                hVar.b(str2);
                i = 3;
            } else {
                i = 0;
            }
        }
        if (num != null) {
            hVar.a(num.intValue());
        } else {
            hVar.a(i);
        }
        if (str3 != null) {
            hVar.c(str3);
        }
        return hVar;
    }

    public static Bundle a(h hVar) {
        return a(null, hVar);
    }

    public static Bundle a(Bundle bundle, h hVar) {
        if (hVar == null) {
            return null;
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putLong("mPlaceId", hVar.a());
        bundle.putLong("mUserId", hVar.b());
        bundle.putLong("mConversationId", hVar.c());
        bundle.putString("mAccessCode", hVar.d());
        bundle.putString("mGameId", hVar.e());
        bundle.putInt("mRequestType", hVar.g());
        bundle.putString("mReferralPage", hVar.f());
        return bundle;
    }

    public static h a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        h hVar = new h();
        hVar.a(bundle.getLong("mPlaceId", 0L));
        hVar.b(bundle.getLong("mUserId", 0L));
        hVar.c(bundle.getLong("mConversationId", 0L));
        hVar.a(bundle.getString("mAccessCode", ""));
        hVar.b(bundle.getString("mGameId", ""));
        hVar.a(bundle.getInt("mRequestType", -1));
        hVar.c(bundle.getString("mReferralPage", ""));
        return hVar;
    }
}
