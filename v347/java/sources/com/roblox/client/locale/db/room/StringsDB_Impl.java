package com.roblox.client.locale.db.room;

import android.arch.b.a.c;
import android.arch.b.b.b.a;
import android.arch.b.b.e;
import android.arch.b.b.g;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class StringsDB_Impl extends StringsDB {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile c f7374c;

    @Override // android.arch.b.b.e
    protected android.arch.b.a.c b(android.arch.b.b.a aVar) {
        return aVar.f58a.a(c.b.a(aVar.f59b).a(aVar.f60c).a(new g(aVar, new g.a(1) { // from class: com.roblox.client.locale.db.room.StringsDB_Impl.1
            @Override // android.arch.b.b.g.a
            public void b(android.arch.b.a.b bVar) {
                bVar.c("CREATE TABLE IF NOT EXISTS `Strings` (`robloxLocaleValue` TEXT NOT NULL, `stringsKeyValueMap` TEXT, PRIMARY KEY(`robloxLocaleValue`))");
                bVar.c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
                bVar.c("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"0e949bd525c8fb7a34e79f90f594cde6\")");
            }

            @Override // android.arch.b.b.g.a
            public void a(android.arch.b.a.b bVar) {
                bVar.c("DROP TABLE IF EXISTS `Strings`");
            }

            @Override // android.arch.b.b.g.a
            protected void d(android.arch.b.a.b bVar) {
                if (StringsDB_Impl.this.f96b != null) {
                    int size = StringsDB_Impl.this.f96b.size();
                    for (int i = 0; i < size; i++) {
                        ((e.b) StringsDB_Impl.this.f96b.get(i)).a(bVar);
                    }
                }
            }

            @Override // android.arch.b.b.g.a
            public void c(android.arch.b.a.b bVar) {
                StringsDB_Impl.this.f95a = bVar;
                StringsDB_Impl.this.a(bVar);
                if (StringsDB_Impl.this.f96b != null) {
                    int size = StringsDB_Impl.this.f96b.size();
                    for (int i = 0; i < size; i++) {
                        ((e.b) StringsDB_Impl.this.f96b.get(i)).b(bVar);
                    }
                }
            }

            @Override // android.arch.b.b.g.a
            protected void e(android.arch.b.a.b bVar) {
                HashMap map = new HashMap(2);
                map.put("robloxLocaleValue", new a.C0002a("robloxLocaleValue", "TEXT", true, 1));
                map.put("stringsKeyValueMap", new a.C0002a("stringsKeyValueMap", "TEXT", false, 0));
                android.arch.b.b.b.a aVar2 = new android.arch.b.b.b.a("Strings", map, new HashSet(0), new HashSet(0));
                android.arch.b.b.b.a aVarA = android.arch.b.b.b.a.a(bVar, "Strings");
                if (!aVar2.equals(aVarA)) {
                    throw new IllegalStateException("Migration didn't properly handle Strings(com.roblox.client.locale.db.room.Strings).\n Expected:\n" + aVar2 + "\n Found:\n" + aVarA);
                }
            }
        }, "0e949bd525c8fb7a34e79f90f594cde6")).a());
    }

    @Override // android.arch.b.b.e
    protected android.arch.b.b.c c() {
        return new android.arch.b.b.c(this, "Strings");
    }

    @Override // com.roblox.client.locale.db.room.StringsDB
    public c j() {
        c cVar;
        if (this.f7374c != null) {
            return this.f7374c;
        }
        synchronized (this) {
            if (this.f7374c == null) {
                this.f7374c = new d(this);
            }
            cVar = this.f7374c;
        }
        return cVar;
    }
}
