package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<a<?>> f5149a;

    public g(List<a<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f5149a = list;
    }
}
