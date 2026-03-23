.class Lcom/google/c/b/ac$1;
.super Lcom/google/c/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/ac;->c()Lcom/google/c/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/k",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/c/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/c/b/k",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/c/b/ac;


# direct methods
.method constructor <init>(Lcom/google/c/b/ac;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/c/b/ac$1;->b:Lcom/google/c/b/ac;

    invoke-direct {p0}, Lcom/google/c/b/k;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/google/c/b/ac$1;->b:Lcom/google/c/b/ac;

    invoke-static {v0}, Lcom/google/c/b/ac;->a(Lcom/google/c/b/ac;)Lcom/google/c/b/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/y;->j()Lcom/google/c/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/b/ad;->c()Lcom/google/c/b/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/b/ac$1;->a:Lcom/google/c/b/k;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/c/b/ac$1;->a:Lcom/google/c/b/k;

    invoke-virtual {v0}, Lcom/google/c/b/k;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/c/b/ac$1;->a:Lcom/google/c/b/k;

    invoke-virtual {v0}, Lcom/google/c/b/k;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
