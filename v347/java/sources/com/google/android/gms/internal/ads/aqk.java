package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aqk {
    private Date g;
    private String h;
    private Location j;
    private String l;
    private String m;
    private boolean o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashSet<String> f4360a = new HashSet<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Bundle f4361b = new Bundle();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<Class<? extends Object>, Object> f4362c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<String> f4363d = new HashSet<>();
    private final Bundle e = new Bundle();
    private final HashSet<String> f = new HashSet<>();
    private int i = -1;
    private boolean k = false;
    private int n = -1;

    public final void a(int i) {
        this.i = i;
    }

    public final void a(Location location) {
        this.j = location;
    }

    public final void a(Class<? extends com.google.android.gms.ads.mediation.b> cls, Bundle bundle) {
        this.f4361b.putBundle(cls.getName(), bundle);
    }

    public final void a(String str) {
        this.f4360a.add(str);
    }

    public final void a(String str, String str2) {
        this.e.putString(str, str2);
    }

    public final void a(Date date) {
        this.g = date;
    }

    public final void a(boolean z) {
        this.n = z ? 1 : 0;
    }

    public final void b(String str) {
        this.f4363d.add(str);
    }

    public final void b(boolean z) {
        this.o = z;
    }

    public final void c(String str) {
        this.f4363d.remove(str);
    }
}
