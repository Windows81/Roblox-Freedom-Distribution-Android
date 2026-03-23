.class final Lb/y$a;
.super Lb/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/y;

.field private final c:Lb/f;


# direct methods
.method private constructor <init>(Lb/y;Lb/f;)V
    .locals 4

    .prologue
    .line 100
    iput-object p1, p0, Lb/y$a;->a:Lb/y;

    .line 101
    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lb/y;->c()Lb/s;

    move-result-object v3

    invoke-virtual {v3}, Lb/s;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-object p2, p0, Lb/y$a;->c:Lb/f;

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Lb/y;Lb/f;Lb/y$1;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lb/y$a;-><init>(Lb/y;Lb/f;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lb/y$a;->a:Lb/y;

    iget-object v0, v0, Lb/y;->a:Lb/z;

    invoke-virtual {v0}, Lb/z;->a()Lb/s;

    move-result-object v0

    invoke-virtual {v0}, Lb/s;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 118
    const/4 v2, 0x0

    .line 120
    :try_start_0
    iget-object v0, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v0}, Lb/y;->a(Lb/y;)Lb/ab;

    move-result-object v0

    .line 121
    iget-object v3, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v3}, Lb/y;->b(Lb/y;)Lb/a/d/l;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/d/l;->b()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :try_start_1
    iget-object v0, p0, Lb/y$a;->c:Lb/f;

    iget-object v2, p0, Lb/y$a;->a:Lb/y;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lb/f;->a(Lb/e;Ljava/io/IOException;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    iget-object v0, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v0}, Lb/y;->d(Lb/y;)Lb/w;

    move-result-object v0

    invoke-virtual {v0}, Lb/w;->s()Lb/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/n;->b(Lb/y$a;)V

    .line 138
    :goto_1
    return-void

    .line 126
    :cond_0
    :try_start_2
    iget-object v2, p0, Lb/y$a;->c:Lb/f;

    iget-object v3, p0, Lb/y$a;->a:Lb/y;

    invoke-interface {v2, v3, v0}, Lb/f;->a(Lb/e;Lb/ab;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :goto_2
    if-eqz v1, :cond_1

    .line 131
    :try_start_3
    invoke-static {}, Lb/a/f/e;->b()Lb/a/f/e;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v4}, Lb/y;->c(Lb/y;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lb/a/f/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    :goto_3
    iget-object v0, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v0}, Lb/y;->d(Lb/y;)Lb/w;

    move-result-object v0

    invoke-virtual {v0}, Lb/w;->s()Lb/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/n;->b(Lb/y$a;)V

    goto :goto_1

    .line 133
    :cond_1
    :try_start_4
    iget-object v1, p0, Lb/y$a;->c:Lb/f;

    iget-object v2, p0, Lb/y$a;->a:Lb/y;

    invoke-interface {v1, v2, v0}, Lb/f;->a(Lb/e;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 136
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v1}, Lb/y;->d(Lb/y;)Lb/w;

    move-result-object v1

    invoke-virtual {v1}, Lb/w;->s()Lb/n;

    move-result-object v1

    invoke-virtual {v1, p0}, Lb/n;->b(Lb/y$a;)V

    throw v0

    .line 128
    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method
