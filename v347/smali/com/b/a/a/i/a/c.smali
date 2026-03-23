.class public Lcom/b/a/a/i/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/a/i/a/c$1;,
        Lcom/b/a/a/i/a/c$c;,
        Lcom/b/a/a/i/a/c$b;,
        Lcom/b/a/a/i/a/c$a;
    }
.end annotation


# instance fields
.field a:Lcom/b/a/a/i/a/a;

.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Lcom/b/a/a/i/a/b;

.field d:Lcom/b/a/a/i/a/c$c;

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:J

.field private final g:Ljava/lang/StringBuilder;

.field private final h:Lcom/b/a/a/i/a/e;


# direct methods
.method public constructor <init>(Lcom/b/a/a/c/a;JLcom/b/a/a/i/a/c$c;)V
    .locals 10

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/i/a/c;->e:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/b/a/a/i/a/c;->g:Ljava/lang/StringBuilder;

    .line 41
    iput-wide p2, p0, Lcom/b/a/a/i/a/c;->f:J

    .line 42
    new-instance v0, Lcom/b/a/a/i/a/e;

    invoke-direct {v0, p2, p3}, Lcom/b/a/a/i/a/e;-><init>(J)V

    iput-object v0, p0, Lcom/b/a/a/i/a/c;->h:Lcom/b/a/a/i/a/e;

    .line 43
    new-instance v1, Lcom/b/a/a/i/a/a;

    invoke-virtual {p1}, Lcom/b/a/a/c/a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/b/a/a/c/a;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/b/a/a/i/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/b/a/a/i/a/c;->a:Lcom/b/a/a/i/a/a;

    .line 45
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->a:Lcom/b/a/a/i/a/a;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    new-instance v1, Lcom/b/a/a/i/a/b;

    iget-object v2, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "job_holder"

    sget-object v0, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    iget-object v4, v0, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    const/16 v5, 0xb

    const-string v6, "job_holder_tags"

    const/4 v7, 0x3

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/b/a/a/i/a/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJ)V

    iput-object v1, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    .line 49
    iput-object p4, p0, Lcom/b/a/a/i/a/c;->d:Lcom/b/a/a/i/a/c$c;

    .line 50
    invoke-virtual {p1}, Lcom/b/a/a/c/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/i/a/b;->a(J)V

    .line 53
    :cond_0
    return-void

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/b/a/a/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([B)Lcom/b/a/a/i;
    .locals 3

    .prologue
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->d:Lcom/b/a/a/i/a/c$c;

    invoke-interface {v0, p1}, Lcom/b/a/a/i/a/c$c;->a([B)Lcom/b/a/a/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    const-string v1, "error while deserializing job"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)Lcom/b/a/a/j;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/b/a/a/i/a/c$a;
        }
    .end annotation

    .prologue
    .line 365
    sget-object v0, Lcom/b/a/a/i/a/a;->f:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/i/a/c;->a([B)Lcom/b/a/a/i;

    move-result-object v0

    .line 366
    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/b/a/a/i/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/b/a/a/i/a/c$a;-><init>(Lcom/b/a/a/i/a/c$1;)V

    throw v0

    .line 369
    :cond_0
    new-instance v1, Lcom/b/a/a/j$a;

    invoke-direct {v1}, Lcom/b/a/a/j$a;-><init>()V

    sget-object v2, Lcom/b/a/a/i/a/a;->a:Lcom/b/a/a/i/a/b$c;

    iget v2, v2, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/j$a;->c(J)Lcom/b/a/a/j$a;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->c:Lcom/b/a/a/i/a/b$c;

    iget v2, v2, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b/a/a/j$a;->a(I)Lcom/b/a/a/j$a;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    iget v2, v2, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/b/a/a/j$a;->a(Ljava/lang/String;)Lcom/b/a/a/j$a;

    move-result-object v1

    sget-object v2, Lcom/b/a/a/i/a/a;->e:Lcom/b/a/a/i/a/b$c;

    iget v2, v2, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/b/a/a/j$a;->b(I)Lcom/b/a/a/j$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/a/j$a;->a(Lcom/b/a/a/i;)Lcom/b/a/a/j$a;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/i/a/a;->g:Lcom/b/a/a/i/a/b$c;

    iget v1, v1, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/j$a;->a(J)Lcom/b/a/a/j$a;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    iget v1, v1, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/j$a;->b(J)Lcom/b/a/a/j$a;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/i/a/a;->i:Lcom/b/a/a/i/a/b$c;

    iget v1, v1, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/a/j$a;->d(J)Lcom/b/a/a/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/a/j$a;->a()Lcom/b/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Lcom/b/a/a/j;)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p2}, Lcom/b/a/a/j;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/b/a/a/i/a/a;->a:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->e()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    :cond_0
    sget-object v0, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 122
    sget-object v0, Lcom/b/a/a/i/a/a;->c:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->d()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_1
    sget-object v0, Lcom/b/a/a/i/a/a;->e:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->f()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    invoke-direct {p0, p2}, Lcom/b/a/a/i/a/c;->g(Lcom/b/a/a/j;)[B

    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    sget-object v1, Lcom/b/a/a/i/a/a;->f:Lcom/b/a/a/i/a/b$c;

    iget v1, v1, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 131
    :cond_2
    sget-object v0, Lcom/b/a/a/i/a/a;->g:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->g()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 132
    sget-object v0, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->i()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    sget-object v0, Lcom/b/a/a/i/a/a;->i:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->h()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 134
    sget-object v0, Lcom/b/a/a/i/a/a;->j:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->b()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 136
    sget-object v0, Lcom/b/a/a/i/a/a;->k:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/b/a/a/j;->c()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 138
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/b/a/a/i/a/a;->m:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    sget-object v0, Lcom/b/a/a/i/a/a;->n:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 114
    return-void
.end method

.method private a(Ljava/lang/Object;)[B
    .locals 5

    .prologue
    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->d:Lcom/b/a/a/i/a/c$c;

    invoke-interface {v0, p1}, Lcom/b/a/a/i/a/c$c;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    const-string v1, "error while serializing object %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 401
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/b;->e()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 173
    return-void
.end method

.method private e(Lcom/b/a/a/e;)Lcom/b/a/a/i/a/d;
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->h:Lcom/b/a/a/i/a/e;

    iget-object v1, p0, Lcom/b/a/a/i/a/c;->e:Ljava/util/Set;

    iget-object v2, p0, Lcom/b/a/a/i/a/c;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1, v2}, Lcom/b/a/a/i/a/e;->a(Lcom/b/a/a/e;Ljava/util/Collection;Ljava/lang/StringBuilder;)Lcom/b/a/a/i/a/d;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/b/a/a/j;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/b;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 86
    iget-object v3, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v3}, Lcom/b/a/a/i/a/b;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 87
    iget-object v4, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 89
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/b/a/a/i/a/c;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/b/a/a/j;)V

    .line 91
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v2

    .line 92
    :goto_0
    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 91
    goto :goto_0

    .line 95
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/b/a/a/j;->l()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 97
    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5, v0}, Lcom/b/a/a/i/a/c;->a(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :try_start_2
    const-string v2, "error while inserting job with tags"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v1

    goto :goto_1

    .line 100
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private f(Lcom/b/a/a/j;)V
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/b;->f()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 308
    invoke-virtual {p1}, Lcom/b/a/a/j;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/b/a/a/j;->c(I)V

    .line 309
    iget-wide v2, p0, Lcom/b/a/a/i/a/c;->f:J

    invoke-virtual {p1, v2, v3}, Lcom/b/a/a/j;->e(J)V

    .line 310
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 311
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/b/a/a/j;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 312
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/b/a/a/i/a/c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 313
    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 315
    return-void
.end method

.method private g(Lcom/b/a/a/j;)[B
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p1}, Lcom/b/a/a/j;->j()Lcom/b/a/a/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/i/a/c;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/b;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 182
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/b/a/a/i/a/c;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 183
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public a(Lcom/b/a/a/e;)I
    .locals 3

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/b/a/a/i/a/c;->e(Lcom/b/a/a/e;)Lcom/b/a/a/i/a/d;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/b/a/a/i/a/c;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/i/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/StringBuilder;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 190
    long-to-int v0, v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/a/j;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 198
    iget-object v1, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    iget-object v2, v2, Lcom/b/a/a/i/a/b;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 200
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Lcom/b/a/a/i/a/c$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 208
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 203
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/b/a/a/i/a/c;->a(Landroid/database/Cursor;)Lcom/b/a/a/j;
    :try_end_1
    .catch Lcom/b/a/a/i/a/c$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 208
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    :try_start_2
    const-string v3, "invalid job on findJobById"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Lcom/b/a/a/j;Lcom/b/a/a/j;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 76
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/b/a/a/i/a/c;->c(Lcom/b/a/a/j;)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/b/a/a/i/a/c;->a(Lcom/b/a/a/j;)Z

    .line 78
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(Lcom/b/a/a/j;)Z
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/b/a/a/j;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/b/a/a/i/a/c;->e(Lcom/b/a/a/j;)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/b;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 65
    invoke-direct {p0, v0, p1}, Lcom/b/a/a/i/a/c;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/b/a/a/j;)V

    .line 66
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/b/a/a/j;->c(J)V

    .line 69
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/b/a/a/e;)Lcom/b/a/a/j;
    .locals 5

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/b/a/a/i/a/c;->e(Lcom/b/a/a/e;)Lcom/b/a/a/i/a/d;

    move-result-object v1

    .line 244
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v1, v0}, Lcom/b/a/a/i/a/d;->a(Lcom/b/a/a/i/a/b;)Ljava/lang/String;

    move-result-object v2

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v1, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 248
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Lcom/b/a/a/i/a/c$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 263
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    .line 251
    :cond_0
    :try_start_1
    invoke-direct {p0, v3}, Lcom/b/a/a/i/a/c;->a(Landroid/database/Cursor;)Lcom/b/a/a/j;

    move-result-object v0

    .line 252
    invoke-direct {p0, v0}, Lcom/b/a/a/i/a/c;->f(Lcom/b/a/a/j;)V
    :try_end_1
    .catch Lcom/b/a/a/i/a/c$a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 256
    :try_start_2
    sget-object v0, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    iget v0, v0, Lcom/b/a/a/i/a/b$c;->c:I

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    if-nez v0, :cond_1

    .line 258
    const-string v0, "cannot find job id on a retriewed job"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/b/a/a/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 260
    :cond_1
    :try_start_3
    invoke-direct {p0, v0}, Lcom/b/a/a/i/a/c;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 263
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/b;->g()V

    .line 296
    return-void
