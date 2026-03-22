package androidx.h;

import android.database.Cursor;
import androidx.i.a.c;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.h.a f1853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f1854c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1855d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1856e;

    public g(androidx.h.a aVar, a aVar2, String str, String str2) {
        super(aVar2.f1857a);
        this.f1853b = aVar;
        this.f1854c = aVar2;
        this.f1855d = str;
        this.f1856e = str2;
    }

    @Override // androidx.i.a.c.a
    public void a(androidx.i.a.b bVar) {
        super.a(bVar);
    }

    @Override // androidx.i.a.c.a
    public void b(androidx.i.a.b bVar) {
        f(bVar);
        this.f1854c.b(bVar);
        this.f1854c.d(bVar);
    }

    @Override // androidx.i.a.c.a
    public void a(androidx.i.a.b bVar, int i, int i2) {
        boolean z;
        List<androidx.h.a.a> listA;
        androidx.h.a aVar = this.f1853b;
        if (aVar == null || (listA = aVar.f1799d.a(i, i2)) == null) {
            z = false;
        } else {
            Iterator<androidx.h.a.a> it = listA.iterator();
            while (it.hasNext()) {
                it.next().a(bVar);
            }
            this.f1854c.e(bVar);
            f(bVar);
            z = true;
        }
        if (z) {
            return;
        }
        androidx.h.a aVar2 = this.f1853b;
        if (aVar2 != null && !aVar2.a(i)) {
            this.f1854c.a(bVar);
            this.f1854c.b(bVar);
            return;
        }
        throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
    }

    @Override // androidx.i.a.c.a
    public void b(androidx.i.a.b bVar, int i, int i2) {
        a(bVar, i, i2);
    }

    @Override // androidx.i.a.c.a
    public void c(androidx.i.a.b bVar) {
        super.c(bVar);
        e(bVar);
        this.f1854c.c(bVar);
        this.f1853b = null;
    }

    private void e(androidx.i.a.b bVar) {
        if (h(bVar)) {
            Cursor cursorA = bVar.a(new androidx.i.a.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
            try {
                string = cursorA.moveToFirst() ? cursorA.getString(0) : null;
            } finally {
                cursorA.close();
            }
        }
        if (!this.f1855d.equals(string) && !this.f1856e.equals(string)) {
            throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
        }
    }

    private void f(androidx.i.a.b bVar) {
        g(bVar);
        bVar.c(f.a(this.f1855d));
    }

    private void g(androidx.i.a.b bVar) {
        bVar.c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private static boolean h(androidx.i.a.b bVar) {
        Cursor cursorB = bVar.b("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (cursorB.moveToFirst()) {
                if (cursorB.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            cursorB.close();
        }
    }

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f1857a;

        protected abstract void a(androidx.i.a.b bVar);

        protected abstract void b(androidx.i.a.b bVar);

        protected abstract void c(androidx.i.a.b bVar);

        protected abstract void d(androidx.i.a.b bVar);

        protected abstract void e(androidx.i.a.b bVar);

        public a(int i) {
            this.f1857a = i;
        }
    }
}
