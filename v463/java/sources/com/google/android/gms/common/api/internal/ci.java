package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ci {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3600d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.c.a<cg<?>, String> f3598b = new androidx.c.a<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.android.gms.f.h<Map<cg<?>, String>> f3599c = new com.google.android.gms.f.h<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3601e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.c.a<cg<?>, ConnectionResult> f3597a = new androidx.c.a<>();

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
    public ci(Iterable<? extends com.google.android.gms.common.api.e<?>> iterable) {
        Iterator<? extends com.google.android.gms.common.api.e<?>> it = iterable.iterator();
        while (it.hasNext()) {
            this.f3597a.put(it.next().c(), null);
        }
        this.f3600d = this.f3597a.keySet().size();
    }

    public final Set<cg<?>> a() {
        return this.f3597a.keySet();
    }

    public final void a(cg<?> cgVar, ConnectionResult connectionResult, String str) {
        this.f3597a.put(cgVar, connectionResult);
        this.f3598b.put(cgVar, str);
        this.f3600d--;
        if (!connectionResult.b()) {
            this.f3601e = true;
        }
        if (this.f3600d == 0) {
            if (!this.f3601e) {
                this.f3599c.a(this.f3598b);
            } else {
                this.f3599c.a(new com.google.android.gms.common.api.c(this.f3597a));
            }
        }
    }

    public final com.google.android.gms.f.g<Map<cg<?>, String>> b() {
        return this.f3599c.a();
    }
}
