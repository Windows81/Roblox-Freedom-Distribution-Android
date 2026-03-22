package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class AFEvent {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    WeakReference<Context> f7;

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    public String f8;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public Intent f9;

    /* JADX INFO: renamed from: ȷ, reason: contains not printable characters */
    boolean f10;

    /* JADX INFO: renamed from: ɨ, reason: contains not printable characters */
    public int f11;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    AppsFlyerTrackingRequestListener f12;

    /* JADX INFO: renamed from: ɪ, reason: contains not printable characters */
    private Map<String, Object> f13;

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    String f14;

    /* JADX INFO: renamed from: ɾ, reason: contains not printable characters */
    private final boolean f15;

    /* JADX INFO: renamed from: ɿ, reason: contains not printable characters */
    private byte[] f16;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    Map<String, Object> f17;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    Context f18;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    String f19;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    String f20;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    String f21;

    /* JADX INFO: renamed from: ӏ, reason: contains not printable characters */
    private String f22;

    public AFEvent() {
        this(null, null, null);
    }

    public AFEvent(String str, Boolean bool, Context context) {
        this.f21 = str;
        this.f15 = bool != null ? bool.booleanValue() : true;
        this.f18 = context;
    }

    protected AFEvent context(Context context) {
        this.f18 = context;
        return this;
    }

    public Context context() {
        Context context = this.f18;
        if (context != null) {
            return context;
        }
        WeakReference<Context> weakReference = this.f7;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    final AFEvent m3() {
        if (context() != null) {
            this.f18 = context().getApplicationContext();
        }
        return this;
    }

    public AFEvent weakContext() {
        this.f7 = new WeakReference<>(this.f18);
        this.f18 = null;
        return this;
    }

    public AFEvent urlString(String str) {
        this.f20 = str;
        return this;
    }

    public String urlString() {
        return this.f20;
    }

    public Intent intent() {
        return this.f9;
    }

    public AFEvent key(String str) {
        this.f22 = str;
        return this;
    }

    public String key() {
        return this.f22;
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    final boolean m4() {
        return this.f10;
    }

    public AFEvent params(Map<String, ?> map) {
        this.f13 = map;
        return this;
    }

    public Map<String, Object> params() {
        return this.f13;
    }

    public AFEvent post(byte[] bArr) {
        this.f16 = bArr;
        return this;
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    final byte[] m5() {
        return this.f16;
    }

    public boolean isEncrypt() {
        return this.f15;
    }

    protected String addChannel(String str) {
        String configuredChannel = AppsFlyerLibCore.getInstance().getConfiguredChannel(context());
        return configuredChannel != null ? Uri.parse(str).buildUpon().appendQueryParameter(AppsFlyerProperties.CHANNEL, configuredChannel).build().toString() : str;
    }
}
