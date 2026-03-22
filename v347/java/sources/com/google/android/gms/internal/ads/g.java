package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.b.a;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class g extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f5039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f5040b;

    public g(qd qdVar, Map<String, String> map) {
        super(qdVar, "storePicture");
        this.f5039a = map;
        this.f5040b = qdVar.d();
    }

    public final void a() {
        if (this.f5040b == null) {
            a("Activity context is not available");
            return;
        }
        com.google.android.gms.ads.internal.aw.e();
        if (!jm.f(this.f5040b).c()) {
            a("Feature is not supported by the device.");
            return;
        }
        String str = this.f5039a.get("iurl");
        if (TextUtils.isEmpty(str)) {
            a("Image url cannot be empty.");
            return;
        }
        if (!URLUtil.isValidUrl(str)) {
            String strValueOf = String.valueOf(str);
            a(strValueOf.length() != 0 ? "Invalid image url: ".concat(strValueOf) : new String("Invalid image url: "));
            return;
        }
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        com.google.android.gms.ads.internal.aw.e();
        if (!jm.c(lastPathSegment)) {
            String strValueOf2 = String.valueOf(lastPathSegment);
            a(strValueOf2.length() != 0 ? "Image type not recognized: ".concat(strValueOf2) : new String("Image type not recognized: "));
            return;
        }
        Resources resourcesH = com.google.android.gms.ads.internal.aw.i().h();
        com.google.android.gms.ads.internal.aw.e();
        AlertDialog.Builder builderE = jm.e(this.f5040b);
        builderE.setTitle(resourcesH != null ? resourcesH.getString(a.C0064a.s1) : "Save image");
        builderE.setMessage(resourcesH != null ? resourcesH.getString(a.C0064a.s2) : "Allow Ad to store image in Picture gallery?");
        builderE.setPositiveButton(resourcesH != null ? resourcesH.getString(a.C0064a.s3) : "Accept", new h(this, str, lastPathSegment));
        builderE.setNegativeButton(resourcesH != null ? resourcesH.getString(a.C0064a.s4) : "Decline", new i(this));
        builderE.create().show();
    }
}
