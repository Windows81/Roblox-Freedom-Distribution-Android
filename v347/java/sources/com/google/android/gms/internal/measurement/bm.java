package com.google.android.gms.internal.measurement;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class bm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteArrayOutputStream f5921b = new ByteArrayOutputStream();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ bl f5922c;

    public bm(bl blVar) {
        this.f5922c = blVar;
    }

    public final int a() {
        return this.f5920a;
    }

    public final boolean a(be beVar) {
        com.google.android.gms.common.internal.w.a(beVar);
        if (this.f5920a + 1 > ar.g()) {
            return false;
        }
        String strA = this.f5922c.a(beVar, false);
        if (strA == null) {
            this.f5922c.k().a(beVar, "Error formatting hit");
            return true;
        }
        byte[] bytes = strA.getBytes();
        int length = bytes.length;
        if (length > ar.c()) {
            this.f5922c.k().a(beVar, "Hit size exceeds the maximum size limit");
            return true;
        }
        if (this.f5921b.size() > 0) {
            length++;
        }
        if (this.f5921b.size() + length > az.t.a().intValue()) {
            return false;
        }
        try {
            if (this.f5921b.size() > 0) {
                this.f5921b.write(bl.f5917c);
            }
            this.f5921b.write(bytes);
            this.f5920a++;
            return true;
        } catch (IOException e) {
            this.f5922c.e("Failed to write payload when batching hits", e);
            return true;
        }
    }

    public final byte[] b() {
        return this.f5921b.toByteArray();
    }
}
