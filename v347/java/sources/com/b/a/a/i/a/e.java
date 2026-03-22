package com.b.a.a.i.a;

import android.support.v4.g.g;
import com.b.a.a.s;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g<Long, d> f2383a = new g<Long, d>(15) { // from class: com.b.a.a.i.a.e.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.g.g
        public void a(boolean z, Long l, d dVar, d dVar2) {
            dVar.a();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2384b;

    public e(long j) {
        this.f2384b = Long.toString(j);
    }

    public d a(com.b.a.a.e eVar, Collection<String> collection, StringBuilder sb) {
        boolean zA = a(eVar);
        long jA = a(eVar, collection);
        d dVarA = zA ? this.f2383a.a(Long.valueOf(jA)) : null;
        if (dVarA == null) {
            dVarA = a(jA, eVar, collection, sb);
            if (zA) {
                this.f2383a.a(Long.valueOf(jA), dVarA);
            }
        }
        a(eVar, dVarA, collection);
        return dVarA;
    }

    private void a(com.b.a.a.e eVar, d dVar, Collection<String> collection) {
        int i;
        int i2;
        if (eVar.a()) {
            i = 1;
            dVar.f2381c[0] = Long.toString(eVar.i());
        } else {
            i = 0;
        }
        if (eVar.b()) {
            dVar.f2381c[i] = Long.toString(eVar.i());
            i++;
        }
        if (eVar.g() != null) {
            dVar.f2381c[i] = Long.toString(eVar.g().longValue());
            i++;
        }
        if (eVar.c() != null) {
            Iterator<String> it = eVar.d().iterator();
            i2 = i;
            while (it.hasNext()) {
                dVar.f2381c[i2] = it.next();
                i2++;
            }
        } else {
            i2 = i;
        }
        Iterator<String> it2 = eVar.e().iterator();
        while (it2.hasNext()) {
            dVar.f2381c[i2] = it2.next();
            i2++;
        }
        Iterator<String> it3 = eVar.h().iterator();
        while (it3.hasNext()) {
            dVar.f2381c[i2] = it3.next();
            i2++;
        }
        Iterator<String> it4 = collection.iterator();
        while (it4.hasNext()) {
            dVar.f2381c[i2] = it4.next();
            i2++;
        }
        if (eVar.f()) {
            dVar.f2381c[i2] = this.f2384b;
            i2++;
        }
        if (i2 != dVar.f2381c.length) {
            throw new IllegalStateException("something is wrong with where query cache for " + dVar.f2380b);
        }
    }

    private d a(long j, com.b.a.a.e eVar, Collection<String> collection, StringBuilder sb) {
        int i;
        int size;
        int i2 = 0;
        sb.setLength(0);
        sb.append("1");
        if (eVar.a()) {
            sb.append(" AND ").append(a.j.f2371a).append(" <= ?");
            i = 1;
        } else {
            i = 0;
            i2 = -1;
        }
        if (eVar.b()) {
            sb.append(" AND ").append(a.k.f2371a).append(" <= ?");
            size = i + 1;
        } else {
            size = i;
            i = -1;
        }
        if (eVar.g() != null) {
            sb.append(" AND ").append(a.h.f2371a).append(" <= ?");
            size++;
        }
        if (eVar.c() != null) {
            if (eVar.d().isEmpty()) {
                sb.append(" AND 0 ");
            } else {
                sb.append(" AND ").append(a.f2357b.f2371a).append(" IN ( SELECT ").append(a.m.f2371a).append(" FROM ").append("job_holder_tags").append(" WHERE ").append(a.n.f2371a).append(" IN (");
                b.a(sb, eVar.d().size());
                sb.append(")");
                if (eVar.c() == s.ANY) {
                    sb.append(")");
                } else if (eVar.c() == s.ALL) {
                    sb.append(" GROUP BY (`").append(a.m.f2371a).append("`)").append(" HAVING count(*) = ").append(eVar.d().size()).append(")");
                } else {
                    throw new IllegalArgumentException("unknown constraint " + eVar);
                }
                size += eVar.d().size();
            }
        }
        if (!eVar.e().isEmpty()) {
            sb.append(" AND (").append(a.f2359d.f2371a).append(" IS NULL OR ").append(a.f2359d.f2371a).append(" NOT IN(");
            b.a(sb, eVar.e().size());
            sb.append("))");
            size += eVar.e().size();
        }
        if (!eVar.h().isEmpty()) {
            sb.append(" AND ").append(a.f2357b.f2371a).append(" NOT IN(");
            b.a(sb, eVar.h().size());
            sb.append(")");
            size += eVar.h().size();
        }
        if (!collection.isEmpty()) {
            sb.append(" AND ").append(a.f2357b.f2371a).append(" NOT IN(");
            b.a(sb, collection.size());
            sb.append(")");
            size += collection.size();
        }
        if (eVar.f()) {
            sb.append(" AND ").append(a.i.f2371a).append(" != ?");
            size++;
        }
        d dVar = new d(j, sb.toString(), new String[size]);
        dVar.a(i2);
        dVar.b(i);
        return dVar;
    }

    private boolean a(com.b.a.a.e eVar) {
        return eVar.d().size() < 64 && eVar.e().size() < 64 && eVar.h().size() < 64;
    }

    private long a(com.b.a.a.e eVar, Collection<String> collection) {
        return ((eVar.f() ? 1 : 0) << 22) | (eVar.h().size() << 16) | ((eVar.c() == null ? 2 : eVar.c().ordinal()) << 2) | ((eVar.a() ? 1 : 0) << 0) | ((eVar.b() ? 1 : 0) << 1) | (eVar.d().size() << 4) | (eVar.e().size() << 10) | ((eVar.g() != null ? 0 : 1) << 23) | (collection.size() << 24);
    }
}
