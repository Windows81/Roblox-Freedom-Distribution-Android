.class Landroid/arch/b/a/a/b$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/b/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:[Landroid/arch/b/a/a/a;

.field final b:Landroid/arch/b/a/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/b/a/a/a;Landroid/arch/b/a/c$a;)V
    .locals 6

    .prologue
    .line 78
    const/4 v3, 0x0

    iget v4, p4, Landroid/arch/b/a/c$a;->a:I

    new-instance v5, Landroid/arch/b/a/a/b$a$1;

    invoke-direct {v5, p3, p4}, Landroid/arch/b/a/a/b$a$1;-><init>([Landroid/arch/b/a/a/a;Landroid/arch/b/a/c$a;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 88
    iput-object p4, p0, Landroid/arch/b/a/a/b$a;->b:Landroid/arch/b/a/c$a;

    .line 89
    iput-object p3, p0, Landroid/arch/b/a/a/b$a;->a:[Landroid/arch/b/a/a/a;

    .line 90
    return-void
.end method


# virtual methods
.method a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/b/a/a/a;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->a:[Landroid/arch/b/a/a/a;

    aget-object v0, v0, v2

    .line 104
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/arch/b/a/a/a;

    invoke-direct {v0, p1}, Landroid/arch/b/a/a/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 106
    iget-object v1, p0, Landroid/arch/b/a/a/b$a;->a:[Landroid/arch/b/a/a/a;

    aput-object v0, v1, v2

    .line 108
    :cond_0
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->a:[Landroid/arch/b/a/a/a;

    aget-object v0, v0, v2

    return-object v0
.end method

.method a()Landroid/arch/b/a/b;
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/arch/b/a/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/b/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 139
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->a:[Landroid/arch/b/a/a/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->b:Landroid/arch/b/a/c$a;

    invoke-virtual {p0, p1}, Landroid/arch/b/a/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/b/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/b/a/c$a;->a(Landroid/arch/b/a/b;)V

    .line 124
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->b:Landroid/arch/b/a/c$a;

    invoke-virtual {p0, p1}, Landroid/arch/b/a/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/b/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/b/a/c$a;->b(Landroid/arch/b/a/b;)V

    .line 114
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->b:Landroid/arch/b/a/c$a;

    invoke-virtual {p0, p1}, Landroid/arch/b/a/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/b/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/arch/b/a/c$a;->b(Landroid/arch/b/a/b;II)V

    .line 129
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->b:Landroid/arch/b/a/c$a;

    invoke-virtual {p0, p1}, Landroid/arch/b/a/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/b/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/b/a/c$a;->c(Landroid/arch/b/a/b;)V

    .line 134
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/arch/b/a/a/b$a;->b:Landroid/arch/b/a/c$a;

    invoke-virtual {p0, p1}, Landroid/arch/b/a/a/b$a;->a(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/b/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/arch/b/a/c$a;->a(Landroid/arch/b/a/b;II)V

    .line 119
    return-void
.end method
