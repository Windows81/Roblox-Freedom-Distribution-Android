.class abstract Lcom/google/c/b/t;
.super Lcom/google/c/b/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/x",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/c/b/x;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/c/b/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/v",
            "<TE;>;"
        }
    .end annotation
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/c/b/t;->a()Lcom/google/c/b/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/c/b/v;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/c/b/t;->a()Lcom/google/c/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/v;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/c/b/t;->a()Lcom/google/c/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/v;->size()I

    move-result v0

    return v0
.end method

.method t_()Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/c/b/t;->a()Lcom/google/c/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/v;->t_()Z

    move-result v0

    return v0
.end method
