package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.birbit.android.jobqueue.persistentQueue.sqlite.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b.c f3052a = new b.c("insertionOrder", "integer", 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final b.c f3053b = new b.c("_id", "text", 1, null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final b.c f3054c = new b.c("priority", "integer", 2);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final b.c f3055d = new b.c("group_id", "text", 3);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final b.c f3056e = new b.c("run_count", "integer", 4);
    static final b.c f = new b.c("base_job", "byte", 5);
    static final b.c g = new b.c("created_ns", "long", 6);
    static final b.c h = new b.c("delay_until_ns", "long", 7);
    static final b.c i = new b.c("running_session_id", "long", 8);
    static final b.c j = new b.c("requires_network_until", "integer", 9);
    static final b.c k = new b.c("requires_unmetered_network_until", "integer", 10);
    static final b.c l = new b.c("_id", "integer", 0);
    static final b.c m = new b.c("job_id", "text", 1, new b.a("job_holder", f3053b.f3069a));
    static final b.c n = new b.c("tag_name", "text", 2);

    public a(Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 8);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(b.a("job_holder", f3052a, f3053b, f3054c, f3055d, f3056e, f, g, h, i, j, k));
        sQLiteDatabase.execSQL(b.a("job_holder_tags", l, m, n));
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS TAG_NAME_INDEX ON job_holder_tags(" + n.f3069a + ")");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        sQLiteDatabase.execSQL(b.a("job_holder"));
        sQLiteDatabase.execSQL(b.a("job_holder_tags"));
        sQLiteDatabase.execSQL("DROP INDEX IF EXISTS TAG_NAME_INDEX");
        onCreate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        onUpgrade(sQLiteDatabase, i2, i3);
    }
}
