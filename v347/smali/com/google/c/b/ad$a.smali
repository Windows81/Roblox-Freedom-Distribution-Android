.class abstract Lcom/google/c/b/ad$a;
.super Lcom/google/c/b/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/c/b/ad",
        "<TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/google/c/b/ad;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public c()Lcom/google/c/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/k",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/google/c/b/ad$a;->e()Lcom/google/c/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/x;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/c/b/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/x",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/google/c/b/ad$a$1;

    invoke-direct {v0, p0}, Lcom/google/c/b/ad$a$1;-><init>(Lcom/google/c/b/ad$a;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/c/b/ad$a;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method
