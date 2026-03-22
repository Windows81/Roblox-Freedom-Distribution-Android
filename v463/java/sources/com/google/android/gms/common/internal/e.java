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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Account f3786a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Scope> f3787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<Scope> f3788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<com.google.android.gms.common.api.a<?>, b> f3789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3790e;
    private final View f;
    private final String g;
    private final String h;
    private final com.google.android.gms.signin.c i;
    private Integer j;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Account f3791a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private androidx.c.b<Scope> f3792b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Map<com.google.android.gms.common.api.a<?>, b> f3793c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private View f3795e;
        private String f;
        private String g;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3794d = 0;
        private com.google.android.gms.signin.c h = com.google.android.gms.signin.c.f4749a;

        public final a a(Account account) {
            this.f3791a = account;
            return this;
        }

        public final a a(String str) {
            this.f = str;
            return this;
        }

        public final a a(Collection<Scope> collection) {
            if (this.f3792b == null) {
                this.f3792b = new androidx.c.b<>();
            }
            this.f3792b.addAll(collection);
            return this;
        }

        public final e a() {
            return new e(this.f3791a, this.f3792b, this.f3793c, this.f3794d, this.f3795e, this.f, this.g, this.h);
        }

        public final a b(String str) {
            this.g = str;
            return this;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Set<Scope> f3796a;
    }

    public e(Account account, Set<Scope> set, Map<com.google.android.gms.common.api.a<?>, b> map, int i, View view, String str, String str2, com.google.android.gms.signin.c cVar) {
        this.f3786a = account;
        this.f3787b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f3789d = map == null ? Collections.EMPTY_MAP : map;
        this.f = view;
        this.f3790e = i;
        this.g = str;
        this.h = str2;
        this.i = cVar;
        HashSet hashSet = new HashSet(this.f3787b);
        Iterator<b> it = this.f3789d.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().f3796a);
        }
        this.f3788c = Collections.unmodifiableSet(hashSet);
    }

    @Nullable
    @Deprecated
    public final String a() {
        Account account = this.f3786a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    public final Set<Scope> a(com.google.android.gms.common.api.a<?> aVar) {
        b bVar = this.f3789d.get(aVar);
        if (bVar == null || bVar.f3796a.isEmpty()) {
            return this.f3787b;
        }
        HashSet hashSet = new HashSet(this.f3787b);
        hashSet.addAll(bVar.f3796a);
        return hashSet;
    }

    public final void a(Integer num) {
        this.j = num;
    }

    @Nullable
    public final Account b() {
        return this.f3786a;
    }

    public final Account c() {
        Account account = this.f3786a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    public final Set<Scope> d() {
        return this.f3787b;
    }

    public final Set<Scope> e() {
        return this.f3788c;
    }

    public final Map<com.google.android.gms.common.api.a<?>, b> f() {
        return this.f3789d;
    }

    @Nullable
    public final String g() {
        return this.g;
    }

    @Nullable
    public final String h() {
        return this.h;
    }

    @Nullable
    public final com.google.android.gms.signin.c i() {
        return this.i;
    }

    @Nullable
    public final Integer j() {
        return this.j;
    }
}
