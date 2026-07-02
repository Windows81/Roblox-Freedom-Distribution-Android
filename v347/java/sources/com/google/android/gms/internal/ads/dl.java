package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class dl {
    public final float A;
    public final boolean B;
    public final int C;
    public final int D;
    public final boolean E;
    public final boolean F;
    public final Future<String> G;
    public final String H;
    public final boolean I;
    public final int J;
    public final Bundle K;
    public final String L;
    public final zzlu M;
    public final boolean N;
    public final Bundle O;
    public final boolean P;
    public final Future<String> Q;
    public final List<Integer> R;
    public final String S;
    public final int T;
    public final boolean U;
    public final boolean V;
    public final boolean W;
    public final ArrayList<String> X;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Bundle f4939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzjj f4940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzjn f4941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4942d;
    public final ApplicationInfo e;
    public final PackageInfo f;
    public final String g;
    public final String h;
    public final Bundle i;
    public final zzang j;
    public final int k;
    public final List<String> l;
    public final List<String> m;
    public final List<String> n;
    public final Bundle o;
    public final boolean p;
    public final int q;
    public final int r;
    public final float s;
    public final String t;
    public final long u;
    public final String v;
    public final List<String> w;
    public final String x;
    public final zzpl y;
    public final String z;

    public dl(Bundle bundle, zzjj zzjjVar, zzjn zzjnVar, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, zzang zzangVar, Bundle bundle2, List<String> list, List<String> list2, Bundle bundle3, boolean z, int i, int i2, float f, String str4, long j, String str5, List<String> list3, String str6, zzpl zzplVar, String str7, float f2, boolean z2, int i3, int i4, boolean z3, boolean z4, Future<String> future, String str8, boolean z5, int i5, Bundle bundle4, String str9, zzlu zzluVar, boolean z6, Bundle bundle5, boolean z7, Future<String> future2, List<Integer> list4, String str10, List<String> list5, int i6, boolean z8, boolean z9, boolean z10, ArrayList<String> arrayList) {
        this.f4939a = bundle;
        this.f4940b = zzjjVar;
        this.f4941c = zzjnVar;
        this.f4942d = str;
        this.e = applicationInfo;
        this.f = packageInfo;
        this.g = str2;
        this.h = str3;
        this.j = zzangVar;
        this.i = bundle2;
        this.p = z;
        this.q = i;
        this.r = i2;
        this.s = f;
        if (list == null || list.size() <= 0) {
            this.k = 0;
            this.l = null;
            this.m = null;
        } else {
            this.k = 3;
            this.l = list;
            this.m = list2;
        }
        this.o = bundle3;
        this.t = str4;
        this.u = j;
        this.v = str5;
        this.w = list3;
        this.x = str6;
        this.y = zzplVar;
        this.z = str7;
        this.A = f2;
        this.B = z2;
        this.C = i3;
        this.D = i4;
        this.E = z3;
        this.F = z4;
        this.G = future;
        this.H = str8;
        this.I = z5;
        this.J = i5;
        this.K = bundle4;
        this.L = str9;
        this.M = zzluVar;
        this.N = z6;
        this.O = bundle5;
        this.P = z7;
        this.Q = future2;
        this.R = list4;
        this.S = str10;
        this.n = list5;
        this.T = i6;
        this.U = z8;
        this.V = z9;
        this.W = z10;
        this.X = arrayList;
    }
}
