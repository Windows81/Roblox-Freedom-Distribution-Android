.class final Lcom/google/ads/interactivemedia/v3/a/v;
.super Lcom/google/ads/interactivemedia/v3/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/a/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/ads/interactivemedia/v3/a/w",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/s",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/interactivemedia/v3/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/k",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/a/f;

.field private final d:Lcom/google/ads/interactivemedia/v3/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/a/x;

.field private f:Lcom/google/ads/interactivemedia/v3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/k;Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Lcom/google/ads/interactivemedia/v3/a/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/s",
            "<TT;>;",
            "Lcom/google/ads/interactivemedia/v3/a/k",
            "<TT;>;",
            "Lcom/google/ads/interactivemedia/v3/a/f;",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<TT;>;",
            "Lcom/google/ads/interactivemedia/v3/a/x;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/w;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Lcom/google/ads/interactivemedia/v3/a/s;

    .line 44
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/a/v;->b:Lcom/google/ads/interactivemedia/v3/a/k;

    .line 45
    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:Lcom/google/ads/interactivemedia/v3/a/f;

    .line 46
    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/a/v;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    .line 47
    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/a/v;->e:Lcom/google/ads/interactivemedia/v3/a/x;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/k;Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Lcom/google/ads/interactivemedia/v3/a/x;Lcom/google/ads/interactivemedia/v3/a/v$1;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/google/ads/interactivemedia/v3/a/v;-><init>(Lcom/google/ads/interactivemedia/v3/a/s;Lcom/google/ads/interactivemedia/v3/a/k;Lcom/google/ads/interactivemedia/v3/a/f;Lcom/google/ads/interactivemedia/v3/a/c/a;Lcom/google/ads/interactivemedia/v3/a/x;)V

    return-void
.end method

.method private a()Lcom/google/ads/interactivemedia/v3/a/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/ads/interactivemedia/v3/a/w",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->f:Lcom/google/ads/interactivemedia/v3/a/w;

    .line 82
    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/v;->e:Lcom/google/ads/interactivemedia/v3/a/x;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/v;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/f;->a(Lcom/google/ads/interactivemedia/v3/a/x;Lcom/google/ads/interactivemedia/v3/a/c/a;)Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->f:Lcom/google/ads/interactivemedia/v3/a/w;

    goto :goto_0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/a/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/a/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/a/x;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 91
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/v$a;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/v$a;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/a/c/a;ZLjava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/v$1;)V

    return-object v0
.end method

.method public static b(Lcom/google/ads/interactivemedia/v3/a/c/a;Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/a/x;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/c/a",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/ads/interactivemedia/v3/a/x;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/a/c/a;->a()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 102
    :goto_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/a/v$a;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/a/v$a;-><init>(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/a/c/a;ZLjava/lang/Class;Lcom/google/ads/interactivemedia/v3/a/v$1;)V

    return-object v0

    .line 101
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public read(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/d/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->b:Lcom/google/ads/interactivemedia/v3/a/k;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/v;->a()Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/w;->read(Lcom/google/ads/interactivemedia/v3/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/a/b/j;->a(Lcom/google/ads/interactivemedia/v3/a/d/a;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/a/l;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/v;->b:Lcom/google/ads/interactivemedia/v3/a/k;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/v;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/a/f;->a:Lcom/google/ads/interactivemedia/v3/a/j;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/a/k;->b(Lcom/google/ads/interactivemedia/v3/a/l;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/a/j;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/a/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    throw v0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    new-instance v1, Lcom/google/ads/interactivemedia/v3/a/p;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/a/p;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public write(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Lcom/google/ads/interactivemedia/v3/a/s;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/a/v;->a()Lcom/google/ads/interactivemedia/v3/a/w;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/a/w;->write(Lcom/google/ads/interactivemedia/v3/a/d/c;Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_0
    if-nez p2, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/a/d/c;->f()Lcom/google/ads/interactivemedia/v3/a/d/c;

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/a/v;->a:Lcom/google/ads/interactivemedia/v3/a/s;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/a/v;->d:Lcom/google/ads/interactivemedia/v3/a/c/a;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/a/v;->c:Lcom/google/ads/interactivemedia/v3/a/f;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/a/f;->b:Lcom/google/ads/interactivemedia/v3/a/r;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/a/s;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/ads/interactivemedia/v3/a/r;)Lcom/google/ads/interactivemedia/v3/a/l;

    move-result-object v0

    .line 77
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/a/b/j;->a(Lcom/google/ads/interactivemedia/v3/a/l;Lcom/google/ads/interactivemedia/v3/a/d/c;)V

    goto :goto_0
.end method
