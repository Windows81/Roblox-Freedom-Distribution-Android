package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import com.birbit.android.jobqueue.JobQueue;
import com.birbit.android.jobqueue.g;
import com.birbit.android.jobqueue.h;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SqliteJobQueue implements JobQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.birbit.android.jobqueue.persistentQueue.sqlite.a f3047a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SQLiteDatabase f3048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.birbit.android.jobqueue.persistentQueue.sqlite.b f3049c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    JobSerializer f3050d;
    private final long f;
    private final d h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Set<String> f3051e = new HashSet();
    private final StringBuilder g = new StringBuilder();

    public interface JobSerializer {
        <T extends g> T deserialize(byte[] bArr) throws IOException, ClassNotFoundException;

        byte[] serialize(Object obj) throws IOException;
    }

    public SqliteJobQueue(com.birbit.android.jobqueue.b.a aVar, long j, JobSerializer jobSerializer) {
        String str;
        this.f = j;
        this.h = new d(j);
        Context contextA = aVar.a();
        if (aVar.l()) {
            str = null;
        } else {
            str = "db_" + aVar.b();
        }
        com.birbit.android.jobqueue.persistentQueue.sqlite.a aVar2 = new com.birbit.android.jobqueue.persistentQueue.sqlite.a(contextA, str);
        this.f3047a = aVar2;
        SQLiteDatabase writableDatabase = aVar2.getWritableDatabase();
        this.f3048b = writableDatabase;
        this.f3049c = new com.birbit.android.jobqueue.persistentQueue.sqlite.b(writableDatabase, "job_holder", com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3053b.f3069a, 11, "job_holder_tags", 3, j);
        this.f3050d = jobSerializer;
        if (aVar.n()) {
            this.f3049c.a(Long.MIN_VALUE);
        }
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insert(h hVar) {
        if (hVar.q()) {
            return a(hVar);
        }
        SQLiteStatement sQLiteStatementA = this.f3049c.a();
        sQLiteStatementA.clearBindings();
        a(sQLiteStatementA, hVar);
        long jExecuteInsert = sQLiteStatementA.executeInsert();
        hVar.c(jExecuteInsert);
        return jExecuteInsert != -1;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void substitute(h hVar, h hVar2) {
        this.f3048b.beginTransaction();
        try {
            remove(hVar2);
            insert(hVar);
            this.f3048b.setTransactionSuccessful();
        } finally {
            this.f3048b.endTransaction();
        }
    }

    private boolean a(h hVar) {
        SQLiteStatement sQLiteStatementA = this.f3049c.a();
        SQLiteStatement sQLiteStatementB = this.f3049c.b();
        this.f3048b.beginTransaction();
        try {
            sQLiteStatementA.clearBindings();
            a(sQLiteStatementA, hVar);
            if (sQLiteStatementA.executeInsert() != -1) {
                for (String str : hVar.l()) {
                    sQLiteStatementB.clearBindings();
                    a(sQLiteStatementB, hVar.a(), str);
                    sQLiteStatementB.executeInsert();
                }
                this.f3048b.setTransactionSuccessful();
                return true;
            }
        } finally {
            try {
            } finally {
            }
        }
        return false;
    }

    private void a(SQLiteStatement sQLiteStatement, String str, String str2) {
        sQLiteStatement.bindString(com.birbit.android.jobqueue.persistentQueue.sqlite.a.m.f3071c + 1, str);
        sQLiteStatement.bindString(com.birbit.android.jobqueue.persistentQueue.sqlite.a.n.f3071c + 1, str2);
    }

    private void a(SQLiteStatement sQLiteStatement, h hVar) {
        if (hVar.e() != null) {
            sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3052a.f3071c + 1, hVar.e().longValue());
        }
        sQLiteStatement.bindString(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3053b.f3071c + 1, hVar.a());
        sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3054c.f3071c + 1, hVar.d());
        if (hVar.k() != null) {
            sQLiteStatement.bindString(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3055d.f3071c + 1, hVar.k());
        }
        sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3056e.f3071c + 1, hVar.f());
        byte[] bArrC = c(hVar);
        if (bArrC != null) {
            sQLiteStatement.bindBlob(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f.f3071c + 1, bArrC);
        }
        sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.g.f3071c + 1, hVar.g());
        sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.h.f3071c + 1, hVar.i());
        sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.i.f3071c + 1, hVar.h());
        sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.j.f3071c + 1, hVar.b());
        sQLiteStatement.bindLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.k.f3071c + 1, hVar.c());
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insertOrReplace(h hVar) {
        if (hVar.e() == null) {
            return insert(hVar);
        }
        hVar.e(Long.MIN_VALUE);
        SQLiteStatement sQLiteStatementD = this.f3049c.d();
        sQLiteStatementD.clearBindings();
        a(sQLiteStatementD, hVar);
        return sQLiteStatementD.executeInsert() != -1;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void remove(h hVar) {
        if (hVar.a() == null) {
            com.birbit.android.jobqueue.log.a.b("called remove with null job id.", new Object[0]);
        } else {
            a(hVar.a());
        }
    }

    private void a(String str) {
        this.f3051e.remove(str);
        SQLiteStatement sQLiteStatementE = this.f3049c.e();
        sQLiteStatementE.clearBindings();
        sQLiteStatementE.bindString(1, str);
        sQLiteStatementE.execute();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int count() {
        SQLiteStatement sQLiteStatementC = this.f3049c.c();
        sQLiteStatementC.clearBindings();
        sQLiteStatementC.bindLong(1, this.f);
        return (int) sQLiteStatementC.simpleQueryForLong();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int countReadyJobs(com.birbit.android.jobqueue.d dVar) {
        return (int) a(dVar).a(this.f3048b, this.g).simpleQueryForLong();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public h findJobById(String str) {
        Cursor cursorRawQuery = this.f3048b.rawQuery(this.f3049c.f3057a, new String[]{str});
        try {
            if (cursorRawQuery.moveToFirst()) {
                return a(cursorRawQuery);
            }
            return null;
        } catch (a e2) {
            com.birbit.android.jobqueue.log.a.a(e2, "invalid job on findJobById", new Object[0]);
            return null;
        } finally {
            cursorRawQuery.close();
        }
        cursorRawQuery.close();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Set<h> findJobs(com.birbit.android.jobqueue.d dVar) {
        c cVarA = a(dVar);
        Cursor cursorRawQuery = this.f3048b.rawQuery(cVarA.b(this.f3049c), cVarA.f3076c);
        HashSet hashSet = new HashSet();
        while (cursorRawQuery.moveToNext()) {
            try {
                try {
                    hashSet.add(a(cursorRawQuery));
                } catch (a e2) {
                    com.birbit.android.jobqueue.log.a.a(e2, "invalid job found by tags.", new Object[0]);
                }
            } finally {
                cursorRawQuery.close();
            }
        }
        return hashSet;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void onJobCancelled(h hVar) {
        this.f3051e.add(hVar.a());
        b(hVar);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public h nextJobAndIncRunCount(com.birbit.android.jobqueue.d dVar) {
        c cVarA = a(dVar);
        String strA = cVarA.a(this.f3049c);
        while (true) {
            Cursor cursorRawQuery = this.f3048b.rawQuery(strA, cVarA.f3076c);
            try {
                if (cursorRawQuery.moveToNext()) {
                    h hVarA = a(cursorRawQuery);
                    b(hVarA);
                    return hVarA;
                }
                return null;
            } catch (a unused) {
                String string = cursorRawQuery.getString(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3053b.f3071c);
                if (string == null) {
                    com.birbit.android.jobqueue.log.a.b("cannot find job id on a retriewed job", new Object[0]);
                } else {
                    a(string);
                }
            } finally {
                cursorRawQuery.close();
            }
        }
    }

    private c a(com.birbit.android.jobqueue.d dVar) {
        return this.h.a(dVar, this.f3051e, this.g);
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Long getNextJobDelayUntilNs(com.birbit.android.jobqueue.d dVar) {
        c cVarA = a(dVar);
        try {
            if (!dVar.a() && !dVar.b()) {
                return Long.valueOf(cVarA.b(this.f3048b, this.f3049c).simpleQueryForLong());
            }
            return Long.valueOf(cVarA.a(this.f3048b, this.f3049c).simpleQueryForLong());
        } catch (SQLiteDoneException unused) {
            return null;
        }
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void clear() {
        this.f3049c.g();
    }

    private void b(h hVar) {
        SQLiteStatement sQLiteStatementF = this.f3049c.f();
        hVar.c(hVar.f() + 1);
        hVar.e(this.f);
        sQLiteStatementF.clearBindings();
        sQLiteStatementF.bindLong(1, hVar.f());
        sQLiteStatementF.bindLong(2, this.f);
        sQLiteStatementF.bindString(3, hVar.a());
        sQLiteStatementF.execute();
    }

    private h a(Cursor cursor) throws a {
        g gVarA = a(cursor.getBlob(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f.f3071c));
        if (gVarA == null) {
            throw new a();
        }
        return new h.a().c(cursor.getLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3052a.f3071c)).a(cursor.getInt(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3054c.f3071c)).a(cursor.getString(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3055d.f3071c)).b(cursor.getInt(com.birbit.android.jobqueue.persistentQueue.sqlite.a.f3056e.f3071c)).a(gVarA).a(cursor.getLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.g.f3071c)).b(cursor.getLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.h.f3071c)).d(cursor.getLong(com.birbit.android.jobqueue.persistentQueue.sqlite.a.i.f3071c)).a();
    }

    private g a(byte[] bArr) {
        try {
            return this.f3050d.deserialize(bArr);
        } catch (Throwable th) {
            com.birbit.android.jobqueue.log.a.a(th, "error while deserializing job", new Object[0]);
            return null;
        }
    }

    private byte[] c(h hVar) {
        return a(hVar.j());
    }

    private byte[] a(Object obj) {
        try {
            return this.f3050d.serialize(obj);
        } catch (Throwable th) {
            com.birbit.android.jobqueue.log.a.a(th, "error while serializing object %s", obj.getClass().getSimpleName());
            return null;
        }
    }

    private static class a extends Exception {
        private a() {
        }
    }

    public static class b implements JobSerializer {
        @Override // com.birbit.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.JobSerializer
        public byte[] serialize(Object obj) throws Throwable {
            ByteArrayOutputStream byteArrayOutputStream = null;
            if (obj == null) {
                return null;
            }
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    new ObjectOutputStream(byteArrayOutputStream2).writeObject(obj);
                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                    byteArrayOutputStream2.close();
                    return byteArray;
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }

        @Override // com.birbit.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.JobSerializer
        public <T extends g> T deserialize(byte[] bArr) throws Throwable {
            ObjectInputStream objectInputStream = null;
            if (bArr == null || bArr.length == 0) {
                return null;
            }
            try {
                ObjectInputStream objectInputStream2 = new ObjectInputStream(new ByteArrayInputStream(bArr));
                try {
                    T t = (T) objectInputStream2.readObject();
                    objectInputStream2.close();
                    return t;
                } catch (Throwable th) {
                    th = th;
                    objectInputStream = objectInputStream2;
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
