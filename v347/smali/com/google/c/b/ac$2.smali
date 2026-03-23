.class Lcom/google/c/b/ac$2;
.super Lcom/google/c/b/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/ac;->e()Lcom/google/c/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/t",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/x;

.field final synthetic b:Lcom/google/c/b/ac;


# direct methods
.method constructor <init>(Lcom/google/c/b/ac;Lcom/google/c/b/x;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/c/b/ac$2;->b:Lcom/google/c/b/ac;

    iput-object p2, p0, Lcom/google/c/b/ac$2;->a:Lcom/google/c/b/x;

    invoke-direct {p0}, Lcom/google/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/c/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/v",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/c/b/ac$2;->b:Lcom/google/c/b/ac;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/c/b/ac$2;->a:Lcom/google/c/b/x;

    invoke-virtual {v0, p1}, Lcom/google/c/b/x;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
