package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class akv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f4135a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4136b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4137c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ali f4138d;
    private final als e;
    private int m;
    private final Object f = new Object();
    private ArrayList<String> g = new ArrayList<>();
    private ArrayList<String> h = new ArrayList<>();
    private ArrayList<alg> i = new ArrayList<>();
    private int j = 0;
    private int k = 0;
    private int l = 0;
    private String n = "";
    private String o = "";
    private String p = "";

    public akv(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f4135a = i;
        this.f4136b = i2;
        this.f4137c = i3;
        this.f4138d = new ali(i4);
        this.e = new als(i5, i6, i7);
    }

    private static String a(ArrayList<String> arrayList, int i) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            String str = arrayList2.get(i2);
            i2++;
            sb.append(str);
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String string = sb.toString();
        return string.length() >= 100 ? string.substring(0, 100) : string;
    }

    private final void c(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.f4137c) {
            return;
        }
        synchronized (this.f) {
            this.g.add(str);
            this.j += str.length();
            if (z) {
                this.h.add(str);
                this.i.add(new alg(f, f2, f3, f4, this.h.size() - 1));
            }
        }
    }

    public final void a(int i) {
        this.k = i;
    }

    public final void a(String str, boolean z, float f, float f2, float f3, float f4) {
        c(str, z, f, f2, f3, f4);
        synchronized (this.f) {
            if (this.l < 0) {
                jd.b("ActivityContent: negative number of WebViews.");
            }
            h();
        }
    }

    public final boolean a() {
        boolean z;
        synchronized (this.f) {
            z = this.l == 0;
        }
        return z;
    }

    public final String b() {
        return this.n;
    }

    public final void b(String str, boolean z, float f, float f2, float f3, float f4) {
        c(str, z, f, f2, f3, f4);
    }

    public final String c() {
        return this.o;
    }

    public final String d() {
        return this.p;
    }

    public final void e() {
        synchronized (this.f) {
            this.m -= 100;
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof akv)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        akv akvVar = (akv) obj;
        return akvVar.n != null && akvVar.n.equals(this.n);
    }

    public final void f() {
        synchronized (this.f) {
            this.l--;
        }
    }

    public final void g() {
        synchronized (this.f) {
            this.l++;
        }
    }

    public final void h() {
        synchronized (this.f) {
            int i = (this.j * this.f4135a) + (this.k * this.f4136b);
            if (i > this.m) {
                this.m = i;
                if (((Boolean) aoo.f().a(aro.W)).booleanValue() && !com.google.android.gms.ads.internal.aw.i().l().b()) {
                    this.n = this.f4138d.a(this.g);
                    this.o = this.f4138d.a(this.h);
                }
                if (((Boolean) aoo.f().a(aro.Y)).booleanValue() && !com.google.android.gms.ads.internal.aw.i().l().d()) {
                    this.p = this.e.a(this.h, this.i);
                }
            }
        }
    }

    public final int hashCode() {
        return this.n.hashCode();
    }

    public final int i() {
        return this.m;
    }

    final int j() {
        return this.j;
    }

    public final String toString() {
        int i = this.k;
        int i2 = this.m;
        int i3 = this.j;
        String strA = a(this.g, 100);
        String strA2 = a(this.h, 100);
        String str = this.n;
        String str2 = this.o;
        String str3 = this.p;
        return new StringBuilder(String.valueOf(strA).length() + 165 + String.valueOf(strA2).length() + String.valueOf(str).length() + String.valueOf(str2).length() + String.valueOf(str3).length()).append("ActivityContent fetchId: ").append(i).append(" score:").append(i2).append(" total_length:").append(i3).append("\n text: ").append(strA).append("\n viewableText").append(strA2).append("\n signture: ").append(str).append("\n viewableSignture: ").append(str2).append("\n viewableSignatureForVertical: ").append(str3).toString();
    }
}
