.class public Lcom/b/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/m;


# instance fields
.field a:Lcom/b/a/a/m;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/b/a/a/m;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    .line 21
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0}, Lcom/b/a/a/m;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Lcom/b/a/a/e;)I
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/b/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->a(Lcom/b/a/a/e;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/b/a/a/j;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->a(Ljava/lang/String;)Lcom/b/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/b/a/a/j;Lcom/b/a/a/j;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/b/a/a/a/a;->c()V

    .line 42
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1, p2}, Lcom/b/a/a/m;->a(Lcom/b/a/a/j;Lcom/b/a/a/j;)V

    .line 43
    return-void
.end method

.method public a(Lcom/b/a/a/j;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/b/a/a/a/a;->c()V

    .line 26
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->a(Lcom/b/a/a/j;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/b/a/a/e;)Lcom/b/a/a/j;
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/b/a/a/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->b(Lcom/b/a/a/e;)Lcom/b/a/a/j;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/b/a/a/a/a;->b:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/b/a/a/a/a;->c()V

    .line 91
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0}, Lcom/b/a/a/m;->b()V

    .line 92
    return-void
.end method

.method public b(Lcom/b/a/a/j;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/b/a/a/a/a;->c()V

    .line 36
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->b(Lcom/b/a/a/j;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/b/a/a/e;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->c(Lcom/b/a/a/e;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/b/a/a/j;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/b/a/a/a/a;->c()V

    .line 48
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->c(Lcom/b/a/a/j;)V

    .line 49
    return-void
.end method

.method public d(Lcom/b/a/a/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/a/e;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/b/a/a/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->d(Lcom/b/a/a/e;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/b/a/a/j;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/b/a/a/a/a;->c()V

    .line 102
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/m;

    invoke-interface {v0, p1}, Lcom/b/a/a/m;->d(Lcom/b/a/a/j;)V

    .line 103
    return-void
.end method
