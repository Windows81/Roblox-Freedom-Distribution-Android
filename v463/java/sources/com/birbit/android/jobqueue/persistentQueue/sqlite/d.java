package com.birbit.android.jobqueue.persistentQueue.sqlite;

import androidx.c.e;
import com.birbit.android.jobqueue.o;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e<Long, c> f3079a = new e<Long, c>(15) { // from class: com.birbit.android.jobqueue.persistentQueue.sqlite.d.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.c.e
        public void a(boolean z, Long l, c cVar, c cVar2) {
            cVar.a();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f3080b;

    public d(long j) {
        this.f3080b = Long.toString(j);
    }

    public c a(com.birbit.android.jobqueue.d dVar, Collection<String> collection, StringBuilder sb) {
        boolean zA = a(dVar);
        long jA = a(dVar, collection);
        c cVarA = zA ? this.f3079a.a(Long.valueOf(jA)) : null;
        if (cVarA == null) {
            cVarA = a(jA, dVar, collection, sb);
            if (zA) {
                this.f3079a.a(Long.valueOf(jA), cVarA);
            }
        }
        a(dVar, cVarA, collection);
        return cVarA;
    }

    private void a(com.birbit.android.jobqueue.d dVar, c cVar, Collection<String> collection) {
        int i = 0;
        if (dVar.a()) {
            cVar.f3076c[0] = Long.toString(dVar.i());
            i = 1;
        }
        if (dVar.b()) {
            cVar.f3076c[i] = Long.toString(dVar.i());
            i++;
        }
        if (dVar.g() != null) {
            cVar.f3076c[i] = Long.toString(dVar.g().longValue());
            i++;
        }
        if (dVar.c() != null) {
            Iterator<String> it = dVar.d().iterator();
            while (it.hasNext()) {
                cVar.f3076c[i] = it.next();
                i++;
            }
        }
        Iterator<String> it2 = dVar.e().iterator();
        while (it2.hasNext()) {
            cVar.f3076c[i] = it2.next();
            i++;
        }
        Iterator<String> it3 = dVar.h().iterator();
        while (it3.hasNext()) {
            cVar.f3076c[i] = it3.next();
            i++;
        }
        Iterator<String> it4 = collection.iterator();
        while (it4.hasNext()) {
            cVar.f3076c[i] = it4.next();
            i++;
        }
        if (dVar.f()) {
            cVar.f3076c[i] = this.f3080b;
            i++;
        }
        if (i == cVar.f3076c.length) {
            return;
        }
        throw new IllegalStateException("something is wrong with where query cache for " + cVar.f3075b);
    }

    private c a(long j, com.birbit.android.jobqueue.d dVar, Collection<String> collection, StringBuilder sb) {
        int i;
        int size = 0;
        sb.setLength(0);
        sb.append("1");
        int i2 = -1;
        if (dVar.a()) {
            sb.append(" AND ");
            sb.append(a.j.f3069a);
            sb.append(" <= ?");
            size = 1;
            i = 0;
        } else {
            i = -1;
        }
        if (dVar.b()) {
            sb.append(" AND ");
            sb.append(a.k.f3069a);
            sb.append(" <= ?");
            i2 = size;
            size++;
        }
        if (dVar.g() != null) {
            sb.append(" AND ");
            sb.append(a.h.f3069a);
            sb.append(" <= ?");
            size++;
        }
        if (dVar.c() != null) {
            if (dVar.d().isEmpty()) {
                sb.append(" AND 0 ");
            } else {
                sb.append(" AND ");
                sb.append(a.f3053b.f3069a);
                sb.append(" IN ( SELECT ");
                sb.append(a.m.f3069a);
                sb.append(" FROM ");
                sb.append("job_holder_tags");
                sb.append(" WHERE ");
                sb.append(a.n.f3069a);
                sb.append(" IN (");
                b.a(sb, dVar.d().size());
                sb.append(")");
                if (dVar.c() == o.ANY) {
                    sb.append(")");
                } else if (dVar.c() == o.ALL) {
                    sb.append(" GROUP BY (`");
                    sb.append(a.m.f3069a);
                    sb.append("`)");
                    sb.append(" HAVING count(*) = ");
                    sb.append(dVar.d().size());
                    sb.append(")");
                } else {
                    throw new IllegalArgumentException("unknown constraint " + dVar);
                }
                size += dVar.d().size();
            }
        }
        if (!dVar.e().isEmpty()) {
            sb.append(" AND (");
            sb.append(a.f3055d.f3069a);
            sb.append(" IS NULL OR ");
            sb.append(a.f3055d.f3069a);
            sb.append(" NOT IN(");
            b.a(sb, dVar.e().size());
            sb.append("))");
            size += dVar.e().size();
        }
        if (!dVar.h().isEmpty()) {
            sb.append(" AND ");
            sb.append(a.f3053b.f3069a);
            sb.append(" NOT IN(");
            b.a(sb, dVar.h().size());
            sb.append(")");
            size += dVar.h().size();
        }
        if (!collection.isEmpty()) {
            sb.append(" AND ");
            sb.append(a.f3053b.f3069a);
            sb.append(" NOT IN(");
            b.a(sb, collection.size());
            sb.append(")");
            size += collection.size();
        }
        if (dVar.f()) {
            sb.append(" AND ");
            sb.append(a.i.f3069a);
            sb.append(" != ?");
            size++;
        }
        c cVar = new c(j, sb.toString(), new String[size]);
        cVar.a(i);
        cVar.b(i2);
        return cVar;
    }

    private boolean a(com.birbit.android.jobqueue.d dVar) {
        return dVar.d().size() < 64 && dVar.e().size() < 64 && dVar.h().size() < 64;
    }

    private long a(com.birbit.android.jobqueue.d dVar, Collection<String> collection) {
        return ((dVar.g() == null ? 1 : 0) << 23) | ((dVar.a() ? 1 : 0) << 0) | ((dVar.b() ? 1 : 0) << 1) | ((dVar.c() == null ? 2 : dVar.c().ordinal()) << 2) | (dVar.d().size() << 4) | (dVar.e().size() << 10) | (dVar.h().size() << 16) | ((dVar.f() ? 1 : 0) << 22) | (collection.size() << 24);
    }
}
