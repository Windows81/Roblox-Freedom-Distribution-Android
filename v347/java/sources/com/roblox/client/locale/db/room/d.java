package com.roblox.client.locale.db.room;

import android.arch.b.a.f;
import android.arch.b.b.e;
import android.arch.b.b.h;
import android.arch.b.b.i;
import android.database.Cursor;

/* JADX INFO: loaded from: classes.dex */
public class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f7378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final android.arch.b.b.b f7379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f7380c;

    public d(e eVar) {
        this.f7378a = eVar;
        this.f7379b = new android.arch.b.b.b<b>(eVar) { // from class: com.roblox.client.locale.db.room.d.1
            @Override // android.arch.b.b.i
            public String a() {
                return "INSERT OR REPLACE INTO `Strings`(`robloxLocaleValue`,`stringsKeyValueMap`) VALUES (?,?)";
            }

            @Override // android.arch.b.b.b
            public void a(f fVar, b bVar) {
                if (bVar.a() == null) {
                    fVar.a(1);
                } else {
                    fVar.a(1, bVar.a());
                }
                String strA = a.a(bVar.b());
                if (strA == null) {
                    fVar.a(2);
                } else {
                    fVar.a(2, strA);
                }
            }
        };
        this.f7380c = new i(eVar) { // from class: com.roblox.client.locale.db.room.d.2
            @Override // android.arch.b.b.i
            public String a() {
                return "DELETE FROM Strings";
            }
        };
    }

    @Override // com.roblox.client.locale.db.room.c
    public void a(b bVar) {
        this.f7378a.f();
        try {
            this.f7379b.a(bVar);
            this.f7378a.h();
        } finally {
            this.f7378a.g();
        }
    }

    @Override // com.roblox.client.locale.db.room.c
    public int a() {
        f fVarC = this.f7380c.c();
        this.f7378a.f();
        try {
            int iA = fVarC.a();
            this.f7378a.h();
            return iA;
        } finally {
            this.f7378a.g();
            this.f7380c.a(fVarC);
        }
    }

    @Override // com.roblox.client.locale.db.room.c
    public b a(String str) {
        b bVar;
        h hVarA = h.a("SELECT * FROM Strings WHERE robloxLocaleValue = ?", 1);
        if (str == null) {
            hVarA.a(1);
        } else {
            hVarA.a(1, str);
        }
        Cursor cursorA = this.f7378a.a(hVarA);
        try {
            int columnIndexOrThrow = cursorA.getColumnIndexOrThrow("robloxLocaleValue");
            int columnIndexOrThrow2 = cursorA.getColumnIndexOrThrow("stringsKeyValueMap");
            if (cursorA.moveToFirst()) {
                bVar = new b(cursorA.getString(columnIndexOrThrow), a.a(cursorA.getString(columnIndexOrThrow2)));
            } else {
                bVar = null;
            }
            return bVar;
        } finally {
            cursorA.close();
            hVarA.b();
        }
    }
}
