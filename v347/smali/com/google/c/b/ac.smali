.class final Lcom/google/c/b/ac;
.super Lcom/google/c/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/v",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/c/b/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/y",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/c/b/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/c/b/y",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/c/b/v;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/c/b/ac;->a:Lcom/google/c/b/y;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/google/c/b/ac;)Lcom/google/c/b/y;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/c/b/ac;->a:Lcom/google/c/b/y;

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/c/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/k",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/google/c/b/ac$1;

    invoke-direct {v0, p0}, Lcom/google/c/b/ac$1;-><init>(Lcom/google/c/b/ac;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/c/b/ac;->c()Lcom/google/c/b/k;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/c/b/ae;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/google/c/b/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/x",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/c/b/ac;->a:Lcom/google/c/b/y;

    invoke-virtual {v0}, Lcom/google/c/b/y;->j()Lcom/google/c/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/ad;->e()Lcom/google/c/b/x;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/google/c/b/ac$2;

    invoke-direct {v1, p0, v0}, Lcom/google/c/b/ac$2;-><init>(Lcom/google/c/b/ac;Lcom/google/c/b/x;)V

    return-object v1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/c/b/ac;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/c/b/ac;->a:Lcom/google/c/b/y;

    invoke-virtual {v0}, Lcom/google/c/b/y;->size()I

    move-result v0

    return v0
.end method

.method t_()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
