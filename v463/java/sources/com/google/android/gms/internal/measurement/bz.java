package com.google.android.gms.internal.measurement;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteArrayOutputStream f4116b = new ByteArrayOutputStream();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ by f4117c;

    public bz(by byVar) {
        this.f4117c = byVar;
    }

    public final int a() {
        return this.f4115a;
    }

    public final boolean a(br brVar) {
        com.google.android.gms.common.internal.aa.a(brVar);
        if (this.f4115a + 1 > be.g()) {
            return false;
        }
        String strA = this.f4117c.a(brVar, false);
        if (strA == null) {
            this.f4117c.k().a(brVar, "Error formatting hit");
            return true;
        }
        byte[] bytes = strA.getBytes();
        int length = bytes.length;
        if (length > be.c()) {
            this.f4117c.k().a(brVar, "Hit size exceeds the maximum size limit");
            return true;
        }
        if (this.f4116b.size() > 0) {
            length++;
        }
        if (this.f4116b.size() + length > bm.t.a().intValue()) {
            return false;
        }
        try {
            if (this.f4116b.size() > 0) {
                this.f4116b.write(by.f4112c);
            }
            this.f4116b.write(bytes);
            this.f4115a++;
            return true;
        } catch (IOException e2) {
            this.f4117c.e("Failed to write payload when batching hits", e2);
            return true;
        }
    }

    public final byte[] b() {
        return this.f4116b.toByteArray();
    }
}
