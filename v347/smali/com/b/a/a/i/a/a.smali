.class public Lcom/b/a/a/i/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field static final a:Lcom/b/a/a/i/a/b$c;

.field static final b:Lcom/b/a/a/i/a/b$c;

.field static final c:Lcom/b/a/a/i/a/b$c;

.field static final d:Lcom/b/a/a/i/a/b$c;

.field static final e:Lcom/b/a/a/i/a/b$c;

.field static final f:Lcom/b/a/a/i/a/b$c;

.field static final g:Lcom/b/a/a/i/a/b$c;

.field static final h:Lcom/b/a/a/i/a/b$c;

.field static final i:Lcom/b/a/a/i/a/b$c;

.field static final j:Lcom/b/a/a/i/a/b$c;

.field static final k:Lcom/b/a/a/i/a/b$c;

.field static final l:Lcom/b/a/a/i/a/b$c;

.field static final m:Lcom/b/a/a/i/a/b$c;

.field static final n:Lcom/b/a/a/i/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 14
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "insertionOrder"

    const-string v2, "integer"

    invoke-direct {v0, v1, v2, v6}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->a:Lcom/b/a/a/i/a/b$c;

    .line 15
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "_id"

    const-string v2, "text"

    const/4 v4, 0x0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/b/a/a/i/a/b$a;Z)V

    sput-object v0, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    .line 16
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "priority"

    const-string v2, "integer"

    invoke-direct {v0, v1, v2, v7}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->c:Lcom/b/a/a/i/a/b$c;

    .line 17
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "group_id"

    const-string v2, "text"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    .line 18
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "run_count"

    const-string v2, "integer"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->e:Lcom/b/a/a/i/a/b$c;

    .line 19
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "base_job"

    const-string v2, "byte"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->f:Lcom/b/a/a/i/a/b$c;

    .line 20
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "created_ns"

    const-string v2, "long"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->g:Lcom/b/a/a/i/a/b$c;

    .line 21
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "delay_until_ns"

    const-string v2, "long"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    .line 22
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "running_session_id"

    const-string v2, "long"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->i:Lcom/b/a/a/i/a/b$c;

    .line 23
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "requires_network_until"

    const-string v2, "integer"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->j:Lcom/b/a/a/i/a/b$c;

    .line 24
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "requires_unmetered_network_until"

    const-string v2, "integer"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->k:Lcom/b/a/a/i/a/b$c;

    .line 26
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "_id"

    const-string v2, "integer"

    invoke-direct {v0, v1, v2, v6}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->l:Lcom/b/a/a/i/a/b$c;

    .line 27
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "job_id"

    const-string v2, "text"

    new-instance v4, Lcom/b/a/a/i/a/b$a;

    const-string v5, "job_holder"

    sget-object v6, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    iget-object v6, v6, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/b/a/a/i/a/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/b/a/a/i/a/b$a;)V

    sput-object v0, Lcom/b/a/a/i/a/a;->m:Lcom/b/a/a/i/a/b$c;

    .line 28
    new-instance v0, Lcom/b/a/a/i/a/b$c;

    const-string v1, "tag_name"

    const-string v2, "text"

    invoke-direct {v0, v1, v2, v7}, Lcom/b/a/a/i/a/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/i/a/a;->n:Lcom/b/a/a/i/a/b$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    const-string v0, "job_holder"

    sget-object v1, Lcom/b/a/a/i/a/a;->a:Lcom/b/a/a/i/a/b$c;

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/b/a/a/i/a/b$c;

    sget-object v3, Lcom/b/a/a/i/a/a;->b:Lcom/b/a/a/i/a/b$c;

    aput-object v3, v2, v5

    sget-object v3, Lcom/b/a/a/i/a/a;->c:Lcom/b/a/a/i/a/b$c;

    aput-object v3, v2, v6

    sget-object v3, Lcom/b/a/a/i/a/a;->d:Lcom/b/a/a/i/a/b$c;

    aput-object v3, v2, v7

    const/4 v3, 0x3

    sget-object v4, Lcom/b/a/a/i/a/a;->e:Lcom/b/a/a/i/a/b$c;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/b/a/a/i/a/a;->f:Lcom/b/a/a/i/a/b$c;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/b/a/a/i/a/a;->g:Lcom/b/a/a/i/a/b$c;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/b/a/a/i/a/a;->h:Lcom/b/a/a/i/a/b$c;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/b/a/a/i/a/a;->i:Lcom/b/a/a/i/a/b$c;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/b/a/a/i/a/a;->j:Lcom/b/a/a/i/a/b$c;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/b/a/a/i/a/a;->k:Lcom/b/a/a/i/a/b$c;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/String;Lcom/b/a/a/i/a/b$c;[Lcom/b/a/a/i/a/b$c;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "job_holder_tags"

    sget-object v1, Lcom/b/a/a/i/a/a;->l:Lcom/b/a/a/i/a/b$c;

    new-array v2, v7, [Lcom/b/a/a/i/a/b$c;

    sget-object v3, Lcom/b/a/a/i/a/a;->m:Lcom/b/a/a/i/a/b$c;

    aput-object v3, v2, v5

    sget-object v3, Lcom/b/a/a/i/a/a;->n:Lcom/b/a/a/i/a/b$c;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/String;Lcom/b/a/a/i/a/b$c;[Lcom/b/a/a/i/a/b$c;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS TAG_NAME_INDEX ON job_holder_tags("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/b/a/a/i/a/a;->n:Lcom/b/a/a/i/a/b$c;

    iget-object v1, v1, Lcom/b/a/a/i/a/b$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2, p3}, Lcom/b/a/a/i/a/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 79
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 70
    const-string v0, "job_holder"

    invoke-static {v0}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "job_holder_tags"

    invoke-static {v0}, Lcom/b/a/a/i/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "DROP INDEX IF EXISTS TAG_NAME_INDEX"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/b/a/a/i/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    return-void
.end method
