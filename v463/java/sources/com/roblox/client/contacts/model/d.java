package com.roblox.client.contacts.model;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d extends a implements Comparable<d> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f5965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5966e;
    private int f;
    private int g;
    private String h;
    private String i;
    private boolean j;
    private boolean k;

    public d(long j, String str) {
        super(j, str);
    }

    public long d() {
        return this.f5965d;
    }

    public void a(JSONObject jSONObject) {
        this.f5965d = jSONObject.optLong("contactUserId", -1L);
        this.f5966e = jSONObject.optString("contactUsername", null);
        this.f = jSONObject.optInt("sharedFriendsCount", 0);
        this.g = jSONObject.optInt("friendshipStatus", 0);
        this.h = jSONObject.optString("phoneNumber", null);
        this.k = 1 == this.g;
    }

    public String e() {
        return this.f5966e;
    }

    public boolean f() {
        return this.f5965d != -1;
    }

    public String g() {
        return this.h;
    }

    public String h() {
        return this.i;
    }

    public void b(String str) {
        this.i = str;
    }

    public int i() {
        return this.f;
    }

    public int j() {
        return this.g;
    }

    public void k() {
        if (2 == this.g) {
            this.g = 3;
        } else {
            this.g = 1;
        }
        this.k = true;
    }

    public boolean l() {
        return 3 == this.g || this.k;
    }

    public boolean m() {
        return this.j;
    }

    public void n() {
        this.j = true;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(d dVar) {
        String strB = b();
        if (TextUtils.isEmpty(strB)) {
            return 1;
        }
        String strB2 = dVar.b();
        if (TextUtils.isEmpty(strB2)) {
            return -1;
        }
        return strB.compareToIgnoreCase(strB2);
    }
}
