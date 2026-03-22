package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class aob {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f4313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Bundle f4314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4315c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<String> f4316d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private zzmq i;
    private Location j;
    private String k;
    private Bundle l;
    private Bundle m;
    private List<String> n;
    private String o;
    private String p;
    private boolean q;

    public aob() {
        this.f4313a = -1L;
        this.f4314b = new Bundle();
        this.f4315c = -1;
        this.f4316d = new ArrayList();
        this.e = false;
        this.f = -1;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = new Bundle();
        this.m = new Bundle();
        this.n = new ArrayList();
        this.o = null;
        this.p = null;
        this.q = false;
    }

    public aob(zzjj zzjjVar) {
        this.f4313a = zzjjVar.f5800b;
        this.f4314b = zzjjVar.f5801c;
        this.f4315c = zzjjVar.f5802d;
        this.f4316d = zzjjVar.e;
        this.e = zzjjVar.f;
        this.f = zzjjVar.g;
        this.g = zzjjVar.h;
        this.h = zzjjVar.i;
        this.i = zzjjVar.j;
        this.j = zzjjVar.k;
        this.k = zzjjVar.l;
        this.l = zzjjVar.m;
        this.m = zzjjVar.n;
        this.n = zzjjVar.o;
        this.o = zzjjVar.p;
        this.p = zzjjVar.q;
    }

    public final aob a(Location location) {
        this.j = null;
        return this;
    }

    public final zzjj a() {
        return new zzjj(7, this.f4313a, this.f4314b, this.f4315c, this.f4316d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, false);
    }
}
