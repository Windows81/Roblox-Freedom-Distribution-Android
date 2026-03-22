package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import java.util.Collections;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class sd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f5546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f5547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, String> f5548c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5549d;

    @TargetApi(21)
    public sd(WebResourceRequest webResourceRequest) {
        this(webResourceRequest.getUrl().toString(), webResourceRequest.getUrl(), webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders());
    }

    public sd(String str) {
        this(str, Uri.parse(str), null, null);
    }

    private sd(String str, Uri uri, @Nullable String str2, @Nullable Map<String, String> map) {
        this.f5546a = str;
        this.f5547b = uri;
        this.f5549d = str2 == null ? Constants.HTTP_GET : str2;
        this.f5548c = map == null ? Collections.emptyMap() : map;
    }
}
