.class final Le/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h$a;,
        Le/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Le/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/Object;

.field private volatile c:Z

.field private d:Lc/e;

.field private e:Ljava/lang/Throwable;

.field private f:Z


# direct methods
.method constructor <init>(Le/n;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/n<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Le/h;->a:Le/n;

    .line 40
    iput-object p2, p0, Le/h;->b:[Ljava/lang/Object;

    return-void
.end method

.method private f()Lc/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Le/h;->a:Le/n;

    iget-object v1, p0, Le/h;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Le/n;->a([Ljava/lang/Object;)Lc/aa;

    move-result-object v0

    .line 179
    iget-object v1, p0, Le/h;->a:Le/n;

    iget-object v1, v1, Le/n;->c:Lc/e$a;

    invoke-interface {v1, v0}, Lc/e$a;->a(Lc/aa;)Lc/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Call.Factory returned null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Le/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Le/h;->f:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Le/h;->f:Z

    .line 151
    iget-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 159
    :cond_1
    iget-object v0, p0, Le/h;->d:Lc/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 162
    :try_start_1
    invoke-direct {p0}, Le/h;->f()Lc/e;

    move-result-object v0

    iput-object v0, p0, Le/h;->d:Lc/e;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 164
    :goto_0
    :try_start_2
    iput-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    .line 165
    throw v0

    .line 168
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    iget-boolean v1, p0, Le/h;->c:Z

    if-eqz v1, :cond_3

    .line 171
    invoke-interface {v0}, Lc/e;->c()V

    .line 174
    :cond_3
    invoke-interface {v0}, Lc/e;->b()Lc/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/h;->a(Lc/ac;)Le/l;

    move-result-object v0

    return-object v0

    .line 148
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already executed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 168
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method a(Lc/ac;)Le/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/ac;",
            ")",
            "Le/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lc/ac;->g()Lc/ad;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lc/ac;->h()Lc/ac$a;

    move-result-object p1

    new-instance v1, Le/h$b;

    .line 191
    invoke-virtual {v0}, Lc/ad;->a()Lc/v;

    move-result-object v2

    invoke-virtual {v0}, Lc/ad;->b()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Le/h$b;-><init>(Lc/v;J)V

    invoke-virtual {p1, v1}, Lc/ac$a;->a(Lc/ad;)Lc/ac$a;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lc/ac$a;->a()Lc/ac;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lc/ac;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    new-instance v1, Le/h$a;

    invoke-direct {v1, v0}, Le/h$a;-><init>(Lc/ad;)V

    .line 211
    :try_start_0
    iget-object v0, p0, Le/h;->a:Le/n;

    invoke-virtual {v0, v1}, Le/n;->a(Lc/ad;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {v0, p1}, Le/l;->a(Ljava/lang/Object;Lc/ac;)Le/l;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {v1}, Le/h$a;->h()V

    .line 217
    throw p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 206
    invoke-static {v0, p1}, Le/l;->a(Ljava/lang/Object;Lc/ac;)Le/l;

    move-result-object p1

    return-object p1

    .line 198
    :cond_3
    :goto_1
    :try_start_1
    invoke-static {v0}, Le/o;->a(Lc/ad;)Lc/ad;

    move-result-object v1

    .line 199
    invoke-static {v1, p1}, Le/l;->a(Lc/ad;Lc/ac;)Le/l;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    invoke-virtual {v0}, Lc/ad;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lc/ad;->close()V

    throw p1
.end method

.method public a(Le/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-boolean v0, p0, Le/h;->f:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Le/h;->f:Z

    .line 81
    iget-object v0, p0, Le/h;->d:Lc/e;

    .line 82
    iget-object v1, p0, Le/h;->e:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 85
    :try_start_1
    invoke-direct {p0}, Le/h;->f()Lc/e;

    move-result-object v2

    iput-object v2, p0, Le/h;->d:Lc/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 87
    :try_start_2
    iput-object v1, p0, Le/h;->e:Ljava/lang/Throwable;

    .line 90
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {p1, p0, v1}, Le/d;->a(Le/b;Ljava/lang/Throwable;)V

    return-void

    .line 97
    :cond_1
    iget-boolean v1, p0, Le/h;->c:Z

    if-eqz v1, :cond_2

    .line 98
    invoke-interface {v0}, Lc/e;->c()V

    .line 101
    :cond_2
    new-instance v1, Le/h$1;

    invoke-direct {v1, p0, p1}, Le/h$1;-><init>(Le/h;Le/d;)V

    invoke-interface {v0, v1}, Lc/e;->a(Lc/f;)V

    return-void

    .line 78
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 90
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 72
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "callback == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Le/h;->c:Z

    return v0
.end method

.method public synthetic c()Le/b;
    .locals 1

    .line 27
    invoke-virtual {p0}, Le/h;->e()Le/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Le/h;->e()Le/h;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized d()Lc/aa;
    .locals 3

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Le/h;->d:Lc/e;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lc/e;->a()Lc/aa;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 53
    :cond_0
    :try_start_1
    iget-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create request."

    iget-object v2, p0, Le/h;->e:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_2
    :try_start_2
    invoke-direct {p0}, Le/h;->f()Lc/e;

    move-result-object v0

    iput-object v0, p0, Le/h;->d:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/aa;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 66
    :try_start_3
    iput-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to create request."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 63
    iput-object v0, p0, Le/h;->e:Ljava/lang/Throwable;

    .line 64
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Le/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/h<",
            "TT;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Le/h;

    iget-object v1, p0, Le/h;->a:Le/n;

    iget-object v2, p0, Le/h;->b:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Le/h;-><init>(Le/n;[Ljava/lang/Object;)V

    return-object v0
.end method
