package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ii {
    public final String A;
    public final String B;
    public final ath C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public final List<String> J;
    public final ami K;
    public final boolean L;
    public final boolean M;
    public final boolean N;
    public final boolean O;
    private final zzael P;
    private final long Q;
    private final long R;
    private final String S;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzjj f5113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final qd f5114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<String> f5115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f5116d;
    public final List<String> e;
    public final List<String> f;
    public final List<String> g;
    public final int h;
    public final long i;
    public final String j;
    public final JSONObject k;
    public final boolean l;
    public boolean m;
    public final boolean n;
    public final bbd o;
    public final bbx p;
    public final String q;
    public final bbe r;
    public final bbh s;
    public final String t;
    public final zzjn u;
    public final zzaig v;
    public final List<String> w;
    public final List<String> x;
    public final long y;
    public final long z;

    public ii(ij ijVar, qd qdVar, bbd bbdVar, bbx bbxVar, String str, bbh bbhVar, ath athVar, String str2) {
        this(ijVar.f5117a.f5760c, null, ijVar.f5118b.f5764c, ijVar.e, ijVar.f5118b.e, ijVar.f5118b.i, ijVar.f5118b.k, ijVar.f5118b.j, ijVar.f5117a.i, ijVar.f5118b.g, null, null, null, ijVar.f5119c, null, ijVar.f5118b.h, ijVar.f5120d, ijVar.f5118b.f, ijVar.f, ijVar.g, ijVar.f5118b.n, ijVar.h, null, ijVar.f5118b.A, ijVar.f5118b.B, ijVar.f5118b.B, ijVar.f5118b.D, ijVar.f5118b.E, null, ijVar.f5118b.H, ijVar.f5118b.L, ijVar.i, ijVar.f5118b.O, ijVar.j, ijVar.f5118b.Q, ijVar.f5118b.R, ijVar.f5118b.S, ijVar.f5118b.T);
    }

    public ii(zzjj zzjjVar, qd qdVar, List<String> list, int i, List<String> list2, List<String> list3, int i2, long j, String str, boolean z, bbd bbdVar, bbx bbxVar, String str2, bbe bbeVar, bbh bbhVar, long j2, zzjn zzjnVar, long j3, long j4, long j5, String str3, JSONObject jSONObject, ath athVar, zzaig zzaigVar, List<String> list4, List<String> list5, boolean z2, zzael zzaelVar, String str4, List<String> list6, String str5, ami amiVar, boolean z3, boolean z4, boolean z5, List<String> list7, boolean z6, String str6) {
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.f5113a = zzjjVar;
        this.f5114b = qdVar;
        this.f5115c = a(list);
        this.f5116d = i;
        this.e = a(list2);
        this.g = a(list3);
        this.h = i2;
        this.i = j;
        this.j = str;
        this.n = z;
        this.o = bbdVar;
        this.p = bbxVar;
        this.q = str2;
        this.r = bbeVar;
        this.s = bbhVar;
        this.Q = j2;
        this.u = zzjnVar;
        this.R = j3;
        this.y = j4;
        this.z = j5;
        this.A = str3;
        this.k = jSONObject;
        this.C = athVar;
        this.v = zzaigVar;
        this.w = a(list4);
        this.x = a(list5);
        this.l = z2;
        this.P = zzaelVar;
        this.t = str4;
        this.J = a(list6);
        this.B = str5;
        this.K = amiVar;
        this.L = z3;
        this.M = z4;
        this.N = z5;
        this.f = a(list7);
        this.O = z6;
        this.S = str6;
    }

    private static <T> List<T> a(List<T> list) {
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public final boolean a() {
        if (this.f5114b == null || this.f5114b.v() == null) {
            return false;
        }
        return this.f5114b.v().b();
    }
}
