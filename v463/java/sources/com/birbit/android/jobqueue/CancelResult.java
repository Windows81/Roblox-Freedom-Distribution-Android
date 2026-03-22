package com.birbit.android.jobqueue;

import java.util.Collection;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CancelResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Collection<g> f2892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Collection<g> f2893b;

    public interface AsyncCancelCallback {
        void onCancelled(CancelResult cancelResult);
    }

    public CancelResult() {
        this.f2892a = new HashSet();
        this.f2893b = new HashSet();
    }

    public CancelResult(Collection<g> collection, Collection<g> collection2) {
        this.f2892a = collection;
        this.f2893b = collection2;
    }
}
