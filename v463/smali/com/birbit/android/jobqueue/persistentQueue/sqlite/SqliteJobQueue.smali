.class public Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/birbit/android/jobqueue/JobQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;,
        Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;,
        Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a;
    }
.end annotation


# instance fields
.field a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;

.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

.field d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:J

.field private final g:Ljava/lang/StringBuilder;

.field private final h:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;


# direct methods
.method public constructor <init>(Lcom/birbit/android/jobqueue/b/a;JLcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;)V
    .locals 10

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:Ljava/lang/StringBuilder;

    .line 41
    iput-wide p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:J

    .line 42
    new-instance v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;

    invoke-direct {v0, p2, p3}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;-><init>(J)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->h:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;

    .line 43
    new-instance v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->l()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;

    .line 45
    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    new-instance v9, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget-object v3, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->a:Ljava/lang/String;

    const/16 v4, 0xb

    const/4 v6, 0x3

    const-string v2, "job_holder"

    const-string v5, "job_holder_tags"

    move-object v0, v9

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJ)V

    iput-object v9, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    .line 49
    iput-object p4, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;

    .line 50
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/b/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a(J)V

    :cond_1
    return-void
.end method

.method private a([B)Lcom/birbit/android/jobqueue/g;
    .locals 2

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;->deserialize([B)Lcom/birbit/android/jobqueue/g;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "error while deserializing job"

    .line 386
    invoke-static {p1, v1, v0}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/database/Cursor;)Lcom/birbit/android/jobqueue/h;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a([B)Lcom/birbit/android/jobqueue/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v1, Lcom/birbit/android/jobqueue/h$a;

    invoke-direct {v1}, Lcom/birbit/android/jobqueue/h$a;-><init>()V

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/birbit/android/jobqueue/h$a;->c(J)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v1

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/h$a;->a(I)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v1

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/h$a;->a(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v1

    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/birbit/android/jobqueue/h$a;->b(I)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/birbit/android/jobqueue/h$a;->a(Lcom/birbit/android/jobqueue/g;)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v0

    sget-object v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/birbit/android/jobqueue/h$a;->a(J)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v0

    sget-object v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/birbit/android/jobqueue/h$a;->b(J)Lcom/birbit/android/jobqueue/h$a;

    move-result-object v0

    sget-object v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/birbit/android/jobqueue/h$a;->d(J)Lcom/birbit/android/jobqueue/h$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h$a;->a()Lcom/birbit/android/jobqueue/h;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    new-instance p1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a;-><init>(Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$1;)V

    throw p1
.end method

.method private a(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->h:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1, v2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/d;->a(Lcom/birbit/android/jobqueue/d;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Lcom/birbit/android/jobqueue/h;)V
    .locals 3

    .line 117
    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    :cond_0
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 122
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->d()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_1
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    invoke-direct {p0, p2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c(Lcom/birbit/android/jobqueue/h;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 131
    :cond_2
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->g()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 132
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->i()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->h()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->j:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->b()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 136
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->k:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/birbit/android/jobqueue/h;->c()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->m:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v0, v0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    sget-object p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->n:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget p2, p2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->e()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method private a(Lcom/birbit/android/jobqueue/h;)Z
    .locals 8

    .line 85
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    .line 89
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/birbit/android/jobqueue/h;)V

    .line 91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, -0x1

    const/4 v0, 0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    .line 107
    :goto_1
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v2

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->l()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 97
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5, v4}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_2

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "error while inserting job with tags"

    new-array v1, v2, [Ljava/lang/Object;

    .line 103
    invoke-static {p1, v0, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 107
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private a(Ljava/lang/Object;)[B
    .locals 3

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;

    invoke-interface {v0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 399
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "error while serializing object %s"

    invoke-static {v0, p1, v1}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Lcom/birbit/android/jobqueue/h;)V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->f()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 308
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->f()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/birbit/android/jobqueue/h;->c(I)V

    .line 309
    iget-wide v3, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:J

    invoke-virtual {p1, v3, v4}, Lcom/birbit/android/jobqueue/h;->e(J)V

    .line 310
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 311
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->f()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 312
    iget-wide v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:J

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 313
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method private c(Lcom/birbit/android/jobqueue/h;)[B
    .locals 0

    .line 392
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->j()Lcom/birbit/android/jobqueue/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->g()V

    return-void
.end method

.method public count()I
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 182
    iget-wide v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 183
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public countReadyJobs(Lcom/birbit/android/jobqueue/d;)I
    .locals 2

    .line 188
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/StringBuilder;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public findJobById(Ljava/lang/String;)Lcom/birbit/android/jobqueue/h;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    iget-object v1, v1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 203
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/Cursor;)Lcom/birbit/android/jobqueue/h;

    move-result-object v0
    :try_end_1
    .catch Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "invalid job on findJobById"

    new-array v3, v3, [Ljava/lang/Object;

    .line 205
    invoke-static {v1, v2, v3}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public findJobs(Lcom/birbit/android/jobqueue/d;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/birbit/android/jobqueue/d;",
            ")",
            "Ljava/util/Set<",
            "Lcom/birbit/android/jobqueue/h;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->b(Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p1, p1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 217
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 219
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/Cursor;)Lcom/birbit/android/jobqueue/h;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 225
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "invalid job found by tags."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 223
    invoke-static {v1, v2, v3}, Lcom/birbit/android/jobqueue/log/a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-object v0

    .line 225
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public getNextJobDelayUntilNs(Lcom/birbit/android/jobqueue/d;)Ljava/lang/Long;
    .locals 2

    .line 277
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    move-result-object v0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/d;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0, p1, v1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 280
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0, p1, v1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Lcom/birbit/android/jobqueue/h;)Z
    .locals 4

    .line 60
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Lcom/birbit/android/jobqueue/h;)Z

    move-result p1

    return p1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 65
    invoke-direct {p0, v0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/birbit/android/jobqueue/h;)V

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/birbit/android/jobqueue/h;->c(J)V

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public insertOrReplace(Lcom/birbit/android/jobqueue/h;)Z
    .locals 4

    .line 145
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->insert(Lcom/birbit/android/jobqueue/h;)Z

    move-result p1

    return p1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 148
    invoke-virtual {p1, v0, v1}, Lcom/birbit/android/jobqueue/h;->e(J)V

    .line 149
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 151
    invoke-direct {p0, v0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/birbit/android/jobqueue/h;)V

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public nextJobAndIncRunCount(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/h;
    .locals 4

    .line 242
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Lcom/birbit/android/jobqueue/d;)Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;

    move-result-object p1

    .line 244
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {p1, v0}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->a(Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p1, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/c;->c:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 248
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object p1

    .line 251
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/Cursor;)Lcom/birbit/android/jobqueue/h;

    move-result-object v2

    .line 252
    invoke-direct {p0, v2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b(Lcom/birbit/android/jobqueue/h;)V
    :try_end_1
    .catch Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 256
    :catch_0
    :try_start_2
    sget-object v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;

    iget v2, v2, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/b$c;->c:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "cannot find job id on a retriewed job"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 258
    invoke-static {v2, v3}, Lcom/birbit/android/jobqueue/log/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 260
    :cond_1
    invoke-direct {p0, v2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public onJobCancelled(Lcom/birbit/android/jobqueue/h;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b(Lcom/birbit/android/jobqueue/h;)V

    return-void
.end method

.method public remove(Lcom/birbit/android/jobqueue/h;)V
    .locals 1

    .line 160
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "called remove with null job id."

    .line 161
    invoke-static {v0, p1}, Lcom/birbit/android/jobqueue/log/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/birbit/android/jobqueue/h;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/String;)V

    return-void
.end method

.method public substitute(Lcom/birbit/android/jobqueue/h;Lcom/birbit/android/jobqueue/h;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->remove(Lcom/birbit/android/jobqueue/h;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->insert(Lcom/birbit/android/jobqueue/h;)Z

    .line 78
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object p1, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
.end method
