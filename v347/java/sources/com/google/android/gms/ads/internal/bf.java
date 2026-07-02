package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.asi;
import com.google.android.gms.internal.ads.bbu;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.ht;
import com.google.android.gms.internal.ads.ii;
import com.google.android.gms.internal.ads.ij;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.jm;
import com.google.android.gms.internal.ads.qd;
import com.google.android.gms.internal.ads.qk;
import com.google.android.gms.internal.ads.qo;
import com.google.android.gms.internal.ads.rr;
import com.google.android.gms.internal.ads.zzang;
import com.google.android.gms.internal.ads.zzjn;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public abstract class bf extends ba implements g, com.google.android.gms.internal.ads.o {
    private boolean k;

    public bf(Context context, zzjn zzjnVar, String str, bbu bbuVar, zzang zzangVar, bt btVar) {
        super(context, zzjnVar, str, bbuVar, zzangVar, btVar);
    }

    protected final boolean L() {
        return (this.e.k == null || this.e.k.f5118b == null || !this.e.k.f5118b.Q) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.o
    public final void M() {
        t();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected qd a(ij ijVar, bu buVar, ht htVar) throws qo {
        View nextView = this.e.f.getNextView();
        if (nextView instanceof qd) {
            ((qd) nextView).destroy();
        }
        if (nextView != 0) {
            this.e.f.removeView(nextView);
        }
        aw.f();
        qd qdVarA = qk.a(this.e.f3036c, rr.a(this.e.i), this.e.i.f5803a, false, false, this.e.f3037d, this.e.e, this.f2981a, this, this.i, ijVar.i);
        if (this.e.i.g == null) {
            a(qdVarA.getView());
        }
        qdVarA.v().a(this, this, this, this, this, false, null, buVar, this, htVar);
        a(qdVarA);
        qdVarA.a(ijVar.f5117a.v);
        return qdVarA;
    }

    @Override // com.google.android.gms.internal.ads.o
    public final void a(int i, int i2, int i3, int i4) {
        v();
    }

    @Override // com.google.android.gms.ads.internal.a, com.google.android.gms.internal.ads.apf
    public final void a(asi asiVar) {
        com.google.android.gms.common.internal.w.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.e.B = asiVar;
    }

    @Override // com.google.android.gms.ads.internal.a
    protected void a(ij ijVar, asb asbVar) {
        if (ijVar.e != -2) {
            jm.f5184a.post(new bh(this, ijVar));
            return;
        }
        if (ijVar.f5120d != null) {
            this.e.i = ijVar.f5120d;
        }
        if (!ijVar.f5118b.g || ijVar.f5118b.z) {
            jm.f5184a.post(new bi(this, ijVar, this.i.f3071c.a(this.e.f3036c, this.e.e, ijVar.f5118b), asbVar));
        } else {
            this.e.I = 0;
            ax axVar = this.e;
            aw.d();
            axVar.h = com.google.android.gms.internal.ads.ao.a(this.e.f3036c, this, ijVar, this.e.f3037d, null, this.j, this, asbVar);
        }
    }

    protected final void a(qd qdVar) {
        qdVar.a("/trackActiveViewUnit", new bg(this));
    }

    @Override // com.google.android.gms.ads.internal.ba, com.google.android.gms.ads.internal.a
    protected boolean a(ii iiVar, ii iiVar2) {
        if (this.e.d() && this.e.f != null) {
            this.e.f.a().c(iiVar2.A);
        }
        try {
            if (iiVar2.f5114b != null && !iiVar2.n && iiVar2.M) {
                if (((Boolean) aoo.f().a(aro.dl)).booleanValue() && !iiVar2.f5113a.f5801c.containsKey("sdk_less_server_data")) {
                    try {
                        iiVar2.f5114b.J();
                    } catch (Throwable th) {
                        jd.a("Could not render test Ad label.");
                    }
                }
            }
        } catch (RuntimeException e) {
            jd.a("Could not render test AdLabel.");
        }
        return super.a(iiVar, iiVar2);
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void a_(View view) {
        this.e.H = view;
        b(new ii(this.e.k, null, null, null, null, null, null, null));
    }

    final void b(qd qdVar) {
        if (this.e.j != null) {
            this.g.a(this.e.i, this.e.j, qdVar.getView(), qdVar);
            this.k = false;
        } else {
            this.k = true;
            jd.e("Request to enable ActiveView before adState is available.");
        }
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void e_() {
        onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.g
    public final void f_() {
        ab();
        m();
    }

    @Override // com.google.android.gms.ads.internal.a
    protected void w() {
        super.w();
        if (this.k) {
            if (((Boolean) aoo.f().a(aro.cg)).booleanValue()) {
                b(this.e.j.f5114b);
            }
        }
    }
}
