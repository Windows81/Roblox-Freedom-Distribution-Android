.class Lcom/google/c/b/y$1;
.super Lcom/google/c/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/y;->l()Lcom/google/c/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/k",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/k;

.field final synthetic b:Lcom/google/c/b/y;


# direct methods
.method constructor <init>(Lcom/google/c/b/y;Lcom/google/c/b/k;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/google/c/b/y$1;->b:Lcom/google/c/b/y;

    iput-object p2, p0, Lcom/google/c/b/y$1;->a:Lcom/google/c/b/k;

    invoke-direct {p0}, Lcom/google/c/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/c/b/y$1;->a:Lcom/google/c/b/k;

    invoke-virtual {v0}, Lcom/google/c/b/k;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/c/b/y$1;->a:Lcom/google/c/b/k;

    invoke-virtual {v0}, Lcom/google/c/b/k;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
