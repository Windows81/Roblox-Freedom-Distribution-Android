.class final Lc/z$a;
.super Lc/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lc/z;

.field private final c:Lc/f;


# direct methods
.method private constructor <init>(Lc/z;Lc/f;)V
    .locals 2

    .line 100
    iput-object p1, p0, Lc/z$a;->a:Lc/z;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lc/z;->d()Lc/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/t;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lc/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iput-object p2, p0, Lc/z$a;->c:Lc/f;

    return-void
.end method

.method synthetic constructor <init>(Lc/z;Lc/f;Lc/z$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lc/z$a;-><init>(Lc/z;Lc/f;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lc/z$a;->a:Lc/z;

    iget-object v0, v0, Lc/z;->a:Lc/aa;

    invoke-virtual {v0}, Lc/aa;->a()Lc/t;

    move-result-object v0

    invoke-virtual {v0}, Lc/t;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 120
    :try_start_0
    iget-object v2, p0, Lc/z$a;->a:Lc/z;

    invoke-static {v2}, Lc/z;->a(Lc/z;)Lc/ac;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lc/z$a;->a:Lc/z;

    invoke-static {v3}, Lc/z;->b(Lc/z;)Lc/a/d/l;

    move-result-object v3

    invoke-virtual {v3}, Lc/a/d/l;->b()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 123
    :try_start_1
    iget-object v1, p0, Lc/z$a;->c:Lc/f;

    iget-object v2, p0, Lc/z$a;->a:Lc/z;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lc/f;->a(Lc/e;Ljava/io/IOException;)V

    goto :goto_1

    .line 126
    :cond_0
    iget-object v1, p0, Lc/z$a;->c:Lc/f;

    iget-object v3, p0, Lc/z$a;->a:Lc/z;

    invoke-interface {v1, v3, v2}, Lc/f;->a(Lc/e;Lc/ac;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 131
    :try_start_2
    invoke-static {}, Lc/a/f/e;->b()Lc/a/f/e;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/z$a;->a:Lc/z;

    invoke-static {v4}, Lc/z;->c(Lc/z;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lc/a/f/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 133
    :cond_1
    iget-object v0, p0, Lc/z$a;->c:Lc/f;

    iget-object v2, p0, Lc/z$a;->a:Lc/z;

    invoke-interface {v0, v2, v1}, Lc/f;->a(Lc/e;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :goto_1
    iget-object v0, p0, Lc/z$a;->a:Lc/z;

    invoke-static {v0}, Lc/z;->d(Lc/z;)Lc/x;

    move-result-object v0

    invoke-virtual {v0}, Lc/x;->s()Lc/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/o;->b(Lc/z$a;)V

    return-void

    :goto_2
    iget-object v1, p0, Lc/z$a;->a:Lc/z;

    invoke-static {v1}, Lc/z;->d(Lc/z;)Lc/x;

    move-result-object v1

    invoke-virtual {v1}, Lc/x;->s()Lc/o;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc/o;->b(Lc/z$a;)V

    throw v0
.end method
