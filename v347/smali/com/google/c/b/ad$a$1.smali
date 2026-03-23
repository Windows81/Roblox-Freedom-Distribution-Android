.class Lcom/google/c/b/ad$a$1;
.super Lcom/google/c/b/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/c/b/ad$a;->d()Lcom/google/c/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/t",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/ad$a;


# direct methods
.method constructor <init>(Lcom/google/c/b/ad$a;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/google/c/b/ad$a$1;->a:Lcom/google/c/b/ad$a;

    invoke-direct {p0}, Lcom/google/c/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic a()Lcom/google/c/b/v;
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/google/c/b/ad$a$1;->f()Lcom/google/c/b/ad$a;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/google/c/b/ad$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/ad$a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/c/b/ad$a$1;->a:Lcom/google/c/b/ad$a;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/c/b/ad$a$1;->a:Lcom/google/c/b/ad$a;

    invoke-virtual {v0, p1}, Lcom/google/c/b/ad$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
