package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.f;

/* JADX INFO: loaded from: classes.dex */
public final class af extends z<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f.a<?> f3350b;

    public af(f.a<?> aVar, com.google.android.gms.d.g<Boolean> gVar) {
        super(4, gVar);
        this.f3350b = aVar;
    }

    @Override // com.google.android.gms.common.api.internal.z, com.google.android.gms.common.api.internal.o
    public final /* bridge */ /* synthetic */ void a(Status status) {
        super.a(status);
    }

    @Override // com.google.android.gms.common.api.internal.z, com.google.android.gms.common.api.internal.o
    public final /* bridge */ /* synthetic */ void a(k kVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.z, com.google.android.gms.common.api.internal.o
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
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r1v4 boolean
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.lambda$visit$0(FinishTypeInference.java:27)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1604)
        	at jadx.core.dex.visitors.typeinference.FinishTypeInference.visit(FinishTypeInference.java:22)
        */
    @Override // com.google.android.gms.common.api.internal.z
    public final void b(com.google.android.gms.common.api.internal.b.a<?> r5) throws android.os.RemoteException {
        /*
            r4 = this;
            java.util.Map r0 = r5.c()
            com.google.android.gms.common.api.internal.f$a<?> r1 = r4.f3350b
            java.lang.Object r0 = r0.remove(r1)
            com.google.android.gms.common.api.internal.w r0 = (com.google.android.gms.common.api.internal.w) r0
            if (r0 == 0) goto L1f
            com.google.android.gms.common.api.internal.j<com.google.android.gms.common.api.a$b, ?> r1 = r0.f3408b
            com.google.android.gms.common.api.a$f r2 = r5.b()
            com.google.android.gms.d.g<T> r3 = r4.f3414a
            r1.a(r2, r3)
            com.google.android.gms.common.api.internal.g<com.google.android.gms.common.api.a$b, ?> r0 = r0.f3407a
            r0.a()
        L1e:
            return
        L1f:
            com.google.android.gms.d.g<T> r0 = r4.f3414a
            r1 = 0
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            r0.b(r1)
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.af.b(com.google.android.gms.common.api.internal.b$a):void");
    }
}
