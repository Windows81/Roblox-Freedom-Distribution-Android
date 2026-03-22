package com.roblox.client.signup.multiscreen;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.api.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.a$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7138a;

        static {
            int[] iArr = new int[b.values().length];
            f7138a = iArr;
            try {
                iArr[b.PHONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7138a[b.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public PendingIntent a(Context context, b bVar) {
        HintRequest.a aVar = new HintRequest.a();
        int i = AnonymousClass1.f7138a[bVar.ordinal()];
        if (i == 1) {
            aVar.b(true);
        } else if (i == 2) {
            aVar.a(true);
        }
        HintRequest hintRequestA = aVar.a();
        return com.google.android.gms.auth.api.a.g.a(new f.a(context).a(com.google.android.gms.auth.api.a.f3307d).b(), hintRequestA);
    }

    public String a(Intent intent) {
        Credential credential = (Credential) intent.getParcelableExtra("com.google.android.gms.credentials.Credential");
        if (credential != null) {
            return credential.a();
        }
        return null;
    }
}
