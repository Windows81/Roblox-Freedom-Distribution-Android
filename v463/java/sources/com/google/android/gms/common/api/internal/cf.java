package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.i;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cf extends br<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i.a<?> f3587b;

    public cf(i.a<?> aVar, com.google.android.gms.f.h<Boolean> hVar) {
        super(4, hVar);
        this.f3587b = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.br, com.google.android.gms.common.api.internal.ar
    public final /* bridge */ /* synthetic */ void a(Status status) {
        super.a(status);
    }

    @Override // com.google.android.gms.common.api.internal.br, com.google.android.gms.common.api.internal.ar
    public final /* bridge */ /* synthetic */ void a(r rVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.br, com.google.android.gms.common.api.internal.ar
    public final /* bridge */ /* synthetic */ void a(RuntimeException runtimeException) {
        super.a(runtimeException);
    }

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
    /*  JADX ERROR: JadxRuntimeException in pass: FinishTypeInference
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r0v5 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    @Override // com.google.android.gms.common.api.internal.br
    public final void b(com.google.android.gms.common.api.internal.d.a<?> r4) throws android.os.RemoteException {
        /*
            r3 = this;
            java.util.Map r0 = r4.c()
            com.google.android.gms.common.api.internal.i$a<?> r1 = r3.f3587b
            java.lang.Object r0 = r0.remove(r1)
            com.google.android.gms.common.api.internal.bm r0 = (com.google.android.gms.common.api.internal.bm) r0
            if (r0 == 0) goto L1f
            com.google.android.gms.common.api.internal.q<com.google.android.gms.common.api.a$b, ?> r1 = r0.f3545b
            com.google.android.gms.common.api.a$f r4 = r4.b()
            com.google.android.gms.f.h<T> r2 = r3.f3554a
            r1.a(r4, r2)
            com.google.android.gms.common.api.internal.k<com.google.android.gms.common.api.a$b, ?> r4 = r0.f3544a
            r4.a()
            return
        L1f:
            com.google.android.gms.f.h<T> r4 = r3.f3554a
            r0 = 0
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r4.b(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.cf.b(com.google.android.gms.common.api.internal.d$a):void");
    }
}
