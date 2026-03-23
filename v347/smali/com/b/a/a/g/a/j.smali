.class public Lcom/b/a/a/g/a/j;
.super Lcom/b/a/a/g/b;
.source "SourceFile"


# instance fields
.field private d:Lcom/b/a/a/j;

.field private e:Ljava/lang/Object;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/b/a/a/g/i;->j:Lcom/b/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/b/a/a/g/b;-><init>(Lcom/b/a/a/g/i;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/a/j;->d:Lcom/b/a/a/j;

    .line 27
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/b/a/a/g/a/j;->f:I

    .line 31
    return-void
.end method

.method public a(Lcom/b/a/a/j;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/b/a/a/g/a/j;->d:Lcom/b/a/a/j;

    .line 22
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/b/a/a/g/a/j;->e:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public c()Lcom/b/a/a/j;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/b/a/a/g/a/j;->d:Lcom/b/a/a/j;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/b/a/a/g/a/j;->f:I

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/b/a/a/g/a/j;->e:Ljava/lang/Object;

    return-object v0
.end method
