.class public Landroid/arch/b/b/g;
.super Landroid/arch/b/a/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/b/b/g$a;
    }
.end annotation


# instance fields
.field private b:Landroid/arch/b/b/a;

.field private final c:Landroid/arch/b/b/g$a;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/arch/b/b/a;Landroid/arch/b/b/g$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    iget v0, p2, Landroid/arch/b/b/g$a;->a:I

    invoke-direct {p0, v0}, Landroid/arch/b/a/c$a;-><init>(I)V

    .line 48
    iput-object p1, p0, Landroid/arch/b/b/g;->b:Landroid/arch/b/b/a;

    .line 49
    iput-object p2, p0, Landroid/arch/b/b/g;->c:Landroid/arch/b/b/g$a;

    .line 50
    iput-object p3, p0, Landroid/arch/b/b/g;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private e(Landroid/arch/b/a/b;)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/arch/b/b/g;->g(Landroid/arch/b/a/b;)V

    .line 108
    const-string v0, ""

    .line 109
    new-instance v1, Landroid/arch/b/a/a;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v1, v2}, Landroid/arch/b/a/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/arch/b/a/b;->a(Landroid/arch/b/a/e;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 116
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 118
    iget-object v1, p0, Landroid/arch/b/b/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 123
    :cond_1
    return-void
.end method

.method private f(Landroid/arch/b/a/b;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/arch/b/b/g;->g(Landroid/arch/b/a/b;)V

    .line 127
    iget-object v0, p0, Landroid/arch/b/b/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/arch/b/b/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/arch/b/a/b;->c(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method private g(Landroid/arch/b/a/b;)V
    .locals 1

    .prologue
    .line 131
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/b/a/b;->c(Ljava/lang/String;)V

    .line 132
    return-void
.end method


# virtual methods
.method public a(Landroid/arch/b/a/b;)V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/arch/b/a/c$a;->a(Landroid/arch/b/a/b;)V

    .line 56
    return-void
.end method

.method public a(Landroid/arch/b/a/b;II)V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Landroid/arch/b/b/g;->b:Landroid/arch/b/b/a;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Landroid/arch/b/b/g;->b:Landroid/arch/b/b/a;

    iget-object v1, v1, Landroid/arch/b/b/a;->d:Landroid/arch/b/b/e$c;

    invoke-virtual {v1, p2, p3}, Landroid/arch/b/b/e$c;->a(II)Ljava/util/List;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/b/b/a/a;

    .line 73
    invoke-virtual {v0, p1}, Landroid/arch/b/b/a/a;->a(Landroid/arch/b/a/b;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/arch/b/b/g;->c:Landroid/arch/b/b/g$a;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/g$a;->e(Landroid/arch/b/a/b;)V

    .line 76
    invoke-direct {p0, p1}, Landroid/arch/b/b/g;->f(Landroid/arch/b/a/b;)V

    .line 77
    const/4 v0, 0x1

    .line 80
    :cond_1
    if-nez v0, :cond_4

    .line 81
    iget-object v0, p0, Landroid/arch/b/b/g;->b:Landroid/arch/b/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/arch/b/b/g;->b:Landroid/arch/b/b/a;

    iget-boolean v0, v0, Landroid/arch/b/b/a;->g:Z

    if-eqz v0, :cond_3

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A migration from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is necessary. Please provide a Migration in the builder or call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fallbackToDestructiveMigration in the builder in which case Room will"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " re-create all of the tables."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    iget-object v0, p0, Landroid/arch/b/b/g;->c:Landroid/arch/b/b/g$a;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/g$a;->a(Landroid/arch/b/a/b;)V

    .line 88
    iget-object v0, p0, Landroid/arch/b/b/g;->c:Landroid/arch/b/b/g$a;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/g$a;->b(Landroid/arch/b/a/b;)V

    .line 90
    :cond_4
    return-void
.end method

.method public b(Landroid/arch/b/a/b;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/arch/b/b/g;->f(Landroid/arch/b/a/b;)V

    .line 61
    iget-object v0, p0, Landroid/arch/b/b/g;->c:Landroid/arch/b/b/g$a;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/g$a;->b(Landroid/arch/b/a/b;)V

    .line 62
    iget-object v0, p0, Landroid/arch/b/b/g;->c:Landroid/arch/b/b/g$a;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/g$a;->d(Landroid/arch/b/a/b;)V

    .line 63
    return-void
.end method

.method public b(Landroid/arch/b/a/b;II)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Landroid/arch/b/b/g;->a(Landroid/arch/b/a/b;II)V

    .line 95
    return-void
.end method

.method public c(Landroid/arch/b/a/b;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/arch/b/a/c$a;->c(Landroid/arch/b/a/b;)V

    .line 100
    invoke-direct {p0, p1}, Landroid/arch/b/b/g;->e(Landroid/arch/b/a/b;)V

    .line 101
    iget-object v0, p0, Landroid/arch/b/b/g;->c:Landroid/arch/b/b/g$a;

    invoke-virtual {v0, p1}, Landroid/arch/b/b/g$a;->c(Landroid/arch/b/a/b;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/b/b/g;->b:Landroid/arch/b/b/a;

    .line 104
    return-void
.end method
