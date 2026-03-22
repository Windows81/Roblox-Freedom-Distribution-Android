package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zk;
import com.google.android.gms.internal.ads.zl;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class zl<MessageType extends zk<MessageType, BuilderType>, BuilderType extends zl<MessageType, BuilderType>> implements acl {
    @Override // com.google.android.gms.internal.ads.acl
    public final /* synthetic */ acl a(ack ackVar) {
        if (p().getClass().isInstance(ackVar)) {
            return a((zk) ackVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    @Override // 
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    protected abstract BuilderType a(MessageType messagetype);
}
