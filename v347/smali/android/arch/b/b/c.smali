.class public Landroid/arch/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/b/b/c$a;,
        Landroid/arch/b/b/c$b;,
        Landroid/arch/b/b/c$c;
    }
.end annotation


# static fields
.field private static final f:[Ljava/lang/String;


# instance fields
.field a:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:[J

.field c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final d:Landroid/arch/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/a/b/b",
            "<",
            "Landroid/arch/b/b/c$b;",
            "Landroid/arch/b/b/c$c;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/lang/Runnable;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/Object;

.field private i:J

.field private final j:Landroid/arch/b/b/e;

.field private volatile k:Z

.field private volatile l:Landroid/arch/b/a/f;

.field private m:Landroid/arch/b/b/c$a;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "INSERT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/arch/b/b/c;->f:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/arch/b/b/e;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/arch/b/b/c;->h:[Ljava/lang/Object;

    .line 103
    iput-wide v6, p0, Landroid/arch/b/b/c;->i:J

    .line 107
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/arch/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-boolean v0, p0, Landroid/arch/b/b/c;->k:Z

    .line 116
    new-instance v1, Landroid/arch/a/b/b;

    invoke-direct {v1}, Landroid/arch/a/b/b;-><init>()V

    iput-object v1, p0, Landroid/arch/b/b/c;->d:Landroid/arch/a/b/b;

    .line 278
    new-instance v1, Landroid/arch/b/b/c$1;

    invoke-direct {v1, p0}, Landroid/arch/b/b/c$1;-><init>(Landroid/arch/b/b/c;)V

    iput-object v1, p0, Landroid/arch/b/b/c;->n:Ljava/lang/Runnable;

    .line 342
    new-instance v1, Landroid/arch/b/b/c$2;

    invoke-direct {v1, p0}, Landroid/arch/b/b/c$2;-><init>(Landroid/arch/b/b/c;)V

    iput-object v1, p0, Landroid/arch/b/b/c;->e:Ljava/lang/Runnable;

    .line 127
    iput-object p1, p0, Landroid/arch/b/b/c;->j:Landroid/arch/b/b/e;

    .line 128
    new-instance v1, Landroid/arch/b/b/c$a;

    array-length v2, p2

    invoke-direct {v1, v2}, Landroid/arch/b/b/c$a;-><init>(I)V

    iput-object v1, p0, Landroid/arch/b/b/c;->m:Landroid/arch/b/b/c$a;

    .line 129
    new-instance v1, Landroid/support/v4/g/a;

    invoke-direct {v1}, Landroid/support/v4/g/a;-><init>()V

    iput-object v1, p0, Landroid/arch/b/b/c;->a:Landroid/support/v4/g/a;

    .line 130
    array-length v1, p2

    .line 131
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Landroid/arch/b/b/c;->g:[Ljava/lang/String;

    .line 132
    :goto_0
    if-ge v0, v1, :cond_0

    .line 133
    aget-object v2, p2, v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v3, p0, Landroid/arch/b/b/c;->a:Landroid/support/v4/g/a;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Landroid/arch/b/b/c;->g:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    array-length v0, p2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/arch/b/b/c;->b:[J

    .line 138
    iget-object v0, p0, Landroid/arch/b/b/c;->b:[J

    invoke-static {v0, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 139
    return-void
.end method

.method static synthetic a(Landroid/arch/b/b/c;J)J
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Landroid/arch/b/b/c;->i:J

    return-wide p1
.end method

.method static synthetic a(Landroid/arch/b/b/c;)Landroid/arch/b/b/e;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/b/b/c;->j:Landroid/arch/b/b/e;

    return-object v0
.end method

.method private a(Landroid/arch/b/a/b;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Landroid/arch/b/b/c;->g:[Ljava/lang/String;

    aget-object v2, v0, p2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    sget-object v4, Landroid/arch/b/b/c;->f:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 181
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    const-string v7, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v3, v2, v6}, Landroid/arch/b/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/arch/b/a/b;->c(Ljava/lang/String;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/arch/b/b/c;Landroid/arch/b/a/b;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/arch/b/b/c;->b(Landroid/arch/b/a/b;I)V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "room_table_modification_trigger_"

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    return-void
.end method

.method private b(Landroid/arch/b/a/b;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Landroid/arch/b/b/c;->g:[Ljava/lang/String;

    aget-object v2, v0, p2

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    sget-object v4, Landroid/arch/b/b/c;->f:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 192
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {v3, v2, v6}, Landroid/arch/b/b/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v7, " AFTER "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 196
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ON `"

    .line 197
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 198
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "` BEGIN INSERT OR REPLACE INTO "

    .line 199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "room_table_modification_log"

    .line 200
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VALUES(null, "

    .line 201
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 202
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); END"

    .line 203
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/arch/b/a/b;->c(Ljava/lang/String;)V

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/arch/b/b/c;Landroid/arch/b/a/b;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/arch/b/b/c;->a(Landroid/arch/b/a/b;I)V

    return-void
.end method

.method static synthetic b(Landroid/arch/b/b/c;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/arch/b/b/c;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/arch/b/b/c;)Landroid/arch/b/b/c$a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/b/b/c;->m:Landroid/arch/b/b/c$a;

    return-object v0
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Landroid/arch/b/b/c;->j:Landroid/arch/b/b/e;

    invoke-virtual {v1}, Landroid/arch/b/b/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-boolean v1, p0, Landroid/arch/b/b/c;->k:Z

    if-nez v1, :cond_1

    .line 333
    iget-object v1, p0, Landroid/arch/b/b/c;->j:Landroid/arch/b/b/e;

    invoke-virtual {v1}, Landroid/arch/b/b/e;->b()Landroid/arch/b/a/c;

    move-result-object v1

    invoke-interface {v1}, Landroid/arch/b/a/c;->a()Landroid/arch/b/a/b;

    .line 335
    :cond_1
    iget-boolean v1, p0, Landroid/arch/b/b/c;->k:Z

    if-nez v1, :cond_2

    .line 336
    const-string v1, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Landroid/arch/b/b/c;)Landroid/arch/b/a/f;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/b/b/c;->l:Landroid/arch/b/a/f;

    return-object v0
.end method

.method static synthetic e(Landroid/arch/b/b/c;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/arch/b/b/c;->h:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f(Landroid/arch/b/b/c;)J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/arch/b/b/c;->i:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Landroid/arch/b/b/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/b/b/c;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/arch/a/a/a;->a(Ljava/lang/Runnable;)V

    .line 414
    :cond_0
    return-void
.end method

.method a(Landroid/arch/b/a/b;)V
    .locals 2

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Landroid/arch/b/b/c;->k:Z

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit p0

    .line 165
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-interface {p1}, Landroid/arch/b/a/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroid/arch/b/a/b;->c(Ljava/lang/String;)V

    .line 156
    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroid/arch/b/a/b;->c(Ljava/lang/String;)V

    .line 157
    const-string v0, "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

    invoke-interface {p1, v0}, Landroid/arch/b/a/b;->c(Ljava/lang/String;)V

    .line 158
    invoke-interface {p1}, Landroid/arch/b/a/b;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    :try_start_2
    invoke-interface {p1}, Landroid/arch/b/a/b;->b()V

    .line 162
    const-string v0, "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"

    invoke-interface {p1, v0}, Landroid/arch/b/a/b;->a(Ljava/lang/String;)Landroid/arch/b/a/f;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/b/b/c;->l:Landroid/arch/b/a/f;

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/b/b/c;->k:Z

    .line 164
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 160
    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {p1}, Landroid/arch/b/a/b;->b()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/arch/b/b/c;->n:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 438
    return-void
.end method