.end method

.method public b(Lcom/b/a/a/j;)Z
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p1}, Lcom/b/a/a/j;->e()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0, p1}, Lcom/b/a/a/i/a/c;->a(Lcom/b/a/a/j;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    .line 148
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p1, v0, v1}, Lcom/b/a/a/j;->e(J)V

    .line 149
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0}, Lcom/b/a/a/i/a/b;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 151
    invoke-direct {p0, v0, p1}, Lcom/b/a/a/i/a/c;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/b/a/a/j;)V

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/b/a/a/e;)Ljava/lang/Long;
    .locals 3

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/b/a/a/i/a/c;->e(Lcom/b/a/a/e;)Lcom/b/a/a/i/a/d;

    move-result-object v0

    .line 279
    :try_start_0
    invoke-virtual {p1}, Lcom/b/a/a/e;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/b/a/a/e;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/i/a/d;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/b/a/a/i/a/b;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/i/a/d;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/b/a/a/i/a/b;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/b/a/a/j;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    const-string v0, "called remove with null job id."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/b/a/a/f/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/b/a/a/i/a/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/b/a/a/e;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/e;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/b/a/a/i/a/c;->e(Lcom/b/a/a/e;)Lcom/b/a/a/i/a/d;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/b/a/a/i/a/c;->c:Lcom/b/a/a/i/a/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/i/a/d;->b(Lcom/b/a/a/i/a/b;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/b/a/a/i/a/c;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, v0, Lcom/b/a/a/i/a/d;->c:[Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 217
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 219
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, v1}, Lcom/b/a/a/i/a/c;->a(Landroid/database/Cursor;)Lcom/b/a/a/j;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/b/a/a/i/a/c$a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    :try_start_1
    const-string v3, "invalid job found by tags."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/b/a/a/f/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 228
    :goto_1
    return-object v2

    .line 225
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public d(Lcom/b/a/a/j;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/b/a/a/i/a/c;->e:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/b/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-direct {p0, p1}, Lcom/b/a/a/i/a/c;->f(Lcom/b/a/a/j;)V

    .line 235
    return-void
.end method
