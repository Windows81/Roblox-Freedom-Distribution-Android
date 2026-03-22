package com.roblox.client.chat.a;

import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class l implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    HashSet<Long> f6523a;

    public l() {
        this.f6523a = new HashSet<>();
    }

    public l(l lVar) {
        this.f6523a = new HashSet<>(lVar.f6523a);
    }

    public boolean a(long j, boolean z) {
        return z ? this.f6523a.add(Long.valueOf(j)) : this.f6523a.remove(Long.valueOf(j));
    }

    public int a() {
        return this.f6523a.size();
    }

    public HashSet<Long> b() {
        return this.f6523a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public l clone() {
        return new l(this);
    }
}
