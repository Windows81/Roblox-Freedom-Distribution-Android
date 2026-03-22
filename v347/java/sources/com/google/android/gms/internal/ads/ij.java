package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class ij {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzaef f5117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzaej f5118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final bbe f5119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final zzjn f5120d;
    public final int e;
    public final long f;
    public final long g;
    public final JSONObject h;
    public final ami i;
    public final boolean j;

    public ij(zzaef zzaefVar, zzaej zzaejVar, bbe bbeVar, zzjn zzjnVar, int i, long j, long j2, JSONObject jSONObject, ami amiVar, Boolean bool) {
        this.f5117a = zzaefVar;
        this.f5118b = zzaejVar;
        this.f5119c = bbeVar;
        this.f5120d = zzjnVar;
        this.e = i;
        this.f = j;
        this.g = j2;
        this.h = jSONObject;
        this.i = amiVar;
        if (bool != null) {
            this.j = bool.booleanValue();
        } else if (lq.a(zzaefVar.f5760c)) {
            this.j = true;
        } else {
            this.j = false;
        }
    }

    public ij(zzaef zzaefVar, zzaej zzaejVar, bbe bbeVar, zzjn zzjnVar, int i, long j, long j2, JSONObject jSONObject, amn amnVar) {
        this.f5117a = zzaefVar;
        this.f5118b = zzaejVar;
        this.f5119c = null;
        this.f5120d = null;
        this.e = i;
        this.f = j;
        this.g = j2;
        this.h = null;
        this.i = new ami(amnVar);
        this.j = false;
    }
}
