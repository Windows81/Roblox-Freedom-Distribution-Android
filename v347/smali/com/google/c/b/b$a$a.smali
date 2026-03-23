.class final Lcom/google/c/b/b$a$a;
.super Lcom/google/c/b/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/c/b/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/c/b/aa",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/c/b/b$a;


# direct methods
.method constructor <init>(Lcom/google/c/b/b$a;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/c/b/b$a$a;->a:Lcom/google/c/b/b$a;

    invoke-direct {p0}, Lcom/google/c/b/aa;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/google/c/b/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/y",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/c/b/b$a$a;->a:Lcom/google/c/b/b$a;

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public c()Lcom/google/c/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/c/b/k",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/c/b/b$a$a;->e()Lcom/google/c/b/x;

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
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lcom/google/c/b/b$a$a$1;

    invoke-direct {v0, p0}, Lcom/google/c/b/b$a$a$1;-><init>(Lcom/google/c/b/b$a$a;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/c/b/b$a$a;->a:Lcom/google/c/b/b$a;

    iget-object v0, v0, Lcom/google/c/b/b$a;->a:Lcom/google/c/b/b;

    invoke-static {v0}, Lcom/google/c/b/b;->c(Lcom/google/c/b/b;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/c/b/b$a$a;->c()Lcom/google/c/b/k;

    move-result-object v0

    return-object v0
.end method
