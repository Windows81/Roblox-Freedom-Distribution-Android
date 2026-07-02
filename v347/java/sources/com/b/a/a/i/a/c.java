package com.b.a.a.i.a;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import com.b.a.a.i;
import com.b.a.a.j;
import com.b.a.a.m;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class c implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.b.a.a.i.a.a f2375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SQLiteDatabase f2376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.b.a.a.i.a.b f2377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    InterfaceC0051c f2378d;
    private final long f;
    private final e h;
    Set<String> e = new HashSet();
    private final StringBuilder g = new StringBuilder();

    /* JADX INFO: renamed from: com.b.a.a.i.a.c$c, reason: collision with other inner class name */
    public interface InterfaceC0051c {
        <T extends i> T a(byte[] bArr) throws IOException, ClassNotFoundException;

        byte[] a(Object obj) throws IOException;
    }

    public c(com.b.a.a.c.a aVar, long j, InterfaceC0051c interfaceC0051c) {
        this.f = j;
        this.h = new e(j);
        this.f2375a = new com.b.a.a.i.a.a(aVar.a(), aVar.l() ? null : "db_" + aVar.b());
        this.f2376b = this.f2375a.getWritableDatabase();
        this.f2377c = new com.b.a.a.i.a.b(this.f2376b, "job_holder", com.b.a.a.i.a.a.f2357b.f2371a, 11, "job_holder_tags", 3, j);
        this.f2378d = interfaceC0051c;
        if (aVar.n()) {
            this.f2377c.a(Long.MIN_VALUE);
        }
    }

    @Override // com.b.a.a.m
    public boolean a(j jVar) {
        if (jVar.q()) {
            return e(jVar);
        }
        SQLiteStatement sQLiteStatementA = this.f2377c.a();
        sQLiteStatementA.clearBindings();
        a(sQLiteStatementA, jVar);
        long jExecuteInsert = sQLiteStatementA.executeInsert();
        jVar.c(jExecuteInsert);
        return jExecuteInsert != -1;
    }

    @Override // com.b.a.a.m
    public void a(j jVar, j jVar2) {
        this.f2376b.beginTransaction();
        try {
            c(jVar2);
            a(jVar);
            this.f2376b.setTransactionSuccessful();
        } finally {
            this.f2376b.endTransaction();
        }
    }

    private boolean e(j jVar) {
        SQLiteStatement sQLiteStatementA = this.f2377c.a();
        SQLiteStatement sQLiteStatementB = this.f2377c.b();
        this.f2376b.beginTransaction();
        try {
            sQLiteStatementA.clearBindings();
            a(sQLiteStatementA, jVar);
            if (!(sQLiteStatementA.executeInsert() != -1)) {
                return false;
            }
            for (String str : jVar.l()) {
                sQLiteStatementB.clearBindings();
                a(sQLiteStatementB, jVar.a(), str);
                sQLiteStatementB.executeInsert();
            }
            this.f2376b.setTransactionSuccessful();
            return true;
        } catch (Throwable th) {
            com.b.a.a.f.b.a(th, "error while inserting job with tags", new Object[0]);
            return false;
        } finally {
            this.f2376b.endTransaction();
        }
        this.f2376b.endTransaction();
    }

    private void a(SQLiteStatement sQLiteStatement, String str, String str2) {
        sQLiteStatement.bindString(com.b.a.a.i.a.a.m.f2373c + 1, str);
        sQLiteStatement.bindString(com.b.a.a.i.a.a.n.f2373c + 1, str2);
    }

    private void a(SQLiteStatement sQLiteStatement, j jVar) {
        if (jVar.e() != null) {
            sQLiteStatement.bindLong(com.b.a.a.i.a.a.f2356a.f2373c + 1, jVar.e().longValue());
        }
        sQLiteStatement.bindString(com.b.a.a.i.a.a.f2357b.f2373c + 1, jVar.a());
        sQLiteStatement.bindLong(com.b.a.a.i.a.a.f2358c.f2373c + 1, jVar.d());
        if (jVar.k() != null) {
            sQLiteStatement.bindString(com.b.a.a.i.a.a.f2359d.f2373c + 1, jVar.k());
        }
        sQLiteStatement.bindLong(com.b.a.a.i.a.a.e.f2373c + 1, jVar.f());
        byte[] bArrG = g(jVar);
        if (bArrG != null) {
            sQLiteStatement.bindBlob(com.b.a.a.i.a.a.f.f2373c + 1, bArrG);
        }
        sQLiteStatement.bindLong(com.b.a.a.i.a.a.g.f2373c + 1, jVar.g());
        sQLiteStatement.bindLong(com.b.a.a.i.a.a.h.f2373c + 1, jVar.i());
        sQLiteStatement.bindLong(com.b.a.a.i.a.a.i.f2373c + 1, jVar.h());
        sQLiteStatement.bindLong(com.b.a.a.i.a.a.j.f2373c + 1, jVar.b());
        sQLiteStatement.bindLong(com.b.a.a.i.a.a.k.f2373c + 1, jVar.c());
    }

    @Override // com.b.a.a.m
    public boolean b(j jVar) {
        if (jVar.e() == null) {
            return a(jVar);
        }
        jVar.e(Long.MIN_VALUE);
        SQLiteStatement sQLiteStatementD = this.f2377c.d();
        sQLiteStatementD.clearBindings();
        a(sQLiteStatementD, jVar);
        return sQLiteStatementD.executeInsert() != -1;
    }

    @Override // com.b.a.a.m
    public void c(j jVar) {
        if (jVar.a() == null) {
            com.b.a.a.f.b.b("called remove with null job id.", new Object[0]);
        } else {
            b(jVar.a());
        }
    }

    private void b(String str) {
        this.e.remove(str);
        SQLiteStatement sQLiteStatementE = this.f2377c.e();
        sQLiteStatementE.clearBindings();
        sQLiteStatementE.bindString(1, str);
        sQLiteStatementE.execute();
    }

    @Override // com.b.a.a.m
    public int a() {
        SQLiteStatement sQLiteStatementC = this.f2377c.c();
        sQLiteStatementC.clearBindings();
        sQLiteStatementC.bindLong(1, this.f);
        return (int) sQLiteStatementC.simpleQueryForLong();
    }

    @Override // com.b.a.a.m
    public int a(com.b.a.a.e eVar) {
        return (int) e(eVar).a(this.f2376b, this.g).simpleQueryForLong();
    }

    @Override // com.b.a.a.m
    public j a(String str) {
        j jVarA = null;
        Cursor cursorRawQuery = this.f2376b.rawQuery(this.f2377c.f2360a, new String[]{str});
        try {
            if (cursorRawQuery.moveToFirst()) {
                jVarA = a(cursorRawQuery);
                cursorRawQuery.close();
            }
        } catch (a e) {
            com.b.a.a.f.b.a(e, "invalid job on findJobById", new Object[0]);
        } finally {
            cursorRawQuery.close();
        }
        return jVarA;
    }

    @Override // com.b.a.a.m
    public Set<j> d(com.b.a.a.e eVar) {
        d dVarE = e(eVar);
        Cursor cursorRawQuery = this.f2376b.rawQuery(dVarE.b(this.f2377c), dVarE.f2381c);
        HashSet hashSet = new HashSet();
        while (cursorRawQuery.moveToNext()) {
            try {
                hashSet.add(a(cursorRawQuery));
            } catch (a e) {
                com.b.a.a.f.b.a(e, "invalid job found by tags.", new Object[0]);
            } finally {
                cursorRawQuery.close();
            }
        }
        return hashSet;
    }

    @Override // com.b.a.a.m
    public void d(j jVar) {
        this.e.add(jVar.a());
        f(jVar);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:10|20|11|(2:13|25)(2:15|26)|14) */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
    
        r0 = r3.getString(com.b.a.a.i.a.a.f2357b.f2373c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (r0 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        com.b.a.a.f.b.b("cannot find job id on a retriewed job", new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003f, code lost:
    
        b(r0);
     */
    @Override // com.b.a.a.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.b.a.a.j b(com.b.a.a.e r6) {
        /*
            r5 = this;
            com.b.a.a.i.a.d r1 = r5.e(r6)
            com.b.a.a.i.a.b r0 = r5.f2377c
            java.lang.String r2 = r1.a(r0)
        La:
            android.database.sqlite.SQLiteDatabase r0 = r5.f2376b
            java.lang.String[] r3 = r1.f2381c
            android.database.Cursor r3 = r0.rawQuery(r2, r3)
            boolean r0 = r3.moveToNext()     // Catch: com.b.a.a.i.a.c.a -> L28 java.lang.Throwable -> L43
            if (r0 != 0) goto L1d
            r0 = 0
            r3.close()
        L1c:
            return r0
        L1d:
            com.b.a.a.j r0 = r5.a(r3)     // Catch: com.b.a.a.i.a.c.a -> L28 java.lang.Throwable -> L43
            r5.f(r0)     // Catch: com.b.a.a.i.a.c.a -> L28 java.lang.Throwable -> L43
            r3.close()
            goto L1c
        L28:
            r0 = move-exception
            com.b.a.a.i.a.b$c r0 = com.b.a.a.i.a.a.f2357b     // Catch: java.lang.Throwable -> L43
            int r0 = r0.f2373c     // Catch: java.lang.Throwable -> L43
            java.lang.String r0 = r3.getString(r0)     // Catch: java.lang.Throwable -> L43
            if (r0 != 0) goto L3f
            java.lang.String r0 = "cannot find job id on a retriewed job"
            r4 = 0
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> L43
            com.b.a.a.f.b.b(r0, r4)     // Catch: java.lang.Throwable -> L43
        L3b:
            r3.close()
            goto La
        L3f:
            r5.b(r0)     // Catch: java.lang.Throwable -> L43
            goto L3b
        L43:
            r0 = move-exception
            r3.close()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.i.a.c.b(com.b.a.a.e):com.b.a.a.j");
    }

    private d e(com.b.a.a.e eVar) {
        return this.h.a(eVar, this.e, this.g);
    }

    @Override // com.b.a.a.m
    public Long c(com.b.a.a.e eVar) {
        Long lValueOf;
        d dVarE = e(eVar);
        try {
            if (eVar.a() || eVar.b()) {
                lValueOf = Long.valueOf(dVarE.a(this.f2376b, this.f2377c).simpleQueryForLong());
            } else {
                lValueOf = Long.valueOf(dVarE.b(this.f2376b, this.f2377c).simpleQueryForLong());
            }
            return lValueOf;
        } catch (SQLiteDoneException e) {
            return null;
        }
    }

    @Override // com.b.a.a.m
    public void b() {
        this.f2377c.g();
    }

    private void f(j jVar) {
        SQLiteStatement sQLiteStatementF = this.f2377c.f();
        jVar.c(jVar.f() + 1);
        jVar.e(this.f);
        sQLiteStatementF.clearBindings();
        sQLiteStatementF.bindLong(1, jVar.f());
        sQLiteStatementF.bindLong(2, this.f);
        sQLiteStatementF.bindString(3, jVar.a());
        sQLiteStatementF.execute();
    }

    private j a(Cursor cursor) throws a {
        i iVarA = a(cursor.getBlob(com.b.a.a.i.a.a.f.f2373c));
        if (iVarA == null) {
            throw new a();
        }
        return new j.a().c(cursor.getLong(com.b.a.a.i.a.a.f2356a.f2373c)).a(cursor.getInt(com.b.a.a.i.a.a.f2358c.f2373c)).a(cursor.getString(com.b.a.a.i.a.a.f2359d.f2373c)).b(cursor.getInt(com.b.a.a.i.a.a.e.f2373c)).a(iVarA).a(cursor.getLong(com.b.a.a.i.a.a.g.f2373c)).b(cursor.getLong(com.b.a.a.i.a.a.h.f2373c)).d(cursor.getLong(com.b.a.a.i.a.a.i.f2373c)).a();
    }

    private i a(byte[] bArr) {
        try {
            return this.f2378d.a(bArr);
        } catch (Throwable th) {
            com.b.a.a.f.b.a(th, "error while deserializing job", new Object[0]);
            return null;
        }
    }

    private byte[] g(j jVar) {
        return a(jVar.j());
    }

    private byte[] a(Object obj) {
        try {
            return this.f2378d.a(obj);
        } catch (Throwable th) {
            com.b.a.a.f.b.a(th, "error while serializing object %s", obj.getClass().getSimpleName());
            return null;
        }
    }

    private static class a extends Exception {
        private a() {
        }
    }

    public static class b implements InterfaceC0051c {
        @Override // com.b.a.a.i.a.c.InterfaceC0051c
        public byte[] a(Object obj) throws Throwable {
            ByteArrayOutputStream byteArrayOutputStream;
            Throwable th;
            byte[] byteArray = null;
            if (obj != null) {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        new ObjectOutputStream(byteArrayOutputStream).writeObject(obj);
                        byteArray = byteArrayOutputStream.toByteArray();
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    byteArrayOutputStream = null;
                    th = th3;
                }
            }
            return byteArray;
        }

        @Override // com.b.a.a.i.a.c.InterfaceC0051c
        public <T extends i> T a(byte[] bArr) throws Throwable {
            ObjectInputStream objectInputStream;
            Throwable th;
            T t = null;
            if (bArr != null && bArr.length != 0) {
                try {
                    objectInputStream = new ObjectInputStream(new ByteArrayInputStream(bArr));
                    try {
                        t = (T) objectInputStream.readObject();
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    objectInputStream = null;
                    th = th3;
                }
            }
            return t;
        }
    }
}
