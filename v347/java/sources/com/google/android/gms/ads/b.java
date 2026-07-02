package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.g;
import com.google.android.gms.ads.formats.h;
import com.google.android.gms.ads.formats.i;
import com.google.android.gms.ads.formats.j;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.ads.anx;
import com.google.android.gms.internal.ads.aod;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aox;
import com.google.android.gms.internal.ads.apa;
import com.google.android.gms.internal.ads.aqj;
import com.google.android.gms.internal.ads.awd;
import com.google.android.gms.internal.ads.awe;
import com.google.android.gms.internal.ads.awf;
import com.google.android.gms.internal.ads.awh;
import com.google.android.gms.internal.ads.awi;
import com.google.android.gms.internal.ads.bbt;
import com.google.android.gms.internal.ads.mj;
import com.google.android.gms.internal.ads.zzpl;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aod f2944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f2945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final aox f2946c;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2947a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final apa f2948b;

        private a(Context context, apa apaVar) {
            this.f2947a = context;
            this.f2948b = apaVar;
        }

        public a(Context context, String str) {
            this((Context) w.a(context, "context cannot be null"), aoo.b().a(context, str, new bbt()));
        }

        public a a(com.google.android.gms.ads.a aVar) {
            try {
                this.f2948b.a(new anx(aVar));
            } catch (RemoteException e) {
                mj.c("Failed to set AdListener.", e);
            }
            return this;
        }

        public a a(com.google.android.gms.ads.formats.d dVar) {
            try {
                this.f2948b.a(new zzpl(dVar));
            } catch (RemoteException e) {
                mj.c("Failed to specify native ad options", e);
            }
            return this;
        }

        public a a(g.a aVar) {
            try {
                this.f2948b.a(new awd(aVar));
            } catch (RemoteException e) {
                mj.c("Failed to add app install ad listener", e);
            }
            return this;
        }

        public a a(h.a aVar) {
            try {
                this.f2948b.a(new awe(aVar));
            } catch (RemoteException e) {
                mj.c("Failed to add content ad listener", e);
            }
            return this;
        }

        public a a(j.a aVar) {
            try {
                this.f2948b.a(new awi(aVar));
            } catch (RemoteException e) {
                mj.c("Failed to add google native ad listener", e);
            }
            return this;
        }

        public a a(String str, i.b bVar, i.a aVar) {
            try {
                this.f2948b.a(str, new awh(bVar), aVar == null ? null : new awf(aVar));
            } catch (RemoteException e) {
                mj.c("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public b a() {
            try {
                return new b(this.f2947a, this.f2948b.a());
            } catch (RemoteException e) {
                mj.b("Failed to build AdLoader.", e);
                return null;
            }
        }
    }

    b(Context context, aox aoxVar) {
        this(context, aoxVar, aod.f4317a);
    }

    private b(Context context, aox aoxVar, aod aodVar) {
        this.f2945b = context;
        this.f2946c = aoxVar;
        this.f2944a = aodVar;
    }

    private final void a(aqj aqjVar) {
        try {
            this.f2946c.a(aod.a(this.f2945b, aqjVar));
        } catch (RemoteException e) {
            mj.b("Failed to load ad.", e);
        }
    }

    public void a(c cVar) {
        a(cVar.a());
    }
}
