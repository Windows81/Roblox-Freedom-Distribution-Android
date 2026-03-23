.class public Landroid/support/v4/a/d;
.super Landroid/support/v4/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Landroid/support/v4/a/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/a/e",
            "<",
            "Landroid/database/Cursor;",
            ">.a;"
        }
    .end annotation
.end field

.field g:Landroid/net/Uri;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/database/Cursor;

.field m:Landroid/support/v4/os/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0, p1}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Landroid/support/v4/a/e$a;

    invoke-direct {v0, p0}, Landroid/support/v4/a/e$a;-><init>(Landroid/support/v4/a/e;)V

    iput-object v0, p0, Landroid/support/v4/a/d;->f:Landroid/support/v4/a/e$a;

    .line 136
    iput-object p2, p0, Landroid/support/v4/a/d;->g:Landroid/net/Uri;

    .line 137
    iput-object p3, p0, Landroid/support/v4/a/d;->h:[Ljava/lang/String;

    .line 138
    iput-object p4, p0, Landroid/support/v4/a/d;->i:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Landroid/support/v4/a/d;->j:[Ljava/lang/String;

    .line 140
    iput-object p6, p0, Landroid/support/v4/a/d;->k:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/support/v4/a/d;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    .line 104
    iput-object p1, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    .line 106
    invoke-virtual {p0}, Landroid/support/v4/a/d;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->b(Ljava/lang/Object;)V

    .line 110
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/a/d;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/d;->g:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Landroid/support/v4/a/d;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/d;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/support/v4/a/d;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/d;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/a/d;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 246
    return-void
.end method

.method public b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_0
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/a/d;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/support/v4/a/d;->h()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/support/v4/a/a;->f()V

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/a/d;->m:Landroid/support/v4/os/b;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/support/v4/a/d;->m:Landroid/support/v4/os/b;

    invoke-virtual {v0}, Landroid/support/v4/os/b;->c()V

    .line 90
    :cond_0
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/a/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/support/v4/os/d;

    invoke-direct {v0}, Landroid/support/v4/os/d;-><init>()V

    throw v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 58
    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v4/os/b;

    invoke-direct {v0}, Landroid/support/v4/os/b;-><init>()V

    iput-object v0, p0, Landroid/support/v4/a/d;->m:Landroid/support/v4/os/b;

    .line 59
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    invoke-virtual {p0}, Landroid/support/v4/a/d;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/a/d;->g:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/a/d;->h:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/a/d;->i:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/a/d;->j:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/a/d;->k:Ljava/lang/String;

    iget-object v6, p0, Landroid/support/v4/a/d;->m:Landroid/support/v4/os/b;

    invoke-static/range {v0 .. v6}, Landroid/support/v4/a/b;->a(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/b;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 64
    if-eqz v1, :cond_1

    .line 67
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 68
    iget-object v0, p0, Landroid/support/v4/a/d;->f:Landroid/support/v4/a/e$a;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    :cond_1
    monitor-enter p0

    .line 77
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/support/v4/a/d;->m:Landroid/support/v4/os/b;

    .line 78
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 71
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :catchall_1
    move-exception v0

    monitor-enter p0

    .line 77
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/support/v4/a/d;->m:Landroid/support/v4/os/b;

    .line 78
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v4/a/d;->a(Landroid/database/Cursor;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/a/d;->x()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 156
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/a/d;->s()V

    .line 158
    :cond_2
    return-void
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/support/v4/a/d;->r()Z

    .line 167
    return-void
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/support/v4/a/a;->k()V

    .line 181
    invoke-virtual {p0}, Landroid/support/v4/a/d;->j()V

    .line 183
    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/a/d;->l:Landroid/database/Cursor;

    .line 187
    return-void
.end method
