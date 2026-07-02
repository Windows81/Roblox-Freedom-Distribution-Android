package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class baz implements com.google.android.gms.ads.internal.gmsg.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final azx f4735a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final no f4736b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ baw f4737c;

    public baz(baw bawVar, azx azxVar, no noVar) {
        this.f4737c = bawVar;
        this.f4735a = azxVar;
        this.f4736b = noVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.h
    public final void a(@Nullable String str) {
        try {
            if (str == null) {
                this.f4736b.a(new bak());
            } else {
                this.f4736b.a(new bak(str));
            }
        } catch (IllegalStateException e) {
        } finally {
            this.f4735a.c();
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.h
    public final void a(JSONObject jSONObject) {
        try {
            this.f4736b.b(this.f4737c.f4725a.a(jSONObject));
        } catch (IllegalStateException e) {
        } catch (JSONException e2) {
            this.f4736b.b(e2);
        } finally {
            this.f4735a.c();
        }
    }
}
