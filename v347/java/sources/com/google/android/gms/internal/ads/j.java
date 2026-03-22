package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f5164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f5165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f5166d;
    private final boolean e;

    private j(l lVar) {
        this.f5163a = lVar.f5240a;
        this.f5164b = lVar.f5241b;
        this.f5165c = lVar.f5242c;
        this.f5166d = lVar.f5243d;
        this.e = lVar.e;
    }

    public final JSONObject a() {
        try {
            return new JSONObject().put("sms", this.f5163a).put("tel", this.f5164b).put("calendar", this.f5165c).put("storePicture", this.f5166d).put("inlineVideo", this.e);
        } catch (JSONException e) {
            jd.b("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
