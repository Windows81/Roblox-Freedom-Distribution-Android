package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.n;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f3741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3742b;

    public ae(Context context) {
        aa.a(context);
        Resources resources = context.getResources();
        this.f3741a = resources;
        this.f3742b = resources.getResourcePackageName(n.a.common_google_play_services_unknown_issue);
    }

    @Nullable
    public String a(String str) {
        int identifier = this.f3741a.getIdentifier(str, "string", this.f3742b);
        if (identifier == 0) {
            return null;
        }
        return this.f3741a.getString(identifier);
    }
}
