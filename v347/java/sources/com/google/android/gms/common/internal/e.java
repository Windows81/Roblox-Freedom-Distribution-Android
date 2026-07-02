package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Account f3492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Scope> f3493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<Scope> f3494c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<com.google.android.gms.common.api.a<?>, b> f3495d;
    private final int e;
    private final View f;
    private final String g;
    private final String h;
    private final com.google.android.gms.signin.c i;
    private Integer j;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Account f3496a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private android.support.v4.g.b<Scope> f3497b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Map<com.google.android.gms.common.api.a<?>, b> f3498c;
        private View e;
        private String f;
        private String g;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3499d = 0;
        private com.google.android.gms.signin.c h = com.google.android.gms.signin.c.f6040a;

        public final a a(Account account) {
            this.f3496a = account;
            return this;
        }

        public final a a(String str) {
            this.f = str;
            return this;
        }

        public final a a(Collection<Scope> collection) {
            if (this.f3497b == null) {
                this.f3497b = new android.support.v4.g.b<>();
            }
            this.f3497b.addAll(collection);
            return this;
        }

        public final e a() {
            return new e(this.f3496a, this.f3497b, this.f3498c, this.f3499d, this.e, this.f, this.g, this.h);
        }

        public final a b(String str) {
            this.g = str;
            return this;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Set<Scope> f3500a;
    }

    public e(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, b> map, int i, View view, String str, String str2, com.google.android.gms.signin.c cVar) {
        this.f3492a = account;
        this.f3493b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f3495d = map == null ? Collections.EMPTY_MAP : map;
        this.f = view;
        this.e = i;
        this.g = str;
        this.h = str2;
        this.i = cVar;
        HashSet hashSet = new HashSet(this.f3493b);
        Iterator<b> it = this.f3495d.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().f3500a);
        }
        this.f3494c = Collections.unmodifiableSet(hashSet);
    }

    @Nullable
    public final Account a() {
        return this.f3492a;
    }

    public final void a(Integer num) {
        this.j = num;
    }

    public final Account b() {
        return this.f3492a != null ? this.f3492a : new Account("<<default account>>", "com.google");
    }

    public final Set<Scope> c() {
        return this.f3493b;
    }

    public final Set<Scope> d() {
        return this.f3494c;
    }

    @Nullable
    public final String e() {
        return this.g;
    }

    @Nullable
    public final String f() {
        return this.h;
    }

    @Nullable
    public final com.google.android.gms.signin.c g() {
        return this.i;
    }

    @Nullable
    public final Integer h() {
        return this.j;
    }
}
