.class public Lcom/b/a/a/g/a/k;
.super Lcom/b/a/a/g/b;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:Lcom/b/a/a/j/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/b/a/a/g/i;->k:Lcom/b/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/b/a/a/g/b;-><init>(Lcom/b/a/a/g/i;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/a/k;->e:Lcom/b/a/a/j/b;

    .line 45
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/b/a/a/g/a/k;->d:I

    return v0
.end method

.method public d()Lcom/b/a/a/j/b;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/b/a/a/g/a/k;->e:Lcom/b/a/a/j/b;

    return-object v0
.end method
