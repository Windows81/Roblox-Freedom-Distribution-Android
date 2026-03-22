package com.roblox.client.locale.db.room;

import androidx.h.b.a;
import androidx.h.e;
import androidx.h.g;
import androidx.i.a.c;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class StringsDB_Impl extends StringsDB {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile c f6493d;

    @Override // androidx.h.e
    protected androidx.i.a.c b(androidx.h.a aVar) {
        return aVar.f1796a.a(c.b.a(aVar.f1797b).a(aVar.f1798c).a(new g(aVar, new g.a(1) { // from class: com.roblox.client.locale.db.room.StringsDB_Impl.1
            @Override // androidx.h.g.a
            public void b(androidx.i.a.b bVar) {
                bVar.c("CREATE TABLE IF NOT EXISTS `Strings` (`robloxLocaleValue` TEXT NOT NULL, `stringsKeyValueMap` TEXT, PRIMARY KEY(`robloxLocaleValue`))");
                bVar.c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                bVar.c("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"a2b3e2b8e2997b1b02bd3a27a21f086e\")");
            }

            @Override // androidx.h.g.a
            public void a(androidx.i.a.b bVar) {
                bVar.c("DROP TABLE IF EXISTS `Strings`");
            }

            @Override // androidx.h.g.a
            protected void d(androidx.i.a.b bVar) {
                if (StringsDB_Impl.this.f1840c != null) {
                    int size = StringsDB_Impl.this.f1840c.size();
                    for (int i = 0; i < size; i++) {
                        ((e.b) StringsDB_Impl.this.f1840c.get(i)).a(bVar);
                    }
                }
            }

            @Override // androidx.h.g.a
            public void c(androidx.i.a.b bVar) {
                StringsDB_Impl.this.f1838a = bVar;
                StringsDB_Impl.this.a(bVar);
                if (StringsDB_Impl.this.f1840c != null) {
                    int size = StringsDB_Impl.this.f1840c.size();
                    for (int i = 0; i < size; i++) {
                        ((e.b) StringsDB_Impl.this.f1840c.get(i)).b(bVar);
                    }
                }
            }

            @Override // androidx.h.g.a
            protected void e(androidx.i.a.b bVar) {
                HashMap map = new HashMap(2);
                map.put("robloxLocaleValue", new a.C0048a("robloxLocaleValue", "TEXT", true, 1));
                map.put("stringsKeyValueMap", new a.C0048a("stringsKeyValueMap", "TEXT", false, 0));
                androidx.h.b.a aVar2 = new androidx.h.b.a("Strings", map, new HashSet(0), new HashSet(0));
                androidx.h.b.a aVarA = androidx.h.b.a.a(bVar, "Strings");
                if (aVar2.equals(aVarA)) {
                    return;
                }
                throw new IllegalStateException("Migration didn't properly handle Strings(com.roblox.client.locale.db.room.Strings).\n Expected:\n" + aVar2 + "\n Found:\n" + aVarA);
            }
        }, "a2b3e2b8e2997b1b02bd3a27a21f086e", "0e949bd525c8fb7a34e79f90f594cde6")).a());
    }

    @Override // androidx.h.e
    protected androidx.h.c c() {
        return new androidx.h.c(this, "Strings");
    }

    @Override // com.roblox.client.locale.db.room.StringsDB
    public c k() {
        c cVar;
        if (this.f6493d != null) {
            return this.f6493d;
        }
        synchronized (this) {
            if (this.f6493d == null) {
                this.f6493d = new d(this);
            }
            cVar = this.f6493d;
        }
        return cVar;
    }
}
