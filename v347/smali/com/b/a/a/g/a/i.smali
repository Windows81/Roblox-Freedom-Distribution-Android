.class public Lcom/b/a/a/g/a/i;
.super Lcom/b/a/a/g/b;
.source "SourceFile"


# instance fields
.field private d:Lcom/b/a/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/b/a/a/g/i;->c:Lcom/b/a/a/g/i;

    invoke-direct {p0, v0}, Lcom/b/a/a/g/b;-><init>(Lcom/b/a/a/g/i;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/g/a/i;->d:Lcom/b/a/a/j;

    .line 24
    return-void
.end method

.method public a(Lcom/b/a/a/j;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/b/a/a/g/a/i;->d:Lcom/b/a/a/j;

    .line 19
    return-void
.end method

.method public c()Lcom/b/a/a/j;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/b/a/a/g/a/i;->d:Lcom/b/a/a/j;

    return-object v0
.end method
