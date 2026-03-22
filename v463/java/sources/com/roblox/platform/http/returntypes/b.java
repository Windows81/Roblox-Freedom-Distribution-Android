package com.roblox.platform.http.returntypes;

import com.roblox.platform.e;
import e.l;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7732a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final T f7733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f7734c;

    public b() {
        this.f7732a = 0;
        this.f7733b = null;
        this.f7734c = null;
    }

    public b(l<T> lVar) {
        String strG;
        this.f7732a = lVar.a();
        if (lVar.d()) {
            this.f7733b = lVar.e();
            this.f7734c = null;
            return;
        }
        if (lVar.f() != null) {
            try {
                strG = lVar.f().g();
                try {
                    e.c("ApiResponse", "Error message: " + strG);
                } catch (IOException unused) {
                    e.e("ApiResponse", "error while parsing response");
                }
            } catch (IOException unused2) {
                strG = null;
            }
        } else {
            strG = null;
        }
        this.f7734c = new a((strG == null || strG.trim().length() == 0) ? lVar.b() : strG);
        this.f7733b = null;
    }

    public String a() {
        a aVar = this.f7734c;
        if (aVar != null) {
            return aVar.f7730d;
        }
        return null;
    }

    public boolean b() {
        int i = this.f7732a;
        return i >= 200 && i < 300;
    }

    public int c() {
        a aVar = this.f7734c;
        if (aVar != null) {
            return aVar.f7727a;
        }
        return -1;
    }
}
