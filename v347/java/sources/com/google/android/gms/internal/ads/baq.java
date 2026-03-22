package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class baq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Charset f4719b = Charset.forName(Constants.UTF8_NAME);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final bap<JSONObject> f4718a = new bas();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ban<InputStream> f4720c = bar.f4721a;

    static final /* synthetic */ InputStream a(JSONObject jSONObject) throws JSONException {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f4719b));
    }
}
