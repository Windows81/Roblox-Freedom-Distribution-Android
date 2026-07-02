package android.arch.b.b;

import android.arch.b.a.c;
import android.database.Cursor;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends c.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.arch.b.b.a f104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f106d;

    public g(android.arch.b.b.a aVar, a aVar2, String str) {
        super(aVar2.f107a);
        this.f104b = aVar;
        this.f105c = aVar2;
        this.f106d = str;
    }

    @Override // android.arch.b.a.c.a
    public void a(android.arch.b.a.b bVar) {
        super.a(bVar);
    }

    @Override // android.arch.b.a.c.a
    public void b(android.arch.b.a.b bVar) {
        f(bVar);
        this.f105c.b(bVar);
        this.f105c.d(bVar);
    }

    @Override // android.arch.b.a.c.a
    public void a(android.arch.b.a.b bVar, int i, int i2) {
        List<android.arch.b.b.a.a> listA;
        boolean z = false;
        if (this.f104b != null && (listA = this.f104b.f61d.a(i, i2)) != null) {
            Iterator<android.arch.b.b.a.a> it = listA.iterator();
            while (it.hasNext()) {
                it.next().a(bVar);
            }
            this.f105c.e(bVar);
            f(bVar);
            z = true;
        }
        if (!z) {
            if (this.f104b == null || this.f104b.g) {
                throw new IllegalStateException("A migration from " + i + " to " + i2 + " is necessary. Please provide a Migration in the builder or call fallbackToDestructiveMigration in the builder in which case Room will re-create all of the tables.");
            }
            this.f105c.a(bVar);
            this.f105c.b(bVar);
        }
    }

    @Override // android.arch.b.a.c.a
    public void b(android.arch.b.a.b bVar, int i, int i2) {
        a(bVar, i, i2);
    }

    @Override // android.arch.b.a.c.a
    public void c(android.arch.b.a.b bVar) {
        super.c(bVar);
        e(bVar);
        this.f105c.c(bVar);
        this.f104b = null;
    }

    private void e(android.arch.b.a.b bVar) {
        g(bVar);
        String string = "";
        Cursor cursorA = bVar.a(new android.arch.b.a.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        try {
            if (cursorA.moveToFirst()) {
                string = cursorA.getString(0);
            }
            cursorA.close();
            if (!this.f106d.equals(string)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
        } catch (Throwable th) {
            cursorA.close();
            throw th;
        }
    }

    private void f(android.arch.b.a.b bVar) {
        g(bVar);
        bVar.c(f.a(this.f106d));
    }

    private void g(android.arch.b.a.b bVar) {
        bVar.c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f107a;

        protected abstract void a(android.arch.b.a.b bVar);

        protected abstract void b(android.arch.b.a.b bVar);

        protected abstract void c(android.arch.b.a.b bVar);

        protected abstract void d(android.arch.b.a.b bVar);

        protected abstract void e(android.arch.b.a.b bVar);

        public a(int i) {
            this.f107a = i;
        }
    }
}
