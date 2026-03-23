.class public Lcom/b/a/a/g/a/b;
.super Lcom/b/a/a/g/b;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/b/a/a/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/b/a/a/g/i;->a:Lcom/b/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/b/a/a/g/b;-><init>(Lcom/b/a/a/g/i;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/a/b;->g:Lcom/b/a/a/i;

    .line 28
    return-void
.end method

.method public a(Lcom/b/a/a/i;I)V
    .locals 0

    .prologue
    .line 31
    iput p2, p0, Lcom/b/a/a/g/a/b;->d:I

    .line 32
    iput-object p1, p0, Lcom/b/a/a/g/a/b;->g:Lcom/b/a/a/i;

    .line 33
    return-void
.end method

.method public a(Lcom/b/a/a/i;II)V
    .locals 0

    .prologue
    .line 36
    iput p2, p0, Lcom/b/a/a/g/a/b;->d:I

    .line 37
    iput p3, p0, Lcom/b/a/a/g/a/b;->e:I

    .line 38
    iput-object p1, p0, Lcom/b/a/a/g/a/b;->g:Lcom/b/a/a/i;

    .line 39
    return-void
.end method

.method public a(Lcom/b/a/a/i;IZ)V
    .locals 0

    .prologue
    .line 42
    iput p2, p0, Lcom/b/a/a/g/a/b;->d:I

    .line 43
    iput-boolean p3, p0, Lcom/b/a/a/g/a/b;->f:Z

    .line 44
    iput-object p1, p0, Lcom/b/a/a/g/a/b;->g:Lcom/b/a/a/i;

    .line 45
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/b/a/a/g/a/b;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/b/a/a/g/a/b;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/b/a/a/g/a/b;->f:Z

    return v0
.end method

.method public f()Lcom/b/a/a/i;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/b/a/a/g/a/b;->g:Lcom/b/a/a/i;

    return-object v0
.end method
