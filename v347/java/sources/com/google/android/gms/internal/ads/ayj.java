package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class ayj extends ayw<bah> implements ays, ayy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final se f4630a;

    /* JADX WARN: Multi-variable type inference failed */
    public ayj(Context context, zzang zzangVar) throws qo {
        try {
            this.f4630a = new se(new rq(context));
            this.f4630a.setWillNotDraw(true);
            this.f4630a.a(new sg(this) { // from class: com.google.android.gms.internal.ads.ayk

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final ayj f4631a;

                {
                    this.f4631a = this;
                }

                @Override // com.google.android.gms.internal.ads.sg
                public final boolean c(sd sdVar) {
                    return this.f4631a.a(sdVar.f5547b);
                }
            });
            this.f4630a.a(new si(this) { // from class: com.google.android.gms.internal.ads.ayl

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final ayj f4632a;

                {
                    this.f4632a = this;
                }

                @Override // com.google.android.gms.internal.ads.si
                public final void b(sd sdVar) {
                    this.f4632a.a(sdVar.f5547b);
                }
            });
            this.f4630a.addJavascriptInterface(new ayr(this), "GoogleJsInterface");
            com.google.android.gms.ads.internal.aw.e().a(context, zzangVar.f5784a, this.f4630a.getSettings());
        } catch (Throwable th) {
            throw new qo("Init failed.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void a() {
        this.f4630a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void a(final ayz ayzVar) {
        this.f4630a.a(new sk(ayzVar) { // from class: com.google.android.gms.internal.ads.ayo

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ayz f4637a;

            {
                this.f4637a = ayzVar;
            }

            @Override // com.google.android.gms.internal.ads.sk
            public final void a(sd sdVar) {
                this.f4637a.a();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void a(String str) {
        c(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", str));
    }

    @Override // com.google.android.gms.internal.ads.ays
    public final void a(String str, String str2) {
        ayt.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.ayi
    public final void a(String str, Map map) {
        ayt.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.ayi
    public final void a(String str, JSONObject jSONObject) {
        ayt.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final bai b() {
        return new baj(this);
    }

    @Override // com.google.android.gms.internal.ads.ays, com.google.android.gms.internal.ads.azj
    public final void b(final String str) {
        nj.f5346a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.ayp

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ayj f4638a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final String f4639b;

            {
                this.f4638a = this;
                this.f4639b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4638a.e(this.f4639b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.azj
    public final void b(String str, JSONObject jSONObject) {
        ayt.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void c(final String str) {
        nj.f5346a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.aym

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ayj f4633a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final String f4634b;

            {
                this.f4633a = this;
                this.f4634b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4633a.g(this.f4634b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.ayy
    public final void d(final String str) {
        nj.f5346a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.ayn

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final ayj f4635a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final String f4636b;

            {
                this.f4635a = this;
                this.f4636b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4635a.f(this.f4636b);
            }
        });
    }

    final /* synthetic */ void e(String str) {
        this.f4630a.b(str);
    }

    final /* synthetic */ void f(String str) {
        this.f4630a.loadUrl(str);
    }

    final /* synthetic */ void g(String str) {
        this.f4630a.loadData(str, "text/html", Constants.UTF8_NAME);
    }

    @Override // com.google.android.gms.internal.ads.ayw
    public final /* bridge */ /* synthetic */ bah o() {
        if (this == null) {
            throw null;
        }
        return this;
    }
}
