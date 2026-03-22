package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f3537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3539d;
    private final String e;
    private final String f;
    private final int g;
    private final List<String> h;
    private final String i;
    private final long j;
    private int k;
    private final String l;
    private final float m;
    private final long n;
    private long o;

    WakeLockEvent(int i, long j, int i2, String str, int i3, List<String> list, String str2, long j2, int i4, String str3, String str4, float f, long j3, String str5) {
        this.f3536a = i;
        this.f3537b = j;
        this.f3538c = i2;
        this.f3539d = str;
        this.e = str3;
        this.f = str5;
        this.g = i3;
        this.o = -1L;
        this.h = list;
        this.i = str2;
        this.j = j2;
        this.k = i4;
        this.l = str4;
        this.m = f;
        this.n = j3;
    }

    public WakeLockEvent(long j, int i, String str, int i2, List<String> list, String str2, long j2, int i3, String str3, String str4, float f, long j3, String str5) {
        this(2, j, i, str, i2, list, str2, j2, i3, str3, str4, f, j3, str5);
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long a() {
        return this.f3537b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int b() {
        return this.f3538c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long c() {
        return this.o;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String d() {
        return this.i;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long e() {
        return this.j;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String f() {
        String strH = h();
        int iK = k();
        String strJoin = l() == null ? "" : TextUtils.join(",", l());
        int iM = m();
        String strI = i() == null ? "" : i();
        String strN = n() == null ? "" : n();
        float fO = o();
        String strJ = j() == null ? "" : j();
        return new StringBuilder(String.valueOf(strH).length() + 45 + String.valueOf(strJoin).length() + String.valueOf(strI).length() + String.valueOf(strN).length() + String.valueOf(strJ).length()).append("\t").append(strH).append("\t").append(iK).append("\t").append(strJoin).append("\t").append(iM).append("\t").append(strI).append("\t").append(strN).append("\t").append(fO).append("\t").append(strJ).toString();
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long g() {
        return this.n;
    }

    public final String h() {
        return this.f3539d;
    }

    public final String i() {
        return this.e;
    }

    public final String j() {
        return this.f;
    }

    public final int k() {
        return this.g;
    }

    @Nullable
    public final List<String> l() {
        return this.h;
    }

    public final int m() {
        return this.k;
    }

    public final String n() {
        return this.l;
    }

    public final float o() {
        return this.m;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iA = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f3536a);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, a());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, h(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, k());
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, l(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, e());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, i(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, b());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, d(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, n(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, m());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, o());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, g());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, iA);
    }
}
