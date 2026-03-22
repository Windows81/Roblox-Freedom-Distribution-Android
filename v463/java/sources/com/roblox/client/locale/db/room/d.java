package com.roblox.client.locale.db.room;

import android.database.Cursor;
import androidx.h.e;
import androidx.h.h;
import androidx.h.i;
import androidx.i.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f6497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.h.b f6498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f6499c;

    public d(e eVar) {
        this.f6497a = eVar;
        this.f6498b = new androidx.h.b<b>(eVar) { // from class: com.roblox.client.locale.db.room.d.1
            @Override // androidx.h.i
            public String a() {
                return "INSERT OR REPLACE INTO `Strings`(`robloxLocaleValue`,`stringsKeyValueMap`) VALUES (?,?)";
            }

            @Override // androidx.h.b
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
        this.f6499c = new i(eVar) { // from class: com.roblox.client.locale.db.room.d.2
            @Override // androidx.h.i
            public String a() {
                return "DELETE FROM Strings";
            }
        };
    }

    @Override // com.roblox.client.locale.db.room.c
    public void a(b bVar) {
        this.f6497a.f();
        try {
            this.f6498b.a(bVar);
            this.f6497a.i();
        } finally {
            this.f6497a.g();
        }
    }

    @Override // com.roblox.client.locale.db.room.c
    public int a() {
        f fVarC = this.f6499c.c();
        this.f6497a.f();
        try {
            int iA = fVarC.a();
            this.f6497a.i();
            return iA;
        } finally {
            this.f6497a.g();
            this.f6499c.a(fVarC);
        }
    }

    @Override // com.roblox.client.locale.db.room.c
    public b a(String str) {
        h hVarA = h.a("SELECT * FROM Strings WHERE robloxLocaleValue = ?", 1);
        if (str == null) {
            hVarA.a(1);
        } else {
            hVarA.a(1, str);
        }
        Cursor cursorA = this.f6497a.a(hVarA);
        try {
            return cursorA.moveToFirst() ? new b(cursorA.getString(cursorA.getColumnIndexOrThrow("robloxLocaleValue")), a.a(cursorA.getString(cursorA.getColumnIndexOrThrow("stringsKeyValueMap")))) : null;
        } finally {
            cursorA.close();
            hVarA.a();
        }
    }
}
