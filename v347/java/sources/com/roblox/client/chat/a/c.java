package com.roblox.client.chat.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c extends ArrayList<h> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f6501a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6502b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f6503c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HashMap<String, h> f6504d;
    private HashMap<String, h> e;
    private HashSet<String> f;
    private Object g;
    private Comparator h;

    public c() {
        this(null);
    }

    public c(Object obj) {
        this.h = new Comparator<h>() { // from class: com.roblox.client.chat.a.c.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(h hVar, h hVar2) {
                long jC = hVar.c() - hVar2.c();
                if (jC > 0) {
                    return 1;
                }
                if (jC < 0) {
                    return -1;
                }
                return 0;
            }
        };
        this.f6501a = 0;
        this.f6502b = 0;
        this.f6503c = 0;
        this.g = obj == null ? this : obj;
        this.f6504d = new HashMap<>();
        this.e = new HashMap<>();
        this.f = new HashSet<>();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        synchronized (this.g) {
            this.e.clear();
            this.f6504d.clear();
            this.f.clear();
            super.clear();
        }
    }

    public boolean a(String str) {
        return this.f.contains(str);
    }

    public void a(String str, boolean z) {
        if (z) {
            this.f.add(str);
        } else {
            this.f.remove(str);
        }
    }

    public HashSet<String> a() {
        return this.f;
    }

    public void a(HashSet<String> hashSet) {
        synchronized (this.g) {
            Iterator<String> it = hashSet.iterator();
            while (it.hasNext()) {
                a(it.next(), true);
            }
        }
    }

    public int b() {
        return this.f.size();
    }

    public h b(String str) {
        h hVar;
        if (str == null) {
            return null;
        }
        synchronized (this.g) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= size()) {
                    hVar = null;
                    break;
                }
                hVar = get(i2);
                if (str.equals(hVar.e())) {
                    break;
                }
                i = i2 + 1;
            }
        }
        return hVar;
    }

    private void e() {
        synchronized (this.g) {
            Collections.sort(this, this.h);
        }
    }

    public long c() {
        if (isEmpty()) {
            return 0L;
        }
        return get(size() - 1).c();
    }

    public void a(c cVar) {
        if (cVar != null) {
            synchronized (this.g) {
                a((ArrayList<h>) cVar);
                a(cVar.a());
            }
        }
    }

    public h c(String str) {
        synchronized (this.g) {
            h hVar = this.e.get(str);
            if (hVar != null) {
                remove(hVar);
                this.e.remove(str);
                return hVar;
            }
            return null;
        }
    }

    public void a(ArrayList<h> arrayList) {
        if (arrayList != null) {
            synchronized (this.g) {
                this.f6501a = 0;
                this.f6502b = 0;
                this.f6503c = 0;
                for (int i = 0; i < arrayList.size(); i++) {
                    b(arrayList.get(i));
                }
                e();
            }
        }
    }

    public void a(h hVar) {
        synchronized (this.g) {
            b(hVar);
            e();
        }
    }

    private void b(h hVar) {
        String strE = hVar.e();
        String strF = hVar.f();
        if (strE != null) {
            h hVar2 = this.f6504d.get(strE);
            if (hVar2 != null) {
                hVar2.a(hVar);
                c(hVar2);
                this.f6501a++;
            } else {
                this.f6504d.put(strE, hVar);
                add(hVar);
                c(hVar);
                this.f6502b++;
            }
            this.e.remove(strF);
            return;
        }
        if (strF != null) {
            this.e.put(strF, hVar);
            add(hVar);
            c(hVar);
            this.f6502b++;
            return;
        }
        this.f6503c++;
    }

    public h d(String str) {
        return this.e.get(str);
    }

    private void c(h hVar) {
        hVar.f6515a = true;
        this.f.remove(hVar.e());
    }

    public void a(String str, String str2, String str3, boolean z) {
        synchronized (this.g) {
            h hVarRemove = this.e.remove(str);
            if (hVarRemove != null) {
                if (str3 != null) {
                    hVarRemove.d(str3);
                }
                hVarRemove.a(str2);
                hVarRemove.b((String) null);
                hVarRemove.a(Boolean.valueOf(z));
                this.f6504d.put(str2, hVarRemove);
            }
        }
    }

    public void a(String str, String str2, String str3) {
        synchronized (this.g) {
            h hVar = this.e.get(str);
            if (hVar != null) {
                hVar.c(str2);
                hVar.h(str3);
                if ("Moderated".equals(str3)) {
                    hVar.f(hVar.i());
                }
            }
        }
    }

    public h d() {
        return a(size() - 1);
    }

    public h a(int i) {
        synchronized (this.g) {
            while (i >= 0) {
                h hVar = get(i);
                if (hVar.e() == null) {
                    i--;
                } else {
                    return hVar;
                }
            }
            return null;
        }
    }

    public h a(int i, Set<String> set) {
        synchronized (this.g) {
            while (i < size()) {
                h hVar = get(i);
                if (hVar.m() == null || !set.contains(hVar.m())) {
                    i++;
                } else {
                    return hVar;
                }
            }
            return null;
        }
    }

    public h b(int i, Set<String> set) {
        synchronized (this.g) {
            while (i >= 0) {
                h hVar = get(i);
                if (hVar.m() == null || !set.contains(hVar.m())) {
                    i--;
                } else {
                    return hVar;
                }
            }
            return null;
        }
    }
}
